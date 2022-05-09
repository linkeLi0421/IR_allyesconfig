; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SetHwReg8190pci(): [HW_VAR_ACM_CTRL] Write 0x%X\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8723be_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013rtl8723be: Init MAC failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8723be_hw_init\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl8723be_hw_init._entry_ptr = internal global ptr @rtl8723be_hw_init._entry, section ".printk_index", align 4
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", [47 x i8] zeroinitializer }, align 32
@rtl8723be_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8723be: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beacon_interval:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VersionID = 0x%4x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl8723be_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.12, i32 2272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8723be: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8723be_read_eeprom_info\00", [37 x i8] zeroinitializer }, align 32
@rtl8723be_read_eeprom_info._entry_ptr = internal global ptr @rtl8723be_read_eeprom_info._entry, section ".printk_index", align 4
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"GPIOChangeRF  - HW Radio ON, RF ON\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"GPIOChangeRF  - HW Radio OFF, RF OFF\0A\00", [58 x i8] zeroinitializer }, align 32
@rtl8723be_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl8723be_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl8723be_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.12, i32 2607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8723be: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtl8723be_set_key\00", [46 x i8] zeroinitializer }, align 32
@rtl8723be_set_key._entry_ptr = internal global ptr @rtl8723be_set_key._entry, section ".printk_index", align 4
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Receive CPWM INT!!! Set pHalData->FwPSState = %X\0A\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CheckPcieDMAHang8723BE(): true!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ResetPcieInterfaceDMA8723BE()\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl8723B_enter_lps_flow = external dso_local global [16 x %struct.wlan_pwr_cfg], align 2
@rtl8723B_card_disable_flow = external dso_local global [31 x %struct.wlan_pwr_cfg], align 2
@rtl8723B_card_enable_flow = external dso_local global [31 x %struct.wlan_pwr_cfg], align 2
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"init MAC Fail as power on failure\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtl8723be_llt_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.12, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtl8723be: Failed to polling write LLT done at address %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_rtl8723be_llt_write\00", [43 x i8] zeroinitializer }, align 32
@_rtl8723be_llt_write._entry_ptr = internal global ptr @_rtl8723be_llt_write._entry, section ".printk_index", align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl8723be_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.12, i32 1518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013rtl8723be: Network type %d not support!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl8723be_set_media_status\00", [36 x i8] zeroinitializer }, align 32
@_rtl8723be_set_media_status._entry_ptr = internal global ptr @_rtl8723be_set_media_status._entry, section ".printk_index", align 4
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set HW_VAR_MEDIA_STATUS: No such media status(%x).\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown chip version\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Chip RF Type: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_2T2R\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RF_1T1R\00", [24 x i8] zeroinitializer }, align 32
@__const._rtl8723be_read_adapter_info.params = private unnamed_addr constant [10 x i32] [i32 33065, i32 214, i32 216, i32 218, i32 220, i32 208, i32 184, i32 196, i32 197, i32 11], align 4
@__const._rtl8723be_read_adapter_info.toshiba_smid1 = private unnamed_addr constant [32 x i16] [i16 24913, i16 24914, i16 24916, i16 24917, i16 24951, i16 24952, i16 24953, i16 24960, i16 29009, i16 29010, i16 29012, i16 29013, i16 29047, i16 29048, i16 29049, i16 29056, i16 -32431, i16 -32430, i16 -32428, i16 -32427, i16 -32383, i16 -32382, i16 -32380, i16 -32379, i16 -28335, i16 -28334, i16 -28332, i16 -28331, i16 -28287, i16 -28286, i16 -28284, i16 -28283], align 2
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"board_type = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S ] = [0x%x / 0x%x ]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"hal_ReadPowerValueFromPROM8723BE(): PROMContent[0x%x]=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"auto load fail : Use Default value!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RT Customized ID: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ratr_bitmap :%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x:%x:%x\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.rtl8723be_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 86, i64 92]
@__sancov_gen_cov_switch_values.58 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 64, i64 65, i64 67, i64 68, i64 72, i64 82, i64 84, i64 87, i64 94]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 234]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [17 x i64] [i64 15, i64 16, i64 24961, i64 24964, i64 24965, i64 29057, i64 29058, i64 29060, i64 29061, i64 33153, i64 33154, i64 33156, i64 33157, i64 37249, i64 37250, i64 37252, i64 37253]
@__sancov_gen_cov_switch_values.67 = internal global [10 x i64] [i64 8, i64 16, i64 24977, i64 24978, i64 24979, i64 29073, i64 29074, i64 29075, i64 33169, i64 33170]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 16, i64 33171, i64 37265, i64 37266, i64 37267]
@__sancov_gen_cov_switch_values.69 = internal global [10 x i64] [i64 8, i64 16, i64 29076, i64 33173, i64 33280, i64 33281, i64 33282, i64 37269, i64 37273, i64 37376]
@__sancov_gen_cov_switch_values.70 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 13, i64 16, i64 254]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 16, i64 33142, i64 33144]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 16, i64 4133, i64 4332]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 16, i64 33175, i64 33283, i64 37270]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 16, i64 4136, i64 4156, i64 4163, i64 6706]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 16, i64 33172, i64 33176, i64 37271, i64 37272]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 16, i64 4133, i64 4163, i64 4332]
@__sancov_gen_cov_switch_values.77 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.78 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 333, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 438, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 481, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 496, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 536, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 573, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 597, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1123, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1129, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1145, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1367, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1377, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1616, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1704, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1717, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2257, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2261, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2264, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2268, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2272, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2502, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2509, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2546, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2552, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2561, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2607, i32 7 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2620, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2627, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2630, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2638, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 148, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1210, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1224, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 823, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 729, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1496, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1502, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1508, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1514, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1518, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1540, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1462, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1478, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2101, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1973, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1993, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2004, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1749, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 1756, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2239, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2419, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 2433, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [31 x i8] c"switch.table.rtl8723be_set_key\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @_rtl8723be_llt_write._entry, ptr @_rtl8723be_llt_write._entry_ptr, ptr @_rtl8723be_set_media_status._entry, ptr @_rtl8723be_set_media_status._entry_ptr, ptr @rtl8723be_hw_init._entry, ptr @rtl8723be_hw_init._entry_ptr, ptr @rtl8723be_read_eeprom_info._entry, ptr @rtl8723be_read_eeprom_info._entry_ptr, ptr @rtl8723be_set_key._entry, ptr @rtl8723be_set_key._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @rtl8723be_set_key.cam_const_addr, ptr @rtl8723be_set_key.cam_const_broad, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.rtl8723be_set_key], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_llt_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl8723be_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_get_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
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
  switch i8 %variable, label %sw.default [
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
  store i32 -1, ptr %rfstate, align 4, !annotation !132
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
  %22 = load i8, ptr %fw_current_inpsmode, align 1, !range !133
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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %if.end9, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %rpwm_val.addr.i.i = alloca i8, align 1
  %rtstate.i.i = alloca i32, align 4
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
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %variable, label %sw.default298 [
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
    i8 44, label %sw.bb223
    i8 53, label %sw.bb226
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
    i8 64, label %sw.bb270
    i8 82, label %sw.bb271
    i8 84, label %sw.bb280
    i8 94, label %sw.bb294
  ]

for.cond29.preheader:                             ; preds = %entry
  %write8_async.i497 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i498 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i501 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i497, align 4
  tail call void %6(ptr noundef %1, i32 noundef 1560, i8 noundef zeroext %4) #7
  %7 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i499 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i499, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i500 = icmp eq i8 %10, 0
  br i1 %tobool.not.i500, label %for.cond29.preheader.rtl_write_byte.exit504_crit_edge, label %if.then.i503

for.cond29.preheader.rtl_write_byte.exit504_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit504

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
  %18 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %28 = load i8, ptr %write_readback.i.1, align 1, !range !133
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
  %38 = load i8, ptr %write_readback.i.2, align 1, !range !133
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
  %48 = load i8, ptr %write_readback.i.3, align 1, !range !133
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
  %58 = load i8, ptr %write_readback.i.4, align 1, !range !133
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
  %68 = load i8, ptr %write_readback.i.5, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.5 = icmp eq i8 %68, 0
  br i1 %tobool.not.i.5, label %rtl_write_byte.exit.4.sw.epilog300_crit_edge, label %if.then.i.5

rtl_write_byte.exit.4.sw.epilog300_crit_edge:     ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i.5:                                      ; preds = %rtl_write_byte.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i, align 4
  %call.i.5 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 1557) #7
  br label %sw.epilog300

sw.bb9:                                           ; preds = %entry
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %val, align 2
  %73 = and i16 %72, 350
  %74 = or i16 %73, 1
  %conv17 = trunc i16 %74 to i8
  %write8_async.i473 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i473 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i473, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1088, i8 noundef zeroext %conv17) #7
  %cfg.i474 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i474 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i474, align 8
  %write_readback.i475 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i475 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i475, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i476 = icmp eq i8 %80, 0
  br i1 %tobool.not.i476, label %sw.bb9.rtl_write_byte.exit480_crit_edge, label %if.then.i479

sw.bb9.rtl_write_byte.exit480_crit_edge:          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit480

if.then.i479:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i477 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i477 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i477, align 4
  %call.i478 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1088) #7
  br label %rtl_write_byte.exit480

rtl_write_byte.exit480:                           ; preds = %if.then.i479, %sw.bb9.rtl_write_byte.exit480_crit_edge
  %83 = lshr i16 %73, 8
  %conv20 = trunc i16 %83 to i8
  %84 = ptrtoint ptr %write8_async.i473 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i473, align 4
  tail call void %85(ptr noundef %1, i32 noundef 1089, i8 noundef zeroext %conv20) #7
  %86 = ptrtoint ptr %cfg.i474 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i474, align 8
  %write_readback.i483 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i483 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i483, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i484 = icmp eq i8 %89, 0
  br i1 %tobool.not.i484, label %rtl_write_byte.exit480.rtl_write_byte.exit488_crit_edge, label %if.then.i487

rtl_write_byte.exit480.rtl_write_byte.exit488_crit_edge: ; preds = %rtl_write_byte.exit480
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit488

if.then.i487:                                     ; preds = %rtl_write_byte.exit480
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i485 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i485 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i485, align 4
  %call.i486 = tail call zeroext i8 %91(ptr noundef %1, i32 noundef 1089) #7
  br label %rtl_write_byte.exit488

rtl_write_byte.exit488:                           ; preds = %if.then.i487, %rtl_write_byte.exit480.rtl_write_byte.exit488_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %cmp22776.not = icmp eq i16 %73, 0
  br i1 %cmp22776.not, label %rtl_write_byte.exit488.while.end_crit_edge, label %rtl_write_byte.exit488.while.body_crit_edge

rtl_write_byte.exit488.while.body_crit_edge:      ; preds = %rtl_write_byte.exit488
  br label %while.body

rtl_write_byte.exit488.while.end_crit_edge:       ; preds = %rtl_write_byte.exit488
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit488.while.body_crit_edge
  %b_rate_cfg.0778 = phi i16 [ %92, %while.body.while.body_crit_edge ], [ %74, %rtl_write_byte.exit488.while.body_crit_edge ]
  %rate_index.0777 = phi i8 [ %inc27, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit488.while.body_crit_edge ]
  %92 = lshr i16 %b_rate_cfg.0778, 1
  %inc27 = add nuw nsw i8 %rate_index.0777, 1
  %cmp22 = icmp ugt i16 %b_rate_cfg.0778, 3
  br i1 %cmp22, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit488.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit488.while.end_crit_edge ], [ %inc27, %while.body.while.end_crit_edge ]
  %93 = ptrtoint ptr %write8_async.i473 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write8_async.i473, align 4
  tail call void %94(ptr noundef %1, i32 noundef 1152, i8 noundef zeroext %rate_index.0.lcssa) #7
  %95 = ptrtoint ptr %cfg.i474 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i474, align 8
  %write_readback.i491 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i491 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i491, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i492 = icmp eq i8 %98, 0
  br i1 %tobool.not.i492, label %while.end.sw.epilog300_crit_edge, label %if.then.i495

while.end.sw.epilog300_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i495:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i493 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %99 = ptrtoint ptr %read8_sync.i493 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read8_sync.i493, align 4
  %call.i494 = tail call zeroext i8 %100(ptr noundef %1, i32 noundef 1152) #7
  br label %sw.epilog300

if.then.i503:                                     ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 1560) #7
  br label %rtl_write_byte.exit504

rtl_write_byte.exit504:                           ; preds = %if.then.i503, %for.cond29.preheader.rtl_write_byte.exit504_crit_edge
  %arrayidx37.1 = getelementptr i8, ptr %val, i32 1
  %103 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx37.1, align 1
  %105 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i497, align 4
  tail call void %106(ptr noundef %1, i32 noundef 1561, i8 noundef zeroext %104) #7
  %107 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i499.1 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i499.1, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i500.1 = icmp eq i8 %110, 0
  br i1 %tobool.not.i500.1, label %rtl_write_byte.exit504.rtl_write_byte.exit504.1_crit_edge, label %if.then.i503.1

rtl_write_byte.exit504.rtl_write_byte.exit504.1_crit_edge: ; preds = %rtl_write_byte.exit504
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit504.1

if.then.i503.1:                                   ; preds = %rtl_write_byte.exit504
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502.1 = tail call zeroext i8 %112(ptr noundef %1, i32 noundef 1561) #7
  br label %rtl_write_byte.exit504.1

rtl_write_byte.exit504.1:                         ; preds = %if.then.i503.1, %rtl_write_byte.exit504.rtl_write_byte.exit504.1_crit_edge
  %arrayidx37.2 = getelementptr i8, ptr %val, i32 2
  %113 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx37.2, align 1
  %115 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write8_async.i497, align 4
  tail call void %116(ptr noundef %1, i32 noundef 1562, i8 noundef zeroext %114) #7
  %117 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %write_readback.i499.2 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %write_readback.i499.2, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i500.2 = icmp eq i8 %120, 0
  br i1 %tobool.not.i500.2, label %rtl_write_byte.exit504.1.rtl_write_byte.exit504.2_crit_edge, label %if.then.i503.2

rtl_write_byte.exit504.1.rtl_write_byte.exit504.2_crit_edge: ; preds = %rtl_write_byte.exit504.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit504.2

if.then.i503.2:                                   ; preds = %rtl_write_byte.exit504.1
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502.2 = tail call zeroext i8 %122(ptr noundef %1, i32 noundef 1562) #7
  br label %rtl_write_byte.exit504.2

rtl_write_byte.exit504.2:                         ; preds = %if.then.i503.2, %rtl_write_byte.exit504.1.rtl_write_byte.exit504.2_crit_edge
  %arrayidx37.3 = getelementptr i8, ptr %val, i32 3
  %123 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx37.3, align 1
  %125 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i497, align 4
  tail call void %126(ptr noundef %1, i32 noundef 1563, i8 noundef zeroext %124) #7
  %127 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i499.3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i499.3, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i500.3 = icmp eq i8 %130, 0
  br i1 %tobool.not.i500.3, label %rtl_write_byte.exit504.2.rtl_write_byte.exit504.3_crit_edge, label %if.then.i503.3

rtl_write_byte.exit504.2.rtl_write_byte.exit504.3_crit_edge: ; preds = %rtl_write_byte.exit504.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit504.3

if.then.i503.3:                                   ; preds = %rtl_write_byte.exit504.2
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502.3 = tail call zeroext i8 %132(ptr noundef %1, i32 noundef 1563) #7
  br label %rtl_write_byte.exit504.3

rtl_write_byte.exit504.3:                         ; preds = %if.then.i503.3, %rtl_write_byte.exit504.2.rtl_write_byte.exit504.3_crit_edge
  %arrayidx37.4 = getelementptr i8, ptr %val, i32 4
  %133 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx37.4, align 1
  %135 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i497, align 4
  tail call void %136(ptr noundef %1, i32 noundef 1564, i8 noundef zeroext %134) #7
  %137 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i499.4 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i499.4, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i500.4 = icmp eq i8 %140, 0
  br i1 %tobool.not.i500.4, label %rtl_write_byte.exit504.3.rtl_write_byte.exit504.4_crit_edge, label %if.then.i503.4

rtl_write_byte.exit504.3.rtl_write_byte.exit504.4_crit_edge: ; preds = %rtl_write_byte.exit504.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit504.4

if.then.i503.4:                                   ; preds = %rtl_write_byte.exit504.3
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502.4 = tail call zeroext i8 %142(ptr noundef %1, i32 noundef 1564) #7
  br label %rtl_write_byte.exit504.4

rtl_write_byte.exit504.4:                         ; preds = %if.then.i503.4, %rtl_write_byte.exit504.3.rtl_write_byte.exit504.4_crit_edge
  %arrayidx37.5 = getelementptr i8, ptr %val, i32 5
  %143 = ptrtoint ptr %arrayidx37.5 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx37.5, align 1
  %145 = ptrtoint ptr %write8_async.i497 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write8_async.i497, align 4
  tail call void %146(ptr noundef %1, i32 noundef 1565, i8 noundef zeroext %144) #7
  %147 = ptrtoint ptr %cfg.i498 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i498, align 8
  %write_readback.i499.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %write_readback.i499.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %write_readback.i499.5, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i500.5 = icmp eq i8 %150, 0
  br i1 %tobool.not.i500.5, label %rtl_write_byte.exit504.4.sw.epilog300_crit_edge, label %if.then.i503.5

rtl_write_byte.exit504.4.sw.epilog300_crit_edge:  ; preds = %rtl_write_byte.exit504.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i503.5:                                   ; preds = %rtl_write_byte.exit504.4
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %read8_sync.i501 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %read8_sync.i501, align 4
  %call.i502.5 = tail call zeroext i8 %152(ptr noundef %1, i32 noundef 1565) #7
  br label %sw.epilog300

sw.bb41:                                          ; preds = %entry
  %153 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %val, align 1
  %write8_async.i505 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %155 = ptrtoint ptr %write8_async.i505 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %write8_async.i505, align 4
  tail call void %156(ptr noundef %1, i32 noundef 1301, i8 noundef zeroext %154) #7
  %cfg.i506 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %157 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i507 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %write_readback.i507 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %write_readback.i507, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i508 = icmp eq i8 %160, 0
  br i1 %tobool.not.i508, label %sw.bb41.rtl_write_byte.exit512_crit_edge, label %if.then.i511

sw.bb41.rtl_write_byte.exit512_crit_edge:         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit512

if.then.i511:                                     ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i509 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %161 = ptrtoint ptr %read8_sync.i509 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %read8_sync.i509, align 4
  %call.i510 = tail call zeroext i8 %162(ptr noundef %1, i32 noundef 1301) #7
  br label %rtl_write_byte.exit512

rtl_write_byte.exit512:                           ; preds = %if.then.i511, %sw.bb41.rtl_write_byte.exit512_crit_edge
  %arrayidx43 = getelementptr i8, ptr %val, i32 1
  %163 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx43, align 1
  %165 = ptrtoint ptr %write8_async.i505 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %write8_async.i505, align 4
  tail call void %166(ptr noundef %1, i32 noundef 1303, i8 noundef zeroext %164) #7
  %167 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i515 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %write_readback.i515 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %write_readback.i515, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i516 = icmp eq i8 %170, 0
  br i1 %tobool.not.i516, label %rtl_write_byte.exit512.rtl_write_byte.exit520_crit_edge, label %if.then.i519

rtl_write_byte.exit512.rtl_write_byte.exit520_crit_edge: ; preds = %rtl_write_byte.exit512
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit520

if.then.i519:                                     ; preds = %rtl_write_byte.exit512
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i517 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %171 = ptrtoint ptr %read8_sync.i517 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %read8_sync.i517, align 4
  %call.i518 = tail call zeroext i8 %172(ptr noundef %1, i32 noundef 1303) #7
  br label %rtl_write_byte.exit520

rtl_write_byte.exit520:                           ; preds = %if.then.i519, %rtl_write_byte.exit512.rtl_write_byte.exit520_crit_edge
  %173 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %val, align 1
  %175 = ptrtoint ptr %write8_async.i505 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %write8_async.i505, align 4
  tail call void %176(ptr noundef %1, i32 noundef 1065, i8 noundef zeroext %174) #7
  %177 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i523 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %write_readback.i523 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %write_readback.i523, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i524 = icmp eq i8 %180, 0
  br i1 %tobool.not.i524, label %rtl_write_byte.exit520.rtl_write_byte.exit528_crit_edge, label %if.then.i527

rtl_write_byte.exit520.rtl_write_byte.exit528_crit_edge: ; preds = %rtl_write_byte.exit520
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit528

if.then.i527:                                     ; preds = %rtl_write_byte.exit520
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i525 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %181 = ptrtoint ptr %read8_sync.i525 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %read8_sync.i525, align 4
  %call.i526 = tail call zeroext i8 %182(ptr noundef %1, i32 noundef 1065) #7
  br label %rtl_write_byte.exit528

rtl_write_byte.exit528:                           ; preds = %if.then.i527, %rtl_write_byte.exit520.rtl_write_byte.exit528_crit_edge
  %183 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %val, align 1
  %185 = ptrtoint ptr %write8_async.i505 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write8_async.i505, align 4
  tail call void %186(ptr noundef %1, i32 noundef 1595, i8 noundef zeroext %184) #7
  %187 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i531 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %write_readback.i531 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %write_readback.i531, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i532 = icmp eq i8 %190, 0
  br i1 %tobool.not.i532, label %rtl_write_byte.exit528.rtl_write_byte.exit536_crit_edge, label %if.then.i535

rtl_write_byte.exit528.rtl_write_byte.exit536_crit_edge: ; preds = %rtl_write_byte.exit528
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit536

if.then.i535:                                     ; preds = %rtl_write_byte.exit528
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i533 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %191 = ptrtoint ptr %read8_sync.i533 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %read8_sync.i533, align 4
  %call.i534 = tail call zeroext i8 %192(ptr noundef %1, i32 noundef 1595) #7
  br label %rtl_write_byte.exit536

rtl_write_byte.exit536:                           ; preds = %if.then.i535, %rtl_write_byte.exit528.rtl_write_byte.exit536_crit_edge
  %ht_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %193 = ptrtoint ptr %ht_enable to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %ht_enable, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not = icmp eq i8 %194, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %rtl_write_byte.exit536
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %195 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %write16_async.i, align 4
  tail call void %196(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext 3598) #7
  %197 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i538 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %write_readback.i538 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %write_readback.i538, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i539 = icmp eq i8 %200, 0
  br i1 %tobool.not.i539, label %if.then.sw.epilog300_crit_edge, label %if.then.i541

if.then.sw.epilog300_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i541:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %201 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %read16_sync.i, align 4
  %call.i540 = tail call zeroext i16 %202(ptr noundef %1, i32 noundef 1598) #7
  br label %sw.epilog300

if.else:                                          ; preds = %rtl_write_byte.exit536
  %203 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %val, align 2
  %write16_async.i542 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %205 = ptrtoint ptr %write16_async.i542 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %write16_async.i542, align 4
  tail call void %206(ptr noundef %1, i32 noundef 1598, i16 noundef zeroext %204) #7
  %207 = ptrtoint ptr %cfg.i506 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i506, align 8
  %write_readback.i544 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %write_readback.i544 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %write_readback.i544, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %210)
  %tobool.not.i545 = icmp eq i8 %210, 0
  br i1 %tobool.not.i545, label %if.else.sw.epilog300_crit_edge, label %if.then.i548

if.else.sw.epilog300_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i548:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i546 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %211 = ptrtoint ptr %read16_sync.i546 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %read16_sync.i546, align 4
  %call.i547 = tail call zeroext i16 %212(ptr noundef %1, i32 noundef 1598) #7
  br label %sw.epilog300

sw.bb46:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #7
  %213 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %val, align 1
  %conv48 = zext i8 %214 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv48) #7
  %215 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val, align 1
  %write8_async.i550 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %217 = ptrtoint ptr %write8_async.i550 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write8_async.i550, align 4
  tail call void %218(ptr noundef %1, i32 noundef 1307, i8 noundef zeroext %216) #7
  %cfg.i551 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i551, align 8
  %write_readback.i552 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %write_readback.i552 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %write_readback.i552, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool.not.i553 = icmp eq i8 %222, 0
  br i1 %tobool.not.i553, label %sw.bb46.rtl_write_byte.exit557_crit_edge, label %if.then.i556

sw.bb46.rtl_write_byte.exit557_crit_edge:         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit557

if.then.i556:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i554 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %223 = ptrtoint ptr %read8_sync.i554 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %read8_sync.i554, align 4
  %call.i555 = tail call zeroext i8 %224(ptr noundef %1, i32 noundef 1307) #7
  br label %rtl_write_byte.exit557

rtl_write_byte.exit557:                           ; preds = %if.then.i556, %sw.bb46.rtl_write_byte.exit557_crit_edge
  %225 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %e_aci, align 1
  br label %for.body54

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %rtl_write_byte.exit557
  %226 = ptrtoint ptr %cfg.i551 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i551, align 8
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
  br label %sw.epilog300

sw.bb58:                                          ; preds = %entry
  %234 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool59.not = icmp eq i8 %235, 0
  %read8_sync.i558 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %236 = ptrtoint ptr %read8_sync.i558 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read8_sync.i558, align 4
  %call.i559 = tail call zeroext i8 %237(ptr noundef %1, i32 noundef 1642) #7
  br i1 %tobool59.not, label %if.else66, label %if.then62

if.then62:                                        ; preds = %sw.bb58
  %238 = or i8 %call.i559, 2
  %write8_async.i560 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %239 = ptrtoint ptr %write8_async.i560 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write8_async.i560, align 4
  tail call void %240(ptr noundef %1, i32 noundef 1642, i8 noundef zeroext %238) #7
  %cfg.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %241 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i562 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_readback.i562 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_readback.i562, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i563 = icmp eq i8 %244, 0
  br i1 %tobool.not.i563, label %if.then62.sw.epilog300_crit_edge, label %if.then.i566

if.then62.sw.epilog300_crit_edge:                 ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i566:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %read8_sync.i558 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read8_sync.i558, align 4
  %call.i565 = tail call zeroext i8 %246(ptr noundef %1, i32 noundef 1642) #7
  br label %sw.epilog300

if.else66:                                        ; preds = %sw.bb58
  %247 = and i8 %call.i559, -3
  %write8_async.i568 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %248 = ptrtoint ptr %write8_async.i568 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %write8_async.i568, align 4
  tail call void %249(ptr noundef %1, i32 noundef 1642, i8 noundef zeroext %247) #7
  %cfg.i569 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %250 = ptrtoint ptr %cfg.i569 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cfg.i569, align 8
  %write_readback.i570 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %write_readback.i570 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %write_readback.i570, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i571 = icmp eq i8 %253, 0
  br i1 %tobool.not.i571, label %if.else66.sw.epilog300_crit_edge, label %if.then.i574

if.else66.sw.epilog300_crit_edge:                 ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i574:                                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %read8_sync.i558 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read8_sync.i558, align 4
  %call.i573 = tail call zeroext i8 %255(ptr noundef %1, i32 noundef 1642) #7
  br label %sw.epilog300

sw.bb71:                                          ; preds = %entry
  %256 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %val, align 1
  %write8_async.i576 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %258 = ptrtoint ptr %write8_async.i576 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write8_async.i576, align 4
  tail call void %259(ptr noundef %1, i32 noundef 1664, i8 noundef zeroext %257) #7
  %cfg.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %260 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %261, i32 0, i32 1
  %262 = ptrtoint ptr %write_readback.i578 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %write_readback.i578, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool.not.i579 = icmp eq i8 %263, 0
  br i1 %tobool.not.i579, label %sw.bb71.sw.epilog300_crit_edge, label %if.then.i582

sw.bb71.sw.epilog300_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i582:                                     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i580 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %264 = ptrtoint ptr %read8_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %read8_sync.i580, align 4
  %call.i581 = tail call zeroext i8 %265(ptr noundef %1, i32 noundef 1664) #7
  br label %sw.epilog300

sw.bb72:                                          ; preds = %entry
  %266 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %267)
  %cmp74 = icmp ult i8 %267, 8
  br i1 %cmp74, label %if.end82, label %sw.bb72.sw.epilog300_crit_edge

sw.bb72.sw.epilog300_crit_edge:                   ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.end82:                                         ; preds = %sw.bb72
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %268 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %min_space_cfg, align 4
  %270 = and i8 %269, -8
  %or86468 = or i8 %270, %267
  store i8 %or86468, ptr %min_space_cfg, align 4
  %271 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %267, ptr %val, align 1
  %272 = load i8, ptr %min_space_cfg, align 4
  %conv90 = zext i8 %272 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %conv90) #7
  %273 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i584 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %275 = ptrtoint ptr %write8_async.i584 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write8_async.i584, align 4
  tail call void %276(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %274) #7
  %cfg.i585 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %277 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %278, i32 0, i32 1
  %279 = ptrtoint ptr %write_readback.i586 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %write_readback.i586, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool.not.i587 = icmp eq i8 %280, 0
  br i1 %tobool.not.i587, label %if.end82.sw.epilog300_crit_edge, label %if.then.i590

if.end82.sw.epilog300_crit_edge:                  ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i590:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i588 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %281 = ptrtoint ptr %read8_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %read8_sync.i588, align 4
  %call.i589 = tail call zeroext i8 %282(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog300

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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv100) #7
  %287 = ptrtoint ptr %min_space_cfg95 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %min_space_cfg95, align 4
  %write8_async.i592 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %289 = ptrtoint ptr %write8_async.i592 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %write8_async.i592, align 4
  tail call void %290(ptr noundef %1, i32 noundef 1116, i8 noundef zeroext %288) #7
  %cfg.i593 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %291 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i594 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %write_readback.i594 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %write_readback.i594, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool.not.i595 = icmp eq i8 %294, 0
  br i1 %tobool.not.i595, label %sw.bb93.sw.epilog300_crit_edge, label %if.then.i598

sw.bb93.sw.epilog300_crit_edge:                   ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i598:                                     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i596 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %295 = ptrtoint ptr %read8_sync.i596 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %read8_sync.i596, align 4
  %call.i597 = tail call zeroext i8 %296(ptr noundef %1, i32 noundef 1116) #7
  br label %sw.epilog300

sw.bb102:                                         ; preds = %entry
  %297 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %298)
  %cmp105 = icmp ult i8 %298, 4
  br i1 %cmp105, label %if.then107, label %sw.bb102.sw.epilog300_crit_edge

sw.bb102.sw.epilog300_crit_edge:                  ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

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
  %write8_async.i600 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i601 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i604 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp147 = icmp eq i8 %spec.store.select, 0
  %regtoset_normal.sroa.0.1 = select i1 %cmp147, i8 64, i8 65
  %299 = ptrtoint ptr %write8_async.i600 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %write8_async.i600, align 4
  tail call void %300(ptr noundef %1, i32 noundef 1112, i8 noundef zeroext %regtoset_normal.sroa.0.1) #7
  %301 = ptrtoint ptr %cfg.i601 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cfg.i601, align 8
  %write_readback.i602 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %write_readback.i602 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %write_readback.i602, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool.not.i603 = icmp eq i8 %304, 0
  br i1 %tobool.not.i603, label %if.then107.rtl_write_byte.exit607_crit_edge, label %if.then.i606

if.then107.rtl_write_byte.exit607_crit_edge:      ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit607

if.then.i606:                                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605 = tail call zeroext i8 %306(ptr noundef %1, i32 noundef 1112) #7
  br label %rtl_write_byte.exit607

rtl_write_byte.exit607:                           ; preds = %if.then.i606, %if.then107.rtl_write_byte.exit607_crit_edge
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
  %308 = ptrtoint ptr %write8_async.i600 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %write8_async.i600, align 4
  tail call void %309(ptr noundef %1, i32 noundef 1113, i8 noundef zeroext %regtoset_normal.sroa.8.1) #7
  %310 = ptrtoint ptr %cfg.i601 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cfg.i601, align 8
  %write_readback.i602.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %write_readback.i602.1 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %write_readback.i602.1, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool.not.i603.1 = icmp eq i8 %313, 0
  br i1 %tobool.not.i603.1, label %rtl_write_byte.exit607.rtl_write_byte.exit607.1_crit_edge, label %if.then.i606.1

rtl_write_byte.exit607.rtl_write_byte.exit607.1_crit_edge: ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit607.1

if.then.i606.1:                                   ; preds = %rtl_write_byte.exit607
  call void @__sanitizer_cov_trace_pc() #9
  %314 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605.1 = tail call zeroext i8 %315(ptr noundef %1, i32 noundef 1113) #7
  br label %rtl_write_byte.exit607.1

rtl_write_byte.exit607.1:                         ; preds = %if.then.i606.1, %rtl_write_byte.exit607.rtl_write_byte.exit607.1_crit_edge
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
  %317 = ptrtoint ptr %write8_async.i600 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %write8_async.i600, align 4
  tail call void %318(ptr noundef %1, i32 noundef 1114, i8 noundef zeroext %regtoset_normal.sroa.13.1) #7
  %319 = ptrtoint ptr %cfg.i601 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %cfg.i601, align 8
  %write_readback.i602.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %320, i32 0, i32 1
  %321 = ptrtoint ptr %write_readback.i602.2 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %write_readback.i602.2, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool.not.i603.2 = icmp eq i8 %322, 0
  br i1 %tobool.not.i603.2, label %rtl_write_byte.exit607.1.rtl_write_byte.exit607.2_crit_edge, label %if.then.i606.2

rtl_write_byte.exit607.1.rtl_write_byte.exit607.2_crit_edge: ; preds = %rtl_write_byte.exit607.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit607.2

if.then.i606.2:                                   ; preds = %rtl_write_byte.exit607.1
  call void @__sanitizer_cov_trace_pc() #9
  %323 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605.2 = tail call zeroext i8 %324(ptr noundef %1, i32 noundef 1114) #7
  br label %rtl_write_byte.exit607.2

rtl_write_byte.exit607.2:                         ; preds = %if.then.i606.2, %rtl_write_byte.exit607.1.rtl_write_byte.exit607.2_crit_edge
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
  %326 = ptrtoint ptr %write8_async.i600 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write8_async.i600, align 4
  tail call void %327(ptr noundef %1, i32 noundef 1115, i8 noundef zeroext %regtoset_normal.sroa.18.1) #7
  %328 = ptrtoint ptr %cfg.i601 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %cfg.i601, align 8
  %write_readback.i602.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %write_readback.i602.3 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %write_readback.i602.3, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i603.3 = icmp eq i8 %331, 0
  br i1 %tobool.not.i603.3, label %rtl_write_byte.exit607.2.rtl_write_byte.exit607.3_crit_edge, label %if.then.i606.3

rtl_write_byte.exit607.2.rtl_write_byte.exit607.3_crit_edge: ; preds = %rtl_write_byte.exit607.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit607.3

if.then.i606.3:                                   ; preds = %rtl_write_byte.exit607.2
  call void @__sanitizer_cov_trace_pc() #9
  %332 = ptrtoint ptr %read8_sync.i604 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read8_sync.i604, align 4
  %call.i605.3 = tail call zeroext i8 %333(ptr noundef %1, i32 noundef 1115) #7
  br label %rtl_write_byte.exit607.3

rtl_write_byte.exit607.3:                         ; preds = %if.then.i606.3, %rtl_write_byte.exit607.2.rtl_write_byte.exit607.3_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv126) #7
  br label %sw.epilog300

sw.bb169:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci170) #7
  %334 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %val, align 1
  %336 = ptrtoint ptr %e_aci170 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %e_aci170, align 1
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #7
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
  br label %sw.epilog300

sw.bb178:                                         ; preds = %entry
  %345 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %347 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %347)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i608 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %348 = ptrtoint ptr %read8_sync.i608 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %read8_sync.i608, align 4
  %call.i609 = tail call zeroext i8 %349(ptr noundef %1, i32 noundef 1472) #7
  %acm_method183 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %350 = ptrtoint ptr %acm_method183 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %acm_method183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %351)
  %cmp184 = icmp ne i32 %351, 2
  %cond = zext i1 %cmp184 to i8
  %or186 = or i8 %call.i609, %cond
  %352 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %352)
  %tobool188.not = icmp eq i8 %352, 0
  br i1 %tobool188.not, label %if.else204, label %if.then189

if.then189:                                       ; preds = %sw.bb178
  %353 = zext i8 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %353, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %346, label %sw.default [
    i8 0, label %sw.bb191
    i8 2, label %sw.bb195
    i8 3, label %sw.bb199
  ]

sw.bb191:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %354 = or i8 %or186, 2
  br label %if.end221

sw.bb195:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %355 = or i8 %or186, 4
  br label %if.end221

sw.bb199:                                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %356 = or i8 %or186, 8
  br label %if.end221

sw.default:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  br label %if.end221

if.else204:                                       ; preds = %sw.bb178
  %357 = zext i8 %346 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %346, label %sw.default218 [
    i8 0, label %sw.bb206
    i8 2, label %sw.bb210
    i8 3, label %sw.bb214
  ]

sw.bb206:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %358 = and i8 %or186, -3
  br label %if.end221

sw.bb210:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %359 = and i8 %or186, -5
  br label %if.end221

sw.bb214:                                         ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %360 = and i8 %or186, -9
  br label %if.end221

sw.default218:                                    ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #9
  %conv205 = zext i8 %346 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv205) #7
  br label %if.end221

if.end221:                                        ; preds = %sw.default218, %sw.bb214, %sw.bb210, %sw.bb206, %sw.default, %sw.bb199, %sw.bb195, %sw.bb191
  %acm_ctrl.0 = phi i8 [ %or186, %sw.default ], [ %356, %sw.bb199 ], [ %355, %sw.bb195 ], [ %354, %sw.bb191 ], [ %or186, %sw.default218 ], [ %360, %sw.bb214 ], [ %359, %sw.bb210 ], [ %358, %sw.bb206 ]
  %conv222 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef %conv222) #7
  %write8_async.i610 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %361 = ptrtoint ptr %write8_async.i610 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %write8_async.i610, align 4
  tail call void %362(ptr noundef %1, i32 noundef 1472, i8 noundef zeroext %acm_ctrl.0) #7
  %cfg.i611 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %363 = ptrtoint ptr %cfg.i611 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %cfg.i611, align 8
  %write_readback.i612 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %write_readback.i612 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %write_readback.i612, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %366)
  %tobool.not.i613 = icmp eq i8 %366, 0
  br i1 %tobool.not.i613, label %if.end221.sw.epilog300_crit_edge, label %if.then.i616

if.end221.sw.epilog300_crit_edge:                 ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i616:                                     ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %367 = ptrtoint ptr %read8_sync.i608 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %read8_sync.i608, align 4
  %call.i615 = tail call zeroext i8 %368(ptr noundef %1, i32 noundef 1472) #7
  br label %sw.epilog300

sw.bb223:                                         ; preds = %entry
  %369 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %371 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %write32_async.i, align 4
  tail call void %372(ptr noundef %1, i32 noundef 1544, i32 noundef %370) #7
  %cfg.i618 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %373 = ptrtoint ptr %cfg.i618 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %cfg.i618, align 8
  %write_readback.i619 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %374, i32 0, i32 1
  %375 = ptrtoint ptr %write_readback.i619 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %write_readback.i619, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %376)
  %tobool.not.i620 = icmp eq i8 %376, 0
  br i1 %tobool.not.i620, label %sw.bb223.rtl_write_dword.exit_crit_edge, label %if.then.i622

sw.bb223.rtl_write_dword.exit_crit_edge:          ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i622:                                     ; preds = %sw.bb223
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %377 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %read32_sync.i, align 4
  %call.i621 = tail call i32 %378(ptr noundef %1, i32 noundef 1544) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i622, %sw.bb223.rtl_write_dword.exit_crit_edge
  %379 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %381 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %receive_config, align 4
  br label %sw.epilog300

sw.bb226:                                         ; preds = %entry
  %382 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %val, align 1
  %conv228 = zext i8 %383 to i32
  %shl229 = shl nuw nsw i32 %conv228, 8
  %or232 = or i32 %shl229, %conv228
  %conv233 = trunc i32 %or232 to i16
  %write16_async.i623 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %384 = ptrtoint ptr %write16_async.i623 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %write16_async.i623, align 4
  tail call void %385(ptr noundef %1, i32 noundef 1066, i16 noundef zeroext %conv233) #7
  %cfg.i624 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %386 = ptrtoint ptr %cfg.i624 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %cfg.i624, align 8
  %write_readback.i625 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %write_readback.i625 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %write_readback.i625, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %389)
  %tobool.not.i626 = icmp eq i8 %389, 0
  br i1 %tobool.not.i626, label %sw.bb226.sw.epilog300_crit_edge, label %if.then.i629

sw.bb226.sw.epilog300_crit_edge:                  ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i629:                                     ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i627 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %390 = ptrtoint ptr %read16_sync.i627 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %read16_sync.i627, align 4
  %call.i628 = tail call zeroext i16 %391(ptr noundef %1, i32 noundef 1066) #7
  br label %sw.epilog300

sw.bb234:                                         ; preds = %entry
  %write8_async.i631 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %392 = ptrtoint ptr %write8_async.i631 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %write8_async.i631, align 4
  tail call void %393(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 3) #7
  %cfg.i632 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %394 = ptrtoint ptr %cfg.i632 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %cfg.i632, align 8
  %write_readback.i633 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %395, i32 0, i32 1
  %396 = ptrtoint ptr %write_readback.i633 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %write_readback.i633, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool.not.i634 = icmp eq i8 %397, 0
  br i1 %tobool.not.i634, label %sw.bb234.sw.epilog300_crit_edge, label %if.then.i637

sw.bb234.sw.epilog300_crit_edge:                  ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i637:                                     ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i635 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %398 = ptrtoint ptr %read8_sync.i635 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %read8_sync.i635, align 4
  %call.i636 = tail call zeroext i8 %399(ptr noundef %1, i32 noundef 1363) #7
  br label %sw.epilog300

sw.bb235:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %400)
  %401 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %402 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 %401, ptr %efuse_usedbytes, align 4
  br label %sw.epilog300

sw.bb236:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %403 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %405 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog300

sw.bb237:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %406 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %val, align 4
  %call238 = tail call zeroext i1 @rtl8723be_phy_set_io_cmd(ptr noundef %hw, i32 noundef %407) #7
  br label %sw.epilog300

sw.bb239:                                         ; preds = %entry
  %read8_sync.i639 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %408 = ptrtoint ptr %read8_sync.i639 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %read8_sync.i639, align 4
  %call.i640 = tail call zeroext i8 %409(ptr noundef %1, i32 noundef 865) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %410 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %410(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i640)
  %tobool243.not = icmp sgt i8 %call.i640, -1
  %411 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %val, align 1
  br i1 %tobool243.not, label %if.else245, label %if.then244

if.then244:                                       ; preds = %sw.bb239
  %write8_async.i641 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %413 = ptrtoint ptr %write8_async.i641 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %write8_async.i641, align 4
  tail call void %414(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %412) #7
  %cfg.i642 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %415 = ptrtoint ptr %cfg.i642 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %cfg.i642, align 8
  %write_readback.i643 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %416, i32 0, i32 1
  %417 = ptrtoint ptr %write_readback.i643 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %write_readback.i643, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool.not.i644 = icmp eq i8 %418, 0
  br i1 %tobool.not.i644, label %if.then244.sw.epilog300_crit_edge, label %if.then.i647

if.then244.sw.epilog300_crit_edge:                ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i647:                                     ; preds = %if.then244
  call void @__sanitizer_cov_trace_pc() #9
  %419 = ptrtoint ptr %read8_sync.i639 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %read8_sync.i639, align 4
  %call.i646 = tail call zeroext i8 %420(ptr noundef %1, i32 noundef 865) #7
  br label %sw.epilog300

if.else245:                                       ; preds = %sw.bb239
  %421 = or i8 %412, -128
  %write8_async.i649 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %422 = ptrtoint ptr %write8_async.i649 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %write8_async.i649, align 4
  tail call void %423(ptr noundef %1, i32 noundef 865, i8 noundef zeroext %421) #7
  %cfg.i650 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %424 = ptrtoint ptr %cfg.i650 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cfg.i650, align 8
  %write_readback.i651 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %write_readback.i651 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %write_readback.i651, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool.not.i652 = icmp eq i8 %427, 0
  br i1 %tobool.not.i652, label %if.else245.sw.epilog300_crit_edge, label %if.then.i655

if.else245.sw.epilog300_crit_edge:                ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i655:                                     ; preds = %if.else245
  call void @__sanitizer_cov_trace_pc() #9
  %428 = ptrtoint ptr %read8_sync.i639 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %read8_sync.i639, align 4
  %call.i654 = tail call zeroext i8 %429(ptr noundef %1, i32 noundef 865) #7
  br label %sw.epilog300

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %430 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %val, align 1
  tail call void @rtl8723be_set_fw_pwrmode_cmd(ptr noundef %hw, i8 noundef zeroext %431) #7
  br label %sw.epilog300

sw.bb251:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %432 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %val, align 1, !range !133
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %434 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog300

sw.bb253:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl8723be_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext true) #7
  br label %sw.epilog300

sw.bb254:                                         ; preds = %entry
  %435 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %val, align 1, !range !133
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
  %439 = load i8, ptr %low_power_enable.i, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %tobool.not.i657 = icmp eq i8 %439, 0
  br i1 %tobool.not.i657, label %if.else.i, label %if.then.i659

if.then.i659:                                     ; preds = %if.then258
  %cfg.i658 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %440 = ptrtoint ptr %cfg.i658 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %cfg.i658, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %441, i32 0, i32 4
  %442 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %443, i32 0, i32 20
  %444 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %set_hw_reg.i, align 4
  call void %445(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #7
  %446 = ptrtoint ptr %cfg.i658 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cfg.i658, align 8
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val.addr.i.i) #7
  %453 = ptrtoint ptr %rpwm_val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 1, ptr %rpwm_val.addr.i.i, align 1
  %454 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rtstate.i.i) #7
  %456 = ptrtoint ptr %rtstate.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 -1, ptr %rtstate.i.i, align 4, !annotation !132
  %fw_ready.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 10, i32 38
  %457 = ptrtoint ptr %fw_ready.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %fw_ready.i.i, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %458)
  %tobool.not.i.i = icmp eq i8 %458, 0
  br i1 %tobool.not.i.i, label %if.then.i659._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %if.end.i.i

if.then.i659._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %if.then.i659
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.end.i.i:                                       ; preds = %if.then.i659
  %fw_current_inpsmode.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 21, i32 13
  %459 = ptrtoint ptr %fw_current_inpsmode.i.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %fw_current_inpsmode.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %tobool5.not.i.i = icmp eq i8 %460, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %if.end7.i.i

if.end.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %allow_sw_to_change_hwclc.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 10, i32 48
  %461 = ptrtoint ptr %allow_sw_to_change_hwclc.i.i to i32
  call void @__asan_load1_noabort(i32 %461)
  %462 = load i8, ptr %allow_sw_to_change_hwclc.i.i, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %462)
  %tobool8.not.i.i = icmp eq i8 %462, 0
  br i1 %tobool8.not.i.i, label %if.end7.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %if.end10.i.i

if.end7.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 32
  %463 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %464, i32 0, i32 4
  %465 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ops.i.i, align 4
  %get_hw_reg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %466, i32 0, i32 19
  %467 = ptrtoint ptr %get_hw_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %get_hw_reg.i.i, align 4
  call void %468(ptr noundef %hw, i8 noundef zeroext 40, ptr noundef nonnull %rtstate.i.i) #7
  %469 = ptrtoint ptr %rtstate.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %rtstate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %470)
  %cmp.i.i = icmp eq i32 %470, 2
  br i1 %cmp.i.i, label %if.end10.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %lor.lhs.false.i.i

if.end10.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end10.i.i
  %inactive_pwrstate.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 21, i32 23
  %471 = ptrtoint ptr %inactive_pwrstate.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %inactive_pwrstate.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %472)
  %cmp12.i.i = icmp eq i32 %472, 2
  br i1 %cmp12.i.i, label %lor.lhs.false.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %qlen.i.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 0, i32 4
  %473 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %qlen.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %474)
  %tobool18.not.i.i = icmp eq i32 %474, 0
  br i1 %tobool18.not.i.i, label %for.cond.i.i, label %for.cond.preheader.i.i.if.then22.critedge.i.i_crit_edge

for.cond.preheader.i.i.if.then22.critedge.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.i.i:                                     ; preds = %for.cond.preheader.i.i
  %qlen.i.1.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 1, i32 3
  %475 = ptrtoint ptr %qlen.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %qlen.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %476)
  %tobool18.not.1.i.i = icmp eq i32 %476, 0
  br i1 %tobool18.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.then22.critedge.i.i_crit_edge

for.cond.i.i.if.then22.critedge.i.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %qlen.i.2.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 2, i32 1, i32 4, i32 7
  %477 = ptrtoint ptr %qlen.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %qlen.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %478)
  %tobool18.not.2.i.i = icmp eq i32 %478, 0
  br i1 %tobool18.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.then22.critedge.i.i_crit_edge

for.cond.1.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %qlen.i.3.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4, i32 6
  %479 = ptrtoint ptr %qlen.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %qlen.i.3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %tobool18.not.3.i.i = icmp eq i32 %480, 0
  br i1 %tobool18.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.if.then22.critedge.i.i_crit_edge

for.cond.2.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %qlen.i.4.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %481 = ptrtoint ptr %qlen.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %qlen.i.4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %482)
  %tobool18.not.4.i.i = icmp eq i32 %482, 0
  br i1 %tobool18.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.if.then22.critedge.i.i_crit_edge

for.cond.3.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %qlen.i.5.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 7, i32 0, i32 0, i32 4, i32 2
  %483 = ptrtoint ptr %qlen.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %qlen.i.5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %484)
  %tobool18.not.5.i.i = icmp eq i32 %484, 0
  br i1 %tobool18.not.5.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.if.then22.critedge.i.i_crit_edge

for.cond.4.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %qlen.i.6.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 9, i32 0, i32 0, i32 4, i32 1, i32 1
  %485 = ptrtoint ptr %qlen.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %qlen.i.6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %486)
  %tobool18.not.6.i.i = icmp eq i32 %486, 0
  br i1 %tobool18.not.6.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.if.then22.critedge.i.i_crit_edge

for.cond.5.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  %qlen.i.7.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 11, i32 0, i32 0, i32 4, i32 1
  %487 = ptrtoint ptr %qlen.i.7.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %qlen.i.7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %tobool18.not.7.i.i = icmp eq i32 %488, 0
  br i1 %tobool18.not.7.i.i, label %for.cond.7.i.i, label %for.cond.6.i.i.if.then22.critedge.i.i_crit_edge

for.cond.6.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  %qlen.i.8.i.i = getelementptr %struct.rtl_priv, ptr %455, i32 1, i32 7, i32 13, i32 0, i32 0, i32 4
  %489 = ptrtoint ptr %qlen.i.8.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %qlen.i.8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool18.not.8.i.i = icmp eq i32 %490, 0
  br i1 %tobool18.not.8.i.i, label %for.cond.8.i.i, label %for.cond.7.i.i.if.then22.critedge.i.i_crit_edge

for.cond.7.i.i.if.then22.critedge.i.i_crit_edge:  ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.critedge.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  %fw_ps_state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 10, i32 49
  %491 = ptrtoint ptr %fw_ps_state.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %fw_ps_state.i.i, align 1
  %493 = and i8 %492, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %493)
  %cmp27.not.i.i = icmp eq i8 %493, 1
  br i1 %cmp27.not.i.i, label %for.cond.8.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, label %if.then29.i.i

for.cond.8.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge: ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.then22.critedge.i.i:                           ; preds = %for.cond.7.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.6.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.5.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.4.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.3.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.2.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.1.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.i.i.if.then22.critedge.i.i_crit_edge, %for.cond.preheader.i.i.if.then22.critedge.i.i_crit_edge
  %fw_clockoff_timer.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %494 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %494, 1
  %call24.i.i = call i32 @mod_timer(ptr noundef %fw_clockoff_timer.i.i, i32 noundef %add.i.i) #7
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.then29.i.i:                                    ; preds = %for.cond.8.i.i
  %fw_ps_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 7, i32 11
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock.i.i) #7
  %fw_clk_change_in_progress.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 10, i32 47
  %495 = ptrtoint ptr %fw_clk_change_in_progress.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %fw_clk_change_in_progress.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool30.not.i.i = icmp eq i8 %496, 0
  br i1 %tobool30.not.i.i, label %if.then31.i.i, label %if.else.i.i

if.then31.i.i:                                    ; preds = %if.then29.i.i
  %497 = ptrtoint ptr %fw_clk_change_in_progress.i.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 1, ptr %fw_clk_change_in_progress.i.i, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock.i.i) #7
  %498 = ptrtoint ptr %rpwm_val.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %rpwm_val.addr.i.i, align 1
  %500 = and i8 %499, 15
  %501 = ptrtoint ptr %fw_ps_state.i.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %500, ptr %fw_ps_state.i.i, align 1
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 13, i32 6
  %502 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %write16_async.i.i.i, align 4
  call void %503(ptr noundef %455, i32 noundef 180, i16 noundef zeroext 256) #7
  %504 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %505, i32 0, i32 1
  %506 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %507)
  %tobool.not.i.i.i = icmp eq i8 %507, 0
  br i1 %tobool.not.i.i.i, label %if.then31.i.i.rtl_write_word.exit.i.i_crit_edge, label %if.then.i.i.i

if.then31.i.i.rtl_write_word.exit.i.i_crit_edge:  ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 13, i32 10
  %508 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i16 %509(ptr noundef %455, i32 noundef 180) #7
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then31.i.i.rtl_write_word.exit.i.i_crit_edge
  %510 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %cfg.i.i, align 8
  %ops40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %511, i32 0, i32 4
  %512 = ptrtoint ptr %ops40.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ops40.i.i, align 4
  %set_hw_reg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %513, i32 0, i32 20
  %514 = ptrtoint ptr %set_hw_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %set_hw_reg.i.i, align 4
  call void %515(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.addr.i.i) #7
  call void @_raw_spin_lock_bh(ptr noundef %fw_ps_lock.i.i) #7
  %516 = ptrtoint ptr %fw_clk_change_in_progress.i.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %fw_clk_change_in_progress.i.i, align 1
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock.i.i) #7
  br label %_rtl8723be_set_fw_clock_off.exit.i

if.else.i.i:                                      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef %fw_ps_lock.i.i) #7
  %fw_clockoff_timer49.i.i = getelementptr inbounds %struct.rtl_priv, ptr %455, i32 0, i32 8, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %517 = load volatile i32, ptr @jiffies, align 128
  %add51.i.i = add i32 %517, 1
  %call52.i.i = call i32 @mod_timer(ptr noundef %fw_clockoff_timer49.i.i, i32 noundef %add51.i.i) #7
  br label %_rtl8723be_set_fw_clock_off.exit.i

_rtl8723be_set_fw_clock_off.exit.i:               ; preds = %if.else.i.i, %rtl_write_word.exit.i.i, %if.then22.critedge.i.i, %for.cond.8.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, %lor.lhs.false.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, %if.end10.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, %if.end7.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, %if.end.i.i._rtl8723be_set_fw_clock_off.exit.i_crit_edge, %if.then.i659._rtl8723be_set_fw_clock_off.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rtstate.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val.addr.i.i) #7
  br label %_rtl8723be_fwlps_enter.exit

if.else.i:                                        ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #9
  %518 = ptrtoint ptr %rpwm_val.i to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 0, ptr %rpwm_val.i, align 1
  %cfg7.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %519 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %cfg7.i, align 8
  %ops8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %520, i32 0, i32 4
  %521 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %ops8.i, align 4
  %set_hw_reg9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %522, i32 0, i32 20
  %523 = ptrtoint ptr %set_hw_reg9.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %set_hw_reg9.i, align 4
  call void %524(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps.i) #7
  %525 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %cfg7.i, align 8
  %ops11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %526, i32 0, i32 4
  %527 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %ops11.i, align 4
  %set_hw_reg12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %528, i32 0, i32 20
  %529 = ptrtoint ptr %set_hw_reg12.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %set_hw_reg12.i, align 4
  %fwctrl_psmode13.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %530(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode13.i) #7
  %531 = ptrtoint ptr %cfg7.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %cfg7.i, align 8
  %ops15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %532, i32 0, i32 4
  %533 = ptrtoint ptr %ops15.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %ops15.i, align 4
  %set_hw_reg16.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %534, i32 0, i32 20
  %535 = ptrtoint ptr %set_hw_reg16.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %set_hw_reg16.i, align 4
  call void %536(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val.i) #7
  br label %_rtl8723be_fwlps_enter.exit

_rtl8723be_fwlps_enter.exit:                      ; preds = %if.else.i, %_rtl8723be_set_fw_clock_off.exit.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps.i) #7
  br label %sw.epilog300

if.else259:                                       ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl8723be_fwlps_leave(ptr noundef %hw)
  br label %sw.epilog300

sw.bb261:                                         ; preds = %entry
  %537 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %538)
  %cmp263 = icmp eq i8 %538, 1
  br i1 %cmp263, label %if.then265, label %sw.bb261.if.end269_crit_edge

sw.bb261.if.end269_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end269

if.then265:                                       ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #9
  %cfg266 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %539 = ptrtoint ptr %cfg266 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %cfg266, align 8
  %ops267 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %540, i32 0, i32 4
  %541 = ptrtoint ptr %ops267 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %ops267, align 4
  %set_hw_reg268 = getelementptr inbounds %struct.rtl_hal_ops, ptr %542, i32 0, i32 20
  %543 = ptrtoint ptr %set_hw_reg268 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %set_hw_reg268, align 4
  tail call void %544(ptr noundef %hw, i8 noundef zeroext 82, ptr noundef null) #7
  tail call fastcc void @_rtl8723be_download_rsvd_page(ptr noundef %hw)
  br label %if.end269

if.end269:                                        ; preds = %if.then265, %sw.bb261.if.end269_crit_edge
  tail call void @rtl8723be_set_fw_media_status_rpt_cmd(ptr noundef %hw, i8 noundef zeroext %538) #7
  br label %sw.epilog300

sw.bb270:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %545 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %545)
  %546 = load i8, ptr %val, align 1
  tail call void @rtl8723be_set_p2p_ps_offload_cmd(ptr noundef %hw, i8 noundef zeroext %546) #7
  br label %sw.epilog300

sw.bb271:                                         ; preds = %entry
  %read16_sync.i660 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %547 = ptrtoint ptr %read16_sync.i660 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %read16_sync.i660, align 4
  %call.i661 = tail call zeroext i16 %548(ptr noundef %1, i32 noundef 1704) #7
  %549 = and i16 %call.i661, -16384
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %550 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %assoc_id, align 2
  %or278467 = or i16 %549, %551
  %write16_async.i662 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %552 = ptrtoint ptr %write16_async.i662 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %write16_async.i662, align 4
  tail call void %553(ptr noundef %1, i32 noundef 1704, i16 noundef zeroext %or278467) #7
  %cfg.i663 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %554 = ptrtoint ptr %cfg.i663 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %cfg.i663, align 8
  %write_readback.i664 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %555, i32 0, i32 1
  %556 = ptrtoint ptr %write_readback.i664 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %write_readback.i664, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %557)
  %tobool.not.i665 = icmp eq i8 %557, 0
  br i1 %tobool.not.i665, label %sw.bb271.sw.epilog300_crit_edge, label %if.then.i668

sw.bb271.sw.epilog300_crit_edge:                  ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i668:                                     ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #9
  %558 = ptrtoint ptr %read16_sync.i660 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %read16_sync.i660, align 4
  %call.i667 = tail call zeroext i16 %559(ptr noundef %1, i32 noundef 1704) #7
  br label %sw.epilog300

sw.bb280:                                         ; preds = %entry
  %560 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %561)
  %tobool282.not = icmp eq i8 %561, 0
  br i1 %tobool282.not, label %if.end293.critedge, label %if.then283

if.then283:                                       ; preds = %sw.bb280
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %562 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %563(ptr noundef %1, i32 noundef 1058) #7
  %564 = and i8 %call.i.i, -65
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %565 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %566(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %564) #7
  %cfg.i.i671 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %567 = ptrtoint ptr %cfg.i.i671 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %cfg.i.i671, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %568, i32 0, i32 1
  %569 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %569)
  %570 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %570)
  %tobool.not.i.i672 = icmp eq i8 %570, 0
  br i1 %tobool.not.i.i672, label %if.then283.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then283.rtl_write_byte.exit.i_crit_edge:       ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #9
  %571 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %572(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then283.rtl_write_byte.exit.i_crit_edge
  %573 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %574(ptr noundef %1, i32 noundef 1345, i8 noundef zeroext 100) #7
  %575 = ptrtoint ptr %cfg.i.i671 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %cfg.i.i671, align 8
  %write_readback.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %576, i32 0, i32 1
  %577 = ptrtoint ptr %write_readback.i16.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %write_readback.i16.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %578)
  %tobool.not.i17.i = icmp eq i8 %578, 0
  br i1 %tobool.not.i17.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge, label %if.then.i20.i

rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i

if.then.i20.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %579 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i19.i = tail call zeroext i8 %580(ptr noundef %1, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i

rtl_write_byte.exit21.i:                          ; preds = %if.then.i20.i, %rtl_write_byte.exit.i.rtl_write_byte.exit21.i_crit_edge
  %581 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i23.i = tail call zeroext i8 %582(ptr noundef %1, i32 noundef 1346) #7
  %583 = and i8 %call.i23.i, -2
  %584 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %585(ptr noundef %1, i32 noundef 1346, i8 noundef zeroext %583) #7
  %586 = ptrtoint ptr %cfg.i.i671 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %cfg.i.i671, align 8
  %write_readback.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %587, i32 0, i32 1
  %588 = ptrtoint ptr %write_readback.i26.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %write_readback.i26.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %589)
  %tobool.not.i27.i = icmp eq i8 %589, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %590 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %591(ptr noundef %1, i32 noundef 1346) #7
  br label %_rtl8723be_stop_tx_beacon.exit

_rtl8723be_stop_tx_beacon.exit:                   ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge
  %592 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %593, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %594 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %595, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i674 = getelementptr inbounds %struct.rtl_priv, ptr %593, i32 0, i32 13, i32 5
  %596 = ptrtoint ptr %write8_async.i.i674 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %write8_async.i.i674, align 4
  tail call void %597(ptr noundef %593, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i675 = getelementptr inbounds %struct.rtl_priv, ptr %593, i32 0, i32 32
  %598 = ptrtoint ptr %cfg.i.i675 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %cfg.i.i675, align 8
  %write_readback.i.i676 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %599, i32 0, i32 1
  %600 = ptrtoint ptr %write_readback.i.i676 to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %write_readback.i.i676, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %601)
  %tobool.not.i.i677 = icmp eq i8 %601, 0
  br i1 %tobool.not.i.i677, label %_rtl8723be_stop_tx_beacon.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i680

_rtl8723be_stop_tx_beacon.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %_rtl8723be_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit

if.then.i.i680:                                   ; preds = %_rtl8723be_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i678 = getelementptr inbounds %struct.rtl_priv, ptr %593, i32 0, i32 13, i32 9
  %602 = ptrtoint ptr %read8_sync.i.i678 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %read8_sync.i.i678, align 4
  %call.i.i679 = tail call zeroext i8 %603(ptr noundef %593, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit

_rtl8723be_set_bcn_ctrl_reg.exit:                 ; preds = %if.then.i.i680, %_rtl8723be_stop_tx_beacon.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge
  %tsf.c = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %604 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %604)
  %605 = load i64, ptr %tsf.c, align 8
  %conv286.c = trunc i64 %605 to i32
  %write32_async.i682 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %606 = ptrtoint ptr %write32_async.i682 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %write32_async.i682, align 4
  tail call void %607(ptr noundef %1, i32 noundef 1376, i32 noundef %conv286.c) #7
  %608 = ptrtoint ptr %cfg.i.i671 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cfg.i.i671, align 8
  %write_readback.i684 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %609, i32 0, i32 1
  %610 = ptrtoint ptr %write_readback.i684 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %write_readback.i684, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %611)
  %tobool.not.i685 = icmp eq i8 %611, 0
  br i1 %tobool.not.i685, label %_rtl8723be_set_bcn_ctrl_reg.exit.rtl_write_dword.exit689_crit_edge, label %if.then.i688

_rtl8723be_set_bcn_ctrl_reg.exit.rtl_write_dword.exit689_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit689

if.then.i688:                                     ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i686 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %612 = ptrtoint ptr %read32_sync.i686 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %read32_sync.i686, align 4
  %call.i687 = tail call i32 %613(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit689

rtl_write_dword.exit689:                          ; preds = %if.then.i688, %_rtl8723be_set_bcn_ctrl_reg.exit.rtl_write_dword.exit689_crit_edge
  %614 = ptrtoint ptr %tsf.c to i32
  call void @__asan_load8_noabort(i32 %614)
  %615 = load i64, ptr %tsf.c, align 8
  %shr288.c = lshr i64 %615, 32
  %conv290.c = trunc i64 %shr288.c to i32
  %616 = ptrtoint ptr %write32_async.i682 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write32_async.i682, align 4
  tail call void %617(ptr noundef %1, i32 noundef 1380, i32 noundef %conv290.c) #7
  %618 = ptrtoint ptr %cfg.i.i671 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %cfg.i.i671, align 8
  %write_readback.i692 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %write_readback.i692 to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %write_readback.i692, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool.not.i693 = icmp eq i8 %621, 0
  br i1 %tobool.not.i693, label %rtl_write_dword.exit689.rtl_write_dword.exit697_crit_edge, label %if.then.i696

rtl_write_dword.exit689.rtl_write_dword.exit697_crit_edge: ; preds = %rtl_write_dword.exit689
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit697

if.then.i696:                                     ; preds = %rtl_write_dword.exit689
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i694 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %622 = ptrtoint ptr %read32_sync.i694 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read32_sync.i694, align 4
  %call.i695 = tail call i32 %623(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit697

rtl_write_dword.exit697:                          ; preds = %if.then.i696, %rtl_write_dword.exit689.rtl_write_dword.exit697_crit_edge
  %624 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i699 = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %626 = ptrtoint ptr %reg_bcn_ctrl_val.i699 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %reg_bcn_ctrl_val.i699, align 4
  %or.i = or i32 %627, 8
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i699, align 4
  %conv6.i700 = trunc i32 %or.i to i8
  %write8_async.i.i701 = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 0, i32 13, i32 5
  %628 = ptrtoint ptr %write8_async.i.i701 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %write8_async.i.i701, align 4
  tail call void %629(ptr noundef %625, i32 noundef 1360, i8 noundef zeroext %conv6.i700) #7
  %cfg.i.i702 = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 0, i32 32
  %630 = ptrtoint ptr %cfg.i.i702 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %cfg.i.i702, align 8
  %write_readback.i.i703 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %631, i32 0, i32 1
  %632 = ptrtoint ptr %write_readback.i.i703 to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %write_readback.i.i703, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %633)
  %tobool.not.i.i704 = icmp eq i8 %633, 0
  br i1 %tobool.not.i.i704, label %rtl_write_dword.exit697._rtl8723be_set_bcn_ctrl_reg.exit709_crit_edge, label %if.then.i.i707

rtl_write_dword.exit697._rtl8723be_set_bcn_ctrl_reg.exit709_crit_edge: ; preds = %rtl_write_dword.exit697
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit709

if.then.i.i707:                                   ; preds = %rtl_write_dword.exit697
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i705 = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 0, i32 13, i32 9
  %634 = ptrtoint ptr %read8_sync.i.i705 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %read8_sync.i.i705, align 4
  %call.i.i706 = tail call zeroext i8 %635(ptr noundef %625, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit709

_rtl8723be_set_bcn_ctrl_reg.exit709:              ; preds = %if.then.i.i707, %rtl_write_dword.exit697._rtl8723be_set_bcn_ctrl_reg.exit709_crit_edge
  %636 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %priv, align 8
  %read8_sync.i.i711 = getelementptr inbounds %struct.rtl_priv, ptr %637, i32 0, i32 13, i32 9
  %638 = ptrtoint ptr %read8_sync.i.i711 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %read8_sync.i.i711, align 4
  %call.i.i712 = tail call zeroext i8 %639(ptr noundef %637, i32 noundef 1058) #7
  %640 = or i8 %call.i.i712, 64
  %write8_async.i.i713 = getelementptr inbounds %struct.rtl_priv, ptr %637, i32 0, i32 13, i32 5
  %641 = ptrtoint ptr %write8_async.i.i713 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %write8_async.i.i713, align 4
  tail call void %642(ptr noundef %637, i32 noundef 1058, i8 noundef zeroext %640) #7
  %cfg.i.i714 = getelementptr inbounds %struct.rtl_priv, ptr %637, i32 0, i32 32
  %643 = ptrtoint ptr %cfg.i.i714 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %cfg.i.i714, align 8
  %write_readback.i.i715 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %644, i32 0, i32 1
  %645 = ptrtoint ptr %write_readback.i.i715 to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %write_readback.i.i715, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %tobool.not.i.i716 = icmp eq i8 %646, 0
  br i1 %tobool.not.i.i716, label %_rtl8723be_set_bcn_ctrl_reg.exit709.rtl_write_byte.exit.i721_crit_edge, label %if.then.i.i718

_rtl8723be_set_bcn_ctrl_reg.exit709.rtl_write_byte.exit.i721_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit709
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i721

if.then.i.i718:                                   ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit709
  call void @__sanitizer_cov_trace_pc() #9
  %647 = ptrtoint ptr %read8_sync.i.i711 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %read8_sync.i.i711, align 4
  %call.i13.i717 = tail call zeroext i8 %648(ptr noundef %637, i32 noundef 1058) #7
  br label %rtl_write_byte.exit.i721

rtl_write_byte.exit.i721:                         ; preds = %if.then.i.i718, %_rtl8723be_set_bcn_ctrl_reg.exit709.rtl_write_byte.exit.i721_crit_edge
  %649 = ptrtoint ptr %write8_async.i.i713 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %write8_async.i.i713, align 4
  tail call void %650(ptr noundef %637, i32 noundef 1345, i8 noundef zeroext -1) #7
  %651 = ptrtoint ptr %cfg.i.i714 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %cfg.i.i714, align 8
  %write_readback.i16.i719 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %652, i32 0, i32 1
  %653 = ptrtoint ptr %write_readback.i16.i719 to i32
  call void @__asan_load1_noabort(i32 %653)
  %654 = load i8, ptr %write_readback.i16.i719, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %654)
  %tobool.not.i17.i720 = icmp eq i8 %654, 0
  br i1 %tobool.not.i17.i720, label %rtl_write_byte.exit.i721.rtl_write_byte.exit21.i727_crit_edge, label %if.then.i20.i723

rtl_write_byte.exit.i721.rtl_write_byte.exit21.i727_crit_edge: ; preds = %rtl_write_byte.exit.i721
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit21.i727

if.then.i20.i723:                                 ; preds = %rtl_write_byte.exit.i721
  call void @__sanitizer_cov_trace_pc() #9
  %655 = ptrtoint ptr %read8_sync.i.i711 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %read8_sync.i.i711, align 4
  %call.i19.i722 = tail call zeroext i8 %656(ptr noundef %637, i32 noundef 1345) #7
  br label %rtl_write_byte.exit21.i727

rtl_write_byte.exit21.i727:                       ; preds = %if.then.i20.i723, %rtl_write_byte.exit.i721.rtl_write_byte.exit21.i727_crit_edge
  %657 = ptrtoint ptr %read8_sync.i.i711 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %read8_sync.i.i711, align 4
  %call.i23.i724 = tail call zeroext i8 %658(ptr noundef %637, i32 noundef 1346) #7
  %659 = or i8 %call.i23.i724, 2
  %660 = ptrtoint ptr %write8_async.i.i713 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %write8_async.i.i713, align 4
  tail call void %661(ptr noundef %637, i32 noundef 1346, i8 noundef zeroext %659) #7
  %662 = ptrtoint ptr %cfg.i.i714 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %cfg.i.i714, align 8
  %write_readback.i26.i725 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %663, i32 0, i32 1
  %664 = ptrtoint ptr %write_readback.i26.i725 to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %write_readback.i26.i725, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %665)
  %tobool.not.i27.i726 = icmp eq i8 %665, 0
  br i1 %tobool.not.i27.i726, label %rtl_write_byte.exit21.i727.sw.epilog300_crit_edge, label %if.then.i30.i729

rtl_write_byte.exit21.i727.sw.epilog300_crit_edge: ; preds = %rtl_write_byte.exit21.i727
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i30.i729:                                 ; preds = %rtl_write_byte.exit21.i727
  call void @__sanitizer_cov_trace_pc() #9
  %666 = ptrtoint ptr %read8_sync.i.i711 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %read8_sync.i.i711, align 4
  %call.i29.i728 = tail call zeroext i8 %667(ptr noundef %637, i32 noundef 1346) #7
  br label %sw.epilog300

if.end293.critedge:                               ; preds = %sw.bb280
  %reg_bcn_ctrl_val.i731 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %668 = ptrtoint ptr %reg_bcn_ctrl_val.i731 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %reg_bcn_ctrl_val.i731, align 4
  %and.i732 = and i32 %669, -9
  store i32 %and.i732, ptr %reg_bcn_ctrl_val.i731, align 4
  %conv6.i733 = trunc i32 %and.i732 to i8
  %write8_async.i.i734 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %670 = ptrtoint ptr %write8_async.i.i734 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %write8_async.i.i734, align 4
  tail call void %671(ptr noundef %1, i32 noundef 1360, i8 noundef zeroext %conv6.i733) #7
  %cfg.i.i735 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %672 = ptrtoint ptr %cfg.i.i735 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %cfg.i.i735, align 8
  %write_readback.i.i736 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %673, i32 0, i32 1
  %674 = ptrtoint ptr %write_readback.i.i736 to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %write_readback.i.i736, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %675)
  %tobool.not.i.i737 = icmp eq i8 %675, 0
  br i1 %tobool.not.i.i737, label %if.end293.critedge._rtl8723be_set_bcn_ctrl_reg.exit742_crit_edge, label %if.then.i.i740

if.end293.critedge._rtl8723be_set_bcn_ctrl_reg.exit742_crit_edge: ; preds = %if.end293.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit742

if.then.i.i740:                                   ; preds = %if.end293.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i738 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %676 = ptrtoint ptr %read8_sync.i.i738 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %read8_sync.i.i738, align 4
  %call.i.i739 = tail call zeroext i8 %677(ptr noundef %1, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit742

_rtl8723be_set_bcn_ctrl_reg.exit742:              ; preds = %if.then.i.i740, %if.end293.critedge._rtl8723be_set_bcn_ctrl_reg.exit742_crit_edge
  %tsf.c469 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 49
  %678 = ptrtoint ptr %tsf.c469 to i32
  call void @__asan_load8_noabort(i32 %678)
  %679 = load i64, ptr %tsf.c469, align 8
  %conv286.c470 = trunc i64 %679 to i32
  %write32_async.i743 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %680 = ptrtoint ptr %write32_async.i743 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %write32_async.i743, align 4
  tail call void %681(ptr noundef %1, i32 noundef 1376, i32 noundef %conv286.c470) #7
  %682 = ptrtoint ptr %cfg.i.i735 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %cfg.i.i735, align 8
  %write_readback.i745 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %683, i32 0, i32 1
  %684 = ptrtoint ptr %write_readback.i745 to i32
  call void @__asan_load1_noabort(i32 %684)
  %685 = load i8, ptr %write_readback.i745, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %685)
  %tobool.not.i746 = icmp eq i8 %685, 0
  br i1 %tobool.not.i746, label %_rtl8723be_set_bcn_ctrl_reg.exit742.rtl_write_dword.exit750_crit_edge, label %if.then.i749

_rtl8723be_set_bcn_ctrl_reg.exit742.rtl_write_dword.exit750_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit742
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit750

if.then.i749:                                     ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit742
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i747 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %686 = ptrtoint ptr %read32_sync.i747 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %read32_sync.i747, align 4
  %call.i748 = tail call i32 %687(ptr noundef %1, i32 noundef 1376) #7
  br label %rtl_write_dword.exit750

rtl_write_dword.exit750:                          ; preds = %if.then.i749, %_rtl8723be_set_bcn_ctrl_reg.exit742.rtl_write_dword.exit750_crit_edge
  %688 = ptrtoint ptr %tsf.c469 to i32
  call void @__asan_load8_noabort(i32 %688)
  %689 = load i64, ptr %tsf.c469, align 8
  %shr288.c471 = lshr i64 %689, 32
  %conv290.c472 = trunc i64 %shr288.c471 to i32
  %690 = ptrtoint ptr %write32_async.i743 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %write32_async.i743, align 4
  tail call void %691(ptr noundef %1, i32 noundef 1380, i32 noundef %conv290.c472) #7
  %692 = ptrtoint ptr %cfg.i.i735 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %cfg.i.i735, align 8
  %write_readback.i753 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %693, i32 0, i32 1
  %694 = ptrtoint ptr %write_readback.i753 to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %write_readback.i753, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %tobool.not.i754 = icmp eq i8 %695, 0
  br i1 %tobool.not.i754, label %rtl_write_dword.exit750.rtl_write_dword.exit758_crit_edge, label %if.then.i757

rtl_write_dword.exit750.rtl_write_dword.exit758_crit_edge: ; preds = %rtl_write_dword.exit750
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit758

if.then.i757:                                     ; preds = %rtl_write_dword.exit750
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i755 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %696 = ptrtoint ptr %read32_sync.i755 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %read32_sync.i755, align 4
  %call.i756 = tail call i32 %697(ptr noundef %1, i32 noundef 1380) #7
  br label %rtl_write_dword.exit758

rtl_write_dword.exit758:                          ; preds = %if.then.i757, %rtl_write_dword.exit750.rtl_write_dword.exit758_crit_edge
  %698 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i760 = getelementptr inbounds %struct.rtl_priv, ptr %699, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %700 = ptrtoint ptr %reg_bcn_ctrl_val.i760 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %reg_bcn_ctrl_val.i760, align 4
  %or.i761 = or i32 %701, 8
  store i32 %or.i761, ptr %reg_bcn_ctrl_val.i760, align 4
  %conv6.i762 = trunc i32 %or.i761 to i8
  %write8_async.i.i763 = getelementptr inbounds %struct.rtl_priv, ptr %699, i32 0, i32 13, i32 5
  %702 = ptrtoint ptr %write8_async.i.i763 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %write8_async.i.i763, align 4
  tail call void %703(ptr noundef %699, i32 noundef 1360, i8 noundef zeroext %conv6.i762) #7
  %cfg.i.i764 = getelementptr inbounds %struct.rtl_priv, ptr %699, i32 0, i32 32
  %704 = ptrtoint ptr %cfg.i.i764 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %cfg.i.i764, align 8
  %write_readback.i.i765 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %705, i32 0, i32 1
  %706 = ptrtoint ptr %write_readback.i.i765 to i32
  call void @__asan_load1_noabort(i32 %706)
  %707 = load i8, ptr %write_readback.i.i765, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %707)
  %tobool.not.i.i766 = icmp eq i8 %707, 0
  br i1 %tobool.not.i.i766, label %rtl_write_dword.exit758.sw.epilog300_crit_edge, label %if.then.i.i769

rtl_write_dword.exit758.sw.epilog300_crit_edge:   ; preds = %rtl_write_dword.exit758
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog300

if.then.i.i769:                                   ; preds = %rtl_write_dword.exit758
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i767 = getelementptr inbounds %struct.rtl_priv, ptr %699, i32 0, i32 13, i32 9
  %708 = ptrtoint ptr %read8_sync.i.i767 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %read8_sync.i.i767, align 4
  %call.i.i768 = tail call zeroext i8 %709(ptr noundef %699, i32 noundef 1360) #7
  br label %sw.epilog300

sw.bb294:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %array) #7
  %710 = getelementptr inbounds [2 x i8], ptr %array, i32 0, i32 1
  %711 = ptrtoint ptr %array to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 -1, ptr %array, align 1
  %712 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %712)
  %713 = load i8, ptr %val, align 1
  %714 = ptrtoint ptr %710 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 %713, ptr %710, align 1
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef 2, ptr noundef nonnull %array) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %array) #7
  br label %sw.epilog300

sw.default298:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %sw.epilog300

sw.epilog300:                                     ; preds = %sw.default298, %sw.bb294, %if.then.i.i769, %rtl_write_dword.exit758.sw.epilog300_crit_edge, %if.then.i30.i729, %rtl_write_byte.exit21.i727.sw.epilog300_crit_edge, %if.then.i668, %sw.bb271.sw.epilog300_crit_edge, %sw.bb270, %if.end269, %if.else259, %_rtl8723be_fwlps_enter.exit, %sw.bb253, %sw.bb251, %sw.bb250, %if.then.i655, %if.else245.sw.epilog300_crit_edge, %if.then.i647, %if.then244.sw.epilog300_crit_edge, %sw.bb237, %sw.bb236, %sw.bb235, %if.then.i637, %sw.bb234.sw.epilog300_crit_edge, %if.then.i629, %sw.bb226.sw.epilog300_crit_edge, %rtl_write_dword.exit, %if.then.i616, %if.end221.sw.epilog300_crit_edge, %if.end177, %rtl_write_byte.exit607.3, %sw.bb102.sw.epilog300_crit_edge, %if.then.i598, %sw.bb93.sw.epilog300_crit_edge, %if.then.i590, %if.end82.sw.epilog300_crit_edge, %sw.bb72.sw.epilog300_crit_edge, %if.then.i582, %sw.bb71.sw.epilog300_crit_edge, %if.then.i574, %if.else66.sw.epilog300_crit_edge, %if.then.i566, %if.then62.sw.epilog300_crit_edge, %for.end57, %if.then.i548, %if.else.sw.epilog300_crit_edge, %if.then.i541, %if.then.sw.epilog300_crit_edge, %if.then.i503.5, %rtl_write_byte.exit504.4.sw.epilog300_crit_edge, %if.then.i495, %while.end.sw.epilog300_crit_edge, %if.then.i.5, %rtl_write_byte.exit.4.sw.epilog300_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723be_phy_set_io_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_set_fw_pwrmode_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_fwlps_leave(ptr noundef %hw) unnamed_addr #0 align 64 {
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
  %5 = load i8, ptr %low_power_enable, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl8723be_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext false)
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_download_rsvd_page(ptr noundef %hw) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 257) #7
  %4 = or i8 %call.i, 1
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %4) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i66 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_bcn_ctrl_val.i, align 4
  %and.i = and i32 %16, -9
  store i32 %and.i, ptr %reg_bcn_ctrl_val.i, align 4
  %conv6.i = trunc i32 %and.i to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %18(ptr noundef %14, i32 noundef 1360, i8 noundef zeroext %conv6.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge, label %if.then.i.i

rtl_write_byte.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit

if.then.i.i:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %24(ptr noundef %14, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit

_rtl8723be_set_bcn_ctrl_reg.exit:                 ; preds = %if.then.i.i, %rtl_write_byte.exit._rtl8723be_set_bcn_ctrl_reg.exit_crit_edge
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i68 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %reg_bcn_ctrl_val.i68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_bcn_ctrl_val.i68, align 4
  %or.i = or i32 %28, 16
  store i32 %or.i, ptr %reg_bcn_ctrl_val.i68, align 4
  %conv6.i69 = trunc i32 %or.i to i8
  %write8_async.i.i70 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %write8_async.i.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i.i70, align 4
  tail call void %30(ptr noundef %26, i32 noundef 1360, i8 noundef zeroext %conv6.i69) #7
  %cfg.i.i71 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i71 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i71, align 8
  %write_readback.i.i72 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i72 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i72, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i73 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i73, label %_rtl8723be_set_bcn_ctrl_reg.exit._rtl8723be_set_bcn_ctrl_reg.exit77_crit_edge, label %if.then.i.i76

_rtl8723be_set_bcn_ctrl_reg.exit._rtl8723be_set_bcn_ctrl_reg.exit77_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit77

if.then.i.i76:                                    ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i74 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 9
  %35 = ptrtoint ptr %read8_sync.i.i74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i.i74, align 4
  %call.i.i75 = tail call zeroext i8 %36(ptr noundef %26, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit77

_rtl8723be_set_bcn_ctrl_reg.exit77:               ; preds = %if.then.i.i76, %_rtl8723be_set_bcn_ctrl_reg.exit._rtl8723be_set_bcn_ctrl_reg.exit77_crit_edge
  %37 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i, align 4
  %call.i79 = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 1058) #7
  %and = and i8 %call.i79, -65
  %39 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %and) #7
  %41 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i, align 8
  %write_readback.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i82 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i82, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i83 = icmp eq i8 %44, 0
  br i1 %tobool.not.i83, label %_rtl8723be_set_bcn_ctrl_reg.exit77.rtl_write_byte.exit87_crit_edge, label %if.then.i86

_rtl8723be_set_bcn_ctrl_reg.exit77.rtl_write_byte.exit87_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit87

if.then.i86:                                      ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit77
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %46(ptr noundef %1, i32 noundef 1058) #7
  br label %rtl_write_byte.exit87

rtl_write_byte.exit87:                            ; preds = %if.then.i86, %_rtl8723be_set_bcn_ctrl_reg.exit77.rtl_write_byte.exit87_crit_edge
  %47 = and i8 %call.i79, 64
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %rtl_write_byte.exit87
  %dlbcn_count.0 = phi i8 [ 0, %rtl_write_byte.exit87 ], [ %inc18, %while.end.do.body_crit_edge ]
  %48 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i, align 4
  %call.i89 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 522) #7
  %50 = or i8 %call.i89, 1
  %51 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i, align 4
  tail call void %52(ptr noundef %1, i32 noundef 522, i8 noundef zeroext %50) #7
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i, align 8
  %write_readback.i92 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i92 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i92, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i93 = icmp eq i8 %56, 0
  br i1 %tobool.not.i93, label %do.body.rtl_write_byte.exit97_crit_edge, label %if.then.i96

do.body.rtl_write_byte.exit97_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit97

if.then.i96:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i, align 4
  %call.i95 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 522) #7
  br label %rtl_write_byte.exit97

rtl_write_byte.exit97:                            ; preds = %if.then.i96, %do.body.rtl_write_byte.exit97_crit_edge
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 5, i32 0, i32 0, i32 2
  %irq_th_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 0, i32 7, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #7
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %61 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not31.i = icmp eq i32 %62, 0
  br i1 %tobool.not31.i, label %rtl_write_byte.exit97._rtl8723be_return_beacon_queue_skb.exit_crit_edge, label %while.body.lr.ph.i

rtl_write_byte.exit97._rtl8723be_return_beacon_queue_skb.exit_crit_edge: ; preds = %rtl_write_byte.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_return_beacon_queue_skb.exit

while.body.lr.ph.i:                               ; preds = %rtl_write_byte.exit97
  %queue.i = getelementptr %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1, i32 1
  %idx.i = getelementptr %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4
  %cfg.i99 = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 0, i32 32
  %entries.i = getelementptr %struct.rtl_priv, ptr %60, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %__skb_dequeue.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %63 = phi i32 [ %62, %while.body.lr.ph.i ], [ %92, %__skb_dequeue.exit.i.while.body.i_crit_edge ]
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %66 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %idx.i, align 4
  %arrayidx9.i = getelementptr %struct.rtl_tx_desc, ptr %65, i32 %67
  %68 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %69, %queue.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %69
  %tobool.not.i.i100 = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i100, label %while.body.i.__skb_dequeue.exit.i_crit_edge, label %if.then.i.i101

while.body.i.__skb_dequeue.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__skb_dequeue.exit.i

if.then.i.i101:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i = add i32 %63, -1
  %70 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i, align 4
  %71 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %72, i32 0, i32 1
  %75 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %74, ptr %prev17.i.i.i, align 4
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %72, ptr %74, align 8
  br label %__skb_dequeue.exit.i

__skb_dequeue.exit.i:                             ; preds = %if.then.i.i101, %while.body.i.__skb_dequeue.exit.i_crit_edge
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 44
  %79 = ptrtoint ptr %cfg.i99 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i99, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i, align 4
  %get_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %82, i32 0, i32 38
  %83 = ptrtoint ptr %get_desc.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_desc.i, align 4
  %call13.i = tail call i64 %84(ptr noundef %hw, ptr noundef %arrayidx9.i, i1 noundef zeroext true, i8 noundef zeroext 3) #7
  %conv14.i = trunc i64 %call13.i to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i.i, i32 0, i32 6
  %85 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev12.i, i32 noundef %conv14.i, i32 noundef %86, i32 noundef 1, i32 noundef 0) #7
  tail call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i.i, i32 noundef 0) #7
  %87 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %idx.i, align 4
  %add.i = add i32 %88, 1
  %89 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %entries.i, align 4
  %rem.i = urem i32 %add.i, %90
  store i32 %rem.i, ptr %idx.i, align 4
  %91 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qlen.i.i, align 4
  %tobool.not.i102 = icmp eq i32 %92, 0
  br i1 %tobool.not.i102, label %__skb_dequeue.exit.i._rtl8723be_return_beacon_queue_skb.exit_crit_edge, label %__skb_dequeue.exit.i.while.body.i_crit_edge

__skb_dequeue.exit.i.while.body.i_crit_edge:      ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

__skb_dequeue.exit.i._rtl8723be_return_beacon_queue_skb.exit_crit_edge: ; preds = %__skb_dequeue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_return_beacon_queue_skb.exit

_rtl8723be_return_beacon_queue_skb.exit:          ; preds = %__skb_dequeue.exit.i._rtl8723be_return_beacon_queue_skb.exit_crit_edge, %rtl_write_byte.exit97._rtl8723be_return_beacon_queue_skb.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call4.i) #7
  tail call void @rtl8723be_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext false) #7
  %93 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8_sync.i, align 4
  %call.i104 = tail call zeroext i8 %94(ptr noundef %1, i32 noundef 522) #7
  %95 = and i8 %call.i104, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool14.not157 = icmp eq i8 %95, 0
  br i1 %tobool14.not157, label %_rtl8723be_return_beacon_queue_skb.exit.while.body_crit_edge, label %do.end.thread

_rtl8723be_return_beacon_queue_skb.exit.while.body_crit_edge: ; preds = %_rtl8723be_return_beacon_queue_skb.exit
  br label %while.body

do.end.thread:                                    ; preds = %_rtl8723be_return_beacon_queue_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not167 = icmp eq i8 %47, 0
  br label %if.then30

while.body:                                       ; preds = %while.body.while.body_crit_edge, %_rtl8723be_return_beacon_queue_skb.exit.while.body_crit_edge
  %count.0159 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %_rtl8723be_return_beacon_queue_skb.exit.while.body_crit_edge ]
  %inc = add nuw nsw i8 %count.0159, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 2147480) #7
  %97 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read8_sync.i, align 4
  %call.i106 = tail call zeroext i8 %98(ptr noundef %1, i32 noundef 522) #7
  %99 = and i8 %call.i106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool14.not = icmp eq i8 %99, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.0159)
  %cmp = icmp ult i8 %count.0159, 19
  %or.cond = select i1 %tobool14.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  %inc18 = add nuw nsw i8 %dlbcn_count.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %dlbcn_count.0)
  %cmp24 = icmp ult i8 %dlbcn_count.0, 4
  %or.cond64 = select i1 %tobool14.not, i1 %cmp24, i1 false
  br i1 %or.cond64, label %while.end.do.body_crit_edge, label %do.end

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not = icmp eq i8 %47, 0
  br i1 %tobool14.not, label %do.end.if.end31_crit_edge, label %do.end.if.then30_crit_edge

do.end.if.then30_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %do.end.if.then30_crit_edge, %do.end.thread
  %tobool.not168 = phi i1 [ %tobool.not167, %do.end.thread ], [ %tobool.not, %do.end.if.then30_crit_edge ]
  %100 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write8_async.i, align 4
  tail call void %101(ptr noundef %1, i32 noundef 522, i8 noundef zeroext 1) #7
  %102 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i, align 8
  %write_readback.i109 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_readback.i109 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %write_readback.i109, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i110 = icmp eq i8 %105, 0
  br i1 %tobool.not.i110, label %if.then30.if.end31_crit_edge, label %if.then.i113

if.then30.if.end31_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then.i113:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read8_sync.i, align 4
  %call.i112 = tail call zeroext i8 %107(ptr noundef %1, i32 noundef 522) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then.i113, %if.then30.if.end31_crit_edge, %do.end.if.end31_crit_edge
  %tobool.not169 = phi i1 [ %tobool.not168, %if.then.i113 ], [ %tobool.not168, %if.then30.if.end31_crit_edge ], [ %tobool.not, %do.end.if.end31_crit_edge ]
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i116 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %reg_bcn_ctrl_val.i116 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %reg_bcn_ctrl_val.i116, align 4
  %or.i117 = or i32 %111, 8
  store i32 %or.i117, ptr %reg_bcn_ctrl_val.i116, align 4
  %conv6.i118 = trunc i32 %or.i117 to i8
  %write8_async.i.i119 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 5
  %112 = ptrtoint ptr %write8_async.i.i119 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i.i119, align 4
  tail call void %113(ptr noundef %109, i32 noundef 1360, i8 noundef zeroext %conv6.i118) #7
  %cfg.i.i120 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %114 = ptrtoint ptr %cfg.i.i120 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i120, align 8
  %write_readback.i.i121 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i.i121 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i.i121, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i.i122 = icmp eq i8 %117, 0
  br i1 %tobool.not.i.i122, label %if.end31._rtl8723be_set_bcn_ctrl_reg.exit126_crit_edge, label %if.then.i.i125

if.end31._rtl8723be_set_bcn_ctrl_reg.exit126_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit126

if.then.i.i125:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i123 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 9
  %118 = ptrtoint ptr %read8_sync.i.i123 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i.i123, align 4
  %call.i.i124 = tail call zeroext i8 %119(ptr noundef %109, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit126

_rtl8723be_set_bcn_ctrl_reg.exit126:              ; preds = %if.then.i.i125, %if.end31._rtl8723be_set_bcn_ctrl_reg.exit126_crit_edge
  %120 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i128 = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %reg_bcn_ctrl_val.i128 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_bcn_ctrl_val.i128, align 4
  %and.i129 = and i32 %123, -17
  store i32 %and.i129, ptr %reg_bcn_ctrl_val.i128, align 4
  %conv6.i130 = trunc i32 %and.i129 to i8
  %write8_async.i.i131 = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 13, i32 5
  %124 = ptrtoint ptr %write8_async.i.i131 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8_async.i.i131, align 4
  tail call void %125(ptr noundef %121, i32 noundef 1360, i8 noundef zeroext %conv6.i130) #7
  %cfg.i.i132 = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 32
  %126 = ptrtoint ptr %cfg.i.i132 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i.i132, align 8
  %write_readback.i.i133 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_readback.i.i133 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %write_readback.i.i133, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i134 = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i134, label %_rtl8723be_set_bcn_ctrl_reg.exit126._rtl8723be_set_bcn_ctrl_reg.exit138_crit_edge, label %if.then.i.i137

_rtl8723be_set_bcn_ctrl_reg.exit126._rtl8723be_set_bcn_ctrl_reg.exit138_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit126
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit138

if.then.i.i137:                                   ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit126
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i135 = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 13, i32 9
  %130 = ptrtoint ptr %read8_sync.i.i135 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read8_sync.i.i135, align 4
  %call.i.i136 = tail call zeroext i8 %131(ptr noundef %121, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit138

_rtl8723be_set_bcn_ctrl_reg.exit138:              ; preds = %if.then.i.i137, %_rtl8723be_set_bcn_ctrl_reg.exit126._rtl8723be_set_bcn_ctrl_reg.exit138_crit_edge
  br i1 %tobool.not169, label %_rtl8723be_set_bcn_ctrl_reg.exit138.if.end34_crit_edge, label %if.then33

_rtl8723be_set_bcn_ctrl_reg.exit138.if.end34_crit_edge: ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then33:                                        ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit138
  %132 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write8_async.i, align 4
  tail call void %133(ptr noundef %1, i32 noundef 1058, i8 noundef zeroext %call.i79) #7
  %134 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfg.i, align 8
  %write_readback.i141 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_readback.i141 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %write_readback.i141, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i142 = icmp eq i8 %137, 0
  br i1 %tobool.not.i142, label %if.then33.if.end34_crit_edge, label %if.then.i145

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then.i145:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read8_sync.i, align 4
  %call.i144 = tail call zeroext i8 %139(ptr noundef %1, i32 noundef 1058) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then.i145, %if.then33.if.end34_crit_edge, %_rtl8723be_set_bcn_ctrl_reg.exit138.if.end34_crit_edge
  %140 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read8_sync.i, align 4
  %call.i148 = tail call zeroext i8 %141(ptr noundef %1, i32 noundef 257) #7
  %142 = and i8 %call.i148, -2
  %143 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write8_async.i, align 4
  tail call void %144(ptr noundef %1, i32 noundef 257, i8 noundef zeroext %142) #7
  %145 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i, align 8
  %write_readback.i151 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write_readback.i151 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %write_readback.i151, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i152 = icmp eq i8 %148, 0
  br i1 %tobool.not.i152, label %if.end34.rtl_write_byte.exit156_crit_edge, label %if.then.i155

if.end34.rtl_write_byte.exit156_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit156

if.then.i155:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read8_sync.i, align 4
  %call.i154 = tail call zeroext i8 %150(ptr noundef %1, i32 noundef 257) #7
  br label %rtl_write_byte.exit156

rtl_write_byte.exit156:                           ; preds = %if.then.i155, %if.end34.rtl_write_byte.exit156_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_set_fw_media_status_rpt_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_set_p2p_ps_offload_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #7
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !133
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
  %13 = load i8, ptr %sec, align 8, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !133
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
  %23 = load i8, ptr %write_readback.i, align 1, !range !133
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.9, i32 noundef %conv15) #7
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
define dso_local i32 @rtl8723be_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !135
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %3 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_ready, align 2
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 4
  %4 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %being_init_adapter, align 1
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
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 256) #7
  %11 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %call.i, label %if.then [
    i8 0, label %entry.if.else_crit_edge
    i8 -22, label %entry.if.else_crit_edge325
  ]

entry.if.else_crit_edge325:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mac_func_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %12 = ptrtoint ptr %mac_func_enable to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %mac_func_enable, align 1
  br label %if.end

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge325
  %mac_func_enable18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %13 = ptrtoint ptr %mac_func_enable18 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %mac_func_enable18, align 1
  %fw_ps_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 49
  %14 = ptrtoint ptr %fw_ps_state to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %fw_ps_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read8_sync.i, align 4
  %call.i.i = tail call zeroext i8 %16(ptr noundef %1, i32 noundef 851) #7
  %17 = and i8 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %or.i = or i8 %call.i.i, 4
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 851, i8 noundef zeroext %or.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.then.i.while.body.i.preheader_crit_edge, label %if.then.i.i

if.then.i.while.body.i.preheader_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i20.i = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 851) #7
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then.i.i, %if.then.i.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.023.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.023.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %while.body.i.if.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %while.body.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i22.i = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 851) #7
  %29 = and i8 %call.i22.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %if.end.i.if.end23_crit_edge, label %if.then20

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.end.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.33) #7
  %mac_func_enable21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %31 = ptrtoint ptr %mac_func_enable21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mac_func_enable21, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.34) #7
  %33 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i, align 4
  %call.i.i194 = tail call zeroext i8 %34(ptr noundef %1, i32 noundef 28) #7
  %35 = and i8 %call.i.i194, -4
  %write8_async.i.i195 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %36 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %37(ptr noundef %1, i32 noundef 28, i8 noundef zeroext %35) #7
  %cfg.i.i196 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %38 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i.i197 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_readback.i.i197 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_readback.i.i197, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i198 = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i198, label %if.then20.rtl_write_byte.exit.i200_crit_edge, label %if.then.i.i199

if.then20.rtl_write_byte.exit.i200_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i200

if.then.i.i199:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8_sync.i, align 4
  %call.i90.i = tail call zeroext i8 %43(ptr noundef %1, i32 noundef 28) #7
  br label %rtl_write_byte.exit.i200

rtl_write_byte.exit.i200:                         ; preds = %if.then.i.i199, %if.then20.rtl_write_byte.exit.i200_crit_edge
  %44 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i, align 4
  %call.i92.i = tail call zeroext i8 %45(ptr noundef %1, i32 noundef 204) #7
  %46 = or i8 %call.i92.i, 4
  %47 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %48(ptr noundef %1, i32 noundef 204, i8 noundef zeroext %46) #7
  %49 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i95.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i95.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i96.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i96.i, label %rtl_write_byte.exit.i200.rtl_write_byte.exit100.i_crit_edge, label %if.then.i99.i

rtl_write_byte.exit.i200.rtl_write_byte.exit100.i_crit_edge: ; preds = %rtl_write_byte.exit.i200
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit100.i

if.then.i99.i:                                    ; preds = %rtl_write_byte.exit.i200
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read8_sync.i, align 4
  %call.i98.i = tail call zeroext i8 %54(ptr noundef %1, i32 noundef 204) #7
  br label %rtl_write_byte.exit100.i

rtl_write_byte.exit100.i:                         ; preds = %if.then.i99.i, %rtl_write_byte.exit.i200.rtl_write_byte.exit100.i_crit_edge
  %55 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i, align 4
  %call.i102.i = tail call zeroext i8 %56(ptr noundef %1, i32 noundef 646) #7
  %57 = and i8 %call.i102.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i201 = icmp eq i8 %57, 0
  br i1 %tobool.not.i201, label %if.else.i, label %rtl_write_byte.exit100.i.if.end.i202_crit_edge

rtl_write_byte.exit100.i.if.end.i202_crit_edge:   ; preds = %rtl_write_byte.exit100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i202

if.else.i:                                        ; preds = %rtl_write_byte.exit100.i
  %or9.i = or i8 %call.i102.i, 4
  %58 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %59(ptr noundef %1, i32 noundef 646, i8 noundef zeroext %or9.i) #7
  %60 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i105.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_readback.i105.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_readback.i105.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i106.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i106.i, label %if.else.i.if.end.i202_crit_edge, label %if.then.i109.i

if.else.i.if.end.i202_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i202

if.then.i109.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i, align 4
  %call.i108.i = tail call zeroext i8 %65(ptr noundef %1, i32 noundef 646) #7
  br label %if.end.i202

if.end.i202:                                      ; preds = %if.then.i109.i, %if.else.i.if.end.i202_crit_edge, %rtl_write_byte.exit100.i.if.end.i202_crit_edge
  %66 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read8_sync.i, align 4
  %call.i112.i = tail call zeroext i8 %67(ptr noundef %1, i32 noundef 769) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i112.i)
  %cmp.not.i = icmp eq i8 %call.i112.i, -1
  br i1 %cmp.not.i, label %if.end.i202.if.end15.i_crit_edge, label %if.then14.i

if.end.i202.if.end15.i_crit_edge:                 ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end.i202
  %68 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %69(ptr noundef %1, i32 noundef 769, i8 noundef zeroext -1) #7
  %70 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i115.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i116.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i116.i, label %if.then14.i.if.end15.i_crit_edge, label %if.then.i119.i

if.then14.i.if.end15.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then.i119.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i, align 4
  %call.i118.i = tail call zeroext i8 %75(ptr noundef %1, i32 noundef 769) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then.i119.i, %if.then14.i.if.end15.i_crit_edge, %if.end.i202.if.end15.i_crit_edge
  br i1 %tobool.not, label %if.end29.critedge.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end15.i
  %76 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %77(ptr noundef %1, i32 noundef 256, i8 noundef zeroext 0) #7
  %78 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i123.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i123.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i124.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i124.i, label %if.then17.i.rtl_write_byte.exit128.i_crit_edge, label %if.then.i127.i

if.then17.i.rtl_write_byte.exit128.i_crit_edge:   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit128.i

if.then.i127.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i, align 4
  %call.i126.i = tail call zeroext i8 %83(ptr noundef %1, i32 noundef 256) #7
  br label %rtl_write_byte.exit128.i

rtl_write_byte.exit128.i:                         ; preds = %if.then.i127.i, %if.then17.i.rtl_write_byte.exit128.i_crit_edge
  %84 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8_sync.i, align 4
  %call.i130.i = tail call zeroext i8 %85(ptr noundef %1, i32 noundef 3) #7
  %86 = and i8 %call.i130.i, -2
  %87 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %88(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %86) #7
  %89 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i133.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_readback.i133.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %write_readback.i133.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i134.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i134.i, label %rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge, label %if.then.i137.i

rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge: ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit138.i

if.then.i137.i:                                   ; preds = %rtl_write_byte.exit128.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8_sync.i, align 4
  %call.i136.i = tail call zeroext i8 %94(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit138.i

rtl_write_byte.exit138.i:                         ; preds = %if.then.i137.i, %rtl_write_byte.exit128.i.rtl_write_byte.exit138.i_crit_edge
  %95 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i, align 4
  %call.i140.i = tail call zeroext i8 %96(ptr noundef %1, i32 noundef 3) #7
  %97 = or i8 %call.i140.i, 1
  %98 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %99(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %97) #7
  %100 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i143.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_readback.i143.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %write_readback.i143.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i144.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i144.i, label %rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge, label %if.then.i147.i

rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge: ; preds = %rtl_write_byte.exit138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit148.i

if.then.i147.i:                                   ; preds = %rtl_write_byte.exit138.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read8_sync.i, align 4
  %call.i146.i = tail call zeroext i8 %105(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit148.i

rtl_write_byte.exit148.i:                         ; preds = %if.then.i147.i, %rtl_write_byte.exit138.i.rtl_write_byte.exit148.i_crit_edge
  %106 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %107(ptr noundef %1, i32 noundef 256, i8 noundef zeroext -1) #7
  %108 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i151.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i151.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i151.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i152.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i152.i, label %rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge, label %if.then.i155.i

rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge: ; preds = %rtl_write_byte.exit148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit156.i

if.then.i155.i:                                   ; preds = %rtl_write_byte.exit148.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i, align 4
  %call.i154.i = tail call zeroext i8 %113(ptr noundef %1, i32 noundef 256) #7
  br label %rtl_write_byte.exit156.i

rtl_write_byte.exit156.i:                         ; preds = %if.then.i155.i, %rtl_write_byte.exit148.i.rtl_write_byte.exit156.i_crit_edge
  %114 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read8_sync.i, align 4
  %call.i158.i = tail call zeroext i8 %115(ptr noundef %1, i32 noundef 250) #7
  %116 = or i8 %call.i158.i, 2
  %117 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %118(ptr noundef %1, i32 noundef 250, i8 noundef zeroext %116) #7
  %119 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i161.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i161.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i161.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i162.i = icmp eq i8 %122, 0
  br i1 %tobool.not.i162.i, label %rtl_write_byte.exit156.i.if.end43.i_crit_edge, label %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge

rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge: ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split.i

rtl_write_byte.exit156.i.if.end43.i_crit_edge:    ; preds = %rtl_write_byte.exit156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end29.critedge.i:                              ; preds = %if.end15.i
  %123 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read8_sync.i, align 4
  %call.i168.i = tail call zeroext i8 %124(ptr noundef %1, i32 noundef 3) #7
  %125 = and i8 %call.i168.i, -2
  %126 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %127(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %125) #7
  %128 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i171.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %write_readback.i171.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %write_readback.i171.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i172.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i172.i, label %if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge, label %if.then.i175.i

if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge: ; preds = %if.end29.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit176.i

if.then.i175.i:                                   ; preds = %if.end29.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read8_sync.i, align 4
  %call.i174.i = tail call zeroext i8 %133(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit176.i

rtl_write_byte.exit176.i:                         ; preds = %if.then.i175.i, %if.end29.critedge.i.rtl_write_byte.exit176.i_crit_edge
  %134 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read8_sync.i, align 4
  %call.i178.i = tail call zeroext i8 %135(ptr noundef %1, i32 noundef 3) #7
  %136 = or i8 %call.i178.i, 1
  %137 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %138(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %136) #7
  %139 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %write_readback.i181.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %write_readback.i181.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i182.i = icmp eq i8 %142, 0
  br i1 %tobool.not.i182.i, label %rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge, label %if.then.i185.i

rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge: ; preds = %rtl_write_byte.exit176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit186.i

if.then.i185.i:                                   ; preds = %rtl_write_byte.exit176.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read8_sync.i, align 4
  %call.i184.i = tail call zeroext i8 %144(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit186.i

rtl_write_byte.exit186.i:                         ; preds = %if.then.i185.i, %rtl_write_byte.exit176.i.rtl_write_byte.exit186.i_crit_edge
  %145 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read8_sync.i, align 4
  %call.i188.i = tail call zeroext i8 %146(ptr noundef %1, i32 noundef 250) #7
  %147 = or i8 %call.i188.i, 2
  %148 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %149(ptr noundef %1, i32 noundef 250, i8 noundef zeroext %147) #7
  %150 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i191.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %write_readback.i191.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %write_readback.i191.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i192.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i192.i, label %rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge, label %if.then.i195.i

rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge: ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit196.i

if.then.i195.i:                                   ; preds = %rtl_write_byte.exit186.i
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read8_sync.i, align 4
  %call.i194.i = tail call zeroext i8 %155(ptr noundef %1, i32 noundef 250) #7
  br label %rtl_write_byte.exit196.i

rtl_write_byte.exit196.i:                         ; preds = %if.then.i195.i, %rtl_write_byte.exit186.i.rtl_write_byte.exit196.i_crit_edge
  br i1 %tobool.not.i201, label %if.then37.i, label %rtl_write_byte.exit196.i.if.end42.i_crit_edge

rtl_write_byte.exit196.i.if.end42.i_crit_edge:    ; preds = %rtl_write_byte.exit196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then37.i:                                      ; preds = %rtl_write_byte.exit196.i
  %156 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read8_sync.i, align 4
  %call.i198.i = tail call zeroext i8 %157(ptr noundef %1, i32 noundef 646) #7
  %158 = and i8 %call.i198.i, -5
  %159 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %160(ptr noundef %1, i32 noundef 646, i8 noundef zeroext %158) #7
  %161 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i201.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_readback.i201.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %write_readback.i201.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i202.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i202.i, label %if.then37.i.if.end42.i_crit_edge, label %if.then.i205.i

if.then37.i.if.end42.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then.i205.i:                                   ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read8_sync.i, align 4
  %call.i204.i = tail call zeroext i8 %166(ptr noundef %1, i32 noundef 646) #7
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then.i205.i, %if.then37.i.if.end42.i_crit_edge, %rtl_write_byte.exit196.i.if.end42.i_crit_edge
  %167 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %168(ptr noundef %1, i32 noundef 769, i8 noundef zeroext %call.i112.i) #7
  %169 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i209.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %write_readback.i209.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %write_readback.i209.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool.not.i210.i = icmp eq i8 %172, 0
  br i1 %tobool.not.i210.i, label %if.end42.i.if.end43.i_crit_edge, label %if.end42.i.if.end43.sink.split.i_crit_edge

if.end42.i.if.end43.sink.split.i_crit_edge:       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split.i

if.end42.i.if.end43.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.end43.sink.split.i:                            ; preds = %if.end42.i.if.end43.sink.split.i_crit_edge, %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 250, %rtl_write_byte.exit156.i.if.end43.sink.split.i_crit_edge ], [ 769, %if.end42.i.if.end43.sink.split.i_crit_edge ]
  %173 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %read8_sync.i, align 4
  %call.i212.i = tail call zeroext i8 %174(ptr noundef %1, i32 noundef %.sink.i) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end43.sink.split.i, %if.end42.i.if.end43.i_crit_edge, %rtl_write_byte.exit156.i.if.end43.i_crit_edge
  %175 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %read8_sync.i, align 4
  %call.i216.i = tail call zeroext i8 %176(ptr noundef %1, i32 noundef 204) #7
  %177 = and i8 %call.i216.i, -5
  %178 = ptrtoint ptr %write8_async.i.i195 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write8_async.i.i195, align 4
  tail call void %179(ptr noundef %1, i32 noundef 204, i8 noundef zeroext %177) #7
  %180 = ptrtoint ptr %cfg.i.i196 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i.i196, align 8
  %write_readback.i219.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %write_readback.i219.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %write_readback.i219.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i220.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i220.i, label %if.end43.i._rtl8723be_reset_pcie_interface_dma.exit_crit_edge, label %if.then.i223.i

if.end43.i._rtl8723be_reset_pcie_interface_dma.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_reset_pcie_interface_dma.exit

if.then.i223.i:                                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read8_sync.i, align 4
  %call.i222.i = tail call zeroext i8 %185(ptr noundef %1, i32 noundef 204) #7
  br label %_rtl8723be_reset_pcie_interface_dma.exit

_rtl8723be_reset_pcie_interface_dma.exit:         ; preds = %if.then.i223.i, %if.end43.i._rtl8723be_reset_pcie_interface_dma.exit_crit_edge
  %186 = ptrtoint ptr %mac_func_enable21 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %mac_func_enable21, align 1
  br label %if.end23

if.end23:                                         ; preds = %_rtl8723be_reset_pcie_interface_dma.exit, %if.end.i.if.end23_crit_edge
  %mac_func_enable24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %187 = ptrtoint ptr %mac_func_enable24 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %mac_func_enable24, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool25.not = icmp eq i8 %188, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl8723be_poweroff_adapter(ptr noundef %hw)
  %189 = ptrtoint ptr %mac_func_enable24 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %mac_func_enable24, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %190 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %priv, align 8
  %write8_async.i.i203 = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 5
  %192 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %193(ptr noundef %191, i32 noundef 28, i8 noundef zeroext 0) #7
  %cfg.i.i204 = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 32
  %194 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i.i205 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %write_readback.i.i205 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %write_readback.i.i205, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i.i206 = icmp eq i8 %197, 0
  br i1 %tobool.not.i.i206, label %if.end28.rtl_write_byte.exit.i210_crit_edge, label %if.then.i.i209

if.end28.rtl_write_byte.exit.i210_crit_edge:      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i210

if.then.i.i209:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i207 = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 9
  %198 = ptrtoint ptr %read8_sync.i.i207 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read8_sync.i.i207, align 4
  %call.i.i208 = tail call zeroext i8 %199(ptr noundef %191, i32 noundef 28) #7
  br label %rtl_write_byte.exit.i210

rtl_write_byte.exit.i210:                         ; preds = %if.then.i.i209, %if.end28.rtl_write_byte.exit.i210_crit_edge
  %read8_sync.i194.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 9
  %200 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i195.i = tail call zeroext i8 %201(ptr noundef %191, i32 noundef 5) #7
  %202 = and i8 %call.i195.i, 127
  %203 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %204(ptr noundef %191, i32 noundef 5, i8 noundef zeroext %202) #7
  %205 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i198.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %write_readback.i198.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %write_readback.i198.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i199.i = icmp eq i8 %208, 0
  br i1 %tobool.not.i199.i, label %rtl_write_byte.exit.i210.rtl_write_byte.exit203.i_crit_edge, label %if.then.i202.i

rtl_write_byte.exit.i210.rtl_write_byte.exit203.i_crit_edge: ; preds = %rtl_write_byte.exit.i210
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit203.i

if.then.i202.i:                                   ; preds = %rtl_write_byte.exit.i210
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i201.i = tail call zeroext i8 %210(ptr noundef %191, i32 noundef 5) #7
  br label %rtl_write_byte.exit203.i

rtl_write_byte.exit203.i:                         ; preds = %if.then.i202.i, %rtl_write_byte.exit.i210.rtl_write_byte.exit203.i_crit_edge
  %call5.i = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %191, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723B_card_enable_flow) #7
  br i1 %call5.i, label %if.end.i212, label %if.then.i211

if.then.i211:                                     ; preds = %rtl_write_byte.exit203.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %191, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.35) #7
  br label %do.end34

if.end.i212:                                      ; preds = %rtl_write_byte.exit203.i
  %211 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cfg.i.i204, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ops.i, align 4
  %get_btc_status.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %214, i32 0, i32 66
  %215 = ptrtoint ptr %get_btc_status.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %get_btc_status.i, align 4
  %call6.i = tail call zeroext i1 %216() #7
  br i1 %call6.i, label %if.then7.i, label %if.end.i212.if.end8.i_crit_edge

if.end.i212.if.end8.i_crit_edge:                  ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #9
  %btcoexist.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 49
  %217 = ptrtoint ptr %btcoexist.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %btcoexist.i, align 8
  %btc_power_on_setting.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %btc_power_on_setting.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %btc_power_on_setting.i, align 4
  tail call void %220(ptr noundef %191) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i212.if.end8.i_crit_edge
  %221 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i205.i = tail call zeroext i8 %222(ptr noundef %191, i32 noundef 104) #7
  %223 = or i8 %call.i205.i, 8
  %224 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %225(ptr noundef %191, i32 noundef 104, i8 noundef zeroext %223) #7
  %226 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i208.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %write_readback.i208.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %write_readback.i208.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i209.i = icmp eq i8 %229, 0
  br i1 %tobool.not.i209.i, label %if.end8.i.rtl_write_byte.exit213.i_crit_edge, label %if.then.i212.i

if.end8.i.rtl_write_byte.exit213.i_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit213.i

if.then.i212.i:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i211.i = tail call zeroext i8 %231(ptr noundef %191, i32 noundef 104) #7
  br label %rtl_write_byte.exit213.i

rtl_write_byte.exit213.i:                         ; preds = %if.then.i212.i, %if.end8.i.rtl_write_byte.exit213.i_crit_edge
  %232 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i215.i = tail call zeroext i8 %233(ptr noundef %191, i32 noundef 4) #7
  %234 = or i8 %call.i215.i, 16
  %235 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %236(ptr noundef %191, i32 noundef 4, i8 noundef zeroext %234) #7
  %237 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i218.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %write_readback.i218.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %write_readback.i218.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i219.i = icmp eq i8 %240, 0
  br i1 %tobool.not.i219.i, label %rtl_write_byte.exit213.i.rtl_write_byte.exit223.i_crit_edge, label %if.then.i222.i

rtl_write_byte.exit213.i.rtl_write_byte.exit223.i_crit_edge: ; preds = %rtl_write_byte.exit213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit223.i

if.then.i222.i:                                   ; preds = %rtl_write_byte.exit213.i
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i221.i = tail call zeroext i8 %242(ptr noundef %191, i32 noundef 4) #7
  br label %rtl_write_byte.exit223.i

rtl_write_byte.exit223.i:                         ; preds = %if.then.i222.i, %rtl_write_byte.exit213.i.rtl_write_byte.exit223.i_crit_edge
  %243 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i225.i = tail call zeroext i8 %244(ptr noundef %191, i32 noundef 256) #7
  %245 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %246(ptr noundef %191, i32 noundef 256, i8 noundef zeroext -1) #7
  %247 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i228.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %write_readback.i228.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %write_readback.i228.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool.not.i229.i = icmp eq i8 %250, 0
  br i1 %tobool.not.i229.i, label %rtl_write_byte.exit223.i.rtl_write_byte.exit233.i_crit_edge, label %if.then.i232.i

rtl_write_byte.exit223.i.rtl_write_byte.exit233.i_crit_edge: ; preds = %rtl_write_byte.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit233.i

if.then.i232.i:                                   ; preds = %rtl_write_byte.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  %251 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i231.i = tail call zeroext i8 %252(ptr noundef %191, i32 noundef 256) #7
  br label %rtl_write_byte.exit233.i

rtl_write_byte.exit233.i:                         ; preds = %if.then.i232.i, %rtl_write_byte.exit223.i.rtl_write_byte.exit233.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %253(i32 noundef 429496000) #7
  %254 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i235.i = tail call zeroext i8 %255(ptr noundef %191, i32 noundef 1059) #7
  %256 = or i8 %call.i235.i, 127
  %257 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %258(ptr noundef %191, i32 noundef 1059, i8 noundef zeroext %256) #7
  %259 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i238.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %260, i32 0, i32 1
  %261 = ptrtoint ptr %write_readback.i238.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %write_readback.i238.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i239.i = icmp eq i8 %262, 0
  br i1 %tobool.not.i239.i, label %rtl_write_byte.exit233.i.rtl_write_byte.exit243.i_crit_edge, label %if.then.i242.i

rtl_write_byte.exit233.i.rtl_write_byte.exit243.i_crit_edge: ; preds = %rtl_write_byte.exit233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit243.i

if.then.i242.i:                                   ; preds = %rtl_write_byte.exit233.i
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i241.i = tail call zeroext i8 %264(ptr noundef %191, i32 noundef 1059) #7
  br label %rtl_write_byte.exit243.i

rtl_write_byte.exit243.i:                         ; preds = %if.then.i242.i, %rtl_write_byte.exit233.i.rtl_write_byte.exit243.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %265 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %265(i32 noundef 429496000) #7
  %266 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i245.i = tail call zeroext i8 %267(ptr noundef %191, i32 noundef 243) #7
  %268 = and i8 %call.i245.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.not.i213 = icmp eq i8 %268, 0
  br i1 %tobool.not.i213, label %rtl_write_byte.exit243.i.if.end29.i_crit_edge, label %if.then24.i

rtl_write_byte.exit243.i.if.end29.i_crit_edge:    ; preds = %rtl_write_byte.exit243.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %rtl_write_byte.exit243.i
  %269 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i247.i = tail call zeroext i8 %270(ptr noundef %191, i32 noundef 124) #7
  %271 = or i8 %call.i247.i, 64
  %272 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %273(ptr noundef %191, i32 noundef 124, i8 noundef zeroext %271) #7
  %274 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %write_readback.i250.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %write_readback.i250.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool.not.i251.i = icmp eq i8 %277, 0
  br i1 %tobool.not.i251.i, label %if.then24.i.if.end29.i_crit_edge, label %if.then.i254.i

if.then24.i.if.end29.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then.i254.i:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  %278 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i253.i = tail call zeroext i8 %279(ptr noundef %191, i32 noundef 124) #7
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i254.i, %if.then24.i.if.end29.i_crit_edge, %rtl_write_byte.exit243.i.if.end29.i_crit_edge
  %280 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i257.i = tail call zeroext i8 %281(ptr noundef %191, i32 noundef 8) #7
  %282 = or i8 %call.i257.i, 8
  %283 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %284(ptr noundef %191, i32 noundef 8, i8 noundef zeroext %282) #7
  %285 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i260.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %write_readback.i260.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %write_readback.i260.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i261.i = icmp eq i8 %288, 0
  br i1 %tobool.not.i261.i, label %if.end29.i.rtl_write_byte.exit265.i_crit_edge, label %if.then.i264.i

if.end29.i.rtl_write_byte.exit265.i_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit265.i

if.then.i264.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i263.i = tail call zeroext i8 %290(ptr noundef %191, i32 noundef 8) #7
  br label %rtl_write_byte.exit265.i

rtl_write_byte.exit265.i:                         ; preds = %if.then.i264.i, %if.end29.i.rtl_write_byte.exit265.i_crit_edge
  %291 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i267.i = tail call zeroext i8 %292(ptr noundef %191, i32 noundef 65) #7
  %293 = and i8 %call.i267.i, -17
  %294 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %295(ptr noundef %191, i32 noundef 65, i8 noundef zeroext %293) #7
  %296 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i270.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %write_readback.i270.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %write_readback.i270.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.not.i271.i = icmp eq i8 %299, 0
  br i1 %tobool.not.i271.i, label %rtl_write_byte.exit265.i.rtl_write_byte.exit275.i_crit_edge, label %if.then.i274.i

rtl_write_byte.exit265.i.rtl_write_byte.exit275.i_crit_edge: ; preds = %rtl_write_byte.exit265.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit275.i

if.then.i274.i:                                   ; preds = %rtl_write_byte.exit265.i
  call void @__sanitizer_cov_trace_pc() #9
  %300 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i273.i = tail call zeroext i8 %301(ptr noundef %191, i32 noundef 65) #7
  br label %rtl_write_byte.exit275.i

rtl_write_byte.exit275.i:                         ; preds = %if.then.i274.i, %rtl_write_byte.exit265.i.rtl_write_byte.exit275.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 6
  %302 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %303(ptr noundef %191, i32 noundef 256, i16 noundef zeroext 767) #7
  %304 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i277.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %305, i32 0, i32 1
  %306 = ptrtoint ptr %write_readback.i277.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %write_readback.i277.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool.not.i278.i = icmp eq i8 %307, 0
  br i1 %tobool.not.i278.i, label %rtl_write_byte.exit275.i.rtl_write_word.exit.i_crit_edge, label %if.then.i280.i

rtl_write_byte.exit275.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_byte.exit275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i

if.then.i280.i:                                   ; preds = %rtl_write_byte.exit275.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 10
  %308 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i279.i = tail call zeroext i16 %309(ptr noundef %191, i32 noundef 256) #7
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i280.i, %rtl_write_byte.exit275.i.rtl_write_word.exit.i_crit_edge
  %mac_func_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 10, i32 6
  %310 = ptrtoint ptr %mac_func_enable.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %mac_func_enable.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool38.not.i = icmp eq i8 %311, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %rtl_write_word.exit.i.if.end43.i214_crit_edge

rtl_write_word.exit.i.if.end43.i214_crit_edge:    ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i214

if.then39.i:                                      ; preds = %rtl_write_word.exit.i
  %312 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %priv, align 8
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 7
  %314 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %315(ptr noundef %313, i32 noundef 276, i32 noundef 671023349) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 32
  %316 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool.not.i.i.i = icmp eq i8 %319, 0
  br i1 %tobool.not.i.i.i, label %if.then39.i.rtl_write_dword.exit.i.i_crit_edge, label %if.then.i.i.i

if.then39.i.rtl_write_dword.exit.i.i_crit_edge:   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 11
  %320 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i.i.i = tail call i32 %321(ptr noundef %313, i32 noundef 276) #7
  br label %rtl_write_dword.exit.i.i

rtl_write_dword.exit.i.i:                         ; preds = %if.then.i.i.i, %if.then39.i.rtl_write_dword.exit.i.i_crit_edge
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 5
  %322 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %323(ptr noundef %313, i32 noundef 521, i8 noundef zeroext -11) #7
  %324 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i82.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %write_readback.i82.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %write_readback.i82.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i83.i.i = icmp eq i8 %327, 0
  br i1 %tobool.not.i83.i.i, label %rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i85.i.i

rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i85.i.i:                                  ; preds = %rtl_write_dword.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %328 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i84.i.i = tail call zeroext i8 %329(ptr noundef %313, i32 noundef 521) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i85.i.i, %rtl_write_dword.exit.i.i.rtl_write_byte.exit.i.i_crit_edge
  %330 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %331(ptr noundef %313, i32 noundef 1060, i8 noundef zeroext -11) #7
  %332 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i88.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %write_readback.i88.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %write_readback.i88.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool.not.i89.i.i = icmp eq i8 %335, 0
  br i1 %tobool.not.i89.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit93.i.i_crit_edge, label %if.then.i92.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit93.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit93.i.i

if.then.i92.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i90.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %336 = ptrtoint ptr %read8_sync.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %read8_sync.i90.i.i, align 4
  %call.i91.i.i = tail call zeroext i8 %337(ptr noundef %313, i32 noundef 1060) #7
  br label %rtl_write_byte.exit93.i.i

rtl_write_byte.exit93.i.i:                        ; preds = %if.then.i92.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit93.i.i_crit_edge
  %338 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %339(ptr noundef %313, i32 noundef 1061, i8 noundef zeroext -11) #7
  %340 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i96.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %write_readback.i96.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %write_readback.i96.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool.not.i97.i.i = icmp eq i8 %343, 0
  br i1 %tobool.not.i97.i.i, label %rtl_write_byte.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge, label %if.then.i100.i.i

rtl_write_byte.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge: ; preds = %rtl_write_byte.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit101.i.i

if.then.i100.i.i:                                 ; preds = %rtl_write_byte.exit93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i98.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %344 = ptrtoint ptr %read8_sync.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %read8_sync.i98.i.i, align 4
  %call.i99.i.i = tail call zeroext i8 %345(ptr noundef %313, i32 noundef 1061) #7
  br label %rtl_write_byte.exit101.i.i

rtl_write_byte.exit101.i.i:                       ; preds = %if.then.i100.i.i, %rtl_write_byte.exit93.i.i.rtl_write_byte.exit101.i.i_crit_edge
  %346 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %347(ptr noundef %313, i32 noundef 1117, i8 noundef zeroext -11) #7
  %348 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i104.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %write_readback.i104.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %write_readback.i104.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool.not.i105.i.i = icmp eq i8 %351, 0
  br i1 %tobool.not.i105.i.i, label %rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge, label %if.then.i108.i.i

rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge: ; preds = %rtl_write_byte.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit109.i.i

if.then.i108.i.i:                                 ; preds = %rtl_write_byte.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i106.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %352 = ptrtoint ptr %read8_sync.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %read8_sync.i106.i.i, align 4
  %call.i107.i.i = tail call zeroext i8 %353(ptr noundef %313, i32 noundef 1117) #7
  br label %rtl_write_byte.exit109.i.i

rtl_write_byte.exit109.i.i:                       ; preds = %if.then.i108.i.i, %rtl_write_byte.exit101.i.i.rtl_write_byte.exit109.i.i_crit_edge
  %354 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %355(ptr noundef %313, i32 noundef 260, i8 noundef zeroext 49) #7
  %356 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i112.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %write_readback.i112.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %write_readback.i112.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i113.i.i = icmp eq i8 %359, 0
  br i1 %tobool.not.i113.i.i, label %rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge, label %if.then.i116.i.i

rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge: ; preds = %rtl_write_byte.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit117.i.i

if.then.i116.i.i:                                 ; preds = %rtl_write_byte.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i114.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %360 = ptrtoint ptr %read8_sync.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %read8_sync.i114.i.i, align 4
  %call.i115.i.i = tail call zeroext i8 %361(ptr noundef %313, i32 noundef 260) #7
  br label %rtl_write_byte.exit117.i.i

rtl_write_byte.exit117.i.i:                       ; preds = %if.then.i116.i.i, %rtl_write_byte.exit109.i.i.rtl_write_byte.exit117.i.i_crit_edge
  %362 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %363(ptr noundef %313, i32 noundef 1551, i8 noundef zeroext 4) #7
  %364 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i120.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %write_readback.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %write_readback.i120.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool.not.i121.i.i = icmp eq i8 %367, 0
  br i1 %tobool.not.i121.i.i, label %rtl_write_byte.exit117.i.i.for.body.i.i.preheader_crit_edge, label %if.then.i124.i.i

rtl_write_byte.exit117.i.i.for.body.i.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.preheader

if.then.i124.i.i:                                 ; preds = %rtl_write_byte.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i122.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %368 = ptrtoint ptr %read8_sync.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read8_sync.i122.i.i, align 4
  %call.i123.i.i = tail call zeroext i8 %369(ptr noundef %313, i32 noundef 1551) #7
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.then.i124.i.i, %rtl_write_byte.exit117.i.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %indvars.iv.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %add.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %370 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %priv, align 8
  %and.i.i.i = shl nuw nsw i32 %indvars.iv.i.i, 8
  %or.i.i.i = or i32 %add.i.i, %and.i.i.i
  %or2.i.i.i = or i32 %or.i.i.i, 1073741824
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 13, i32 7
  %372 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %373(ptr noundef %371, i32 noundef 480, i32 noundef %or2.i.i.i) #7
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 32
  %374 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %tobool.not.i.i.i.i = icmp eq i8 %377, 0
  br i1 %tobool.not.i.i.i.i, label %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 13, i32 11
  %378 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %379(ptr noundef %371, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i.i.i

rtl_write_dword.exit.i.i.i:                       ; preds = %if.then.i.i.i.i, %for.body.i.i.rtl_write_dword.exit.i.i.i_crit_edge
  %read32_sync.i16.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 13, i32 11
  %380 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i1718.i.i.i = tail call i32 %381(ptr noundef %371, i32 noundef 480) #7
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
  %382 = ptrtoint ptr %read32_sync.i16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %read32_sync.i16.i.i.i, align 4
  %call.i17.i.i.i = tail call i32 %383(ptr noundef %371, i32 noundef 480) #7
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
  br i1 %exitcond.i.i.i, label %_rtl8723be_llt_write.exit.i.i, label %do.body.i.i.i

_rtl8723be_llt_write.exit.i.i:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %indvars.iv.i.i) #10
  br label %do.end34

for.inc.i.i:                                      ; preds = %do.body.i.i.i.for.inc.i.i_crit_edge, %rtl_write_dword.exit.i.i.i.for.inc.i.i_crit_edge
  %exitcond.not.i.i = icmp eq i32 %add.i.i, 244
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %384 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %priv, align 8
  %write32_async.i.i127.i.i = getelementptr inbounds %struct.rtl_priv, ptr %385, i32 0, i32 13, i32 7
  %386 = ptrtoint ptr %write32_async.i.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write32_async.i.i127.i.i, align 4
  tail call void %387(ptr noundef %385, i32 noundef 480, i32 noundef 1073804543) #7
  %cfg.i.i128.i.i = getelementptr inbounds %struct.rtl_priv, ptr %385, i32 0, i32 32
  %388 = ptrtoint ptr %cfg.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i.i128.i.i, align 8
  %write_readback.i.i129.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %write_readback.i.i129.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %write_readback.i.i129.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i.i130.i.i = icmp eq i8 %391, 0
  br i1 %tobool.not.i.i130.i.i, label %for.end.i.i.rtl_write_dword.exit.i137.i.i_crit_edge, label %if.then.i.i133.i.i

for.end.i.i.rtl_write_dword.exit.i137.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i137.i.i

if.then.i.i133.i.i:                               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i131.i.i = getelementptr inbounds %struct.rtl_priv, ptr %385, i32 0, i32 13, i32 11
  %392 = ptrtoint ptr %read32_sync.i.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %read32_sync.i.i131.i.i, align 4
  %call.i.i132.i.i = tail call i32 %393(ptr noundef %385, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i137.i.i

rtl_write_dword.exit.i137.i.i:                    ; preds = %if.then.i.i133.i.i, %for.end.i.i.rtl_write_dword.exit.i137.i.i_crit_edge
  %read32_sync.i16.i134.i.i = getelementptr inbounds %struct.rtl_priv, ptr %385, i32 0, i32 13, i32 11
  %394 = ptrtoint ptr %read32_sync.i16.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %read32_sync.i16.i134.i.i, align 4
  %call.i1718.i135.i.i = tail call i32 %395(ptr noundef %385, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i135.i.i)
  %cmp19.i136.i.i = icmp ult i32 %call.i1718.i135.i.i, 1073741824
  br i1 %cmp19.i136.i.i, label %rtl_write_dword.exit.i137.i.i.for.body21.i.i.preheader_crit_edge, label %rtl_write_dword.exit.i137.i.i.if.end.i144.i.i_crit_edge

rtl_write_dword.exit.i137.i.i.if.end.i144.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i137.i.i
  br label %if.end.i144.i.i

rtl_write_dword.exit.i137.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit.i137.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i.preheader

for.body21.i.i.preheader:                         ; preds = %do.body.i141.i.i.for.body21.i.i.preheader_crit_edge, %rtl_write_dword.exit.i137.i.i.for.body21.i.i.preheader_crit_edge
  br label %for.body21.i.i

do.body.i141.i.i:                                 ; preds = %if.end.i144.i.i
  %inc.i138.i.i = add nuw nsw i32 %count.020.i142.i.i, 1
  %396 = ptrtoint ptr %read32_sync.i16.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %read32_sync.i16.i134.i.i, align 4
  %call.i17.i139.i.i = tail call i32 %397(ptr noundef %385, i32 noundef 480) #7
  %cmp.i140.i.i = icmp ult i32 %call.i17.i139.i.i, 1073741824
  br i1 %cmp.i140.i.i, label %do.body.i141.i.i.for.body21.i.i.preheader_crit_edge, label %do.body.i141.i.i.if.end.i144.i.i_crit_edge

do.body.i141.i.i.if.end.i144.i.i_crit_edge:       ; preds = %do.body.i141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i144.i.i

do.body.i141.i.i.for.body21.i.i.preheader_crit_edge: ; preds = %do.body.i141.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i.preheader

if.end.i144.i.i:                                  ; preds = %do.body.i141.i.i.if.end.i144.i.i_crit_edge, %rtl_write_dword.exit.i137.i.i.if.end.i144.i.i_crit_edge
  %count.020.i142.i.i = phi i32 [ %inc.i138.i.i, %do.body.i141.i.i.if.end.i144.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i137.i.i.if.end.i144.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i142.i.i)
  %exitcond.i143.i.i = icmp eq i32 %count.020.i142.i.i, 21
  br i1 %exitcond.i143.i.i, label %_rtl8723be_llt_write.exit148.thread.i.i, label %do.body.i141.i.i

_rtl8723be_llt_write.exit148.thread.i.i:          ; preds = %if.end.i144.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i145.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 244) #10
  br label %do.end34

for.body21.i.i:                                   ; preds = %for.inc31.i.i.for.body21.i.i_crit_edge, %for.body21.i.i.preheader
  %indvars.iv226.i.i = phi i32 [ %add24.i.i, %for.inc31.i.i.for.body21.i.i_crit_edge ], [ 245, %for.body21.i.i.preheader ]
  %add24.i.i = add nuw nsw i32 %indvars.iv226.i.i, 1
  %398 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %priv, align 8
  %and.i150.i.i = shl nuw nsw i32 %indvars.iv226.i.i, 8
  %or.i153.i.i = or i32 %add24.i.i, %and.i150.i.i
  %or2.i154.i.i = or i32 %or.i153.i.i, 1073741824
  %write32_async.i.i155.i.i = getelementptr inbounds %struct.rtl_priv, ptr %399, i32 0, i32 13, i32 7
  %400 = ptrtoint ptr %write32_async.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %write32_async.i.i155.i.i, align 4
  tail call void %401(ptr noundef %399, i32 noundef 480, i32 noundef %or2.i154.i.i) #7
  %cfg.i.i156.i.i = getelementptr inbounds %struct.rtl_priv, ptr %399, i32 0, i32 32
  %402 = ptrtoint ptr %cfg.i.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %cfg.i.i156.i.i, align 8
  %write_readback.i.i157.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %write_readback.i.i157.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %write_readback.i.i157.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %tobool.not.i.i158.i.i = icmp eq i8 %405, 0
  br i1 %tobool.not.i.i158.i.i, label %for.body21.i.i.rtl_write_dword.exit.i165.i.i_crit_edge, label %if.then.i.i161.i.i

for.body21.i.i.rtl_write_dword.exit.i165.i.i_crit_edge: ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i165.i.i

if.then.i.i161.i.i:                               ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i159.i.i = getelementptr inbounds %struct.rtl_priv, ptr %399, i32 0, i32 13, i32 11
  %406 = ptrtoint ptr %read32_sync.i.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %read32_sync.i.i159.i.i, align 4
  %call.i.i160.i.i = tail call i32 %407(ptr noundef %399, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i165.i.i

rtl_write_dword.exit.i165.i.i:                    ; preds = %if.then.i.i161.i.i, %for.body21.i.i.rtl_write_dword.exit.i165.i.i_crit_edge
  %read32_sync.i16.i162.i.i = getelementptr inbounds %struct.rtl_priv, ptr %399, i32 0, i32 13, i32 11
  %408 = ptrtoint ptr %read32_sync.i16.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %read32_sync.i16.i162.i.i, align 4
  %call.i1718.i163.i.i = tail call i32 %409(ptr noundef %399, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i163.i.i)
  %cmp19.i164.i.i = icmp ult i32 %call.i1718.i163.i.i, 1073741824
  br i1 %cmp19.i164.i.i, label %rtl_write_dword.exit.i165.i.i.for.inc31.i.i_crit_edge, label %rtl_write_dword.exit.i165.i.i.if.end.i172.i.i_crit_edge

rtl_write_dword.exit.i165.i.i.if.end.i172.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i165.i.i
  br label %if.end.i172.i.i

rtl_write_dword.exit.i165.i.i.for.inc31.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i165.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.i

do.body.i169.i.i:                                 ; preds = %if.end.i172.i.i
  %inc.i166.i.i = add nuw nsw i32 %count.020.i170.i.i, 1
  %410 = ptrtoint ptr %read32_sync.i16.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %read32_sync.i16.i162.i.i, align 4
  %call.i17.i167.i.i = tail call i32 %411(ptr noundef %399, i32 noundef 480) #7
  %cmp.i168.i.i = icmp ult i32 %call.i17.i167.i.i, 1073741824
  br i1 %cmp.i168.i.i, label %do.body.i169.i.i.for.inc31.i.i_crit_edge, label %do.body.i169.i.i.if.end.i172.i.i_crit_edge

do.body.i169.i.i.if.end.i172.i.i_crit_edge:       ; preds = %do.body.i169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i172.i.i

do.body.i169.i.i.for.inc31.i.i_crit_edge:         ; preds = %do.body.i169.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc31.i.i

if.end.i172.i.i:                                  ; preds = %do.body.i169.i.i.if.end.i172.i.i_crit_edge, %rtl_write_dword.exit.i165.i.i.if.end.i172.i.i_crit_edge
  %count.020.i170.i.i = phi i32 [ %inc.i166.i.i, %do.body.i169.i.i.if.end.i172.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i165.i.i.if.end.i172.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i170.i.i)
  %exitcond.i171.i.i = icmp eq i32 %count.020.i170.i.i, 21
  br i1 %exitcond.i171.i.i, label %_rtl8723be_llt_write.exit176.i.i, label %do.body.i169.i.i

_rtl8723be_llt_write.exit176.i.i:                 ; preds = %if.end.i172.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i173.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %indvars.iv226.i.i) #10
  br label %do.end34

for.inc31.i.i:                                    ; preds = %do.body.i169.i.i.for.inc31.i.i_crit_edge, %rtl_write_dword.exit.i165.i.i.for.inc31.i.i_crit_edge
  %exitcond228.not.i.i = icmp eq i32 %add24.i.i, 255
  br i1 %exitcond228.not.i.i, label %for.end33.i.i, label %for.inc31.i.i.for.body21.i.i_crit_edge

for.inc31.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21.i.i

for.end33.i.i:                                    ; preds = %for.inc31.i.i
  %412 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %priv, align 8
  %write32_async.i.i178.i.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 7
  %414 = ptrtoint ptr %write32_async.i.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %write32_async.i.i178.i.i, align 4
  tail call void %415(ptr noundef %413, i32 noundef 480, i32 noundef 1073807349) #7
  %cfg.i.i179.i.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 32
  %416 = ptrtoint ptr %cfg.i.i179.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %cfg.i.i179.i.i, align 8
  %write_readback.i.i180.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %417, i32 0, i32 1
  %418 = ptrtoint ptr %write_readback.i.i180.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %write_readback.i.i180.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool.not.i.i181.i.i = icmp eq i8 %419, 0
  br i1 %tobool.not.i.i181.i.i, label %for.end33.i.i.rtl_write_dword.exit.i188.i.i_crit_edge, label %if.then.i.i184.i.i

for.end33.i.i.rtl_write_dword.exit.i188.i.i_crit_edge: ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i188.i.i

if.then.i.i184.i.i:                               ; preds = %for.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i182.i.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 11
  %420 = ptrtoint ptr %read32_sync.i.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %read32_sync.i.i182.i.i, align 4
  %call.i.i183.i.i = tail call i32 %421(ptr noundef %413, i32 noundef 480) #7
  br label %rtl_write_dword.exit.i188.i.i

rtl_write_dword.exit.i188.i.i:                    ; preds = %if.then.i.i184.i.i, %for.end33.i.i.rtl_write_dword.exit.i188.i.i_crit_edge
  %read32_sync.i16.i185.i.i = getelementptr inbounds %struct.rtl_priv, ptr %413, i32 0, i32 13, i32 11
  %422 = ptrtoint ptr %read32_sync.i16.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %read32_sync.i16.i185.i.i, align 4
  %call.i1718.i186.i.i = tail call i32 %423(ptr noundef %413, i32 noundef 480) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %call.i1718.i186.i.i)
  %cmp19.i187.i.i = icmp ult i32 %call.i1718.i186.i.i, 1073741824
  br i1 %cmp19.i187.i.i, label %rtl_write_dword.exit.i188.i.i.if.end41.i.i_crit_edge, label %rtl_write_dword.exit.i188.i.i.if.end.i195.i.i_crit_edge

rtl_write_dword.exit.i188.i.i.if.end.i195.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i188.i.i
  br label %if.end.i195.i.i

rtl_write_dword.exit.i188.i.i.if.end41.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i188.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

do.body.i192.i.i:                                 ; preds = %if.end.i195.i.i
  %inc.i189.i.i = add nuw nsw i32 %count.020.i193.i.i, 1
  %424 = ptrtoint ptr %read32_sync.i16.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %read32_sync.i16.i185.i.i, align 4
  %call.i17.i190.i.i = tail call i32 %425(ptr noundef %413, i32 noundef 480) #7
  %cmp.i191.i.i = icmp ult i32 %call.i17.i190.i.i, 1073741824
  br i1 %cmp.i191.i.i, label %do.body.i192.i.i.if.end41.i.i_crit_edge, label %do.body.i192.i.i.if.end.i195.i.i_crit_edge

do.body.i192.i.i.if.end.i195.i.i_crit_edge:       ; preds = %do.body.i192.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i195.i.i

do.body.i192.i.i.if.end41.i.i_crit_edge:          ; preds = %do.body.i192.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i.i

if.end.i195.i.i:                                  ; preds = %do.body.i192.i.i.if.end.i195.i.i_crit_edge, %rtl_write_dword.exit.i188.i.i.if.end.i195.i.i_crit_edge
  %count.020.i193.i.i = phi i32 [ %inc.i189.i.i, %do.body.i192.i.i.if.end.i195.i.i_crit_edge ], [ 0, %rtl_write_dword.exit.i188.i.i.if.end.i195.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %count.020.i193.i.i)
  %exitcond.i194.i.i = icmp eq i32 %count.020.i193.i.i, 21
  br i1 %exitcond.i194.i.i, label %_rtl8723be_llt_write.exit199.i.i, label %do.body.i192.i.i

_rtl8723be_llt_write.exit199.i.i:                 ; preds = %if.end.i195.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i196.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 255) #10
  br label %do.end34

if.end41.i.i:                                     ; preds = %do.body.i192.i.i.if.end41.i.i_crit_edge, %rtl_write_dword.exit.i188.i.i.if.end41.i.i_crit_edge
  %426 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %427(ptr noundef %313, i32 noundef 512, i32 noundef -2132539384) #7
  %428 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i202.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %write_readback.i202.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %write_readback.i202.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %431)
  %tobool.not.i203.i.i = icmp eq i8 %431, 0
  br i1 %tobool.not.i203.i.i, label %if.end41.i.i.rtl_write_dword.exit208.i.i_crit_edge, label %if.then.i206.i.i

if.end41.i.i.rtl_write_dword.exit208.i.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit208.i.i

if.then.i206.i.i:                                 ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i204.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 11
  %432 = ptrtoint ptr %read32_sync.i204.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %read32_sync.i204.i.i, align 4
  %call.i205.i.i = tail call i32 %433(ptr noundef %313, i32 noundef 512) #7
  br label %rtl_write_dword.exit208.i.i

rtl_write_dword.exit208.i.i:                      ; preds = %if.then.i206.i.i, %if.end41.i.i.rtl_write_dword.exit208.i.i_crit_edge
  %434 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %435(ptr noundef %313, i32 noundef 532, i8 noundef zeroext 0) #7
  %436 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i211.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %437, i32 0, i32 1
  %438 = ptrtoint ptr %write_readback.i211.i.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %write_readback.i211.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %439)
  %tobool.not.i212.i.i = icmp eq i8 %439, 0
  br i1 %tobool.not.i212.i.i, label %rtl_write_dword.exit208.i.i.if.end43.i214_crit_edge, label %if.then.i215.i.i

rtl_write_dword.exit208.i.i.if.end43.i214_crit_edge: ; preds = %rtl_write_dword.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i214

if.then.i215.i.i:                                 ; preds = %rtl_write_dword.exit208.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i213.i.i = getelementptr inbounds %struct.rtl_priv, ptr %313, i32 0, i32 13, i32 9
  %440 = ptrtoint ptr %read8_sync.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %read8_sync.i213.i.i, align 4
  %call.i214.i.i = tail call zeroext i8 %441(ptr noundef %313, i32 noundef 532) #7
  br label %if.end43.i214

if.end43.i214:                                    ; preds = %if.then.i215.i.i, %rtl_write_dword.exit208.i.i.if.end43.i214_crit_edge, %rtl_write_word.exit.i.if.end43.i214_crit_edge
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 7
  %442 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %443(ptr noundef %191, i32 noundef 180, i32 noundef -1) #7
  %444 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i282.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %445, i32 0, i32 1
  %446 = ptrtoint ptr %write_readback.i282.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %write_readback.i282.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %447)
  %tobool.not.i283.i = icmp eq i8 %447, 0
  br i1 %tobool.not.i283.i, label %if.end43.i214.rtl_write_dword.exit.i_crit_edge, label %if.then.i285.i

if.end43.i214.rtl_write_dword.exit.i_crit_edge:   ; preds = %if.end43.i214
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i285.i:                                   ; preds = %if.end43.i214
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %448 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i284.i = tail call i32 %449(ptr noundef %191, i32 noundef 180) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i285.i, %if.end43.i214.rtl_write_dword.exit.i_crit_edge
  %450 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %451(ptr noundef %191, i32 noundef 188, i32 noundef -1) #7
  %452 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i288.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %453, i32 0, i32 1
  %454 = ptrtoint ptr %write_readback.i288.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %write_readback.i288.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool.not.i289.i = icmp eq i8 %455, 0
  br i1 %tobool.not.i289.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit293.i_crit_edge, label %if.then.i292.i

rtl_write_dword.exit.i.rtl_write_dword.exit293.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit293.i

if.then.i292.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i290.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %456 = ptrtoint ptr %read32_sync.i290.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %read32_sync.i290.i, align 4
  %call.i291.i = tail call i32 %457(ptr noundef %191, i32 noundef 188) #7
  br label %rtl_write_dword.exit293.i

rtl_write_dword.exit293.i:                        ; preds = %if.then.i292.i, %rtl_write_dword.exit.i.rtl_write_dword.exit293.i_crit_edge
  %458 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i295.i = tail call zeroext i8 %459(ptr noundef %191, i32 noundef 307) #7
  %460 = or i8 %call.i295.i, 64
  %461 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %462(ptr noundef %191, i32 noundef 307, i8 noundef zeroext %460) #7
  %463 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i298.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %464, i32 0, i32 1
  %465 = ptrtoint ptr %write_readback.i298.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %write_readback.i298.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %466)
  %tobool.not.i299.i = icmp eq i8 %466, 0
  br i1 %tobool.not.i299.i, label %rtl_write_dword.exit293.i.rtl_write_byte.exit303.i_crit_edge, label %if.then.i302.i

rtl_write_dword.exit293.i.rtl_write_byte.exit303.i_crit_edge: ; preds = %rtl_write_dword.exit293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit303.i

if.then.i302.i:                                   ; preds = %rtl_write_dword.exit293.i
  call void @__sanitizer_cov_trace_pc() #9
  %467 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i301.i = tail call zeroext i8 %468(ptr noundef %191, i32 noundef 307) #7
  br label %rtl_write_byte.exit303.i

rtl_write_byte.exit303.i:                         ; preds = %if.then.i302.i, %rtl_write_dword.exit293.i.rtl_write_byte.exit303.i_crit_edge
  %read16_sync.i304.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 10
  %469 = ptrtoint ptr %read16_sync.i304.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %read16_sync.i304.i, align 4
  %call.i305.i = tail call zeroext i16 %470(ptr noundef %191, i32 noundef 268) #7
  %471 = and i16 %call.i305.i, 14
  %472 = or i16 %471, -2639
  %473 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %474(ptr noundef %191, i32 noundef 268, i16 noundef zeroext %472) #7
  %475 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i308.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %476, i32 0, i32 1
  %477 = ptrtoint ptr %write_readback.i308.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %write_readback.i308.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool.not.i309.i = icmp eq i8 %478, 0
  br i1 %tobool.not.i309.i, label %rtl_write_byte.exit303.i.rtl_write_word.exit313.i_crit_edge, label %if.then.i312.i

rtl_write_byte.exit303.i.rtl_write_word.exit313.i_crit_edge: ; preds = %rtl_write_byte.exit303.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit313.i

if.then.i312.i:                                   ; preds = %rtl_write_byte.exit303.i
  call void @__sanitizer_cov_trace_pc() #9
  %479 = ptrtoint ptr %read16_sync.i304.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %read16_sync.i304.i, align 4
  %call.i311.i = tail call zeroext i16 %480(ptr noundef %191, i32 noundef 268) #7
  br label %rtl_write_word.exit313.i

rtl_write_word.exit313.i:                         ; preds = %if.then.i312.i, %rtl_write_byte.exit303.i.rtl_write_word.exit313.i_crit_edge
  %481 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %482(ptr noundef %191, i32 noundef 1057, i8 noundef zeroext 31) #7
  %483 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %484, i32 0, i32 1
  %485 = ptrtoint ptr %write_readback.i316.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %write_readback.i316.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool.not.i317.i = icmp eq i8 %486, 0
  br i1 %tobool.not.i317.i, label %rtl_write_word.exit313.i.rtl_write_byte.exit321.i_crit_edge, label %if.then.i320.i

rtl_write_word.exit313.i.rtl_write_byte.exit321.i_crit_edge: ; preds = %rtl_write_word.exit313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit321.i

if.then.i320.i:                                   ; preds = %rtl_write_word.exit313.i
  call void @__sanitizer_cov_trace_pc() #9
  %487 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i319.i = tail call zeroext i8 %488(ptr noundef %191, i32 noundef 1057) #7
  br label %rtl_write_byte.exit321.i

rtl_write_byte.exit321.i:                         ; preds = %if.then.i320.i, %rtl_write_word.exit313.i.rtl_write_byte.exit321.i_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %489 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %receive_config.i, align 4
  %491 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %492(ptr noundef %191, i32 noundef 1544, i32 noundef %490) #7
  %493 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i324.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %494, i32 0, i32 1
  %495 = ptrtoint ptr %write_readback.i324.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %write_readback.i324.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool.not.i325.i = icmp eq i8 %496, 0
  br i1 %tobool.not.i325.i, label %rtl_write_byte.exit321.i.rtl_write_dword.exit329.i_crit_edge, label %if.then.i328.i

rtl_write_byte.exit321.i.rtl_write_dword.exit329.i_crit_edge: ; preds = %rtl_write_byte.exit321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit329.i

if.then.i328.i:                                   ; preds = %rtl_write_byte.exit321.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i326.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %497 = ptrtoint ptr %read32_sync.i326.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %read32_sync.i326.i, align 4
  %call.i327.i = tail call i32 %498(ptr noundef %191, i32 noundef 1544) #7
  br label %rtl_write_dword.exit329.i

rtl_write_dword.exit329.i:                        ; preds = %if.then.i328.i, %rtl_write_byte.exit321.i.rtl_write_dword.exit329.i_crit_edge
  %499 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %500(ptr noundef %191, i32 noundef 1700, i16 noundef zeroext -1) #7
  %501 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i332.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %502, i32 0, i32 1
  %503 = ptrtoint ptr %write_readback.i332.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %write_readback.i332.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %504)
  %tobool.not.i333.i = icmp eq i8 %504, 0
  br i1 %tobool.not.i333.i, label %rtl_write_dword.exit329.i.rtl_write_word.exit337.i_crit_edge, label %if.then.i336.i

rtl_write_dword.exit329.i.rtl_write_word.exit337.i_crit_edge: ; preds = %rtl_write_dword.exit329.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit337.i

if.then.i336.i:                                   ; preds = %rtl_write_dword.exit329.i
  call void @__sanitizer_cov_trace_pc() #9
  %505 = ptrtoint ptr %read16_sync.i304.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %read16_sync.i304.i, align 4
  %call.i335.i = tail call zeroext i16 %506(ptr noundef %191, i32 noundef 1700) #7
  br label %rtl_write_word.exit337.i

rtl_write_word.exit337.i:                         ; preds = %if.then.i336.i, %rtl_write_dword.exit329.i.rtl_write_word.exit337.i_crit_edge
  %transmit_config.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 1, i32 8, i32 2, i32 3
  %507 = ptrtoint ptr %transmit_config.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %transmit_config.i, align 4
  %509 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %510(ptr noundef %191, i32 noundef 1540, i32 noundef %508) #7
  %511 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i340.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %512, i32 0, i32 1
  %513 = ptrtoint ptr %write_readback.i340.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %write_readback.i340.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %514)
  %tobool.not.i341.i = icmp eq i8 %514, 0
  br i1 %tobool.not.i341.i, label %rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge, label %if.then.i344.i

rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge: ; preds = %rtl_write_word.exit337.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit345.i

if.then.i344.i:                                   ; preds = %rtl_write_word.exit337.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i342.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %515 = ptrtoint ptr %read32_sync.i342.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %read32_sync.i342.i, align 4
  %call.i343.i = tail call i32 %516(ptr noundef %191, i32 noundef 1540) #7
  br label %rtl_write_dword.exit345.i

rtl_write_dword.exit345.i:                        ; preds = %if.then.i344.i, %rtl_write_word.exit337.i.rtl_write_dword.exit345.i_crit_edge
  %dma.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %517 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %dma.i, align 4
  %519 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %520(ptr noundef %191, i32 noundef 776, i32 noundef %518) #7
  %521 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i348.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %522, i32 0, i32 1
  %523 = ptrtoint ptr %write_readback.i348.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %write_readback.i348.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %524)
  %tobool.not.i349.i = icmp eq i8 %524, 0
  br i1 %tobool.not.i349.i, label %rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge, label %if.then.i352.i

rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge: ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit353.i

if.then.i352.i:                                   ; preds = %rtl_write_dword.exit345.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i350.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %525 = ptrtoint ptr %read32_sync.i350.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %read32_sync.i350.i, align 4
  %call.i351.i = tail call i32 %526(ptr noundef %191, i32 noundef 776) #7
  br label %rtl_write_dword.exit353.i

rtl_write_dword.exit353.i:                        ; preds = %if.then.i352.i, %rtl_write_dword.exit345.i.rtl_write_dword.exit353.i_crit_edge
  %dma60.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %527 = ptrtoint ptr %dma60.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %dma60.i, align 4
  %529 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %530(ptr noundef %191, i32 noundef 792, i32 noundef %528) #7
  %531 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i356.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %532, i32 0, i32 1
  %533 = ptrtoint ptr %write_readback.i356.i to i32
  call void @__asan_load1_noabort(i32 %533)
  %534 = load i8, ptr %write_readback.i356.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %534)
  %tobool.not.i357.i = icmp eq i8 %534, 0
  br i1 %tobool.not.i357.i, label %rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge, label %if.then.i360.i

rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge: ; preds = %rtl_write_dword.exit353.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit361.i

if.then.i360.i:                                   ; preds = %rtl_write_dword.exit353.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i358.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %535 = ptrtoint ptr %read32_sync.i358.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %read32_sync.i358.i, align 4
  %call.i359.i = tail call i32 %536(ptr noundef %191, i32 noundef 792) #7
  br label %rtl_write_dword.exit361.i

rtl_write_dword.exit361.i:                        ; preds = %if.then.i360.i, %rtl_write_dword.exit353.i.rtl_write_dword.exit361.i_crit_edge
  %dma66.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %537 = ptrtoint ptr %dma66.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %dma66.i, align 4
  %539 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %540(ptr noundef %191, i32 noundef 800, i32 noundef %538) #7
  %541 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i364.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %542, i32 0, i32 1
  %543 = ptrtoint ptr %write_readback.i364.i to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %write_readback.i364.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %544)
  %tobool.not.i365.i = icmp eq i8 %544, 0
  br i1 %tobool.not.i365.i, label %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge, label %if.then.i368.i

rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge: ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit369.i

if.then.i368.i:                                   ; preds = %rtl_write_dword.exit361.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i366.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %545 = ptrtoint ptr %read32_sync.i366.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %read32_sync.i366.i, align 4
  %call.i367.i = tail call i32 %546(ptr noundef %191, i32 noundef 800) #7
  br label %rtl_write_dword.exit369.i

rtl_write_dword.exit369.i:                        ; preds = %if.then.i368.i, %rtl_write_dword.exit361.i.rtl_write_dword.exit369.i_crit_edge
  %dma72.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %547 = ptrtoint ptr %dma72.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %dma72.i, align 4
  %549 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %550(ptr noundef %191, i32 noundef 808, i32 noundef %548) #7
  %551 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i372.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %552, i32 0, i32 1
  %553 = ptrtoint ptr %write_readback.i372.i to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %write_readback.i372.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %554)
  %tobool.not.i373.i = icmp eq i8 %554, 0
  br i1 %tobool.not.i373.i, label %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge, label %if.then.i376.i

rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge: ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit377.i

if.then.i376.i:                                   ; preds = %rtl_write_dword.exit369.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i374.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %555 = ptrtoint ptr %read32_sync.i374.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %read32_sync.i374.i, align 4
  %call.i375.i = tail call i32 %556(ptr noundef %191, i32 noundef 808) #7
  br label %rtl_write_dword.exit377.i

rtl_write_dword.exit377.i:                        ; preds = %if.then.i376.i, %rtl_write_dword.exit369.i.rtl_write_dword.exit377.i_crit_edge
  %dma78.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %557 = ptrtoint ptr %dma78.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %dma78.i, align 4
  %559 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %560(ptr noundef %191, i32 noundef 816, i32 noundef %558) #7
  %561 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i380.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %562, i32 0, i32 1
  %563 = ptrtoint ptr %write_readback.i380.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %write_readback.i380.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %564)
  %tobool.not.i381.i = icmp eq i8 %564, 0
  br i1 %tobool.not.i381.i, label %rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge, label %if.then.i384.i

rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge: ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit385.i

if.then.i384.i:                                   ; preds = %rtl_write_dword.exit377.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i382.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %565 = ptrtoint ptr %read32_sync.i382.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %read32_sync.i382.i, align 4
  %call.i383.i = tail call i32 %566(ptr noundef %191, i32 noundef 816) #7
  br label %rtl_write_dword.exit385.i

rtl_write_dword.exit385.i:                        ; preds = %if.then.i384.i, %rtl_write_dword.exit377.i.rtl_write_dword.exit385.i_crit_edge
  %dma84.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %567 = ptrtoint ptr %dma84.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %dma84.i, align 4
  %569 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %570(ptr noundef %191, i32 noundef 824, i32 noundef %568) #7
  %571 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i388.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %572, i32 0, i32 1
  %573 = ptrtoint ptr %write_readback.i388.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %write_readback.i388.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %574)
  %tobool.not.i389.i = icmp eq i8 %574, 0
  br i1 %tobool.not.i389.i, label %rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge, label %if.then.i392.i

rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge: ; preds = %rtl_write_dword.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit393.i

if.then.i392.i:                                   ; preds = %rtl_write_dword.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i390.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %575 = ptrtoint ptr %read32_sync.i390.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %read32_sync.i390.i, align 4
  %call.i391.i = tail call i32 %576(ptr noundef %191, i32 noundef 824) #7
  br label %rtl_write_dword.exit393.i

rtl_write_dword.exit393.i:                        ; preds = %if.then.i392.i, %rtl_write_dword.exit385.i.rtl_write_dword.exit393.i_crit_edge
  %dma90.i = getelementptr %struct.rtl_priv, ptr %191, i32 1, i32 7, i32 11
  %577 = ptrtoint ptr %dma90.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %dma90.i, align 4
  %579 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %580(ptr noundef %191, i32 noundef 784, i32 noundef %578) #7
  %581 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i396.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %582, i32 0, i32 1
  %583 = ptrtoint ptr %write_readback.i396.i to i32
  call void @__asan_load1_noabort(i32 %583)
  %584 = load i8, ptr %write_readback.i396.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %584)
  %tobool.not.i397.i = icmp eq i8 %584, 0
  br i1 %tobool.not.i397.i, label %rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge, label %if.then.i400.i

rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge: ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit401.i

if.then.i400.i:                                   ; preds = %rtl_write_dword.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i398.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %585 = ptrtoint ptr %read32_sync.i398.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %read32_sync.i398.i, align 4
  %call.i399.i = tail call i32 %586(ptr noundef %191, i32 noundef 784) #7
  br label %rtl_write_dword.exit401.i

rtl_write_dword.exit401.i:                        ; preds = %if.then.i400.i, %rtl_write_dword.exit393.i.rtl_write_dword.exit401.i_crit_edge
  %dma95.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 1, i32 8, i32 2, i32 4, i32 1
  %587 = ptrtoint ptr %dma95.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %dma95.i, align 4
  %589 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %590(ptr noundef %191, i32 noundef 832, i32 noundef %588) #7
  %591 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i404.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %592, i32 0, i32 1
  %593 = ptrtoint ptr %write_readback.i404.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %write_readback.i404.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool.not.i405.i = icmp eq i8 %594, 0
  br i1 %tobool.not.i405.i, label %rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge, label %if.then.i408.i

rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge: ; preds = %rtl_write_dword.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit409.i

if.then.i408.i:                                   ; preds = %rtl_write_dword.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i406.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %595 = ptrtoint ptr %read32_sync.i406.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %read32_sync.i406.i, align 4
  %call.i407.i = tail call i32 %596(ptr noundef %191, i32 noundef 832) #7
  br label %rtl_write_dword.exit409.i

rtl_write_dword.exit409.i:                        ; preds = %if.then.i408.i, %rtl_write_dword.exit401.i.rtl_write_dword.exit409.i_crit_edge
  %597 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i411.i = tail call zeroext i8 %598(ptr noundef %191, i32 noundef 771) #7
  %599 = or i8 %call.i411.i, 119
  %600 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %601(ptr noundef %191, i32 noundef 771, i8 noundef zeroext %599) #7
  %602 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i414.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %603, i32 0, i32 1
  %604 = ptrtoint ptr %write_readback.i414.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %write_readback.i414.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %605)
  %tobool.not.i415.i = icmp eq i8 %605, 0
  br i1 %tobool.not.i415.i, label %rtl_write_dword.exit409.i.rtl_write_byte.exit419.i_crit_edge, label %if.then.i418.i

rtl_write_dword.exit409.i.rtl_write_byte.exit419.i_crit_edge: ; preds = %rtl_write_dword.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit419.i

if.then.i418.i:                                   ; preds = %rtl_write_dword.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  %606 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i417.i = tail call zeroext i8 %607(ptr noundef %191, i32 noundef 771) #7
  br label %rtl_write_byte.exit419.i

rtl_write_byte.exit419.i:                         ; preds = %if.then.i418.i, %rtl_write_dword.exit409.i.rtl_write_byte.exit419.i_crit_edge
  %608 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %609(ptr noundef %191, i32 noundef 772, i32 noundef 0) #7
  %610 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i422.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %611, i32 0, i32 1
  %612 = ptrtoint ptr %write_readback.i422.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %write_readback.i422.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %613)
  %tobool.not.i423.i = icmp eq i8 %613, 0
  br i1 %tobool.not.i423.i, label %rtl_write_byte.exit419.i.rtl_write_dword.exit427.i_crit_edge, label %if.then.i426.i

rtl_write_byte.exit419.i.rtl_write_dword.exit427.i_crit_edge: ; preds = %rtl_write_byte.exit419.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit427.i

if.then.i426.i:                                   ; preds = %rtl_write_byte.exit419.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i424.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %614 = ptrtoint ptr %read32_sync.i424.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %read32_sync.i424.i, align 4
  %call.i425.i = tail call i32 %615(ptr noundef %191, i32 noundef 772) #7
  br label %rtl_write_dword.exit427.i

rtl_write_dword.exit427.i:                        ; preds = %if.then.i426.i, %rtl_write_byte.exit419.i.rtl_write_dword.exit427.i_crit_edge
  %616 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %617(ptr noundef %191, i32 noundef 448, i32 noundef 0) #7
  %618 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i430.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %619, i32 0, i32 1
  %620 = ptrtoint ptr %write_readback.i430.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %write_readback.i430.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %621)
  %tobool.not.i431.i = icmp eq i8 %621, 0
  br i1 %tobool.not.i431.i, label %rtl_write_dword.exit427.i.rtl_write_dword.exit435.i_crit_edge, label %if.then.i434.i

rtl_write_dword.exit427.i.rtl_write_dword.exit435.i_crit_edge: ; preds = %rtl_write_dword.exit427.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit435.i

if.then.i434.i:                                   ; preds = %rtl_write_dword.exit427.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i432.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 13, i32 11
  %622 = ptrtoint ptr %read32_sync.i432.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read32_sync.i432.i, align 4
  %call.i433.i = tail call i32 %623(ptr noundef %191, i32 noundef 448) #7
  br label %rtl_write_dword.exit435.i

rtl_write_dword.exit435.i:                        ; preds = %if.then.i434.i, %rtl_write_dword.exit427.i.rtl_write_dword.exit435.i_crit_edge
  %624 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %625(ptr noundef %191, i32 noundef 1399, i8 noundef zeroext 3) #7
  %626 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i438.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %write_readback.i438.i to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %write_readback.i438.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %629)
  %tobool.not.i439.i = icmp eq i8 %629, 0
  br i1 %tobool.not.i439.i, label %rtl_write_dword.exit435.i.rtl_write_byte.exit443.i_crit_edge, label %if.then.i442.i

rtl_write_dword.exit435.i.rtl_write_byte.exit443.i_crit_edge: ; preds = %rtl_write_dword.exit435.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit443.i

if.then.i442.i:                                   ; preds = %rtl_write_dword.exit435.i
  call void @__sanitizer_cov_trace_pc() #9
  %630 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i441.i = tail call zeroext i8 %631(ptr noundef %191, i32 noundef 1399) #7
  br label %rtl_write_byte.exit443.i

rtl_write_byte.exit443.i:                         ; preds = %if.then.i442.i, %rtl_write_dword.exit435.i.rtl_write_byte.exit443.i_crit_edge
  %632 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %priv, align 8
  %cfg.i445.i = getelementptr inbounds %struct.rtl_priv, ptr %633, i32 0, i32 32
  %634 = ptrtoint ptr %cfg.i445.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %cfg.i445.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %635, i32 0, i32 4
  %636 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %637, i32 0, i32 46
  %638 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %639(ptr noundef %hw, i32 noundef 100, i32 noundef 1048576, i32 noundef 0) #7
  %640 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %priv, align 8
  %cfg.i447.i = getelementptr inbounds %struct.rtl_priv, ptr %641, i32 0, i32 32
  %642 = ptrtoint ptr %cfg.i447.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %cfg.i447.i, align 8
  %ops.i448.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %643, i32 0, i32 4
  %644 = ptrtoint ptr %ops.i448.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %ops.i448.i, align 4
  %set_bbreg.i449.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %645, i32 0, i32 46
  %646 = ptrtoint ptr %set_bbreg.i449.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %set_bbreg.i449.i, align 4
  tail call void %647(ptr noundef %hw, i32 noundef 100, i32 noundef 16777216, i32 noundef 0) #7
  %648 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %priv, align 8
  %cfg.i451.i = getelementptr inbounds %struct.rtl_priv, ptr %649, i32 0, i32 32
  %650 = ptrtoint ptr %cfg.i451.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %cfg.i451.i, align 8
  %ops.i452.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %651, i32 0, i32 4
  %652 = ptrtoint ptr %ops.i452.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %ops.i452.i, align 4
  %set_bbreg.i453.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %653, i32 0, i32 46
  %654 = ptrtoint ptr %set_bbreg.i453.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %set_bbreg.i453.i, align 4
  tail call void %655(ptr noundef %hw, i32 noundef 64, i32 noundef 16, i32 noundef 0) #7
  %656 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %priv, align 8
  %cfg.i455.i = getelementptr inbounds %struct.rtl_priv, ptr %657, i32 0, i32 32
  %658 = ptrtoint ptr %cfg.i455.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %cfg.i455.i, align 8
  %ops.i456.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %659, i32 0, i32 4
  %660 = ptrtoint ptr %ops.i456.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %ops.i456.i, align 4
  %set_bbreg.i457.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %661, i32 0, i32 46
  %662 = ptrtoint ptr %set_bbreg.i457.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %set_bbreg.i457.i, align 4
  tail call void %663(ptr noundef %hw, i32 noundef 64, i32 noundef 8, i32 noundef 1) #7
  %664 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %priv, align 8
  %cfg.i459.i = getelementptr inbounds %struct.rtl_priv, ptr %665, i32 0, i32 32
  %666 = ptrtoint ptr %cfg.i459.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %cfg.i459.i, align 8
  %ops.i460.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %667, i32 0, i32 4
  %668 = ptrtoint ptr %ops.i460.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %ops.i460.i, align 4
  %set_bbreg.i461.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %669, i32 0, i32 46
  %670 = ptrtoint ptr %set_bbreg.i461.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %set_bbreg.i461.i, align 4
  tail call void %671(ptr noundef %hw, i32 noundef 76, i32 noundef 25165824, i32 noundef 2) #7
  %672 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %priv, align 8
  %cfg.i463.i = getelementptr inbounds %struct.rtl_priv, ptr %673, i32 0, i32 32
  %674 = ptrtoint ptr %cfg.i463.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %cfg.i463.i, align 8
  %ops.i464.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %675, i32 0, i32 4
  %676 = ptrtoint ptr %ops.i464.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %ops.i464.i, align 4
  %set_bbreg.i465.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %677, i32 0, i32 46
  %678 = ptrtoint ptr %set_bbreg.i465.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %set_bbreg.i465.i, align 4
  tail call void %679(ptr noundef %hw, i32 noundef 2372, i32 noundef 3, i32 noundef 3) #7
  %680 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %priv, align 8
  %cfg.i467.i = getelementptr inbounds %struct.rtl_priv, ptr %681, i32 0, i32 32
  %682 = ptrtoint ptr %cfg.i467.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %cfg.i467.i, align 8
  %ops.i468.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %683, i32 0, i32 4
  %684 = ptrtoint ptr %ops.i468.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %ops.i468.i, align 4
  %set_bbreg.i469.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %685, i32 0, i32 46
  %686 = ptrtoint ptr %set_bbreg.i469.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %set_bbreg.i469.i, align 4
  tail call void %687(ptr noundef %hw, i32 noundef 2352, i32 noundef 255, i32 noundef 119) #7
  %688 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %priv, align 8
  %cfg.i471.i = getelementptr inbounds %struct.rtl_priv, ptr %689, i32 0, i32 32
  %690 = ptrtoint ptr %cfg.i471.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %cfg.i471.i, align 8
  %ops.i472.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %691, i32 0, i32 4
  %692 = ptrtoint ptr %ops.i472.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %ops.i472.i, align 4
  %set_bbreg.i473.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %693, i32 0, i32 46
  %694 = ptrtoint ptr %set_bbreg.i473.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %set_bbreg.i473.i, align 4
  tail call void %695(ptr noundef %hw, i32 noundef 56, i32 noundef 2048, i32 noundef 1) #7
  %696 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i475.i = tail call zeroext i8 %697(ptr noundef %191, i32 noundef 646) #7
  %698 = and i8 %call.i475.i, -5
  %699 = ptrtoint ptr %write8_async.i.i203 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %write8_async.i.i203, align 4
  tail call void %700(ptr noundef %191, i32 noundef 646, i8 noundef zeroext %698) #7
  %701 = ptrtoint ptr %cfg.i.i204 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %cfg.i.i204, align 8
  %write_readback.i478.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %702, i32 0, i32 1
  %703 = ptrtoint ptr %write_readback.i478.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %write_readback.i478.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %704)
  %tobool.not.i479.i = icmp eq i8 %704, 0
  br i1 %tobool.not.i479.i, label %rtl_write_byte.exit443.i.rtl_write_byte.exit483.i_crit_edge, label %if.then.i482.i

rtl_write_byte.exit443.i.rtl_write_byte.exit483.i_crit_edge: ; preds = %rtl_write_byte.exit443.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit483.i

if.then.i482.i:                                   ; preds = %rtl_write_byte.exit443.i
  call void @__sanitizer_cov_trace_pc() #9
  %705 = ptrtoint ptr %read8_sync.i194.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %read8_sync.i194.i, align 4
  %call.i481.i = tail call zeroext i8 %706(ptr noundef %191, i32 noundef 646) #7
  br label %rtl_write_byte.exit483.i

rtl_write_byte.exit483.i:                         ; preds = %if.then.i482.i, %rtl_write_byte.exit443.i.rtl_write_byte.exit483.i_crit_edge
  %707 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %priv, align 8
  %sw_led0.i.i = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 18, i32 1
  %up_first_time.i.i = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 10, i32 2
  %709 = ptrtoint ptr %up_first_time.i.i to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %up_first_time.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %710)
  %tobool.not.i485.i = icmp eq i8 %710, 0
  br i1 %tobool.not.i485.i, label %if.end.i.i, label %rtl_write_byte.exit483.i.if.end37_crit_edge

rtl_write_byte.exit483.i.if.end37_crit_edge:      ; preds = %rtl_write_byte.exit483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end.i.i:                                       ; preds = %rtl_write_byte.exit483.i
  %rfoff_reason.i.i = getelementptr inbounds %struct.rtl_priv, ptr %708, i32 0, i32 21, i32 18
  %711 = ptrtoint ptr %rfoff_reason.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %rfoff_reason.i.i, align 4
  %713 = zext i32 %712 to i64
  call void @__sanitizer_cov_trace_switch(i64 %713, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %712, label %if.else6.i.i [
    i32 268435456, label %if.then2.i.i
    i32 0, label %if.then5.i.i
  ]

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8723be_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end37

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8723be_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end37

if.else6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8723be_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i.i) #7
  br label %if.end37

do.end34:                                         ; preds = %_rtl8723be_llt_write.exit199.i.i, %_rtl8723be_llt_write.exit176.i.i, %_rtl8723be_llt_write.exit148.thread.i.i, %_rtl8723be_llt_write.exit.i.i, %if.then.i211
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %do.body91

if.end37:                                         ; preds = %if.else6.i.i, %if.then5.i.i, %if.then2.i.i, %rtl_write_byte.exit483.i.if.end37_crit_edge
  %714 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %read8_sync.i, align 4
  %call.i216 = tail call zeroext i8 %715(ptr noundef %1, i32 noundef 240) #7
  %716 = and i8 %call.i216, 127
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %717 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %write8_async.i, align 4
  tail call void %718(ptr noundef %1, i32 noundef 240, i8 noundef zeroext %716) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %719 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %720, i32 0, i32 1
  %721 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %721)
  %722 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %722)
  %tobool.not.i217 = icmp eq i8 %722, 0
  br i1 %tobool.not.i217, label %if.end37.rtl_write_byte.exit_crit_edge, label %if.then.i220

if.end37.rtl_write_byte.exit_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i220:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %723 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %read8_sync.i, align 4
  %call.i219 = tail call zeroext i8 %724(ptr noundef %1, i32 noundef 240) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i220, %if.end37.rtl_write_byte.exit_crit_edge
  %call41 = tail call i32 @rtl8723_download_fw(ptr noundef %hw, i1 noundef zeroext true, i32 noundef 6000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.13) #7
  br label %do.body91

if.end44:                                         ; preds = %rtl_write_byte.exit
  %725 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %725)
  store i8 1, ptr %fw_ready, align 2
  %last_hmeboxnum = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %726 = ptrtoint ptr %last_hmeboxnum to i32
  call void @__asan_store1_noabort(i32 %726)
  store i8 0, ptr %last_hmeboxnum, align 1
  %call46 = tail call zeroext i1 @rtl8723be_phy_mac_config(ptr noundef %hw) #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %727 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %read32_sync.i, align 4
  %call.i222 = tail call i32 %728(ptr noundef %1, i32 noundef 1544) #7
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %and49 = and i32 %call.i222, -769
  %729 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 %and49, ptr %receive_config, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %730 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %write32_async.i, align 4
  tail call void %731(ptr noundef %1, i32 noundef 1544, i32 noundef %and49) #7
  %732 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %cfg.i, align 8
  %write_readback.i224 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %733, i32 0, i32 1
  %734 = ptrtoint ptr %write_readback.i224 to i32
  call void @__asan_load1_noabort(i32 %734)
  %735 = load i8, ptr %write_readback.i224, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %735)
  %tobool.not.i225 = icmp eq i8 %735, 0
  br i1 %tobool.not.i225, label %if.end44.rtl_write_dword.exit_crit_edge, label %if.then.i228

if.end44.rtl_write_dword.exit_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i228:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %736 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %read32_sync.i, align 4
  %call.i227 = tail call i32 %737(ptr noundef %1, i32 noundef 1544) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i228, %if.end44.rtl_write_dword.exit_crit_edge
  %call51 = tail call zeroext i1 @rtl8723be_phy_bb_config(ptr noundef %hw) #7
  %call52 = tail call zeroext i1 @rtl8723be_phy_rf_config(ptr noundef %hw) #7
  %738 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %priv, align 8
  %cfg.i231 = getelementptr inbounds %struct.rtl_priv, ptr %739, i32 0, i32 32
  %740 = ptrtoint ptr %cfg.i231 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %cfg.i231, align 8
  %ops.i232 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %741, i32 0, i32 4
  %742 = ptrtoint ptr %ops.i232 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %ops.i232, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %743, i32 0, i32 47
  %744 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %get_rfreg.i, align 4
  %call.i233 = tail call i32 %745(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %746 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 %call.i233, ptr %rfreg_chnlval, align 4
  %747 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %priv, align 8
  %cfg.i235 = getelementptr inbounds %struct.rtl_priv, ptr %748, i32 0, i32 32
  %749 = ptrtoint ptr %cfg.i235 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %cfg.i235, align 8
  %ops.i236 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %750, i32 0, i32 4
  %751 = ptrtoint ptr %ops.i236 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %ops.i236, align 4
  %get_rfreg.i237 = getelementptr inbounds %struct.rtl_hal_ops, ptr %752, i32 0, i32 47
  %753 = ptrtoint ptr %get_rfreg.i237 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %get_rfreg.i237, align 4
  %call.i238 = tail call i32 %754(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #7
  %arrayidx56 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %755 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %755)
  store i32 %call.i238, ptr %arrayidx56, align 4
  %756 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load i32, ptr %rfreg_chnlval, align 4
  %and59 = and i32 %757, 268370943
  %or = or i32 %and59, 3072
  store i32 %or, ptr %rfreg_chnlval, align 4
  %758 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %priv, align 8
  %write32_async.i.i240 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 7
  %760 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %761(ptr noundef %759, i32 noundef 1088, i32 noundef 4095) #7
  %cfg.i.i241 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 32
  %762 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i.i242 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %763, i32 0, i32 1
  %764 = ptrtoint ptr %write_readback.i.i242 to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %write_readback.i.i242, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %765)
  %tobool.not.i.i243 = icmp eq i8 %765, 0
  br i1 %tobool.not.i.i243, label %rtl_write_dword.exit.rtl_write_dword.exit.i247_crit_edge, label %if.then.i.i246

rtl_write_dword.exit.rtl_write_dword.exit.i247_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i247

if.then.i.i246:                                   ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i244 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %766 = ptrtoint ptr %read32_sync.i.i244 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %read32_sync.i.i244, align 4
  %call.i.i245 = tail call i32 %767(ptr noundef %759, i32 noundef 1088) #7
  br label %rtl_write_dword.exit.i247

rtl_write_dword.exit.i247:                        ; preds = %if.then.i.i246, %rtl_write_dword.exit.rtl_write_dword.exit.i247_crit_edge
  %768 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %769(ptr noundef %759, i32 noundef 1096, i32 noundef -4096) #7
  %770 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %771, i32 0, i32 1
  %772 = ptrtoint ptr %write_readback.i24.i to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %write_readback.i24.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %773)
  %tobool.not.i25.i = icmp eq i8 %773, 0
  br i1 %tobool.not.i25.i, label %rtl_write_dword.exit.i247.rtl_write_dword.exit29.i_crit_edge, label %if.then.i28.i

rtl_write_dword.exit.i247.rtl_write_dword.exit29.i_crit_edge: ; preds = %rtl_write_dword.exit.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit29.i

if.then.i28.i:                                    ; preds = %rtl_write_dword.exit.i247
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %774 = ptrtoint ptr %read32_sync.i26.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %read32_sync.i26.i, align 4
  %call.i27.i = tail call i32 %775(ptr noundef %759, i32 noundef 1096) #7
  br label %rtl_write_dword.exit29.i

rtl_write_dword.exit29.i:                         ; preds = %if.then.i28.i, %rtl_write_dword.exit.i247.rtl_write_dword.exit29.i_crit_edge
  %776 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %777(ptr noundef %759, i32 noundef 1104, i32 noundef 4190208) #7
  %778 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %779, i32 0, i32 1
  %780 = ptrtoint ptr %write_readback.i32.i to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %write_readback.i32.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %781)
  %tobool.not.i33.i = icmp eq i8 %781, 0
  br i1 %tobool.not.i33.i, label %rtl_write_dword.exit29.i.rtl_write_dword.exit37.i_crit_edge, label %if.then.i36.i

rtl_write_dword.exit29.i.rtl_write_dword.exit37.i_crit_edge: ; preds = %rtl_write_dword.exit29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit37.i

if.then.i36.i:                                    ; preds = %rtl_write_dword.exit29.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %782 = ptrtoint ptr %read32_sync.i34.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %read32_sync.i34.i, align 4
  %call.i35.i = tail call i32 %783(ptr noundef %759, i32 noundef 1104) #7
  br label %rtl_write_dword.exit37.i

rtl_write_dword.exit37.i:                         ; preds = %if.then.i36.i, %rtl_write_dword.exit29.i.rtl_write_dword.exit37.i_crit_edge
  %write16_async.i.i248 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 6
  %784 = ptrtoint ptr %write16_async.i.i248 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %write16_async.i.i248, align 4
  tail call void %785(ptr noundef %759, i32 noundef 1056, i16 noundef zeroext 7936) #7
  %786 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %787, i32 0, i32 1
  %788 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %write_readback.i39.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %789)
  %tobool.not.i40.i = icmp eq i8 %789, 0
  br i1 %tobool.not.i40.i, label %rtl_write_dword.exit37.i.rtl_write_word.exit.i251_crit_edge, label %if.then.i42.i

rtl_write_dword.exit37.i.rtl_write_word.exit.i251_crit_edge: ; preds = %rtl_write_dword.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i251

if.then.i42.i:                                    ; preds = %rtl_write_dword.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i249 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 10
  %790 = ptrtoint ptr %read16_sync.i.i249 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %read16_sync.i.i249, align 4
  %call.i41.i = tail call zeroext i16 %791(ptr noundef %759, i32 noundef 1056) #7
  br label %rtl_write_word.exit.i251

rtl_write_word.exit.i251:                         ; preds = %if.then.i42.i, %rtl_write_dword.exit37.i.rtl_write_word.exit.i251_crit_edge
  %write8_async.i.i250 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 5
  %792 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %793(ptr noundef %759, i32 noundef 1110, i8 noundef zeroext 112) #7
  %794 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i44.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %795, i32 0, i32 1
  %796 = ptrtoint ptr %write_readback.i44.i to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %write_readback.i44.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %797)
  %tobool.not.i45.i = icmp eq i8 %797, 0
  br i1 %tobool.not.i45.i, label %rtl_write_word.exit.i251.rtl_write_byte.exit.i253_crit_edge, label %if.then.i47.i

rtl_write_word.exit.i251.rtl_write_byte.exit.i253_crit_edge: ; preds = %rtl_write_word.exit.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i253

if.then.i47.i:                                    ; preds = %rtl_write_word.exit.i251
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i252 = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %798 = ptrtoint ptr %read8_sync.i.i252 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %read8_sync.i.i252, align 4
  %call.i46.i = tail call zeroext i8 %799(ptr noundef %759, i32 noundef 1110) #7
  br label %rtl_write_byte.exit.i253

rtl_write_byte.exit.i253:                         ; preds = %if.then.i47.i, %rtl_write_word.exit.i251.rtl_write_byte.exit.i253_crit_edge
  %800 = ptrtoint ptr %write16_async.i.i248 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %write16_async.i.i248, align 4
  tail call void %801(ptr noundef %759, i32 noundef 1066, i16 noundef zeroext 1799) #7
  %802 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i50.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %803, i32 0, i32 1
  %804 = ptrtoint ptr %write_readback.i50.i to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %write_readback.i50.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %805)
  %tobool.not.i51.i = icmp eq i8 %805, 0
  br i1 %tobool.not.i51.i, label %rtl_write_byte.exit.i253.rtl_write_word.exit55.i_crit_edge, label %if.then.i54.i

rtl_write_byte.exit.i253.rtl_write_word.exit55.i_crit_edge: ; preds = %rtl_write_byte.exit.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit55.i

if.then.i54.i:                                    ; preds = %rtl_write_byte.exit.i253
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i52.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 10
  %806 = ptrtoint ptr %read16_sync.i52.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %read16_sync.i52.i, align 4
  %call.i53.i = tail call zeroext i16 %807(ptr noundef %759, i32 noundef 1066) #7
  br label %rtl_write_word.exit55.i

rtl_write_word.exit55.i:                          ; preds = %if.then.i54.i, %rtl_write_byte.exit.i253.rtl_write_word.exit55.i_crit_edge
  %808 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %809(ptr noundef %759, i32 noundef 1072, i32 noundef 16777216) #7
  %810 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i58.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %811, i32 0, i32 1
  %812 = ptrtoint ptr %write_readback.i58.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %write_readback.i58.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %813)
  %tobool.not.i59.i = icmp eq i8 %813, 0
  br i1 %tobool.not.i59.i, label %rtl_write_word.exit55.i.rtl_write_dword.exit63.i_crit_edge, label %if.then.i62.i

rtl_write_word.exit55.i.rtl_write_dword.exit63.i_crit_edge: ; preds = %rtl_write_word.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit63.i

if.then.i62.i:                                    ; preds = %rtl_write_word.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i60.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %814 = ptrtoint ptr %read32_sync.i60.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %read32_sync.i60.i, align 4
  %call.i61.i = tail call i32 %815(ptr noundef %759, i32 noundef 1072) #7
  br label %rtl_write_dword.exit63.i

rtl_write_dword.exit63.i:                         ; preds = %if.then.i62.i, %rtl_write_word.exit55.i.rtl_write_dword.exit63.i_crit_edge
  %816 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %817(ptr noundef %759, i32 noundef 1076, i32 noundef 117835012) #7
  %818 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i66.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %819, i32 0, i32 1
  %820 = ptrtoint ptr %write_readback.i66.i to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %write_readback.i66.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %821)
  %tobool.not.i67.i = icmp eq i8 %821, 0
  br i1 %tobool.not.i67.i, label %rtl_write_dword.exit63.i.rtl_write_dword.exit71.i_crit_edge, label %if.then.i70.i

rtl_write_dword.exit63.i.rtl_write_dword.exit71.i_crit_edge: ; preds = %rtl_write_dword.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit71.i

if.then.i70.i:                                    ; preds = %rtl_write_dword.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i68.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %822 = ptrtoint ptr %read32_sync.i68.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %read32_sync.i68.i, align 4
  %call.i69.i = tail call i32 %823(ptr noundef %759, i32 noundef 1076) #7
  br label %rtl_write_dword.exit71.i

rtl_write_dword.exit71.i:                         ; preds = %if.then.i70.i, %rtl_write_dword.exit63.i.rtl_write_dword.exit71.i_crit_edge
  %824 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %825(ptr noundef %759, i32 noundef 1080, i32 noundef 16777216) #7
  %826 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i74.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %827, i32 0, i32 1
  %828 = ptrtoint ptr %write_readback.i74.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %write_readback.i74.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %829)
  %tobool.not.i75.i = icmp eq i8 %829, 0
  br i1 %tobool.not.i75.i, label %rtl_write_dword.exit71.i.rtl_write_dword.exit79.i_crit_edge, label %if.then.i78.i

rtl_write_dword.exit71.i.rtl_write_dword.exit79.i_crit_edge: ; preds = %rtl_write_dword.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit79.i

if.then.i78.i:                                    ; preds = %rtl_write_dword.exit71.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i76.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %830 = ptrtoint ptr %read32_sync.i76.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %read32_sync.i76.i, align 4
  %call.i77.i = tail call i32 %831(ptr noundef %759, i32 noundef 1080) #7
  br label %rtl_write_dword.exit79.i

rtl_write_dword.exit79.i:                         ; preds = %if.then.i78.i, %rtl_write_dword.exit71.i.rtl_write_dword.exit79.i_crit_edge
  %832 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %833(ptr noundef %759, i32 noundef 1084, i32 noundef 117835012) #7
  %834 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i82.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %835, i32 0, i32 1
  %836 = ptrtoint ptr %write_readback.i82.i to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %write_readback.i82.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %837)
  %tobool.not.i83.i = icmp eq i8 %837, 0
  br i1 %tobool.not.i83.i, label %rtl_write_dword.exit79.i.rtl_write_dword.exit87.i_crit_edge, label %if.then.i86.i

rtl_write_dword.exit79.i.rtl_write_dword.exit87.i_crit_edge: ; preds = %rtl_write_dword.exit79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit87.i

if.then.i86.i:                                    ; preds = %rtl_write_dword.exit79.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i84.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %838 = ptrtoint ptr %read32_sync.i84.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %read32_sync.i84.i, align 4
  %call.i85.i = tail call i32 %839(ptr noundef %759, i32 noundef 1084) #7
  br label %rtl_write_dword.exit87.i

rtl_write_dword.exit87.i:                         ; preds = %if.then.i86.i, %rtl_write_dword.exit79.i.rtl_write_dword.exit87.i_crit_edge
  %reg_bcn_ctrl_val.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %840 = ptrtoint ptr %reg_bcn_ctrl_val.i to i32
  call void @__asan_store4_noabort(i32 %840)
  store i32 29, ptr %reg_bcn_ctrl_val.i, align 4
  %841 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %842(ptr noundef %759, i32 noundef 1360, i8 noundef zeroext 29) #7
  %843 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %844, i32 0, i32 1
  %845 = ptrtoint ptr %write_readback.i90.i to i32
  call void @__asan_load1_noabort(i32 %845)
  %846 = load i8, ptr %write_readback.i90.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %846)
  %tobool.not.i91.i = icmp eq i8 %846, 0
  br i1 %tobool.not.i91.i, label %rtl_write_dword.exit87.i.rtl_write_byte.exit95.i_crit_edge, label %if.then.i94.i

rtl_write_dword.exit87.i.rtl_write_byte.exit95.i_crit_edge: ; preds = %rtl_write_dword.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit95.i

if.then.i94.i:                                    ; preds = %rtl_write_dword.exit87.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i92.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %847 = ptrtoint ptr %read8_sync.i92.i to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %read8_sync.i92.i, align 4
  %call.i93.i = tail call zeroext i8 %848(ptr noundef %759, i32 noundef 1360) #7
  br label %rtl_write_byte.exit95.i

rtl_write_byte.exit95.i:                          ; preds = %if.then.i94.i, %rtl_write_dword.exit87.i.rtl_write_byte.exit95.i_crit_edge
  %849 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %850(ptr noundef %759, i32 noundef 1345, i8 noundef zeroext -1) #7
  %851 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %852, i32 0, i32 1
  %853 = ptrtoint ptr %write_readback.i98.i to i32
  call void @__asan_load1_noabort(i32 %853)
  %854 = load i8, ptr %write_readback.i98.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %854)
  %tobool.not.i99.i = icmp eq i8 %854, 0
  br i1 %tobool.not.i99.i, label %rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge, label %if.then.i102.i

rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge: ; preds = %rtl_write_byte.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit103.i

if.then.i102.i:                                   ; preds = %rtl_write_byte.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i100.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %855 = ptrtoint ptr %read8_sync.i100.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %read8_sync.i100.i, align 4
  %call.i101.i = tail call zeroext i8 %856(ptr noundef %759, i32 noundef 1345) #7
  br label %rtl_write_byte.exit103.i

rtl_write_byte.exit103.i:                         ; preds = %if.then.i102.i, %rtl_write_byte.exit95.i.rtl_write_byte.exit103.i_crit_edge
  %857 = ptrtoint ptr %write16_async.i.i248 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %write16_async.i.i248, align 4
  tail call void %858(ptr noundef %759, i32 noundef 1350, i16 noundef zeroext 64) #7
  %859 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %860, i32 0, i32 1
  %861 = ptrtoint ptr %write_readback.i106.i to i32
  call void @__asan_load1_noabort(i32 %861)
  %862 = load i8, ptr %write_readback.i106.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %862)
  %tobool.not.i107.i = icmp eq i8 %862, 0
  br i1 %tobool.not.i107.i, label %rtl_write_byte.exit103.i.rtl_write_word.exit111.i_crit_edge, label %if.then.i110.i

rtl_write_byte.exit103.i.rtl_write_word.exit111.i_crit_edge: ; preds = %rtl_write_byte.exit103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit111.i

if.then.i110.i:                                   ; preds = %rtl_write_byte.exit103.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i108.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 10
  %863 = ptrtoint ptr %read16_sync.i108.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %read16_sync.i108.i, align 4
  %call.i109.i = tail call zeroext i16 %864(ptr noundef %759, i32 noundef 1350) #7
  br label %rtl_write_word.exit111.i

rtl_write_word.exit111.i:                         ; preds = %if.then.i110.i, %rtl_write_byte.exit103.i.rtl_write_word.exit111.i_crit_edge
  %865 = ptrtoint ptr %write32_async.i.i240 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %write32_async.i.i240, align 4
  tail call void %866(ptr noundef %759, i32 noundef 1120, i32 noundef 50882150) #7
  %867 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i114.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %868, i32 0, i32 1
  %869 = ptrtoint ptr %write_readback.i114.i to i32
  call void @__asan_load1_noabort(i32 %869)
  %870 = load i8, ptr %write_readback.i114.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %870)
  %tobool.not.i115.i = icmp eq i8 %870, 0
  br i1 %tobool.not.i115.i, label %rtl_write_word.exit111.i.rtl_write_dword.exit119.i_crit_edge, label %if.then.i118.i

rtl_write_word.exit111.i.rtl_write_dword.exit119.i_crit_edge: ; preds = %rtl_write_word.exit111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit119.i

if.then.i118.i:                                   ; preds = %rtl_write_word.exit111.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i116.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 11
  %871 = ptrtoint ptr %read32_sync.i116.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %read32_sync.i116.i, align 4
  %call.i117.i = tail call i32 %872(ptr noundef %759, i32 noundef 1120) #7
  br label %rtl_write_dword.exit119.i

rtl_write_dword.exit119.i:                        ; preds = %if.then.i118.i, %rtl_write_word.exit111.i.rtl_write_dword.exit119.i_crit_edge
  %873 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %874(ptr noundef %759, i32 noundef 1223, i8 noundef zeroext -128) #7
  %875 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i122.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %876, i32 0, i32 1
  %877 = ptrtoint ptr %write_readback.i122.i to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %write_readback.i122.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %878)
  %tobool.not.i123.i = icmp eq i8 %878, 0
  br i1 %tobool.not.i123.i, label %rtl_write_dword.exit119.i.rtl_write_byte.exit127.i_crit_edge, label %if.then.i126.i

rtl_write_dword.exit119.i.rtl_write_byte.exit127.i_crit_edge: ; preds = %rtl_write_dword.exit119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit127.i

if.then.i126.i:                                   ; preds = %rtl_write_dword.exit119.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %879 = ptrtoint ptr %read8_sync.i124.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %read8_sync.i124.i, align 4
  %call.i125.i = tail call zeroext i8 %880(ptr noundef %759, i32 noundef 1223) #7
  br label %rtl_write_byte.exit127.i

rtl_write_byte.exit127.i:                         ; preds = %if.then.i126.i, %rtl_write_dword.exit119.i.rtl_write_byte.exit127.i_crit_edge
  %881 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %882(ptr noundef %759, i32 noundef 1548, i8 noundef zeroext 32) #7
  %883 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i130.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %884, i32 0, i32 1
  %885 = ptrtoint ptr %write_readback.i130.i to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %write_readback.i130.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %886)
  %tobool.not.i131.i = icmp eq i8 %886, 0
  br i1 %tobool.not.i131.i, label %rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge, label %if.then.i134.i

rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge: ; preds = %rtl_write_byte.exit127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit135.i

if.then.i134.i:                                   ; preds = %rtl_write_byte.exit127.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i132.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %887 = ptrtoint ptr %read8_sync.i132.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %read8_sync.i132.i, align 4
  %call.i133.i = tail call zeroext i8 %888(ptr noundef %759, i32 noundef 1548) #7
  br label %rtl_write_byte.exit135.i

rtl_write_byte.exit135.i:                         ; preds = %if.then.i134.i, %rtl_write_byte.exit127.i.rtl_write_byte.exit135.i_crit_edge
  %889 = ptrtoint ptr %write8_async.i.i250 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %write8_async.i.i250, align 4
  tail call void %890(ptr noundef %759, i32 noundef 1226, i8 noundef zeroext 31) #7
  %891 = ptrtoint ptr %cfg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %cfg.i.i241, align 8
  %write_readback.i138.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %892, i32 0, i32 1
  %893 = ptrtoint ptr %write_readback.i138.i to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %write_readback.i138.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %894)
  %tobool.not.i139.i = icmp eq i8 %894, 0
  br i1 %tobool.not.i139.i, label %rtl_write_byte.exit135.i._rtl8723be_hw_configure.exit_crit_edge, label %if.then.i142.i

rtl_write_byte.exit135.i._rtl8723be_hw_configure.exit_crit_edge: ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_hw_configure.exit

if.then.i142.i:                                   ; preds = %rtl_write_byte.exit135.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i140.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 13, i32 9
  %895 = ptrtoint ptr %read8_sync.i140.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %read8_sync.i140.i, align 4
  %call.i141.i = tail call zeroext i8 %896(ptr noundef %759, i32 noundef 1226) #7
  br label %_rtl8723be_hw_configure.exit

_rtl8723be_hw_configure.exit:                     ; preds = %if.then.i142.i, %rtl_write_byte.exit135.i._rtl8723be_hw_configure.exit_crit_edge
  %897 = ptrtoint ptr %mac_func_enable24 to i32
  call void @__asan_store1_noabort(i32 %897)
  store i8 1, ptr %mac_func_enable24, align 1
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #7
  tail call void @rtl8723be_enable_hw_security_config(ptr noundef %hw)
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %898 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 0, ptr %rfpwr_state, align 4
  %899 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %900, i32 0, i32 4
  %901 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %902, i32 0, i32 20
  %903 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %set_hw_reg, align 4
  tail call void %904(ptr noundef %hw, i8 noundef zeroext 0, ptr noundef %mac80211) #7
  %905 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i255 = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 5
  %907 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %908(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 65) #7
  %cfg.i.i.i256 = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 32
  %909 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i.i257 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %910, i32 0, i32 1
  %911 = ptrtoint ptr %write_readback.i.i.i257 to i32
  call void @__asan_load1_noabort(i32 %911)
  %912 = load i8, ptr %write_readback.i.i.i257, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %912)
  %tobool.not.i.i.i258 = icmp eq i8 %912, 0
  br i1 %tobool.not.i.i.i258, label %_rtl8723be_hw_configure.exit.rtl_write_byte.exit.i.i262_crit_edge, label %if.then.i.i.i261

_rtl8723be_hw_configure.exit.rtl_write_byte.exit.i.i262_crit_edge: ; preds = %_rtl8723be_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i262

if.then.i.i.i261:                                 ; preds = %_rtl8723be_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i259 = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 9
  %913 = ptrtoint ptr %read8_sync.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %read8_sync.i.i.i259, align 4
  %call.i.i.i260 = tail call zeroext i8 %914(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i.i262

rtl_write_byte.exit.i.i262:                       ; preds = %if.then.i.i.i261, %_rtl8723be_hw_configure.exit.rtl_write_byte.exit.i.i262_crit_edge
  %read8_sync.i20.i.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 9
  %915 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i.i = tail call zeroext i8 %916(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i.i = and i8 %call.i21.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i.i)
  %tobool.not26.not.i.i = icmp eq i8 %tmp.025.i.i, 0
  br i1 %tobool.not26.not.i.i, label %rtl_write_byte.exit.i.i262._rtl8723be_mdio_read.exit.i_crit_edge, label %rtl_write_byte.exit.i.i262.while.body.i.i_crit_edge

rtl_write_byte.exit.i.i262.while.body.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i262
  br label %while.body.i.i

rtl_write_byte.exit.i.i262._rtl8723be_mdio_read.exit.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %rtl_write_byte.exit.i.i262.while.body.i.i_crit_edge
  %count.027.i.i = phi i8 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %rtl_write_byte.exit.i.i262.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %917 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %917(i32 noundef 2147480) #7
  %918 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i.i = tail call zeroext i8 %919(ptr noundef %906, i32 noundef 856) #7
  %inc.i.i = add nuw nsw i8 %count.027.i.i, 1
  %tmp.0.i.i = and i8 %call.i23.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i.i)
  %tobool.not.i.i263 = icmp ne i8 %tmp.0.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i.i)
  %cmp.i.i = icmp ult i8 %count.027.i.i, 19
  %or.cond.i.i = select i1 %tobool.not.i.i263, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i.i)
  %phi.cmp.i.i = icmp eq i8 %tmp.0.i.i, 0
  br i1 %phi.cmp.i.i, label %while.end.i.i._rtl8723be_mdio_read.exit.i_crit_edge, label %while.end.i.i.if.then.i265_crit_edge

while.end.i.i.if.then.i265_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i265

while.end.i.i._rtl8723be_mdio_read.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit.i

_rtl8723be_mdio_read.exit.i:                      ; preds = %while.end.i.i._rtl8723be_mdio_read.exit.i_crit_edge, %rtl_write_byte.exit.i.i262._rtl8723be_mdio_read.exit.i_crit_edge
  %read16_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %920 = ptrtoint ptr %read16_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %read16_sync.i.i.i, align 4
  %call.i24.i.i = tail call zeroext i16 %921(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1635, i16 %call.i24.i.i)
  %cmp.not.i264 = icmp eq i16 %call.i24.i.i, 1635
  br i1 %cmp.not.i264, label %_rtl8723be_mdio_read.exit.i.if.end.i266_crit_edge, label %_rtl8723be_mdio_read.exit.i.if.then.i265_crit_edge

_rtl8723be_mdio_read.exit.i.if.then.i265_crit_edge: ; preds = %_rtl8723be_mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i265

_rtl8723be_mdio_read.exit.i.if.end.i266_crit_edge: ; preds = %_rtl8723be_mdio_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i266

if.then.i265:                                     ; preds = %_rtl8723be_mdio_read.exit.i.if.then.i265_crit_edge, %while.end.i.i.if.then.i265_crit_edge
  %write16_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %922 = ptrtoint ptr %write16_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %write16_async.i.i.i, align 4
  tail call void %923(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 1635) #7
  %924 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %925, i32 0, i32 1
  %926 = ptrtoint ptr %write_readback.i.i81.i to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %write_readback.i.i81.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %927)
  %tobool.not.i.i82.i = icmp eq i8 %927, 0
  br i1 %tobool.not.i.i82.i, label %if.then.i265.rtl_write_word.exit.i.i_crit_edge, label %if.then.i.i85.i

if.then.i265.rtl_write_word.exit.i.i_crit_edge:   ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i.i

if.then.i.i85.i:                                  ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i83.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %928 = ptrtoint ptr %read16_sync.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %read16_sync.i.i83.i, align 4
  %call.i.i84.i = tail call zeroext i16 %929(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i.i

rtl_write_word.exit.i.i:                          ; preds = %if.then.i.i85.i, %if.then.i265.rtl_write_word.exit.i.i_crit_edge
  %930 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %931(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 33) #7
  %932 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %933, i32 0, i32 1
  %934 = ptrtoint ptr %write_readback.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %934)
  %935 = load i8, ptr %write_readback.i16.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %935)
  %tobool.not.i17.i.i = icmp eq i8 %935, 0
  br i1 %tobool.not.i17.i.i, label %rtl_write_word.exit.i.i.rtl_write_byte.exit.i90.i_crit_edge, label %if.then.i19.i.i

rtl_write_word.exit.i.i.rtl_write_byte.exit.i90.i_crit_edge: ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i90.i

if.then.i19.i.i:                                  ; preds = %rtl_write_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %936 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i.i = tail call zeroext i8 %937(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i90.i

rtl_write_byte.exit.i90.i:                        ; preds = %if.then.i19.i.i, %rtl_write_word.exit.i.i.rtl_write_byte.exit.i90.i_crit_edge
  %938 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i89.i = tail call zeroext i8 %939(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i.i = and i8 %call.i21.i89.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i.i)
  %tobool.not25.not.i.i = icmp eq i8 %tmp.024.i.i, 0
  br i1 %tobool.not25.not.i.i, label %rtl_write_byte.exit.i90.i.if.end.i266_crit_edge, label %rtl_write_byte.exit.i90.i.while.body.i97.i_crit_edge

rtl_write_byte.exit.i90.i.while.body.i97.i_crit_edge: ; preds = %rtl_write_byte.exit.i90.i
  br label %while.body.i97.i

rtl_write_byte.exit.i90.i.if.end.i266_crit_edge:  ; preds = %rtl_write_byte.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i266

while.body.i97.i:                                 ; preds = %while.body.i97.i.while.body.i97.i_crit_edge, %rtl_write_byte.exit.i90.i.while.body.i97.i_crit_edge
  %count.026.i.i = phi i8 [ %inc.i92.i, %while.body.i97.i.while.body.i97.i_crit_edge ], [ 0, %rtl_write_byte.exit.i90.i.while.body.i97.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %940 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %940(i32 noundef 2147480) #7
  %941 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i91.i = tail call zeroext i8 %942(ptr noundef %906, i32 noundef 856) #7
  %inc.i92.i = add nuw nsw i8 %count.026.i.i, 1
  %tmp.0.i93.i = and i8 %call.i23.i91.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i93.i)
  %tobool.not.i94.i = icmp ne i8 %tmp.0.i93.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i.i)
  %cmp.i95.i = icmp ult i8 %count.026.i.i, 19
  %or.cond.i96.i = select i1 %tobool.not.i94.i, i1 %cmp.i95.i, i1 false
  br i1 %or.cond.i96.i, label %while.body.i97.i.while.body.i97.i_crit_edge, label %while.body.i97.i.if.end.i266_crit_edge

while.body.i97.i.if.end.i266_crit_edge:           ; preds = %while.body.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i266

while.body.i97.i.while.body.i97.i_crit_edge:      ; preds = %while.body.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i97.i

if.end.i266:                                      ; preds = %while.body.i97.i.if.end.i266_crit_edge, %rtl_write_byte.exit.i90.i.if.end.i266_crit_edge, %_rtl8723be_mdio_read.exit.i.if.end.i266_crit_edge
  %943 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %944(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 68) #7
  %945 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i101.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %946, i32 0, i32 1
  %947 = ptrtoint ptr %write_readback.i.i101.i to i32
  call void @__asan_load1_noabort(i32 %947)
  %948 = load i8, ptr %write_readback.i.i101.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %948)
  %tobool.not.i.i102.i = icmp eq i8 %948, 0
  br i1 %tobool.not.i.i102.i, label %if.end.i266.rtl_write_byte.exit.i110.i_crit_edge, label %if.then.i.i105.i

if.end.i266.rtl_write_byte.exit.i110.i_crit_edge: ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i110.i

if.then.i.i105.i:                                 ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #9
  %949 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i104.i = tail call zeroext i8 %950(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i110.i

rtl_write_byte.exit.i110.i:                       ; preds = %if.then.i.i105.i, %if.end.i266.rtl_write_byte.exit.i110.i_crit_edge
  %951 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i107.i = tail call zeroext i8 %952(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i108.i = and i8 %call.i21.i107.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i108.i)
  %tobool.not26.not.i109.i = icmp eq i8 %tmp.025.i108.i, 0
  br i1 %tobool.not26.not.i109.i, label %rtl_write_byte.exit.i110.i._rtl8723be_mdio_read.exit125.i_crit_edge, label %rtl_write_byte.exit.i110.i.while.body.i118.i_crit_edge

rtl_write_byte.exit.i110.i.while.body.i118.i_crit_edge: ; preds = %rtl_write_byte.exit.i110.i
  br label %while.body.i118.i

rtl_write_byte.exit.i110.i._rtl8723be_mdio_read.exit125.i_crit_edge: ; preds = %rtl_write_byte.exit.i110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit125.i

while.body.i118.i:                                ; preds = %while.body.i118.i.while.body.i118.i_crit_edge, %rtl_write_byte.exit.i110.i.while.body.i118.i_crit_edge
  %count.027.i111.i = phi i8 [ %inc.i113.i, %while.body.i118.i.while.body.i118.i_crit_edge ], [ 0, %rtl_write_byte.exit.i110.i.while.body.i118.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %953 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %953(i32 noundef 2147480) #7
  %954 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i112.i = tail call zeroext i8 %955(ptr noundef %906, i32 noundef 856) #7
  %inc.i113.i = add nuw nsw i8 %count.027.i111.i, 1
  %tmp.0.i114.i = and i8 %call.i23.i112.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i114.i)
  %tobool.not.i115.i267 = icmp ne i8 %tmp.0.i114.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i111.i)
  %cmp.i116.i = icmp ult i8 %count.027.i111.i, 19
  %or.cond.i117.i = select i1 %tobool.not.i115.i267, i1 %cmp.i116.i, i1 false
  br i1 %or.cond.i117.i, label %while.body.i118.i.while.body.i118.i_crit_edge, label %while.end.i120.i

while.body.i118.i.while.body.i118.i_crit_edge:    ; preds = %while.body.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i118.i

while.end.i120.i:                                 ; preds = %while.body.i118.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i114.i)
  %phi.cmp.i119.i = icmp eq i8 %tmp.0.i114.i, 0
  br i1 %phi.cmp.i119.i, label %while.end.i120.i._rtl8723be_mdio_read.exit125.i_crit_edge, label %while.end.i120.i.if.then6.i_crit_edge

while.end.i120.i.if.then6.i_crit_edge:            ; preds = %while.end.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

while.end.i120.i._rtl8723be_mdio_read.exit125.i_crit_edge: ; preds = %while.end.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit125.i

_rtl8723be_mdio_read.exit125.i:                   ; preds = %while.end.i120.i._rtl8723be_mdio_read.exit125.i_crit_edge, %rtl_write_byte.exit.i110.i._rtl8723be_mdio_read.exit125.i_crit_edge
  %read16_sync.i.i121.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %956 = ptrtoint ptr %read16_sync.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %read16_sync.i.i121.i, align 4
  %call.i24.i122.i = tail call zeroext i16 %957(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 30020, i16 %call.i24.i122.i)
  %cmp4.not.i = icmp eq i16 %call.i24.i122.i, 30020
  br i1 %cmp4.not.i, label %_rtl8723be_mdio_read.exit125.i.if.end7.i_crit_edge, label %_rtl8723be_mdio_read.exit125.i.if.then6.i_crit_edge

_rtl8723be_mdio_read.exit125.i.if.then6.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

_rtl8723be_mdio_read.exit125.i.if.end7.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.then6.i:                                       ; preds = %_rtl8723be_mdio_read.exit125.i.if.then6.i_crit_edge, %while.end.i120.i.if.then6.i_crit_edge
  %write16_async.i.i126.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %958 = ptrtoint ptr %write16_async.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %write16_async.i.i126.i, align 4
  tail call void %959(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 30020) #7
  %960 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i128.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %961, i32 0, i32 1
  %962 = ptrtoint ptr %write_readback.i.i128.i to i32
  call void @__asan_load1_noabort(i32 %962)
  %963 = load i8, ptr %write_readback.i.i128.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %963)
  %tobool.not.i.i129.i = icmp eq i8 %963, 0
  br i1 %tobool.not.i.i129.i, label %if.then6.i.rtl_write_word.exit.i136.i_crit_edge, label %if.then.i.i132.i

if.then6.i.rtl_write_word.exit.i136.i_crit_edge:  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i136.i

if.then.i.i132.i:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %964 = ptrtoint ptr %read16_sync.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %read16_sync.i.i130.i, align 4
  %call.i.i131.i = tail call zeroext i16 %965(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i136.i

rtl_write_word.exit.i136.i:                       ; preds = %if.then.i.i132.i, %if.then6.i.rtl_write_word.exit.i136.i_crit_edge
  %966 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %967(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 36) #7
  %968 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i134.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %969, i32 0, i32 1
  %970 = ptrtoint ptr %write_readback.i16.i134.i to i32
  call void @__asan_load1_noabort(i32 %970)
  %971 = load i8, ptr %write_readback.i16.i134.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %971)
  %tobool.not.i17.i135.i = icmp eq i8 %971, 0
  br i1 %tobool.not.i17.i135.i, label %rtl_write_word.exit.i136.i.rtl_write_byte.exit.i144.i_crit_edge, label %if.then.i19.i139.i

rtl_write_word.exit.i136.i.rtl_write_byte.exit.i144.i_crit_edge: ; preds = %rtl_write_word.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i144.i

if.then.i19.i139.i:                               ; preds = %rtl_write_word.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #9
  %972 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i138.i = tail call zeroext i8 %973(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i144.i

rtl_write_byte.exit.i144.i:                       ; preds = %if.then.i19.i139.i, %rtl_write_word.exit.i136.i.rtl_write_byte.exit.i144.i_crit_edge
  %974 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i141.i = tail call zeroext i8 %975(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i142.i = and i8 %call.i21.i141.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i142.i)
  %tobool.not25.not.i143.i = icmp eq i8 %tmp.024.i142.i, 0
  br i1 %tobool.not25.not.i143.i, label %rtl_write_byte.exit.i144.i.if.end7.i_crit_edge, label %rtl_write_byte.exit.i144.i.while.body.i152.i_crit_edge

rtl_write_byte.exit.i144.i.while.body.i152.i_crit_edge: ; preds = %rtl_write_byte.exit.i144.i
  br label %while.body.i152.i

rtl_write_byte.exit.i144.i.if.end7.i_crit_edge:   ; preds = %rtl_write_byte.exit.i144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

while.body.i152.i:                                ; preds = %while.body.i152.i.while.body.i152.i_crit_edge, %rtl_write_byte.exit.i144.i.while.body.i152.i_crit_edge
  %count.026.i145.i = phi i8 [ %inc.i147.i, %while.body.i152.i.while.body.i152.i_crit_edge ], [ 0, %rtl_write_byte.exit.i144.i.while.body.i152.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %976 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %976(i32 noundef 2147480) #7
  %977 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i146.i = tail call zeroext i8 %978(ptr noundef %906, i32 noundef 856) #7
  %inc.i147.i = add nuw nsw i8 %count.026.i145.i, 1
  %tmp.0.i148.i = and i8 %call.i23.i146.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i148.i)
  %tobool.not.i149.i = icmp ne i8 %tmp.0.i148.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i145.i)
  %cmp.i150.i = icmp ult i8 %count.026.i145.i, 19
  %or.cond.i151.i = select i1 %tobool.not.i149.i, i1 %cmp.i150.i, i1 false
  br i1 %or.cond.i151.i, label %while.body.i152.i.while.body.i152.i_crit_edge, label %while.body.i152.i.if.end7.i_crit_edge

while.body.i152.i.if.end7.i_crit_edge:            ; preds = %while.body.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

while.body.i152.i.while.body.i152.i_crit_edge:    ; preds = %while.body.i152.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i152.i

if.end7.i:                                        ; preds = %while.body.i152.i.if.end7.i_crit_edge, %rtl_write_byte.exit.i144.i.if.end7.i_crit_edge, %_rtl8723be_mdio_read.exit125.i.if.end7.i_crit_edge
  %979 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %980(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 70) #7
  %981 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i157.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %982, i32 0, i32 1
  %983 = ptrtoint ptr %write_readback.i.i157.i to i32
  call void @__asan_load1_noabort(i32 %983)
  %984 = load i8, ptr %write_readback.i.i157.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %984)
  %tobool.not.i.i158.i = icmp eq i8 %984, 0
  br i1 %tobool.not.i.i158.i, label %if.end7.i.rtl_write_byte.exit.i166.i_crit_edge, label %if.then.i.i161.i

if.end7.i.rtl_write_byte.exit.i166.i_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i166.i

if.then.i.i161.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %985 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i160.i = tail call zeroext i8 %986(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i166.i

rtl_write_byte.exit.i166.i:                       ; preds = %if.then.i.i161.i, %if.end7.i.rtl_write_byte.exit.i166.i_crit_edge
  %987 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i163.i = tail call zeroext i8 %988(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i164.i = and i8 %call.i21.i163.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i164.i)
  %tobool.not26.not.i165.i = icmp eq i8 %tmp.025.i164.i, 0
  br i1 %tobool.not26.not.i165.i, label %rtl_write_byte.exit.i166.i._rtl8723be_mdio_read.exit181.i_crit_edge, label %rtl_write_byte.exit.i166.i.while.body.i174.i_crit_edge

rtl_write_byte.exit.i166.i.while.body.i174.i_crit_edge: ; preds = %rtl_write_byte.exit.i166.i
  br label %while.body.i174.i

rtl_write_byte.exit.i166.i._rtl8723be_mdio_read.exit181.i_crit_edge: ; preds = %rtl_write_byte.exit.i166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit181.i

while.body.i174.i:                                ; preds = %while.body.i174.i.while.body.i174.i_crit_edge, %rtl_write_byte.exit.i166.i.while.body.i174.i_crit_edge
  %count.027.i167.i = phi i8 [ %inc.i169.i, %while.body.i174.i.while.body.i174.i_crit_edge ], [ 0, %rtl_write_byte.exit.i166.i.while.body.i174.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %989 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %989(i32 noundef 2147480) #7
  %990 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i168.i = tail call zeroext i8 %991(ptr noundef %906, i32 noundef 856) #7
  %inc.i169.i = add nuw nsw i8 %count.027.i167.i, 1
  %tmp.0.i170.i = and i8 %call.i23.i168.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i170.i)
  %tobool.not.i171.i = icmp ne i8 %tmp.0.i170.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i167.i)
  %cmp.i172.i = icmp ult i8 %count.027.i167.i, 19
  %or.cond.i173.i = select i1 %tobool.not.i171.i, i1 %cmp.i172.i, i1 false
  br i1 %or.cond.i173.i, label %while.body.i174.i.while.body.i174.i_crit_edge, label %while.end.i176.i

while.body.i174.i.while.body.i174.i_crit_edge:    ; preds = %while.body.i174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i174.i

while.end.i176.i:                                 ; preds = %while.body.i174.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i170.i)
  %phi.cmp.i175.i = icmp eq i8 %tmp.0.i170.i, 0
  br i1 %phi.cmp.i175.i, label %while.end.i176.i._rtl8723be_mdio_read.exit181.i_crit_edge, label %while.end.i176.i.if.then12.i_crit_edge

while.end.i176.i.if.then12.i_crit_edge:           ; preds = %while.end.i176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

while.end.i176.i._rtl8723be_mdio_read.exit181.i_crit_edge: ; preds = %while.end.i176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit181.i

_rtl8723be_mdio_read.exit181.i:                   ; preds = %while.end.i176.i._rtl8723be_mdio_read.exit181.i_crit_edge, %rtl_write_byte.exit.i166.i._rtl8723be_mdio_read.exit181.i_crit_edge
  %read16_sync.i.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %992 = ptrtoint ptr %read16_sync.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %read16_sync.i.i177.i, align 4
  %call.i24.i178.i = tail call zeroext i16 %993(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -18304, i16 %call.i24.i178.i)
  %cmp10.not.i = icmp eq i16 %call.i24.i178.i, -18304
  br i1 %cmp10.not.i, label %_rtl8723be_mdio_read.exit181.i.if.end13.i_crit_edge, label %_rtl8723be_mdio_read.exit181.i.if.then12.i_crit_edge

_rtl8723be_mdio_read.exit181.i.if.then12.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12.i

_rtl8723be_mdio_read.exit181.i.if.end13.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then12.i:                                      ; preds = %_rtl8723be_mdio_read.exit181.i.if.then12.i_crit_edge, %while.end.i176.i.if.then12.i_crit_edge
  %write16_async.i.i182.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %994 = ptrtoint ptr %write16_async.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load ptr, ptr %write16_async.i.i182.i, align 4
  tail call void %995(ptr noundef %906, i32 noundef 852, i16 noundef zeroext -18304) #7
  %996 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %997, i32 0, i32 1
  %998 = ptrtoint ptr %write_readback.i.i184.i to i32
  call void @__asan_load1_noabort(i32 %998)
  %999 = load i8, ptr %write_readback.i.i184.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %999)
  %tobool.not.i.i185.i = icmp eq i8 %999, 0
  br i1 %tobool.not.i.i185.i, label %if.then12.i.rtl_write_word.exit.i192.i_crit_edge, label %if.then.i.i188.i

if.then12.i.rtl_write_word.exit.i192.i_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i192.i

if.then.i.i188.i:                                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i186.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1000 = ptrtoint ptr %read16_sync.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %read16_sync.i.i186.i, align 4
  %call.i.i187.i = tail call zeroext i16 %1001(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i192.i

rtl_write_word.exit.i192.i:                       ; preds = %if.then.i.i188.i, %if.then12.i.rtl_write_word.exit.i192.i_crit_edge
  %1002 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1003(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 38) #7
  %1004 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i190.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1005, i32 0, i32 1
  %1006 = ptrtoint ptr %write_readback.i16.i190.i to i32
  call void @__asan_load1_noabort(i32 %1006)
  %1007 = load i8, ptr %write_readback.i16.i190.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1007)
  %tobool.not.i17.i191.i = icmp eq i8 %1007, 0
  br i1 %tobool.not.i17.i191.i, label %rtl_write_word.exit.i192.i.rtl_write_byte.exit.i200.i_crit_edge, label %if.then.i19.i195.i

rtl_write_word.exit.i192.i.rtl_write_byte.exit.i200.i_crit_edge: ; preds = %rtl_write_word.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i200.i

if.then.i19.i195.i:                               ; preds = %rtl_write_word.exit.i192.i
  call void @__sanitizer_cov_trace_pc() #9
  %1008 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i194.i = tail call zeroext i8 %1009(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i200.i

rtl_write_byte.exit.i200.i:                       ; preds = %if.then.i19.i195.i, %rtl_write_word.exit.i192.i.rtl_write_byte.exit.i200.i_crit_edge
  %1010 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i197.i = tail call zeroext i8 %1011(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i198.i = and i8 %call.i21.i197.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i198.i)
  %tobool.not25.not.i199.i = icmp eq i8 %tmp.024.i198.i, 0
  br i1 %tobool.not25.not.i199.i, label %rtl_write_byte.exit.i200.i.if.end13.i_crit_edge, label %rtl_write_byte.exit.i200.i.while.body.i208.i_crit_edge

rtl_write_byte.exit.i200.i.while.body.i208.i_crit_edge: ; preds = %rtl_write_byte.exit.i200.i
  br label %while.body.i208.i

rtl_write_byte.exit.i200.i.if.end13.i_crit_edge:  ; preds = %rtl_write_byte.exit.i200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

while.body.i208.i:                                ; preds = %while.body.i208.i.while.body.i208.i_crit_edge, %rtl_write_byte.exit.i200.i.while.body.i208.i_crit_edge
  %count.026.i201.i = phi i8 [ %inc.i203.i, %while.body.i208.i.while.body.i208.i_crit_edge ], [ 0, %rtl_write_byte.exit.i200.i.while.body.i208.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1012 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1012(i32 noundef 2147480) #7
  %1013 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i202.i = tail call zeroext i8 %1014(ptr noundef %906, i32 noundef 856) #7
  %inc.i203.i = add nuw nsw i8 %count.026.i201.i, 1
  %tmp.0.i204.i = and i8 %call.i23.i202.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i204.i)
  %tobool.not.i205.i = icmp ne i8 %tmp.0.i204.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i201.i)
  %cmp.i206.i = icmp ult i8 %count.026.i201.i, 19
  %or.cond.i207.i = select i1 %tobool.not.i205.i, i1 %cmp.i206.i, i1 false
  br i1 %or.cond.i207.i, label %while.body.i208.i.while.body.i208.i_crit_edge, label %while.body.i208.i.if.end13.i_crit_edge

while.body.i208.i.if.end13.i_crit_edge:           ; preds = %while.body.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

while.body.i208.i.while.body.i208.i_crit_edge:    ; preds = %while.body.i208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i208.i

if.end13.i:                                       ; preds = %while.body.i208.i.if.end13.i_crit_edge, %rtl_write_byte.exit.i200.i.if.end13.i_crit_edge, %_rtl8723be_mdio_read.exit181.i.if.end13.i_crit_edge
  %1015 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1016(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 71) #7
  %1017 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i213.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1018, i32 0, i32 1
  %1019 = ptrtoint ptr %write_readback.i.i213.i to i32
  call void @__asan_load1_noabort(i32 %1019)
  %1020 = load i8, ptr %write_readback.i.i213.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1020)
  %tobool.not.i.i214.i = icmp eq i8 %1020, 0
  br i1 %tobool.not.i.i214.i, label %if.end13.i.rtl_write_byte.exit.i222.i_crit_edge, label %if.then.i.i217.i

if.end13.i.rtl_write_byte.exit.i222.i_crit_edge:  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i222.i

if.then.i.i217.i:                                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %1021 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i216.i = tail call zeroext i8 %1022(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i222.i

rtl_write_byte.exit.i222.i:                       ; preds = %if.then.i.i217.i, %if.end13.i.rtl_write_byte.exit.i222.i_crit_edge
  %1023 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i219.i = tail call zeroext i8 %1024(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i220.i = and i8 %call.i21.i219.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i220.i)
  %tobool.not26.not.i221.i = icmp eq i8 %tmp.025.i220.i, 0
  br i1 %tobool.not26.not.i221.i, label %rtl_write_byte.exit.i222.i._rtl8723be_mdio_read.exit237.i_crit_edge, label %rtl_write_byte.exit.i222.i.while.body.i230.i_crit_edge

rtl_write_byte.exit.i222.i.while.body.i230.i_crit_edge: ; preds = %rtl_write_byte.exit.i222.i
  br label %while.body.i230.i

rtl_write_byte.exit.i222.i._rtl8723be_mdio_read.exit237.i_crit_edge: ; preds = %rtl_write_byte.exit.i222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit237.i

while.body.i230.i:                                ; preds = %while.body.i230.i.while.body.i230.i_crit_edge, %rtl_write_byte.exit.i222.i.while.body.i230.i_crit_edge
  %count.027.i223.i = phi i8 [ %inc.i225.i, %while.body.i230.i.while.body.i230.i_crit_edge ], [ 0, %rtl_write_byte.exit.i222.i.while.body.i230.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1025 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1025(i32 noundef 2147480) #7
  %1026 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i224.i = tail call zeroext i8 %1027(ptr noundef %906, i32 noundef 856) #7
  %inc.i225.i = add nuw nsw i8 %count.027.i223.i, 1
  %tmp.0.i226.i = and i8 %call.i23.i224.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i226.i)
  %tobool.not.i227.i = icmp ne i8 %tmp.0.i226.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i223.i)
  %cmp.i228.i = icmp ult i8 %count.027.i223.i, 19
  %or.cond.i229.i = select i1 %tobool.not.i227.i, i1 %cmp.i228.i, i1 false
  br i1 %or.cond.i229.i, label %while.body.i230.i.while.body.i230.i_crit_edge, label %while.end.i232.i

while.body.i230.i.while.body.i230.i_crit_edge:    ; preds = %while.body.i230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i230.i

while.end.i232.i:                                 ; preds = %while.body.i230.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i226.i)
  %phi.cmp.i231.i = icmp eq i8 %tmp.0.i226.i, 0
  br i1 %phi.cmp.i231.i, label %while.end.i232.i._rtl8723be_mdio_read.exit237.i_crit_edge, label %while.end.i232.i.if.then18.i_crit_edge

while.end.i232.i.if.then18.i_crit_edge:           ; preds = %while.end.i232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

while.end.i232.i._rtl8723be_mdio_read.exit237.i_crit_edge: ; preds = %while.end.i232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit237.i

_rtl8723be_mdio_read.exit237.i:                   ; preds = %while.end.i232.i._rtl8723be_mdio_read.exit237.i_crit_edge, %rtl_write_byte.exit.i222.i._rtl8723be_mdio_read.exit237.i_crit_edge
  %read16_sync.i.i233.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1028 = ptrtoint ptr %read16_sync.i.i233.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %read16_sync.i.i233.i, align 4
  %call.i24.i234.i = tail call zeroext i16 %1029(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %call.i24.i234.i)
  %cmp16.not.i = icmp eq i16 %call.i24.i234.i, 16384
  br i1 %cmp16.not.i, label %_rtl8723be_mdio_read.exit237.i.if.end19.i_crit_edge, label %_rtl8723be_mdio_read.exit237.i.if.then18.i_crit_edge

_rtl8723be_mdio_read.exit237.i.if.then18.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

_rtl8723be_mdio_read.exit237.i.if.end19.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit237.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then18.i:                                      ; preds = %_rtl8723be_mdio_read.exit237.i.if.then18.i_crit_edge, %while.end.i232.i.if.then18.i_crit_edge
  %write16_async.i.i238.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1030 = ptrtoint ptr %write16_async.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %write16_async.i.i238.i, align 4
  tail call void %1031(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 16384) #7
  %1032 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i240.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1033, i32 0, i32 1
  %1034 = ptrtoint ptr %write_readback.i.i240.i to i32
  call void @__asan_load1_noabort(i32 %1034)
  %1035 = load i8, ptr %write_readback.i.i240.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1035)
  %tobool.not.i.i241.i = icmp eq i8 %1035, 0
  br i1 %tobool.not.i.i241.i, label %if.then18.i.rtl_write_word.exit.i248.i_crit_edge, label %if.then.i.i244.i

if.then18.i.rtl_write_word.exit.i248.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i248.i

if.then.i.i244.i:                                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i242.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1036 = ptrtoint ptr %read16_sync.i.i242.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %read16_sync.i.i242.i, align 4
  %call.i.i243.i = tail call zeroext i16 %1037(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i248.i

rtl_write_word.exit.i248.i:                       ; preds = %if.then.i.i244.i, %if.then18.i.rtl_write_word.exit.i248.i_crit_edge
  %1038 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1039(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 39) #7
  %1040 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i246.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1041, i32 0, i32 1
  %1042 = ptrtoint ptr %write_readback.i16.i246.i to i32
  call void @__asan_load1_noabort(i32 %1042)
  %1043 = load i8, ptr %write_readback.i16.i246.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1043)
  %tobool.not.i17.i247.i = icmp eq i8 %1043, 0
  br i1 %tobool.not.i17.i247.i, label %rtl_write_word.exit.i248.i.rtl_write_byte.exit.i256.i_crit_edge, label %if.then.i19.i251.i

rtl_write_word.exit.i248.i.rtl_write_byte.exit.i256.i_crit_edge: ; preds = %rtl_write_word.exit.i248.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i256.i

if.then.i19.i251.i:                               ; preds = %rtl_write_word.exit.i248.i
  call void @__sanitizer_cov_trace_pc() #9
  %1044 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i250.i = tail call zeroext i8 %1045(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i256.i

rtl_write_byte.exit.i256.i:                       ; preds = %if.then.i19.i251.i, %rtl_write_word.exit.i248.i.rtl_write_byte.exit.i256.i_crit_edge
  %1046 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i253.i = tail call zeroext i8 %1047(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i254.i = and i8 %call.i21.i253.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i254.i)
  %tobool.not25.not.i255.i = icmp eq i8 %tmp.024.i254.i, 0
  br i1 %tobool.not25.not.i255.i, label %rtl_write_byte.exit.i256.i.if.end19.i_crit_edge, label %rtl_write_byte.exit.i256.i.while.body.i264.i_crit_edge

rtl_write_byte.exit.i256.i.while.body.i264.i_crit_edge: ; preds = %rtl_write_byte.exit.i256.i
  br label %while.body.i264.i

rtl_write_byte.exit.i256.i.if.end19.i_crit_edge:  ; preds = %rtl_write_byte.exit.i256.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

while.body.i264.i:                                ; preds = %while.body.i264.i.while.body.i264.i_crit_edge, %rtl_write_byte.exit.i256.i.while.body.i264.i_crit_edge
  %count.026.i257.i = phi i8 [ %inc.i259.i, %while.body.i264.i.while.body.i264.i_crit_edge ], [ 0, %rtl_write_byte.exit.i256.i.while.body.i264.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1048 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1048(i32 noundef 2147480) #7
  %1049 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i258.i = tail call zeroext i8 %1050(ptr noundef %906, i32 noundef 856) #7
  %inc.i259.i = add nuw nsw i8 %count.026.i257.i, 1
  %tmp.0.i260.i = and i8 %call.i23.i258.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i260.i)
  %tobool.not.i261.i268 = icmp ne i8 %tmp.0.i260.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i257.i)
  %cmp.i262.i = icmp ult i8 %count.026.i257.i, 19
  %or.cond.i263.i = select i1 %tobool.not.i261.i268, i1 %cmp.i262.i, i1 false
  br i1 %or.cond.i263.i, label %while.body.i264.i.while.body.i264.i_crit_edge, label %while.body.i264.i.if.end19.i_crit_edge

while.body.i264.i.if.end19.i_crit_edge:           ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

while.body.i264.i.while.body.i264.i_crit_edge:    ; preds = %while.body.i264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i264.i

if.end19.i:                                       ; preds = %while.body.i264.i.if.end19.i_crit_edge, %rtl_write_byte.exit.i256.i.if.end19.i_crit_edge, %_rtl8723be_mdio_read.exit237.i.if.end19.i_crit_edge
  %1051 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1052(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 72) #7
  %1053 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i269.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1054, i32 0, i32 1
  %1055 = ptrtoint ptr %write_readback.i.i269.i to i32
  call void @__asan_load1_noabort(i32 %1055)
  %1056 = load i8, ptr %write_readback.i.i269.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1056)
  %tobool.not.i.i270.i = icmp eq i8 %1056, 0
  br i1 %tobool.not.i.i270.i, label %if.end19.i.rtl_write_byte.exit.i278.i_crit_edge, label %if.then.i.i273.i

if.end19.i.rtl_write_byte.exit.i278.i_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i278.i

if.then.i.i273.i:                                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %1057 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i272.i = tail call zeroext i8 %1058(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i278.i

rtl_write_byte.exit.i278.i:                       ; preds = %if.then.i.i273.i, %if.end19.i.rtl_write_byte.exit.i278.i_crit_edge
  %1059 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i275.i = tail call zeroext i8 %1060(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i276.i = and i8 %call.i21.i275.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i276.i)
  %tobool.not26.not.i277.i = icmp eq i8 %tmp.025.i276.i, 0
  br i1 %tobool.not26.not.i277.i, label %rtl_write_byte.exit.i278.i._rtl8723be_mdio_read.exit293.i_crit_edge, label %rtl_write_byte.exit.i278.i.while.body.i286.i_crit_edge

rtl_write_byte.exit.i278.i.while.body.i286.i_crit_edge: ; preds = %rtl_write_byte.exit.i278.i
  br label %while.body.i286.i

rtl_write_byte.exit.i278.i._rtl8723be_mdio_read.exit293.i_crit_edge: ; preds = %rtl_write_byte.exit.i278.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit293.i

while.body.i286.i:                                ; preds = %while.body.i286.i.while.body.i286.i_crit_edge, %rtl_write_byte.exit.i278.i.while.body.i286.i_crit_edge
  %count.027.i279.i = phi i8 [ %inc.i281.i, %while.body.i286.i.while.body.i286.i_crit_edge ], [ 0, %rtl_write_byte.exit.i278.i.while.body.i286.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1061 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1061(i32 noundef 2147480) #7
  %1062 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i280.i = tail call zeroext i8 %1063(ptr noundef %906, i32 noundef 856) #7
  %inc.i281.i = add nuw nsw i8 %count.027.i279.i, 1
  %tmp.0.i282.i = and i8 %call.i23.i280.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i282.i)
  %tobool.not.i283.i269 = icmp ne i8 %tmp.0.i282.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i279.i)
  %cmp.i284.i = icmp ult i8 %count.027.i279.i, 19
  %or.cond.i285.i = select i1 %tobool.not.i283.i269, i1 %cmp.i284.i, i1 false
  br i1 %or.cond.i285.i, label %while.body.i286.i.while.body.i286.i_crit_edge, label %while.end.i288.i

while.body.i286.i.while.body.i286.i_crit_edge:    ; preds = %while.body.i286.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i286.i

while.end.i288.i:                                 ; preds = %while.body.i286.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i282.i)
  %phi.cmp.i287.i = icmp eq i8 %tmp.0.i282.i, 0
  br i1 %phi.cmp.i287.i, label %while.end.i288.i._rtl8723be_mdio_read.exit293.i_crit_edge, label %while.end.i288.i.if.then24.i270_crit_edge

while.end.i288.i.if.then24.i270_crit_edge:        ; preds = %while.end.i288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i270

while.end.i288.i._rtl8723be_mdio_read.exit293.i_crit_edge: ; preds = %while.end.i288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit293.i

_rtl8723be_mdio_read.exit293.i:                   ; preds = %while.end.i288.i._rtl8723be_mdio_read.exit293.i_crit_edge, %rtl_write_byte.exit.i278.i._rtl8723be_mdio_read.exit293.i_crit_edge
  %read16_sync.i.i289.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1064 = ptrtoint ptr %read16_sync.i.i289.i to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %read16_sync.i.i289.i, align 4
  %call.i24.i290.i = tail call zeroext i16 %1065(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28669, i16 %call.i24.i290.i)
  %cmp22.not.i = icmp eq i16 %call.i24.i290.i, -28669
  br i1 %cmp22.not.i, label %_rtl8723be_mdio_read.exit293.i.if.end25.i_crit_edge, label %_rtl8723be_mdio_read.exit293.i.if.then24.i270_crit_edge

_rtl8723be_mdio_read.exit293.i.if.then24.i270_crit_edge: ; preds = %_rtl8723be_mdio_read.exit293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i270

_rtl8723be_mdio_read.exit293.i.if.end25.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then24.i270:                                   ; preds = %_rtl8723be_mdio_read.exit293.i.if.then24.i270_crit_edge, %while.end.i288.i.if.then24.i270_crit_edge
  %write16_async.i.i294.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1066 = ptrtoint ptr %write16_async.i.i294.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %write16_async.i.i294.i, align 4
  tail call void %1067(ptr noundef %906, i32 noundef 852, i16 noundef zeroext -28669) #7
  %1068 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i296.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1069, i32 0, i32 1
  %1070 = ptrtoint ptr %write_readback.i.i296.i to i32
  call void @__asan_load1_noabort(i32 %1070)
  %1071 = load i8, ptr %write_readback.i.i296.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1071)
  %tobool.not.i.i297.i = icmp eq i8 %1071, 0
  br i1 %tobool.not.i.i297.i, label %if.then24.i270.rtl_write_word.exit.i304.i_crit_edge, label %if.then.i.i300.i

if.then24.i270.rtl_write_word.exit.i304.i_crit_edge: ; preds = %if.then24.i270
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i304.i

if.then.i.i300.i:                                 ; preds = %if.then24.i270
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i298.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1072 = ptrtoint ptr %read16_sync.i.i298.i to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load ptr, ptr %read16_sync.i.i298.i, align 4
  %call.i.i299.i = tail call zeroext i16 %1073(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i304.i

rtl_write_word.exit.i304.i:                       ; preds = %if.then.i.i300.i, %if.then24.i270.rtl_write_word.exit.i304.i_crit_edge
  %1074 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1075(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 40) #7
  %1076 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i302.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1077, i32 0, i32 1
  %1078 = ptrtoint ptr %write_readback.i16.i302.i to i32
  call void @__asan_load1_noabort(i32 %1078)
  %1079 = load i8, ptr %write_readback.i16.i302.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1079)
  %tobool.not.i17.i303.i = icmp eq i8 %1079, 0
  br i1 %tobool.not.i17.i303.i, label %rtl_write_word.exit.i304.i.rtl_write_byte.exit.i312.i_crit_edge, label %if.then.i19.i307.i

rtl_write_word.exit.i304.i.rtl_write_byte.exit.i312.i_crit_edge: ; preds = %rtl_write_word.exit.i304.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i312.i

if.then.i19.i307.i:                               ; preds = %rtl_write_word.exit.i304.i
  call void @__sanitizer_cov_trace_pc() #9
  %1080 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i306.i = tail call zeroext i8 %1081(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i312.i

rtl_write_byte.exit.i312.i:                       ; preds = %if.then.i19.i307.i, %rtl_write_word.exit.i304.i.rtl_write_byte.exit.i312.i_crit_edge
  %1082 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i309.i = tail call zeroext i8 %1083(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i310.i = and i8 %call.i21.i309.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i310.i)
  %tobool.not25.not.i311.i = icmp eq i8 %tmp.024.i310.i, 0
  br i1 %tobool.not25.not.i311.i, label %rtl_write_byte.exit.i312.i.if.end25.i_crit_edge, label %rtl_write_byte.exit.i312.i.while.body.i320.i_crit_edge

rtl_write_byte.exit.i312.i.while.body.i320.i_crit_edge: ; preds = %rtl_write_byte.exit.i312.i
  br label %while.body.i320.i

rtl_write_byte.exit.i312.i.if.end25.i_crit_edge:  ; preds = %rtl_write_byte.exit.i312.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

while.body.i320.i:                                ; preds = %while.body.i320.i.while.body.i320.i_crit_edge, %rtl_write_byte.exit.i312.i.while.body.i320.i_crit_edge
  %count.026.i313.i = phi i8 [ %inc.i315.i, %while.body.i320.i.while.body.i320.i_crit_edge ], [ 0, %rtl_write_byte.exit.i312.i.while.body.i320.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1084 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1084(i32 noundef 2147480) #7
  %1085 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i314.i = tail call zeroext i8 %1086(ptr noundef %906, i32 noundef 856) #7
  %inc.i315.i = add nuw nsw i8 %count.026.i313.i, 1
  %tmp.0.i316.i = and i8 %call.i23.i314.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i316.i)
  %tobool.not.i317.i271 = icmp ne i8 %tmp.0.i316.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i313.i)
  %cmp.i318.i = icmp ult i8 %count.026.i313.i, 19
  %or.cond.i319.i = select i1 %tobool.not.i317.i271, i1 %cmp.i318.i, i1 false
  br i1 %or.cond.i319.i, label %while.body.i320.i.while.body.i320.i_crit_edge, label %while.body.i320.i.if.end25.i_crit_edge

while.body.i320.i.if.end25.i_crit_edge:           ; preds = %while.body.i320.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

while.body.i320.i.while.body.i320.i_crit_edge:    ; preds = %while.body.i320.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i320.i

if.end25.i:                                       ; preds = %while.body.i320.i.if.end25.i_crit_edge, %rtl_write_byte.exit.i312.i.if.end25.i_crit_edge, %_rtl8723be_mdio_read.exit293.i.if.end25.i_crit_edge
  %1087 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1088(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 73) #7
  %1089 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i325.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1090, i32 0, i32 1
  %1091 = ptrtoint ptr %write_readback.i.i325.i to i32
  call void @__asan_load1_noabort(i32 %1091)
  %1092 = load i8, ptr %write_readback.i.i325.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1092)
  %tobool.not.i.i326.i = icmp eq i8 %1092, 0
  br i1 %tobool.not.i.i326.i, label %if.end25.i.rtl_write_byte.exit.i334.i_crit_edge, label %if.then.i.i329.i

if.end25.i.rtl_write_byte.exit.i334.i_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i334.i

if.then.i.i329.i:                                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %1093 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i328.i = tail call zeroext i8 %1094(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i334.i

rtl_write_byte.exit.i334.i:                       ; preds = %if.then.i.i329.i, %if.end25.i.rtl_write_byte.exit.i334.i_crit_edge
  %1095 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i331.i = tail call zeroext i8 %1096(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i332.i = and i8 %call.i21.i331.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i332.i)
  %tobool.not26.not.i333.i = icmp eq i8 %tmp.025.i332.i, 0
  br i1 %tobool.not26.not.i333.i, label %rtl_write_byte.exit.i334.i._rtl8723be_mdio_read.exit349.i_crit_edge, label %rtl_write_byte.exit.i334.i.while.body.i342.i_crit_edge

rtl_write_byte.exit.i334.i.while.body.i342.i_crit_edge: ; preds = %rtl_write_byte.exit.i334.i
  br label %while.body.i342.i

rtl_write_byte.exit.i334.i._rtl8723be_mdio_read.exit349.i_crit_edge: ; preds = %rtl_write_byte.exit.i334.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit349.i

while.body.i342.i:                                ; preds = %while.body.i342.i.while.body.i342.i_crit_edge, %rtl_write_byte.exit.i334.i.while.body.i342.i_crit_edge
  %count.027.i335.i = phi i8 [ %inc.i337.i, %while.body.i342.i.while.body.i342.i_crit_edge ], [ 0, %rtl_write_byte.exit.i334.i.while.body.i342.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1097 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1097(i32 noundef 2147480) #7
  %1098 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i336.i = tail call zeroext i8 %1099(ptr noundef %906, i32 noundef 856) #7
  %inc.i337.i = add nuw nsw i8 %count.027.i335.i, 1
  %tmp.0.i338.i = and i8 %call.i23.i336.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i338.i)
  %tobool.not.i339.i = icmp ne i8 %tmp.0.i338.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i335.i)
  %cmp.i340.i = icmp ult i8 %count.027.i335.i, 19
  %or.cond.i341.i = select i1 %tobool.not.i339.i, i1 %cmp.i340.i, i1 false
  br i1 %or.cond.i341.i, label %while.body.i342.i.while.body.i342.i_crit_edge, label %while.end.i344.i

while.body.i342.i.while.body.i342.i_crit_edge:    ; preds = %while.body.i342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i342.i

while.end.i344.i:                                 ; preds = %while.body.i342.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i338.i)
  %phi.cmp.i343.i = icmp eq i8 %tmp.0.i338.i, 0
  br i1 %phi.cmp.i343.i, label %while.end.i344.i._rtl8723be_mdio_read.exit349.i_crit_edge, label %while.end.i344.i.if.then30.i_crit_edge

while.end.i344.i.if.then30.i_crit_edge:           ; preds = %while.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

while.end.i344.i._rtl8723be_mdio_read.exit349.i_crit_edge: ; preds = %while.end.i344.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit349.i

_rtl8723be_mdio_read.exit349.i:                   ; preds = %while.end.i344.i._rtl8723be_mdio_read.exit349.i_crit_edge, %rtl_write_byte.exit.i334.i._rtl8723be_mdio_read.exit349.i_crit_edge
  %read16_sync.i.i345.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1100 = ptrtoint ptr %read16_sync.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %read16_sync.i.i345.i, align 4
  %call.i24.i346.i = tail call zeroext i16 %1101(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 3331, i16 %call.i24.i346.i)
  %cmp28.not.i = icmp eq i16 %call.i24.i346.i, 3331
  br i1 %cmp28.not.i, label %_rtl8723be_mdio_read.exit349.i.if.end31.i_crit_edge, label %_rtl8723be_mdio_read.exit349.i.if.then30.i_crit_edge

_rtl8723be_mdio_read.exit349.i.if.then30.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i

_rtl8723be_mdio_read.exit349.i.if.end31.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then30.i:                                      ; preds = %_rtl8723be_mdio_read.exit349.i.if.then30.i_crit_edge, %while.end.i344.i.if.then30.i_crit_edge
  %write16_async.i.i350.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1102 = ptrtoint ptr %write16_async.i.i350.i to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %write16_async.i.i350.i, align 4
  tail call void %1103(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 3331) #7
  %1104 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i352.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1105, i32 0, i32 1
  %1106 = ptrtoint ptr %write_readback.i.i352.i to i32
  call void @__asan_load1_noabort(i32 %1106)
  %1107 = load i8, ptr %write_readback.i.i352.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1107)
  %tobool.not.i.i353.i = icmp eq i8 %1107, 0
  br i1 %tobool.not.i.i353.i, label %if.then30.i.rtl_write_word.exit.i360.i_crit_edge, label %if.then.i.i356.i

if.then30.i.rtl_write_word.exit.i360.i_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i360.i

if.then.i.i356.i:                                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i354.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1108 = ptrtoint ptr %read16_sync.i.i354.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %read16_sync.i.i354.i, align 4
  %call.i.i355.i = tail call zeroext i16 %1109(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i360.i

rtl_write_word.exit.i360.i:                       ; preds = %if.then.i.i356.i, %if.then30.i.rtl_write_word.exit.i360.i_crit_edge
  %1110 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1111(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 41) #7
  %1112 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i358.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1113, i32 0, i32 1
  %1114 = ptrtoint ptr %write_readback.i16.i358.i to i32
  call void @__asan_load1_noabort(i32 %1114)
  %1115 = load i8, ptr %write_readback.i16.i358.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1115)
  %tobool.not.i17.i359.i = icmp eq i8 %1115, 0
  br i1 %tobool.not.i17.i359.i, label %rtl_write_word.exit.i360.i.rtl_write_byte.exit.i368.i_crit_edge, label %if.then.i19.i363.i

rtl_write_word.exit.i360.i.rtl_write_byte.exit.i368.i_crit_edge: ; preds = %rtl_write_word.exit.i360.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i368.i

if.then.i19.i363.i:                               ; preds = %rtl_write_word.exit.i360.i
  call void @__sanitizer_cov_trace_pc() #9
  %1116 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i362.i = tail call zeroext i8 %1117(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i368.i

rtl_write_byte.exit.i368.i:                       ; preds = %if.then.i19.i363.i, %rtl_write_word.exit.i360.i.rtl_write_byte.exit.i368.i_crit_edge
  %1118 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i365.i = tail call zeroext i8 %1119(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i366.i = and i8 %call.i21.i365.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i366.i)
  %tobool.not25.not.i367.i = icmp eq i8 %tmp.024.i366.i, 0
  br i1 %tobool.not25.not.i367.i, label %rtl_write_byte.exit.i368.i.if.end31.i_crit_edge, label %rtl_write_byte.exit.i368.i.while.body.i376.i_crit_edge

rtl_write_byte.exit.i368.i.while.body.i376.i_crit_edge: ; preds = %rtl_write_byte.exit.i368.i
  br label %while.body.i376.i

rtl_write_byte.exit.i368.i.if.end31.i_crit_edge:  ; preds = %rtl_write_byte.exit.i368.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

while.body.i376.i:                                ; preds = %while.body.i376.i.while.body.i376.i_crit_edge, %rtl_write_byte.exit.i368.i.while.body.i376.i_crit_edge
  %count.026.i369.i = phi i8 [ %inc.i371.i, %while.body.i376.i.while.body.i376.i_crit_edge ], [ 0, %rtl_write_byte.exit.i368.i.while.body.i376.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1120(i32 noundef 2147480) #7
  %1121 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i370.i = tail call zeroext i8 %1122(ptr noundef %906, i32 noundef 856) #7
  %inc.i371.i = add nuw nsw i8 %count.026.i369.i, 1
  %tmp.0.i372.i = and i8 %call.i23.i370.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i372.i)
  %tobool.not.i373.i272 = icmp ne i8 %tmp.0.i372.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i369.i)
  %cmp.i374.i = icmp ult i8 %count.026.i369.i, 19
  %or.cond.i375.i = select i1 %tobool.not.i373.i272, i1 %cmp.i374.i, i1 false
  br i1 %or.cond.i375.i, label %while.body.i376.i.while.body.i376.i_crit_edge, label %while.body.i376.i.if.end31.i_crit_edge

while.body.i376.i.if.end31.i_crit_edge:           ; preds = %while.body.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

while.body.i376.i.while.body.i376.i_crit_edge:    ; preds = %while.body.i376.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i376.i

if.end31.i:                                       ; preds = %while.body.i376.i.if.end31.i_crit_edge, %rtl_write_byte.exit.i368.i.if.end31.i_crit_edge, %_rtl8723be_mdio_read.exit349.i.if.end31.i_crit_edge
  %1123 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1124(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 74) #7
  %1125 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i381.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1126, i32 0, i32 1
  %1127 = ptrtoint ptr %write_readback.i.i381.i to i32
  call void @__asan_load1_noabort(i32 %1127)
  %1128 = load i8, ptr %write_readback.i.i381.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1128)
  %tobool.not.i.i382.i = icmp eq i8 %1128, 0
  br i1 %tobool.not.i.i382.i, label %if.end31.i.rtl_write_byte.exit.i390.i_crit_edge, label %if.then.i.i385.i

if.end31.i.rtl_write_byte.exit.i390.i_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i390.i

if.then.i.i385.i:                                 ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %1129 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i384.i = tail call zeroext i8 %1130(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i390.i

rtl_write_byte.exit.i390.i:                       ; preds = %if.then.i.i385.i, %if.end31.i.rtl_write_byte.exit.i390.i_crit_edge
  %1131 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i387.i = tail call zeroext i8 %1132(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i388.i = and i8 %call.i21.i387.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i388.i)
  %tobool.not26.not.i389.i = icmp eq i8 %tmp.025.i388.i, 0
  br i1 %tobool.not26.not.i389.i, label %rtl_write_byte.exit.i390.i._rtl8723be_mdio_read.exit405.i_crit_edge, label %rtl_write_byte.exit.i390.i.while.body.i398.i_crit_edge

rtl_write_byte.exit.i390.i.while.body.i398.i_crit_edge: ; preds = %rtl_write_byte.exit.i390.i
  br label %while.body.i398.i

rtl_write_byte.exit.i390.i._rtl8723be_mdio_read.exit405.i_crit_edge: ; preds = %rtl_write_byte.exit.i390.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit405.i

while.body.i398.i:                                ; preds = %while.body.i398.i.while.body.i398.i_crit_edge, %rtl_write_byte.exit.i390.i.while.body.i398.i_crit_edge
  %count.027.i391.i = phi i8 [ %inc.i393.i, %while.body.i398.i.while.body.i398.i_crit_edge ], [ 0, %rtl_write_byte.exit.i390.i.while.body.i398.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1133(i32 noundef 2147480) #7
  %1134 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i392.i = tail call zeroext i8 %1135(ptr noundef %906, i32 noundef 856) #7
  %inc.i393.i = add nuw nsw i8 %count.027.i391.i, 1
  %tmp.0.i394.i = and i8 %call.i23.i392.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i394.i)
  %tobool.not.i395.i = icmp ne i8 %tmp.0.i394.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i391.i)
  %cmp.i396.i = icmp ult i8 %count.027.i391.i, 19
  %or.cond.i397.i = select i1 %tobool.not.i395.i, i1 %cmp.i396.i, i1 false
  br i1 %or.cond.i397.i, label %while.body.i398.i.while.body.i398.i_crit_edge, label %while.end.i400.i

while.body.i398.i.while.body.i398.i_crit_edge:    ; preds = %while.body.i398.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i398.i

while.end.i400.i:                                 ; preds = %while.body.i398.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i394.i)
  %phi.cmp.i399.i = icmp eq i8 %tmp.0.i394.i, 0
  br i1 %phi.cmp.i399.i, label %while.end.i400.i._rtl8723be_mdio_read.exit405.i_crit_edge, label %while.end.i400.i.if.then36.i_crit_edge

while.end.i400.i.if.then36.i_crit_edge:           ; preds = %while.end.i400.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

while.end.i400.i._rtl8723be_mdio_read.exit405.i_crit_edge: ; preds = %while.end.i400.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit405.i

_rtl8723be_mdio_read.exit405.i:                   ; preds = %while.end.i400.i._rtl8723be_mdio_read.exit405.i_crit_edge, %rtl_write_byte.exit.i390.i._rtl8723be_mdio_read.exit405.i_crit_edge
  %read16_sync.i.i401.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1136 = ptrtoint ptr %read16_sync.i.i401.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %read16_sync.i.i401.i, align 4
  %call.i24.i402.i = tail call zeroext i16 %1137(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16439, i16 %call.i24.i402.i)
  %cmp34.not.i = icmp eq i16 %call.i24.i402.i, 16439
  br i1 %cmp34.not.i, label %_rtl8723be_mdio_read.exit405.i.if.end37.i_crit_edge, label %_rtl8723be_mdio_read.exit405.i.if.then36.i_crit_edge

_rtl8723be_mdio_read.exit405.i.if.then36.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit405.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i

_rtl8723be_mdio_read.exit405.i.if.end37.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit405.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then36.i:                                      ; preds = %_rtl8723be_mdio_read.exit405.i.if.then36.i_crit_edge, %while.end.i400.i.if.then36.i_crit_edge
  %write16_async.i.i406.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1138 = ptrtoint ptr %write16_async.i.i406.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %write16_async.i.i406.i, align 4
  tail call void %1139(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 16439) #7
  %1140 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i408.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1141, i32 0, i32 1
  %1142 = ptrtoint ptr %write_readback.i.i408.i to i32
  call void @__asan_load1_noabort(i32 %1142)
  %1143 = load i8, ptr %write_readback.i.i408.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1143)
  %tobool.not.i.i409.i = icmp eq i8 %1143, 0
  br i1 %tobool.not.i.i409.i, label %if.then36.i.rtl_write_word.exit.i416.i_crit_edge, label %if.then.i.i412.i

if.then36.i.rtl_write_word.exit.i416.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i416.i

if.then.i.i412.i:                                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i410.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1144 = ptrtoint ptr %read16_sync.i.i410.i to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %read16_sync.i.i410.i, align 4
  %call.i.i411.i = tail call zeroext i16 %1145(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i416.i

rtl_write_word.exit.i416.i:                       ; preds = %if.then.i.i412.i, %if.then36.i.rtl_write_word.exit.i416.i_crit_edge
  %1146 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1147(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 42) #7
  %1148 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i414.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1149, i32 0, i32 1
  %1150 = ptrtoint ptr %write_readback.i16.i414.i to i32
  call void @__asan_load1_noabort(i32 %1150)
  %1151 = load i8, ptr %write_readback.i16.i414.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1151)
  %tobool.not.i17.i415.i = icmp eq i8 %1151, 0
  br i1 %tobool.not.i17.i415.i, label %rtl_write_word.exit.i416.i.rtl_write_byte.exit.i424.i_crit_edge, label %if.then.i19.i419.i

rtl_write_word.exit.i416.i.rtl_write_byte.exit.i424.i_crit_edge: ; preds = %rtl_write_word.exit.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i424.i

if.then.i19.i419.i:                               ; preds = %rtl_write_word.exit.i416.i
  call void @__sanitizer_cov_trace_pc() #9
  %1152 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i418.i = tail call zeroext i8 %1153(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i424.i

rtl_write_byte.exit.i424.i:                       ; preds = %if.then.i19.i419.i, %rtl_write_word.exit.i416.i.rtl_write_byte.exit.i424.i_crit_edge
  %1154 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i421.i = tail call zeroext i8 %1155(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i422.i = and i8 %call.i21.i421.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i422.i)
  %tobool.not25.not.i423.i = icmp eq i8 %tmp.024.i422.i, 0
  br i1 %tobool.not25.not.i423.i, label %rtl_write_byte.exit.i424.i.if.end37.i_crit_edge, label %rtl_write_byte.exit.i424.i.while.body.i432.i_crit_edge

rtl_write_byte.exit.i424.i.while.body.i432.i_crit_edge: ; preds = %rtl_write_byte.exit.i424.i
  br label %while.body.i432.i

rtl_write_byte.exit.i424.i.if.end37.i_crit_edge:  ; preds = %rtl_write_byte.exit.i424.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

while.body.i432.i:                                ; preds = %while.body.i432.i.while.body.i432.i_crit_edge, %rtl_write_byte.exit.i424.i.while.body.i432.i_crit_edge
  %count.026.i425.i = phi i8 [ %inc.i427.i, %while.body.i432.i.while.body.i432.i_crit_edge ], [ 0, %rtl_write_byte.exit.i424.i.while.body.i432.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1156(i32 noundef 2147480) #7
  %1157 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i426.i = tail call zeroext i8 %1158(ptr noundef %906, i32 noundef 856) #7
  %inc.i427.i = add nuw nsw i8 %count.026.i425.i, 1
  %tmp.0.i428.i = and i8 %call.i23.i426.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i428.i)
  %tobool.not.i429.i = icmp ne i8 %tmp.0.i428.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i425.i)
  %cmp.i430.i = icmp ult i8 %count.026.i425.i, 19
  %or.cond.i431.i = select i1 %tobool.not.i429.i, i1 %cmp.i430.i, i1 false
  br i1 %or.cond.i431.i, label %while.body.i432.i.while.body.i432.i_crit_edge, label %while.body.i432.i.if.end37.i_crit_edge

while.body.i432.i.if.end37.i_crit_edge:           ; preds = %while.body.i432.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

while.body.i432.i.while.body.i432.i_crit_edge:    ; preds = %while.body.i432.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i432.i

if.end37.i:                                       ; preds = %while.body.i432.i.if.end37.i_crit_edge, %rtl_write_byte.exit.i424.i.if.end37.i_crit_edge, %_rtl8723be_mdio_read.exit405.i.if.end37.i_crit_edge
  %1159 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1160(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 75) #7
  %1161 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i437.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1162, i32 0, i32 1
  %1163 = ptrtoint ptr %write_readback.i.i437.i to i32
  call void @__asan_load1_noabort(i32 %1163)
  %1164 = load i8, ptr %write_readback.i.i437.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1164)
  %tobool.not.i.i438.i = icmp eq i8 %1164, 0
  br i1 %tobool.not.i.i438.i, label %if.end37.i.rtl_write_byte.exit.i446.i_crit_edge, label %if.then.i.i441.i

if.end37.i.rtl_write_byte.exit.i446.i_crit_edge:  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i446.i

if.then.i.i441.i:                                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %1165 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i.i440.i = tail call zeroext i8 %1166(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i446.i

rtl_write_byte.exit.i446.i:                       ; preds = %if.then.i.i441.i, %if.end37.i.rtl_write_byte.exit.i446.i_crit_edge
  %1167 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i443.i = tail call zeroext i8 %1168(ptr noundef %906, i32 noundef 856) #7
  %tmp.025.i444.i = and i8 %call.i21.i443.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.025.i444.i)
  %tobool.not26.not.i445.i = icmp eq i8 %tmp.025.i444.i, 0
  br i1 %tobool.not26.not.i445.i, label %rtl_write_byte.exit.i446.i._rtl8723be_mdio_read.exit461.i_crit_edge, label %rtl_write_byte.exit.i446.i.while.body.i454.i_crit_edge

rtl_write_byte.exit.i446.i.while.body.i454.i_crit_edge: ; preds = %rtl_write_byte.exit.i446.i
  br label %while.body.i454.i

rtl_write_byte.exit.i446.i._rtl8723be_mdio_read.exit461.i_crit_edge: ; preds = %rtl_write_byte.exit.i446.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit461.i

while.body.i454.i:                                ; preds = %while.body.i454.i.while.body.i454.i_crit_edge, %rtl_write_byte.exit.i446.i.while.body.i454.i_crit_edge
  %count.027.i447.i = phi i8 [ %inc.i449.i, %while.body.i454.i.while.body.i454.i_crit_edge ], [ 0, %rtl_write_byte.exit.i446.i.while.body.i454.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1169(i32 noundef 2147480) #7
  %1170 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i448.i = tail call zeroext i8 %1171(ptr noundef %906, i32 noundef 856) #7
  %inc.i449.i = add nuw nsw i8 %count.027.i447.i, 1
  %tmp.0.i450.i = and i8 %call.i23.i448.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i450.i)
  %tobool.not.i451.i = icmp ne i8 %tmp.0.i450.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.027.i447.i)
  %cmp.i452.i = icmp ult i8 %count.027.i447.i, 19
  %or.cond.i453.i = select i1 %tobool.not.i451.i, i1 %cmp.i452.i, i1 false
  br i1 %or.cond.i453.i, label %while.body.i454.i.while.body.i454.i_crit_edge, label %while.end.i456.i

while.body.i454.i.while.body.i454.i_crit_edge:    ; preds = %while.body.i454.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i454.i

while.end.i456.i:                                 ; preds = %while.body.i454.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i450.i)
  %phi.cmp.i455.i = icmp eq i8 %tmp.0.i450.i, 0
  br i1 %phi.cmp.i455.i, label %while.end.i456.i._rtl8723be_mdio_read.exit461.i_crit_edge, label %while.end.i456.i.if.then42.i_crit_edge

while.end.i456.i.if.then42.i_crit_edge:           ; preds = %while.end.i456.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42.i

while.end.i456.i._rtl8723be_mdio_read.exit461.i_crit_edge: ; preds = %while.end.i456.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_mdio_read.exit461.i

_rtl8723be_mdio_read.exit461.i:                   ; preds = %while.end.i456.i._rtl8723be_mdio_read.exit461.i_crit_edge, %rtl_write_byte.exit.i446.i._rtl8723be_mdio_read.exit461.i_crit_edge
  %read16_sync.i.i457.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1172 = ptrtoint ptr %read16_sync.i.i457.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %read16_sync.i.i457.i, align 4
  %call.i24.i458.i = tail call zeroext i16 %1173(ptr noundef %906, i32 noundef 854) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %call.i24.i458.i)
  %cmp40.not.i = icmp eq i16 %call.i24.i458.i, 112
  br i1 %cmp40.not.i, label %_rtl8723be_mdio_read.exit461.i.if.end43.i274_crit_edge, label %_rtl8723be_mdio_read.exit461.i.if.then42.i_crit_edge

_rtl8723be_mdio_read.exit461.i.if.then42.i_crit_edge: ; preds = %_rtl8723be_mdio_read.exit461.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42.i

_rtl8723be_mdio_read.exit461.i.if.end43.i274_crit_edge: ; preds = %_rtl8723be_mdio_read.exit461.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i274

if.then42.i:                                      ; preds = %_rtl8723be_mdio_read.exit461.i.if.then42.i_crit_edge, %while.end.i456.i.if.then42.i_crit_edge
  %write16_async.i.i462.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1174 = ptrtoint ptr %write16_async.i.i462.i to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %write16_async.i.i462.i, align 4
  tail call void %1175(ptr noundef %906, i32 noundef 852, i16 noundef zeroext 112) #7
  %1176 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i464.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1177, i32 0, i32 1
  %1178 = ptrtoint ptr %write_readback.i.i464.i to i32
  call void @__asan_load1_noabort(i32 %1178)
  %1179 = load i8, ptr %write_readback.i.i464.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1179)
  %tobool.not.i.i465.i = icmp eq i8 %1179, 0
  br i1 %tobool.not.i.i465.i, label %if.then42.i.rtl_write_word.exit.i472.i_crit_edge, label %if.then.i.i468.i

if.then42.i.rtl_write_word.exit.i472.i_crit_edge: ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i472.i

if.then.i.i468.i:                                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i466.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1180 = ptrtoint ptr %read16_sync.i.i466.i to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %read16_sync.i.i466.i, align 4
  %call.i.i467.i = tail call zeroext i16 %1181(ptr noundef %906, i32 noundef 852) #7
  br label %rtl_write_word.exit.i472.i

rtl_write_word.exit.i472.i:                       ; preds = %if.then.i.i468.i, %if.then42.i.rtl_write_word.exit.i472.i_crit_edge
  %1182 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1183(ptr noundef %906, i32 noundef 856, i8 noundef zeroext 43) #7
  %1184 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i16.i470.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1185, i32 0, i32 1
  %1186 = ptrtoint ptr %write_readback.i16.i470.i to i32
  call void @__asan_load1_noabort(i32 %1186)
  %1187 = load i8, ptr %write_readback.i16.i470.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1187)
  %tobool.not.i17.i471.i = icmp eq i8 %1187, 0
  br i1 %tobool.not.i17.i471.i, label %rtl_write_word.exit.i472.i.rtl_write_byte.exit.i480.i_crit_edge, label %if.then.i19.i475.i

rtl_write_word.exit.i472.i.rtl_write_byte.exit.i480.i_crit_edge: ; preds = %rtl_write_word.exit.i472.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i480.i

if.then.i19.i475.i:                               ; preds = %rtl_write_word.exit.i472.i
  call void @__sanitizer_cov_trace_pc() #9
  %1188 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i18.i474.i = tail call zeroext i8 %1189(ptr noundef %906, i32 noundef 856) #7
  br label %rtl_write_byte.exit.i480.i

rtl_write_byte.exit.i480.i:                       ; preds = %if.then.i19.i475.i, %rtl_write_word.exit.i472.i.rtl_write_byte.exit.i480.i_crit_edge
  %1190 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i21.i477.i = tail call zeroext i8 %1191(ptr noundef %906, i32 noundef 856) #7
  %tmp.024.i478.i = and i8 %call.i21.i477.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.024.i478.i)
  %tobool.not25.not.i479.i = icmp eq i8 %tmp.024.i478.i, 0
  br i1 %tobool.not25.not.i479.i, label %rtl_write_byte.exit.i480.i.if.end43.i274_crit_edge, label %rtl_write_byte.exit.i480.i.while.body.i488.i_crit_edge

rtl_write_byte.exit.i480.i.while.body.i488.i_crit_edge: ; preds = %rtl_write_byte.exit.i480.i
  br label %while.body.i488.i

rtl_write_byte.exit.i480.i.if.end43.i274_crit_edge: ; preds = %rtl_write_byte.exit.i480.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i274

while.body.i488.i:                                ; preds = %while.body.i488.i.while.body.i488.i_crit_edge, %rtl_write_byte.exit.i480.i.while.body.i488.i_crit_edge
  %count.026.i481.i = phi i8 [ %inc.i483.i, %while.body.i488.i.while.body.i488.i_crit_edge ], [ 0, %rtl_write_byte.exit.i480.i.while.body.i488.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1192(i32 noundef 2147480) #7
  %1193 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i23.i482.i = tail call zeroext i8 %1194(ptr noundef %906, i32 noundef 856) #7
  %inc.i483.i = add nuw nsw i8 %count.026.i481.i, 1
  %tmp.0.i484.i = and i8 %call.i23.i482.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tmp.0.i484.i)
  %tobool.not.i485.i273 = icmp ne i8 %tmp.0.i484.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.026.i481.i)
  %cmp.i486.i = icmp ult i8 %count.026.i481.i, 19
  %or.cond.i487.i = select i1 %tobool.not.i485.i273, i1 %cmp.i486.i, i1 false
  br i1 %or.cond.i487.i, label %while.body.i488.i.while.body.i488.i_crit_edge, label %while.body.i488.i.if.end43.i274_crit_edge

while.body.i488.i.if.end43.i274_crit_edge:        ; preds = %while.body.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i274

while.body.i488.i.while.body.i488.i_crit_edge:    ; preds = %while.body.i488.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i488.i

if.end43.i274:                                    ; preds = %while.body.i488.i.if.end43.i274_crit_edge, %rtl_write_byte.exit.i480.i.if.end43.i274_crit_edge, %_rtl8723be_mdio_read.exit461.i.if.end43.i274_crit_edge
  %write16_async.i.i491.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 6
  %1195 = ptrtoint ptr %write16_async.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load ptr, ptr %write16_async.i.i491.i, align 4
  tail call void %1196(ptr noundef %906, i32 noundef 848, i16 noundef zeroext 1804) #7
  %1197 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i493.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1198, i32 0, i32 1
  %1199 = ptrtoint ptr %write_readback.i.i493.i to i32
  call void @__asan_load1_noabort(i32 %1199)
  %1200 = load i8, ptr %write_readback.i.i493.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1200)
  %tobool.not.i.i494.i = icmp eq i8 %1200, 0
  br i1 %tobool.not.i.i494.i, label %if.end43.i274.rtl_write_word.exit.i499.i_crit_edge, label %if.then.i.i497.i

if.end43.i274.rtl_write_word.exit.i499.i_crit_edge: ; preds = %if.end43.i274
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i499.i

if.then.i.i497.i:                                 ; preds = %if.end43.i274
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i495.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1201 = ptrtoint ptr %read16_sync.i.i495.i to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %read16_sync.i.i495.i, align 4
  %call.i.i496.i = tail call zeroext i16 %1202(ptr noundef %906, i32 noundef 848) #7
  br label %rtl_write_word.exit.i499.i

rtl_write_word.exit.i499.i:                       ; preds = %if.then.i.i497.i, %if.end43.i274.rtl_write_word.exit.i499.i_crit_edge
  %1203 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1204(ptr noundef %906, i32 noundef 850, i8 noundef zeroext 2) #7
  %1205 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i22.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1206, i32 0, i32 1
  %1207 = ptrtoint ptr %write_readback.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %1207)
  %1208 = load i8, ptr %write_readback.i22.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1208)
  %tobool.not.i23.i.i = icmp eq i8 %1208, 0
  br i1 %tobool.not.i23.i.i, label %rtl_write_word.exit.i499.i.rtl_write_byte.exit.i502.i_crit_edge, label %if.then.i25.i.i

rtl_write_word.exit.i499.i.rtl_write_byte.exit.i502.i_crit_edge: ; preds = %rtl_write_word.exit.i499.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i502.i

if.then.i25.i.i:                                  ; preds = %rtl_write_word.exit.i499.i
  call void @__sanitizer_cov_trace_pc() #9
  %1209 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1209)
  %1210 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i24.i501.i = tail call zeroext i8 %1210(ptr noundef %906, i32 noundef 850) #7
  br label %rtl_write_byte.exit.i502.i

rtl_write_byte.exit.i502.i:                       ; preds = %if.then.i25.i.i, %rtl_write_word.exit.i499.i.rtl_write_byte.exit.i502.i_crit_edge
  %1211 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1211)
  %1212 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i27.i.i = tail call zeroext i8 %1212(ptr noundef %906, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i27.i.i)
  %tobool.not32.not.i.i = icmp eq i8 %call.i27.i.i, 0
  br i1 %tobool.not32.not.i.i, label %rtl_write_byte.exit.i502.i.if.then.i510.i_crit_edge, label %rtl_write_byte.exit.i502.i.while.body.i507.i_crit_edge

rtl_write_byte.exit.i502.i.while.body.i507.i_crit_edge: ; preds = %rtl_write_byte.exit.i502.i
  br label %while.body.i507.i

rtl_write_byte.exit.i502.i.if.then.i510.i_crit_edge: ; preds = %rtl_write_byte.exit.i502.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i510.i

while.body.i507.i:                                ; preds = %while.body.i507.i.while.body.i507.i_crit_edge, %rtl_write_byte.exit.i502.i.while.body.i507.i_crit_edge
  %count.033.i.i = phi i8 [ %inc.i503.i, %while.body.i507.i.while.body.i507.i_crit_edge ], [ 0, %rtl_write_byte.exit.i502.i.while.body.i507.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1213(i32 noundef 2147480) #7
  %1214 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i29.i.i = tail call zeroext i8 %1215(ptr noundef %906, i32 noundef 850) #7
  %inc.i503.i = add nuw nsw i8 %count.033.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i29.i.i)
  %tobool.not.i504.i = icmp ne i8 %call.i29.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.033.i.i)
  %cmp.i505.i = icmp ult i8 %count.033.i.i, 19
  %or.cond.i506.i = select i1 %tobool.not.i504.i, i1 %cmp.i505.i, i1 false
  br i1 %or.cond.i506.i, label %while.body.i507.i.while.body.i507.i_crit_edge, label %while.end.i509.i

while.body.i507.i.while.body.i507.i_crit_edge:    ; preds = %while.body.i507.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i507.i

while.end.i509.i:                                 ; preds = %while.body.i507.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i29.i.i)
  %phi.cmp.i508.i = icmp eq i8 %call.i29.i.i, 0
  br i1 %phi.cmp.i508.i, label %while.end.i509.i.if.then.i510.i_crit_edge, label %while.end.i509.i._rtl8723be_dbi_read.exit.i_crit_edge

while.end.i509.i._rtl8723be_dbi_read.exit.i_crit_edge: ; preds = %while.end.i509.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_dbi_read.exit.i

while.end.i509.i.if.then.i510.i_crit_edge:        ; preds = %while.end.i509.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i510.i

if.then.i510.i:                                   ; preds = %while.end.i509.i.if.then.i510.i_crit_edge, %rtl_write_byte.exit.i502.i.if.then.i510.i_crit_edge
  %1216 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i31.i.i = tail call zeroext i8 %1217(ptr noundef %906, i32 noundef 847) #7
  %phi.bo.i = or i8 %call.i31.i.i, -72
  br label %_rtl8723be_dbi_read.exit.i

_rtl8723be_dbi_read.exit.i:                       ; preds = %if.then.i510.i, %while.end.i509.i._rtl8723be_dbi_read.exit.i_crit_edge
  %ret.0.i511.i = phi i8 [ %phi.bo.i, %if.then.i510.i ], [ -72, %while.end.i509.i._rtl8723be_dbi_read.exit.i_crit_edge ]
  tail call fastcc void @_rtl8723be_dbi_write(ptr noundef %906, i16 noundef zeroext 1807, i8 noundef zeroext %ret.0.i511.i) #7
  %1218 = ptrtoint ptr %write16_async.i.i491.i to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %write16_async.i.i491.i, align 4
  tail call void %1219(ptr noundef %906, i32 noundef 848, i16 noundef zeroext 1816) #7
  %1220 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i.i514.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1221, i32 0, i32 1
  %1222 = ptrtoint ptr %write_readback.i.i514.i to i32
  call void @__asan_load1_noabort(i32 %1222)
  %1223 = load i8, ptr %write_readback.i.i514.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1223)
  %tobool.not.i.i515.i = icmp eq i8 %1223, 0
  br i1 %tobool.not.i.i515.i, label %_rtl8723be_dbi_read.exit.i.rtl_write_word.exit.i522.i_crit_edge, label %if.then.i.i518.i

_rtl8723be_dbi_read.exit.i.rtl_write_word.exit.i522.i_crit_edge: ; preds = %_rtl8723be_dbi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i522.i

if.then.i.i518.i:                                 ; preds = %_rtl8723be_dbi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i516.i = getelementptr inbounds %struct.rtl_priv, ptr %906, i32 0, i32 13, i32 10
  %1224 = ptrtoint ptr %read16_sync.i.i516.i to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %read16_sync.i.i516.i, align 4
  %call.i.i517.i = tail call zeroext i16 %1225(ptr noundef %906, i32 noundef 848) #7
  br label %rtl_write_word.exit.i522.i

rtl_write_word.exit.i522.i:                       ; preds = %if.then.i.i518.i, %_rtl8723be_dbi_read.exit.i.rtl_write_word.exit.i522.i_crit_edge
  %1226 = ptrtoint ptr %write8_async.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load ptr, ptr %write8_async.i.i.i255, align 4
  tail call void %1227(ptr noundef %906, i32 noundef 850, i8 noundef zeroext 2) #7
  %1228 = ptrtoint ptr %cfg.i.i.i256 to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %cfg.i.i.i256, align 8
  %write_readback.i22.i520.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1229, i32 0, i32 1
  %1230 = ptrtoint ptr %write_readback.i22.i520.i to i32
  call void @__asan_load1_noabort(i32 %1230)
  %1231 = load i8, ptr %write_readback.i22.i520.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1231)
  %tobool.not.i23.i521.i = icmp eq i8 %1231, 0
  br i1 %tobool.not.i23.i521.i, label %rtl_write_word.exit.i522.i.rtl_write_byte.exit.i529.i_crit_edge, label %if.then.i25.i525.i

rtl_write_word.exit.i522.i.rtl_write_byte.exit.i529.i_crit_edge: ; preds = %rtl_write_word.exit.i522.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i529.i

if.then.i25.i525.i:                               ; preds = %rtl_write_word.exit.i522.i
  call void @__sanitizer_cov_trace_pc() #9
  %1232 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i24.i524.i = tail call zeroext i8 %1233(ptr noundef %906, i32 noundef 850) #7
  br label %rtl_write_byte.exit.i529.i

rtl_write_byte.exit.i529.i:                       ; preds = %if.then.i25.i525.i, %rtl_write_word.exit.i522.i.rtl_write_byte.exit.i529.i_crit_edge
  %1234 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i27.i527.i = tail call zeroext i8 %1235(ptr noundef %906, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i27.i527.i)
  %tobool.not32.not.i528.i = icmp eq i8 %call.i27.i527.i, 0
  br i1 %tobool.not32.not.i528.i, label %rtl_write_byte.exit.i529.i.if.then.i540.i_crit_edge, label %rtl_write_byte.exit.i529.i.while.body.i536.i_crit_edge

rtl_write_byte.exit.i529.i.while.body.i536.i_crit_edge: ; preds = %rtl_write_byte.exit.i529.i
  br label %while.body.i536.i

rtl_write_byte.exit.i529.i.if.then.i540.i_crit_edge: ; preds = %rtl_write_byte.exit.i529.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i540.i

while.body.i536.i:                                ; preds = %while.body.i536.i.while.body.i536.i_crit_edge, %rtl_write_byte.exit.i529.i.while.body.i536.i_crit_edge
  %count.033.i530.i = phi i8 [ %inc.i532.i, %while.body.i536.i.while.body.i536.i_crit_edge ], [ 0, %rtl_write_byte.exit.i529.i.while.body.i536.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1236(i32 noundef 2147480) #7
  %1237 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i29.i531.i = tail call zeroext i8 %1238(ptr noundef %906, i32 noundef 850) #7
  %inc.i532.i = add nuw nsw i8 %count.033.i530.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i29.i531.i)
  %tobool.not.i533.i = icmp ne i8 %call.i29.i531.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.033.i530.i)
  %cmp.i534.i = icmp ult i8 %count.033.i530.i, 19
  %or.cond.i535.i = select i1 %tobool.not.i533.i, i1 %cmp.i534.i, i1 false
  br i1 %or.cond.i535.i, label %while.body.i536.i.while.body.i536.i_crit_edge, label %while.end.i538.i

while.body.i536.i.while.body.i536.i_crit_edge:    ; preds = %while.body.i536.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i536.i

while.end.i538.i:                                 ; preds = %while.body.i536.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i29.i531.i)
  %phi.cmp.i537.i = icmp eq i8 %call.i29.i531.i, 0
  br i1 %phi.cmp.i537.i, label %while.end.i538.i.if.then.i540.i_crit_edge, label %while.end.i538.i._rtl8723be_enable_aspm_back_door.exit_crit_edge

while.end.i538.i._rtl8723be_enable_aspm_back_door.exit_crit_edge: ; preds = %while.end.i538.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_enable_aspm_back_door.exit

while.end.i538.i.if.then.i540.i_crit_edge:        ; preds = %while.end.i538.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i540.i

if.then.i540.i:                                   ; preds = %while.end.i538.i.if.then.i540.i_crit_edge, %rtl_write_byte.exit.i529.i.if.then.i540.i_crit_edge
  %1239 = ptrtoint ptr %read8_sync.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load ptr, ptr %read8_sync.i20.i.i, align 4
  %call.i31.i539.i = tail call zeroext i8 %1240(ptr noundef %906, i32 noundef 845) #7
  %phi.bo559.i = or i8 %call.i31.i539.i, 24
  br label %_rtl8723be_enable_aspm_back_door.exit

_rtl8723be_enable_aspm_back_door.exit:            ; preds = %if.then.i540.i, %while.end.i538.i._rtl8723be_enable_aspm_back_door.exit_crit_edge
  %ret.0.i541.i = phi i8 [ %phi.bo559.i, %if.then.i540.i ], [ 24, %while.end.i538.i._rtl8723be_enable_aspm_back_door.exit_crit_edge ]
  tail call fastcc void @_rtl8723be_dbi_write(ptr noundef %906, i16 noundef zeroext 1817, i8 noundef zeroext %ret.0.i541.i) #7
  %1241 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %1242, i32 0, i32 9
  %1243 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load ptr, ptr %enable_aspm, align 4
  tail call void %1244(ptr noundef %hw) #7
  %1245 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %priv, align 8
  %cfg.i276 = getelementptr inbounds %struct.rtl_priv, ptr %1246, i32 0, i32 32
  %1247 = ptrtoint ptr %cfg.i276 to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load ptr, ptr %cfg.i276, align 8
  %ops.i277 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1248, i32 0, i32 4
  %1249 = ptrtoint ptr %ops.i277 to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load ptr, ptr %ops.i277, align 4
  %get_btc_status.i278 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1250, i32 0, i32 66
  %1251 = ptrtoint ptr %get_btc_status.i278 to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load ptr, ptr %get_btc_status.i278, align 4
  %call.i279 = tail call zeroext i1 %1252() #7
  br i1 %call.i279, label %if.then.i281, label %_rtl8723be_enable_aspm_back_door.exit.rtl8723be_bt_hw_init.exit_crit_edge

_rtl8723be_enable_aspm_back_door.exit.rtl8723be_bt_hw_init.exit_crit_edge: ; preds = %_rtl8723be_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_bt_hw_init.exit

if.then.i281:                                     ; preds = %_rtl8723be_enable_aspm_back_door.exit
  call void @__sanitizer_cov_trace_pc() #9
  %btcoexist.i280 = getelementptr inbounds %struct.rtl_priv, ptr %1246, i32 0, i32 49
  %1253 = ptrtoint ptr %btcoexist.i280 to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load ptr, ptr %btcoexist.i280, align 8
  %btc_init_hw_config.i = getelementptr inbounds %struct.rtl_btc_ops, ptr %1254, i32 0, i32 5
  %1255 = ptrtoint ptr %btc_init_hw_config.i to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load ptr, ptr %btc_init_hw_config.i, align 4
  tail call void %1256(ptr noundef %1246) #7
  br label %rtl8723be_bt_hw_init.exit

rtl8723be_bt_hw_init.exit:                        ; preds = %if.then.i281, %_rtl8723be_enable_aspm_back_door.exit.rtl8723be_bt_hw_init.exit_crit_edge
  %1257 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1258)
  %cmp66 = icmp eq i32 %1258, 0
  br i1 %cmp66, label %if.then68, label %rtl8723be_bt_hw_init.exit.if.end81_crit_edge

rtl8723be_bt_hw_init.exit.if.end81_crit_edge:     ; preds = %rtl8723be_bt_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then68:                                        ; preds = %rtl8723be_bt_hw_init.exit
  tail call void @rtl8723be_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext true) #7
  %ant_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 2
  %1259 = ptrtoint ptr %ant_num to i32
  call void @__asan_load1_noabort(i32 %1259)
  %1260 = load i8, ptr %ant_num, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1260)
  %cmp70 = icmp eq i8 %1260, 0
  br i1 %cmp70, label %if.then68.if.then75_crit_edge, label %lor.lhs.false

if.then68.if.then75_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.then68
  %1261 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %cfg.i, align 8
  %ops73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1262, i32 0, i32 4
  %1263 = ptrtoint ptr %ops73 to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load ptr, ptr %ops73, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %1264, i32 0, i32 66
  %1265 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %1265)
  %1266 = load ptr, ptr %get_btc_status, align 4
  %call74 = tail call zeroext i1 %1266() #7
  br i1 %call74, label %lor.lhs.false.if.end80_crit_edge, label %lor.lhs.false.if.then75_crit_edge

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

lor.lhs.false.if.end80_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %if.then68.if.then75_crit_edge
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %1267 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_load1_noabort(i32 %1267)
  %1268 = load i8, ptr %iqk_initialized, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1268)
  %tobool76 = icmp ne i8 %1268, 0
  tail call void @rtl8723be_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext %tobool76) #7
  %1269 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %1269)
  store i8 1, ptr %iqk_initialized, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %lor.lhs.false.if.end80_crit_edge
  tail call void @rtl8723be_dm_check_txpower_tracking(ptr noundef %hw) #7
  tail call void @rtl8723be_phy_lc_calibrate(ptr noundef %hw) #7
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %rtl8723be_bt_hw_init.exit.if.end81_crit_edge
  %1270 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %write8_async.i, align 4
  tail call void %1271(ptr noundef %1, i32 noundef 1618, i8 noundef zeroext -21) #7
  %1272 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %cfg.i, align 8
  %write_readback.i285 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1273, i32 0, i32 1
  %1274 = ptrtoint ptr %write_readback.i285 to i32
  call void @__asan_load1_noabort(i32 %1274)
  %1275 = load i8, ptr %write_readback.i285, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1275)
  %tobool.not.i286 = icmp eq i8 %1275, 0
  br i1 %tobool.not.i286, label %if.end81.rtl_write_byte.exit291_crit_edge, label %if.then.i289

if.end81.rtl_write_byte.exit291_crit_edge:        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit291

if.then.i289:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %1276 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %read8_sync.i, align 4
  %call.i288 = tail call zeroext i8 %1277(ptr noundef %1, i32 noundef 1618) #7
  br label %rtl_write_byte.exit291

rtl_write_byte.exit291:                           ; preds = %if.then.i289, %if.end81.rtl_write_byte.exit291_crit_edge
  %1278 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load ptr, ptr %read8_sync.i, align 4
  %call.i293 = tail call zeroext i8 %1279(ptr noundef %1, i32 noundef 646) #7
  %1280 = and i8 %call.i293, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1280)
  %tobool85.not = icmp eq i8 %1280, 0
  br i1 %tobool85.not, label %rtl_write_byte.exit291.if.end90_crit_edge, label %if.then86

rtl_write_byte.exit291.if.end90_crit_edge:        ; preds = %rtl_write_byte.exit291
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then86:                                        ; preds = %rtl_write_byte.exit291
  %and88 = and i8 %call.i293, -5
  %1281 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %write8_async.i, align 4
  tail call void %1282(ptr noundef %1, i32 noundef 646, i8 noundef zeroext %and88) #7
  %1283 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load ptr, ptr %cfg.i, align 8
  %write_readback.i296 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1284, i32 0, i32 1
  %1285 = ptrtoint ptr %write_readback.i296 to i32
  call void @__asan_load1_noabort(i32 %1285)
  %1286 = load i8, ptr %write_readback.i296, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1286)
  %tobool.not.i297 = icmp eq i8 %1286, 0
  br i1 %tobool.not.i297, label %if.then86.if.end90_crit_edge, label %if.then.i300

if.then86.if.end90_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then.i300:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %1287 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load ptr, ptr %read8_sync.i, align 4
  %call.i299 = tail call zeroext i8 %1288(ptr noundef %1, i32 noundef 646) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then.i300, %if.then86.if.end90_crit_edge, %rtl_write_byte.exit291.if.end90_crit_edge
  %1289 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1289)
  %1290 = load ptr, ptr %write8_async.i, align 4
  tail call void %1290(ptr noundef %1, i32 noundef 769, i8 noundef zeroext 0) #7
  %1291 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1291)
  %1292 = load ptr, ptr %cfg.i, align 8
  %write_readback.i305 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1292, i32 0, i32 1
  %1293 = ptrtoint ptr %write_readback.i305 to i32
  call void @__asan_load1_noabort(i32 %1293)
  %1294 = load i8, ptr %write_readback.i305, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1294)
  %tobool.not.i306 = icmp eq i8 %1294, 0
  br i1 %tobool.not.i306, label %if.end90.rtl_write_byte.exit311_crit_edge, label %if.then.i309

if.end90.rtl_write_byte.exit311_crit_edge:        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit311

if.then.i309:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %1295 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %1295)
  %1296 = load ptr, ptr %read8_sync.i, align 4
  %call.i308 = tail call zeroext i8 %1296(ptr noundef %1, i32 noundef 769) #7
  br label %rtl_write_byte.exit311

rtl_write_byte.exit311:                           ; preds = %if.then.i309, %if.end90.rtl_write_byte.exit311_crit_edge
  tail call void @rtl8723be_dm_init(ptr noundef %hw) #7
  br label %do.body91

do.body91:                                        ; preds = %rtl_write_byte.exit311, %if.then43, %do.end34
  %err.0 = phi i32 [ 1, %if.then43 ], [ 0, %rtl_write_byte.exit311 ], [ 1, %do.end34 ]
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool99.not = icmp eq i32 %and.i, 0
  br i1 %tobool99.not, label %if.then100, label %do.body91.do.body102_crit_edge

do.body91.do.body102_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

if.then100:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body102

do.body102:                                       ; preds = %if.then100, %do.body91.do.body102_crit_edge
  %1297 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !134
  %and.i.i = and i32 %1297, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool110.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool110.not, label %if.then114, label %do.body102.do.end117_crit_edge, !prof !136

do.body102.do.end117_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end117

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end117

do.end117:                                        ; preds = %if.then114, %do.body102.do.end117_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #7, !srcloc !137
  %1298 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %1298)
  store i8 0, ptr %being_init_adapter, align 1
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_poweroff_adapter(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac_func_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %2 = ptrtoint ptr %mac_func_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mac_func_enable, align 1
  %call = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723B_enter_lps_flow) #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %1, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool.not = icmp sgt i8 %call.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %5 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fw_ready, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl8723be_firmware_selfreset(ptr noundef %hw) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i34 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 3) #7
  %9 = and i8 %call.i34, -5
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %10 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %9) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i, align 4
  %call.i36 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #7
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i39 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i39, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i40 = icmp eq i8 %23, 0
  br i1 %tobool.not.i40, label %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge, label %if.then.i43

rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit44

if.then.i43:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i42 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 128) #7
  br label %rtl_write_byte.exit44

rtl_write_byte.exit44:                            ; preds = %if.then.i43, %rtl_write_byte.exit.rtl_write_byte.exit44_crit_edge
  %call10 = tail call zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef %1, i8 noundef zeroext -1, i8 noundef zeroext 15, i8 noundef zeroext 4, ptr noundef nonnull @rtl8723B_card_disable_flow) #7
  %26 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i, align 4
  %call.i46 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 29) #7
  %28 = and i8 %call.i46, -2
  %29 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %28) #7
  %31 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i, align 8
  %write_readback.i49 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i49 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i49, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i50 = icmp eq i8 %34, 0
  br i1 %tobool.not.i50, label %rtl_write_byte.exit44.rtl_write_byte.exit54_crit_edge, label %if.then.i53

rtl_write_byte.exit44.rtl_write_byte.exit54_crit_edge: ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit54

if.then.i53:                                      ; preds = %rtl_write_byte.exit44
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i, align 4
  %call.i52 = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 29) #7
  br label %rtl_write_byte.exit54

rtl_write_byte.exit54:                            ; preds = %if.then.i53, %rtl_write_byte.exit44.rtl_write_byte.exit54_crit_edge
  %37 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i, align 4
  %call.i56 = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 29) #7
  %39 = or i8 %call.i56, 1
  %40 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i, align 4
  tail call void %41(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %39) #7
  %42 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i, align 8
  %write_readback.i59 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i59 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i59, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i60 = icmp eq i8 %45, 0
  br i1 %tobool.not.i60, label %rtl_write_byte.exit54.rtl_write_byte.exit64_crit_edge, label %if.then.i63

rtl_write_byte.exit54.rtl_write_byte.exit64_crit_edge: ; preds = %rtl_write_byte.exit54
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit64

if.then.i63:                                      ; preds = %rtl_write_byte.exit54
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i, align 4
  %call.i62 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 29) #7
  br label %rtl_write_byte.exit64

rtl_write_byte.exit64:                            ; preds = %if.then.i63, %rtl_write_byte.exit54.rtl_write_byte.exit64_crit_edge
  %48 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i, align 4
  tail call void %49(ptr noundef %1, i32 noundef 28, i8 noundef zeroext 14) #7
  %50 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i, align 8
  %write_readback.i67 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i67 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i67, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i68 = icmp eq i8 %53, 0
  br i1 %tobool.not.i68, label %rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge, label %if.then.i71

rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge: ; preds = %rtl_write_byte.exit64
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit72

if.then.i71:                                      ; preds = %rtl_write_byte.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i, align 4
  %call.i70 = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 28) #7
  br label %rtl_write_byte.exit72

rtl_write_byte.exit72:                            ; preds = %if.then.i71, %rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723_download_fw(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723be_phy_mac_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723be_phy_bb_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723be_phy_rf_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_bt_hw_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 66
  %6 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %7() #7
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %8 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btcoexist, align 8
  %btc_init_hw_config = getelementptr inbounds %struct.rtl_btc_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %btc_init_hw_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %btc_init_hw_config, align 4
  tail call void %11(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_set_rfpath_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_iq_calibrate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_dm_check_txpower_tracking(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_lc_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_dm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
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
  %22 = load i8, ptr %write_readback.i.i, align 1, !range !133
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
  %33 = load i8, ptr %write_readback.i.i26, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i27 = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i27, label %if.then5._rtl8723be_set_bcn_ctrl_reg.exit31_crit_edge, label %if.then.i.i30

if.then5._rtl8723be_set_bcn_ctrl_reg.exit31_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit31

if.then.i.i30:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i28 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i.i28, align 4
  %call.i.i29 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit31

_rtl8723be_set_bcn_ctrl_reg.exit31:               ; preds = %if.then.i.i30, %if.then5._rtl8723be_set_bcn_ctrl_reg.exit31_crit_edge
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

cleanup:                                          ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit31, %if.then.i.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723be_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i10 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl8723be_set_media_status(ptr noundef %hw, i32 noundef %type)
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp2.not = icmp eq i32 %type, 3
  br i1 %cmp2.not, label %if.then1.cleanup_crit_edge, label %if.then3

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 21, i32 24
  %6 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.rtl8723be_set_check_bssid.exit_crit_edge

if.then3.rtl8723be_set_check_bssid.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then3
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %receive_config.i, align 4
  %or.i = or i32 %9, 192
  %10 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_hw_reg.i, align 4
  call void %16(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %and.i.i = and i32 %20, -17
  store i32 %and.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %and.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %22(ptr noundef %18, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.rtl8723be_set_check_bssid.exit_crit_edge, label %if.then.i.i.i

if.end.i.rtl8723be_set_check_bssid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_set_check_bssid.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %18, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %28(ptr noundef %18, i32 noundef 1360) #7
  br label %rtl8723be_set_check_bssid.exit

rtl8723be_set_check_bssid.exit:                   ; preds = %if.then.i.i.i, %if.end.i.rtl8723be_set_check_bssid.exit_crit_edge, %if.then3.rtl8723be_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  %rfpwr_state.i13 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 21, i32 24
  %31 = ptrtoint ptr %rfpwr_state.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rfpwr_state.i13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i14 = icmp eq i32 %32, 0
  br i1 %cmp.not.i14, label %if.end.i15, label %if.else.rtl8723be_set_check_bssid.exit16_crit_edge

if.else.rtl8723be_set_check_bssid.exit16_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_set_check_bssid.exit16

if.end.i15:                                       ; preds = %if.else
  %receive_config.i12 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %receive_config.i12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %receive_config.i12, align 4
  %and.i = and i32 %34, -193
  %35 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i, ptr %reg_rcr.i10, align 4
  %reg_bcn_ctrl_val.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %reg_bcn_ctrl_val.i22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %or.i.i = or i32 %37, 16
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i22.i, align 4
  %conv6.i23.i = trunc i32 %or.i.i to i8
  %write8_async.i.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 13, i32 5
  %38 = ptrtoint ptr %write8_async.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i.i24.i, align 4
  tail call void %39(ptr noundef %30, i32 noundef 1360, i8 noundef zeroext %conv6.i23.i) #7
  %cfg.i.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i25.i, align 8
  %write_readback.i.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i.i26.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i27.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i15._rtl8723be_set_bcn_ctrl_reg.exit31.i_crit_edge, label %if.then.i.i30.i

if.end.i15._rtl8723be_set_bcn_ctrl_reg.exit31.i_crit_edge: ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_set_bcn_ctrl_reg.exit31.i

if.then.i.i30.i:                                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 13, i32 9
  %44 = ptrtoint ptr %read8_sync.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i.i28.i, align 4
  %call.i.i29.i = tail call zeroext i8 %45(ptr noundef %30, i32 noundef 1360) #7
  br label %_rtl8723be_set_bcn_ctrl_reg.exit31.i

_rtl8723be_set_bcn_ctrl_reg.exit31.i:             ; preds = %if.then.i.i30.i, %if.end.i15._rtl8723be_set_bcn_ctrl_reg.exit31.i_crit_edge
  %46 = ptrtoint ptr %cfg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i.i25.i, align 8
  %ops7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops7.i, align 4
  %set_hw_reg8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 20
  %50 = ptrtoint ptr %set_hw_reg8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_hw_reg8.i, align 4
  call void %51(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #7
  br label %rtl8723be_set_check_bssid.exit16

rtl8723be_set_check_bssid.exit16:                 ; preds = %_rtl8723be_set_bcn_ctrl_reg.exit31.i, %if.else.rtl8723be_set_check_bssid.exit16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl8723be_set_check_bssid.exit16, %rtl8723be_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %rtl8723be_set_check_bssid.exit ], [ 0, %rtl8723be_set_check_bssid.exit16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl8723be_set_media_status(ptr noundef %hw, i32 noundef %type) unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.63)
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
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %type) #10
  br label %cleanup

if.end.thread125:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.41) #7
  br label %if.then24

land.lhs.true:                                    ; preds = %sw.bb3, %sw.bb2, %entry.land.lhs.true_crit_edge
  %.str.40.sink = phi ptr [ @.str.40, %sw.bb3 ], [ @.str.39, %sw.bb2 ], [ @.str.38, %entry.land.lhs.true_crit_edge ]
  %ledaction.0.ph = phi i32 [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 3, %entry.land.lhs.true_crit_edge ]
  %mode.0.ph = phi i8 [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 0, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.40.sink) #7
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
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
  %19 = load i8, ptr %write_readback.i.i, align 1, !range !133
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
  %27 = load i8, ptr %write_readback.i16.i, align 1, !range !133
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
  %38 = load i8, ptr %write_readback.i26.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i27.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i27.i, label %rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge, label %if.then.i30.i

rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_stop_tx_beacon.exit

if.then.i30.i:                                    ; preds = %rtl_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i29.i = tail call zeroext i8 %40(ptr noundef %10, i32 noundef 1346) #7
  br label %_rtl8723be_stop_tx_beacon.exit

_rtl8723be_stop_tx_beacon.exit:                   ; preds = %if.then.i30.i, %rtl_write_byte.exit21.i._rtl8723be_stop_tx_beacon.exit_crit_edge
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
  %50 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i.i, label %_rtl8723be_stop_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i

_rtl8723be_stop_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl8723be_stop_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i.i.i:                                    ; preds = %_rtl8723be_stop_tx_beacon.exit
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
  %63 = load i8, ptr %write_readback.i.i71, align 1, !range !133
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
  %71 = load i8, ptr %write_readback.i16.i75, align 1, !range !133
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
  %76 = or i8 %call.i23.i80, 2
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
  %82 = load i8, ptr %write_readback.i26.i81, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i27.i82 = icmp eq i8 %82, 0
  br i1 %tobool.not.i27.i82, label %rtl_write_byte.exit21.i83._rtl8723be_resume_tx_beacon.exit_crit_edge, label %if.then.i30.i85

rtl_write_byte.exit21.i83._rtl8723be_resume_tx_beacon.exit_crit_edge: ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_resume_tx_beacon.exit

if.then.i30.i85:                                  ; preds = %rtl_write_byte.exit21.i83
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %read8_sync.i.i67 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i67, align 4
  %call.i29.i84 = tail call zeroext i8 %84(ptr noundef %54, i32 noundef 1346) #7
  br label %_rtl8723be_resume_tx_beacon.exit

_rtl8723be_resume_tx_beacon.exit:                 ; preds = %if.then.i30.i85, %rtl_write_byte.exit21.i83._rtl8723be_resume_tx_beacon.exit_crit_edge
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
  %94 = load i8, ptr %write_readback.i.i.i91, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i92 = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i92, label %_rtl8723be_resume_tx_beacon.exit.if.end28_crit_edge, label %if.then.i.i.i95

_rtl8723be_resume_tx_beacon.exit.if.end28_crit_edge: ; preds = %_rtl8723be_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i.i.i95:                                  ; preds = %_rtl8723be_resume_tx_beacon.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i93 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 13, i32 9
  %95 = ptrtoint ptr %read8_sync.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %read8_sync.i.i.i93, align 4
  %call.i.i.i94 = tail call zeroext i8 %96(ptr noundef %86, i32 noundef 1360) #7
  br label %if.end28

if.else25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef 2) #7
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then.i.i.i95, %_rtl8723be_resume_tx_beacon.exit.if.end28_crit_edge, %if.then.i.i.i, %_rtl8723be_stop_tx_beacon.exit.if.end28_crit_edge
  %mode.1123 = phi i8 [ 0, %if.else25 ], [ %mode.1124, %_rtl8723be_stop_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1124, %if.then.i.i.i ], [ %mode.1129, %_rtl8723be_resume_tx_beacon.exit.if.end28_crit_edge ], [ %mode.1129, %if.then.i.i.i95 ]
  %ledaction.1121 = phi i32 [ %ledaction.0.ph, %if.else25 ], [ %ledaction.1122, %_rtl8723be_stop_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1122, %if.then.i.i.i ], [ %ledaction.1128, %_rtl8723be_resume_tx_beacon.exit.if.end28_crit_edge ], [ %ledaction.1128, %if.then.i.i.i95 ]
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
  %102 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %116 = load i8, ptr %write_readback.i100, align 1, !range !133
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
  %122 = load i8, ptr %write_readback.i108, align 1, !range !133
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
define dso_local void @rtl8723be_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl8723_dm_init_edca_turbo(ptr noundef %hw) #7
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.65)
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
  %8 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %16 = load i8, ptr %write_readback.i44, align 1, !range !133
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
  %24 = load i8, ptr %write_readback.i52, align 1, !range !133
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
  %.b41 = load i1, ptr @rtl8723be_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !138

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl8723be_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1616, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %aci) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %9 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %write_readback.i15 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i15, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i16 = icmp eq i8 %19, 0
  br i1 %tobool.not.i16, label %rtl_write_dword.exit.rtl_write_dword.exit20_crit_edge, label %if.then.i19

rtl_write_dword.exit.rtl_write_dword.exit20_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit20

if.then.i19:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i17 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i17, align 4
  %call.i18 = tail call i32 %21(ptr noundef %1, i32 noundef 184) #7
  br label %rtl_write_dword.exit20

rtl_write_dword.exit20:                           ; preds = %if.then.i19, %rtl_write_dword.exit.rtl_write_dword.exit20_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  %sys_irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1
  %23 = ptrtoint ptr %sys_irq_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sys_irq_mask, align 4
  %25 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write32_async.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef 88, i32 noundef %24) #7
  %27 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i23, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i24 = icmp eq i8 %30, 0
  br i1 %tobool.not.i24, label %rtl_write_dword.exit20.rtl_write_dword.exit28_crit_edge, label %if.then.i27

rtl_write_dword.exit20.rtl_write_dword.exit28_crit_edge: ; preds = %rtl_write_dword.exit20
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit28

if.then.i27:                                      ; preds = %rtl_write_dword.exit20
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %31 = ptrtoint ptr %read32_sync.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32_sync.i25, align 4
  %call.i26 = tail call i32 %32(ptr noundef %1, i32 noundef 88) #7
  br label %rtl_write_dword.exit28

rtl_write_dword.exit28:                           ; preds = %if.then.i27, %rtl_write_dword.exit20.rtl_write_dword.exit28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %7 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %15 = load i8, ptr %write_readback.i7, align 1, !range !133
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
define dso_local void @rtl8723be_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl8723be_set_media_status(ptr noundef %hw, i32 noundef 0)
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %driver_is_goingto_unload, align 4, !range !133
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
  tail call fastcc void @_rtl8723be_poweroff_adapter(ptr noundef %hw)
  %cfg3 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %15 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg3, align 8
  %ops4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ops4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops4, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %18, i32 0, i32 66
  %19 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_btc_status, align 4
  %call5 = tail call zeroext i1 %20() #7
  br i1 %call5, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %iqk_initialized = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 31
  %21 = ptrtoint ptr %iqk_initialized to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %iqk_initialized, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
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
  %12 = load i8, ptr %write_readback.i, align 1, !range !133
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
  %25 = load i8, ptr %write_readback.i23, align 1, !range !133
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
define dso_local void @rtl8723be_set_beacon_related_registers(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %9 = load i8, ptr %write_readback.i.i, align 1, !range !133
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
  %17 = load i8, ptr %write_readback.i7.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i8.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %19(ptr noundef %1, i32 noundef 184) #7
  br label %rtl8723be_disable_interrupt.exit

rtl8723be_disable_interrupt.exit:                 ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge
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
  %26 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i = icmp eq i8 %26, 0
  br i1 %tobool.not.i, label %rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %27 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %28(ptr noundef %1, i32 noundef 1370) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %29 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i12, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i13 = icmp eq i8 %34, 0
  br i1 %tobool.not.i13, label %rtl_write_word.exit.rtl_write_word.exit17_crit_edge, label %if.then.i16

rtl_write_word.exit.rtl_write_word.exit17_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit17

if.then.i16:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %35 = ptrtoint ptr %read16_sync.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read16_sync.i14, align 4
  %call.i15 = tail call zeroext i16 %36(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit17

rtl_write_word.exit17:                            ; preds = %if.then.i16, %rtl_write_word.exit.rtl_write_word.exit17_crit_edge
  %37 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write16_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 1296, i16 noundef zeroext 26127) #7
  %39 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i20 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i20 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i20, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i21 = icmp eq i8 %42, 0
  br i1 %tobool.not.i21, label %rtl_write_word.exit17.rtl_write_word.exit25_crit_edge, label %if.then.i24

rtl_write_word.exit17.rtl_write_word.exit25_crit_edge: ; preds = %rtl_write_word.exit17
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit25

if.then.i24:                                      ; preds = %rtl_write_word.exit17
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %43 = ptrtoint ptr %read16_sync.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read16_sync.i22, align 4
  %call.i23 = tail call zeroext i16 %44(ptr noundef %1, i32 noundef 1296) #7
  br label %rtl_write_word.exit25

rtl_write_word.exit25:                            ; preds = %if.then.i24, %rtl_write_word.exit17.rtl_write_word.exit25_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 1374, i8 noundef zeroext 24) #7
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i27 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i27, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i28 = icmp eq i8 %50, 0
  br i1 %tobool.not.i28, label %rtl_write_word.exit25.rtl_write_byte.exit_crit_edge, label %if.then.i30

rtl_write_word.exit25.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i30:                                      ; preds = %rtl_write_word.exit25
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i, align 4
  %call.i29 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 1374) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i30, %rtl_write_word.exit25.rtl_write_byte.exit_crit_edge
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1375, i8 noundef zeroext 24) #7
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i33 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i33 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i33, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i34 = icmp eq i8 %58, 0
  br i1 %tobool.not.i34, label %rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge, label %if.then.i37

rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit38

if.then.i37:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i35 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i35, align 4
  %call.i36 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1375) #7
  br label %rtl_write_byte.exit38

rtl_write_byte.exit38:                            ; preds = %if.then.i37, %rtl_write_byte.exit.rtl_write_byte.exit38_crit_edge
  %61 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef 1542, i8 noundef zeroext 48) #7
  %63 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i41 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i41 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i41, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i42 = icmp eq i8 %66, 0
  br i1 %tobool.not.i42, label %rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge, label %if.then.i45

rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge: ; preds = %rtl_write_byte.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit46

if.then.i45:                                      ; preds = %rtl_write_byte.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %67 = ptrtoint ptr %read8_sync.i43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i43, align 4
  %call.i44 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 1542) #7
  br label %rtl_write_byte.exit46

rtl_write_byte.exit46:                            ; preds = %if.then.i45, %rtl_write_byte.exit38.rtl_write_byte.exit46_crit_edge
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %71 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i48 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 7
  %73 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %74(ptr noundef %70, i32 noundef 176, i32 noundef %72) #7
  %cfg.i.i49 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 32
  %75 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i.i50 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i.i50, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i51 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i51, label %rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge, label %if.then.i.i54

rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge: ; preds = %rtl_write_byte.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i55

if.then.i.i54:                                    ; preds = %rtl_write_byte.exit46
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i52 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %79 = ptrtoint ptr %read32_sync.i.i52 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read32_sync.i.i52, align 4
  %call.i.i53 = tail call i32 %80(ptr noundef %70, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i55

rtl_write_dword.exit.i55:                         ; preds = %if.then.i.i54, %rtl_write_byte.exit46.rtl_write_dword.exit.i55_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx4.i, align 4
  %83 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %84(ptr noundef %70, i32 noundef 184, i32 noundef %82) #7
  %85 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i15.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i15.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i16.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i16.i, label %rtl_write_dword.exit.i55.rtl_write_dword.exit20.i_crit_edge, label %if.then.i19.i

rtl_write_dword.exit.i55.rtl_write_dword.exit20.i_crit_edge: ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit20.i

if.then.i19.i:                                    ; preds = %rtl_write_dword.exit.i55
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %89 = ptrtoint ptr %read32_sync.i17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read32_sync.i17.i, align 4
  %call.i18.i = tail call i32 %90(ptr noundef %70, i32 noundef 184) #7
  br label %rtl_write_dword.exit20.i

rtl_write_dword.exit20.i:                         ; preds = %if.then.i19.i, %rtl_write_dword.exit.i55.rtl_write_dword.exit20.i_crit_edge
  %irq_enabled.i56 = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %irq_enabled.i56 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %irq_enabled.i56, align 4
  %sys_irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 1, i32 14, i32 35, i32 23, i32 1
  %92 = ptrtoint ptr %sys_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sys_irq_mask.i, align 4
  %94 = ptrtoint ptr %write32_async.i.i48 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write32_async.i.i48, align 4
  tail call void %95(ptr noundef %70, i32 noundef 88, i32 noundef %93) #7
  %96 = ptrtoint ptr %cfg.i.i49 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i.i49, align 8
  %write_readback.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i23.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i23.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i24.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i24.i, label %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge, label %if.then.i27.i

rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_enable_interrupt.exit

if.then.i27.i:                                    ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 13, i32 11
  %100 = ptrtoint ptr %read32_sync.i25.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read32_sync.i25.i, align 4
  %call.i26.i = tail call i32 %101(ptr noundef %70, i32 noundef 88) #7
  br label %rtl8723be_enable_interrupt.exit

rtl8723be_enable_interrupt.exit:                  ; preds = %if.then.i27.i, %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_beacon_interval(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1024, i32 noundef 3, ptr noundef nonnull @.str.15, i32 noundef %conv2) #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %7(ptr noundef %5, i32 noundef 176, i32 noundef 0) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %entry.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

entry.rtl_write_dword.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %13(ptr noundef %5, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %entry.rtl_write_dword.exit.i_crit_edge
  %14 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %15(ptr noundef %5, i32 noundef 184, i32 noundef 0) #7
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i7.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i7.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i8.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %21(ptr noundef %5, i32 noundef 184) #7
  br label %rtl8723be_disable_interrupt.exit

rtl8723be_disable_interrupt.exit:                 ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %irq_enabled.i, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %23 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write16_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 1364, i16 noundef zeroext %conv) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge, label %if.then.i

rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %29 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %30(ptr noundef %1, i32 noundef 1364) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %rtl8723be_disable_interrupt.exit.rtl_write_word.exit_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i9 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 7
  %35 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %36(ptr noundef %32, i32 noundef 176, i32 noundef %34) #7
  %cfg.i.i10 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i.i11 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i.i11, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i12 = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i12, label %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge, label %if.then.i.i15

rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i16

if.then.i.i15:                                    ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i13 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %read32_sync.i.i13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32_sync.i.i13, align 4
  %call.i.i14 = tail call i32 %42(ptr noundef %32, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i16

rtl_write_dword.exit.i16:                         ; preds = %if.then.i.i15, %rtl_write_word.exit.rtl_write_dword.exit.i16_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx4.i, align 4
  %45 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %46(ptr noundef %32, i32 noundef 184, i32 noundef %44) #7
  %47 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i15.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i15.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i16.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i16.i, label %rtl_write_dword.exit.i16.rtl_write_dword.exit20.i_crit_edge, label %if.then.i19.i

rtl_write_dword.exit.i16.rtl_write_dword.exit20.i_crit_edge: ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit20.i

if.then.i19.i:                                    ; preds = %rtl_write_dword.exit.i16
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %51 = ptrtoint ptr %read32_sync.i17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32_sync.i17.i, align 4
  %call.i18.i = tail call i32 %52(ptr noundef %32, i32 noundef 184) #7
  br label %rtl_write_dword.exit20.i

rtl_write_dword.exit20.i:                         ; preds = %if.then.i19.i, %rtl_write_dword.exit.i16.rtl_write_dword.exit20.i_crit_edge
  %irq_enabled.i17 = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %53 = ptrtoint ptr %irq_enabled.i17 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %irq_enabled.i17, align 4
  %sys_irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 1, i32 14, i32 35, i32 23, i32 1
  %54 = ptrtoint ptr %sys_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sys_irq_mask.i, align 4
  %56 = ptrtoint ptr %write32_async.i.i9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32_async.i.i9, align 4
  tail call void %57(ptr noundef %32, i32 noundef 88, i32 noundef %55) #7
  %58 = ptrtoint ptr %cfg.i.i10 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i.i10, align 8
  %write_readback.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i23.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i23.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i24.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i24.i, label %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge, label %if.then.i27.i

rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_enable_interrupt.exit

if.then.i27.i:                                    ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 13, i32 11
  %62 = ptrtoint ptr %read32_sync.i25.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32_sync.i25.i, align 4
  %call.i26.i = tail call i32 %63(ptr noundef %32, i32 noundef 88) #7
  br label %rtl8723be_enable_interrupt.exit

rtl8723be_enable_interrupt.exit:                  ; preds = %if.then.i27.i, %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %add_msr, i32 noundef %rm_msr) #7
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
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !133
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
  %21 = load i8, ptr %write_readback.i7.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i8.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i8.i, label %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge, label %if.then.i11.i

rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_disable_interrupt.exit

if.then.i11.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i9.i, align 4
  %call.i10.i = tail call i32 %23(ptr noundef %7, i32 noundef 184) #7
  br label %rtl8723be_disable_interrupt.exit

rtl8723be_disable_interrupt.exit:                 ; preds = %if.then.i11.i, %rtl_write_dword.exit.i.rtl8723be_disable_interrupt.exit_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %24 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %irq_enabled.i, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i17 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 7
  %29 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %30(ptr noundef %26, i32 noundef 176, i32 noundef %28) #7
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i.i19, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i20 = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i20, label %rtl8723be_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge, label %if.then.i.i23

rtl8723be_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge: ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i24

if.then.i.i23:                                    ; preds = %rtl8723be_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %35 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %36(ptr noundef %26, i32 noundef 176) #7
  br label %rtl_write_dword.exit.i24

rtl_write_dword.exit.i24:                         ; preds = %if.then.i.i23, %rtl8723be_disable_interrupt.exit.rtl_write_dword.exit.i24_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4.i, align 4
  %39 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %40(ptr noundef %26, i32 noundef 184, i32 noundef %38) #7
  %41 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i15.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i15.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i16.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i16.i, label %rtl_write_dword.exit.i24.rtl_write_dword.exit20.i_crit_edge, label %if.then.i19.i

rtl_write_dword.exit.i24.rtl_write_dword.exit20.i_crit_edge: ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit20.i

if.then.i19.i:                                    ; preds = %rtl_write_dword.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i17.i, align 4
  %call.i18.i = tail call i32 %46(ptr noundef %26, i32 noundef 184) #7
  br label %rtl_write_dword.exit20.i

rtl_write_dword.exit20.i:                         ; preds = %if.then.i19.i, %rtl_write_dword.exit.i24.rtl_write_dword.exit20.i_crit_edge
  %irq_enabled.i25 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %47 = ptrtoint ptr %irq_enabled.i25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %irq_enabled.i25, align 4
  %sys_irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 1, i32 14, i32 35, i32 23, i32 1
  %48 = ptrtoint ptr %sys_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sys_irq_mask.i, align 4
  %50 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %51(ptr noundef %26, i32 noundef 88, i32 noundef %49) #7
  %52 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_readback.i23.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %write_readback.i23.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i24.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i24.i, label %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge, label %if.then.i27.i

rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_enable_interrupt.exit

if.then.i27.i:                                    ; preds = %rtl_write_dword.exit20.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 13, i32 11
  %56 = ptrtoint ptr %read32_sync.i25.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32_sync.i25.i, align 4
  %call.i26.i = tail call i32 %57(ptr noundef %26, i32 noundef 88) #7
  br label %rtl8723be_enable_interrupt.exit

rtl8723be_enable_interrupt.exit:                  ; preds = %if.then.i27.i, %rtl_write_dword.exit20.i.rtl8723be_enable_interrupt.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %value.i.i = alloca i8, align 1
  %pw2g.i.i = alloca %struct.txpower_info_2g, align 1
  %pw5g.i.i = alloca %struct.txpower_info_5g, align 1
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
  %call.i.i = tail call i32 %3(ptr noundef %1, i32 noundef 252) #7
  %and.i = and i32 %call.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 6
  br i1 %cmp.not.i, label %entry._rtl8723be_read_chip_version.exit_crit_edge, label %if.then.i

entry._rtl8723be_read_chip_version.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_read_chip_version.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.45) #7
  br label %_rtl8723be_read_chip_version.exit

_rtl8723be_read_chip_version.exit:                ; preds = %if.then.i, %entry._rtl8723be_read_chip_version.exit_crit_edge
  %version.0.i = phi i32 [ 255, %if.then.i ], [ 14, %entry._rtl8723be_read_chip_version.exit_crit_edge ]
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %4 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %rf_type.i, align 1
  %5 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i23.i = tail call i32 %6(ptr noundef %1, i32 noundef 240) #7
  %and2.i = and i32 %call.i23.i, 61440
  %or3.i = or i32 %and2.i, %version.0.i
  %7 = and i32 %call.i23.i, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %7)
  %cmp5.i = icmp eq i32 %7, 262144
  %or7.i = or i32 %or3.i, 256
  %spec.select.i = select i1 %cmp5.i, i32 %or7.i, i32 %or3.i
  %8 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp10.i = icmp eq i8 %9, 2
  %cond.i = select i1 %cmp10.i, ptr @.str.47, ptr @.str.48
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond.i) #7
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %10 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i, ptr %version, align 4
  %11 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %_rtl8723be_read_chip_version.exit.if.end_crit_edge, label %if.else

_rtl8723be_read_chip_version.exit.if.end_crit_edge: ; preds = %_rtl8723be_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %_rtl8723be_read_chip_version.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %_rtl8723be_read_chip_version.exit.if.end_crit_edge
  %14 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 15
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %14, align 2
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %17) #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 10) #7
  %conv14 = zext i8 %call.i to i32
  %and = and i32 %conv14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.19..str.18 = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  %20 = lshr exact i32 %and, 3
  %21 = trunc i32 %20 to i16
  %22 = xor i16 %21, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.19..str.18) #7
  %23 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %22, ptr %23, align 2
  %and20 = and i32 %conv14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end, label %if.then22

if.then22:                                        ; preds = %if.end
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.20) #7
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %25 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %autoload_failflag, align 1
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params.i) #7
  %28 = call ptr @memcpy(ptr %params.i, ptr @__const._rtl8723be_read_adapter_info.params, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 512) #11
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.then22._rtl8723be_read_adapter_info.exit_crit_edge, label %if.end6.i

if.then22._rtl8723be_read_adapter_info.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_read_adapter_info.exit

if.end6.i:                                        ; preds = %if.then22
  %call7.i = call i32 @rtl_get_hwinfo(ptr noundef %hw, ptr noundef %27, i32 noundef 512, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %params.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.exit.i_crit_edge

if.end6.i.exit.i_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end10.i:                                       ; preds = %if.end6.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i, i32 185
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %cmp.i = icmp eq i8 %31, -1
  %spec.select.i45 = select i1 %cmp.i, i8 32, i8 %31
  %32 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select.i45, ptr %crystalcap.i, align 2
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 7
  %33 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.i = icmp ne i8 %34, 0
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %pw2g.i.i) #7
  %37 = call ptr @memset(ptr %pw2g.i.i, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pw5g.i.i) #7
  %38 = call ptr @memset(ptr %pw5g.i.i, i32 255, i32 136)
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 17
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %40 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef 17, i32 noundef %conv.i.i.i) #7
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp.i.i.i = icmp eq i8 %42, -1
  %spec.select.i.i.i = or i1 %tobool16.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.inc39.3.3.i.i.i, label %if.end10.i.if.then102.i.i.i_crit_edge

if.end10.i.if.then102.i.i.i_crit_edge:            ; preds = %if.end10.i
  br label %if.then102.i.i.i

for.inc39.3.3.i.i.i:                              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.54) #7
  %uglygep878.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 24
  %43 = call ptr @memset(ptr %pw2g.i.i, i32 45, i32 6)
  %44 = call ptr @memset(ptr %uglygep878.i.i.i, i32 45, i32 6)
  %arrayidx26.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 0
  %arrayidx24.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 0
  %45 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %arrayidx24.i.i.i, align 1
  %46 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %arrayidx26.i.i.i, align 1
  %arrayidx30.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx30.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -2, ptr %arrayidx30.1.i.i.i, align 1
  %arrayidx32.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx32.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -2, ptr %arrayidx32.1.i.i.i, align 1
  %arrayidx34.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx34.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -2, ptr %arrayidx34.1.i.i.i, align 1
  %arrayidx37.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx37.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -2, ptr %arrayidx37.1.i.i.i, align 1
  %arrayidx30.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx30.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -2, ptr %arrayidx30.2.i.i.i, align 1
  %arrayidx32.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx32.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -2, ptr %arrayidx32.2.i.i.i, align 1
  %arrayidx34.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx34.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -2, ptr %arrayidx34.2.i.i.i, align 1
  %arrayidx37.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 0, i32 2
  %54 = ptrtoint ptr %arrayidx37.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -2, ptr %arrayidx37.2.i.i.i, align 1
  %arrayidx30.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 0, i32 3
  %55 = ptrtoint ptr %arrayidx30.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -2, ptr %arrayidx30.3.i.i.i, align 1
  %arrayidx32.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx32.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -2, ptr %arrayidx32.3.i.i.i, align 1
  %arrayidx34.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx34.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -2, ptr %arrayidx34.3.i.i.i, align 1
  %arrayidx37.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 0, i32 3
  %58 = ptrtoint ptr %arrayidx37.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -2, ptr %arrayidx37.3.i.i.i, align 1
  %uglygep878.1.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 30
  %uglygep.1.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 6
  %59 = call ptr @memset(ptr %uglygep.1.i.i.i, i32 45, i32 6)
  %60 = call ptr @memset(ptr %uglygep878.1.i.i.i, i32 45, i32 6)
  %arrayidx26.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 1
  %arrayidx24.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %arrayidx24.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx24.1.i.i.i, align 1
  %62 = ptrtoint ptr %arrayidx26.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %arrayidx26.1.i.i.i, align 1
  %arrayidx30.1.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 1, i32 1
  %63 = ptrtoint ptr %arrayidx30.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -2, ptr %arrayidx30.1.1.i.i.i, align 1
  %arrayidx32.1.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx32.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -2, ptr %arrayidx32.1.1.i.i.i, align 1
  %arrayidx34.1.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 1, i32 1
  %65 = ptrtoint ptr %arrayidx34.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -2, ptr %arrayidx34.1.1.i.i.i, align 1
  %arrayidx37.1.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx37.1.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -2, ptr %arrayidx37.1.1.i.i.i, align 1
  %arrayidx30.2.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 1, i32 2
  %67 = ptrtoint ptr %arrayidx30.2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -2, ptr %arrayidx30.2.1.i.i.i, align 1
  %arrayidx32.2.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx32.2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -2, ptr %arrayidx32.2.1.i.i.i, align 1
  %arrayidx34.2.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 1, i32 2
  %69 = ptrtoint ptr %arrayidx34.2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -2, ptr %arrayidx34.2.1.i.i.i, align 1
  %arrayidx37.2.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 1, i32 2
  %70 = ptrtoint ptr %arrayidx37.2.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -2, ptr %arrayidx37.2.1.i.i.i, align 1
  %arrayidx30.3.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx30.3.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -2, ptr %arrayidx30.3.1.i.i.i, align 1
  %arrayidx32.3.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 1, i32 3
  %72 = ptrtoint ptr %arrayidx32.3.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -2, ptr %arrayidx32.3.1.i.i.i, align 1
  %arrayidx34.3.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 1, i32 3
  %73 = ptrtoint ptr %arrayidx34.3.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -2, ptr %arrayidx34.3.1.i.i.i, align 1
  %arrayidx37.3.1.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx37.3.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -2, ptr %arrayidx37.3.1.i.i.i, align 1
  %uglygep878.2.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 36
  %uglygep.2.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 12
  %75 = call ptr @memset(ptr %uglygep.2.i.i.i, i32 45, i32 6)
  %76 = call ptr @memset(ptr %uglygep878.2.i.i.i, i32 45, i32 6)
  %arrayidx26.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 2
  %arrayidx24.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 2
  %77 = ptrtoint ptr %arrayidx24.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %arrayidx24.2.i.i.i, align 1
  %78 = ptrtoint ptr %arrayidx26.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 4, ptr %arrayidx26.2.i.i.i, align 1
  %arrayidx30.1.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx30.1.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -2, ptr %arrayidx30.1.2.i.i.i, align 1
  %arrayidx32.1.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 2, i32 1
  %80 = ptrtoint ptr %arrayidx32.1.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -2, ptr %arrayidx32.1.2.i.i.i, align 1
  %arrayidx34.1.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 2, i32 1
  %81 = ptrtoint ptr %arrayidx34.1.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -2, ptr %arrayidx34.1.2.i.i.i, align 1
  %arrayidx37.1.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 2, i32 1
  %82 = ptrtoint ptr %arrayidx37.1.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -2, ptr %arrayidx37.1.2.i.i.i, align 1
  %arrayidx30.2.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 2, i32 2
  %83 = ptrtoint ptr %arrayidx30.2.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -2, ptr %arrayidx30.2.2.i.i.i, align 1
  %arrayidx32.2.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 2, i32 2
  %84 = ptrtoint ptr %arrayidx32.2.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -2, ptr %arrayidx32.2.2.i.i.i, align 1
  %arrayidx34.2.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 2, i32 2
  %85 = ptrtoint ptr %arrayidx34.2.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -2, ptr %arrayidx34.2.2.i.i.i, align 1
  %arrayidx37.2.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 2, i32 2
  %86 = ptrtoint ptr %arrayidx37.2.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -2, ptr %arrayidx37.2.2.i.i.i, align 1
  %arrayidx30.3.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 2, i32 3
  %87 = ptrtoint ptr %arrayidx30.3.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -2, ptr %arrayidx30.3.2.i.i.i, align 1
  %arrayidx32.3.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 2, i32 3
  %88 = ptrtoint ptr %arrayidx32.3.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -2, ptr %arrayidx32.3.2.i.i.i, align 1
  %arrayidx34.3.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 2, i32 3
  %89 = ptrtoint ptr %arrayidx34.3.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -2, ptr %arrayidx34.3.2.i.i.i, align 1
  %arrayidx37.3.2.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 2, i32 3
  %90 = ptrtoint ptr %arrayidx37.3.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -2, ptr %arrayidx37.3.2.i.i.i, align 1
  %uglygep878.3.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 42
  %uglygep.3.i.i.i = getelementptr inbounds i8, ptr %pw2g.i.i, i32 18
  %91 = call ptr @memset(ptr %uglygep.3.i.i.i, i32 45, i32 6)
  %92 = call ptr @memset(ptr %uglygep878.3.i.i.i, i32 45, i32 6)
  %arrayidx26.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 3
  %arrayidx24.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 3
  %93 = ptrtoint ptr %arrayidx24.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 2, ptr %arrayidx24.3.i.i.i, align 1
  %94 = ptrtoint ptr %arrayidx26.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 4, ptr %arrayidx26.3.i.i.i, align 1
  %arrayidx30.1.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 3, i32 1
  %95 = ptrtoint ptr %arrayidx30.1.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -2, ptr %arrayidx30.1.3.i.i.i, align 1
  %arrayidx32.1.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 3, i32 1
  %96 = ptrtoint ptr %arrayidx32.1.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -2, ptr %arrayidx32.1.3.i.i.i, align 1
  %arrayidx34.1.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 3, i32 1
  %97 = ptrtoint ptr %arrayidx34.1.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -2, ptr %arrayidx34.1.3.i.i.i, align 1
  %arrayidx37.1.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 3, i32 1
  %98 = ptrtoint ptr %arrayidx37.1.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -2, ptr %arrayidx37.1.3.i.i.i, align 1
  %arrayidx30.2.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 3, i32 2
  %99 = ptrtoint ptr %arrayidx30.2.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -2, ptr %arrayidx30.2.3.i.i.i, align 1
  %arrayidx32.2.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 3, i32 2
  %100 = ptrtoint ptr %arrayidx32.2.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -2, ptr %arrayidx32.2.3.i.i.i, align 1
  %arrayidx34.2.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 3, i32 2
  %101 = ptrtoint ptr %arrayidx34.2.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -2, ptr %arrayidx34.2.3.i.i.i, align 1
  %arrayidx37.2.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 3, i32 2
  %102 = ptrtoint ptr %arrayidx37.2.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -2, ptr %arrayidx37.2.3.i.i.i, align 1
  %arrayidx30.3.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 3, i32 3
  %103 = ptrtoint ptr %arrayidx30.3.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -2, ptr %arrayidx30.3.3.i.i.i, align 1
  %arrayidx32.3.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 3, i32 3
  %104 = ptrtoint ptr %arrayidx32.3.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 -2, ptr %arrayidx32.3.3.i.i.i, align 1
  %arrayidx34.3.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 3, i32 3
  %105 = ptrtoint ptr %arrayidx34.3.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -2, ptr %arrayidx34.3.3.i.i.i, align 1
  %arrayidx37.3.3.i.i.i = getelementptr inbounds %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 3, i32 3
  %106 = ptrtoint ptr %arrayidx37.3.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -2, ptr %arrayidx37.3.3.i.i.i, align 1
  br label %for.cond3.preheader.i.i.preheader

if.then102.i.i.i:                                 ; preds = %for.inc546.2.i.i.i.if.then102.i.i.i_crit_edge, %if.end10.i.if.then102.i.i.i_crit_edge
  %addr.0868.i.i.i = phi i32 [ %inc515.i.i.i, %for.inc546.2.i.i.i.if.then102.i.i.i_crit_edge ], [ 16, %if.end10.i.if.then102.i.i.i_crit_edge ]
  %path.1865.i.i.i = phi i32 [ %inc550.i.i.i, %for.inc546.2.i.i.i.if.then102.i.i.i_crit_edge ], [ 0, %if.end10.i.if.then102.i.i.i_crit_edge ]
  %inc54.i.i.i = or i32 %addr.0868.i.i.i, 1
  %arrayidx55.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.0868.i.i.i
  %107 = ptrtoint ptr %arrayidx55.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx55.i.i.i, align 2
  %arrayidx58.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %cmp63.i.i.i = icmp eq i8 %108, -1
  %spec.select843.i.i.i = select i1 %cmp63.i.i.i, i8 45, i8 %108
  %109 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %spec.select843.i.i.i, ptr %arrayidx58.i.i.i, align 1
  %inc54.1.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 2
  %arrayidx55.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.i.i.i
  %110 = ptrtoint ptr %arrayidx55.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx55.1.i.i.i, align 1
  %arrayidx58.1.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %111)
  %cmp63.1.i.i.i = icmp eq i8 %111, -1
  %spec.select843.1.i.i.i = select i1 %cmp63.1.i.i.i, i8 45, i8 %111
  %112 = ptrtoint ptr %arrayidx58.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %spec.select843.1.i.i.i, ptr %arrayidx58.1.i.i.i, align 1
  %inc54.2.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 3
  %arrayidx55.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.1.i.i.i
  %113 = ptrtoint ptr %arrayidx55.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx55.2.i.i.i, align 2
  %arrayidx58.2.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %cmp63.2.i.i.i = icmp eq i8 %114, -1
  %spec.select843.2.i.i.i = select i1 %cmp63.2.i.i.i, i8 45, i8 %114
  %115 = ptrtoint ptr %arrayidx58.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %spec.select843.2.i.i.i, ptr %arrayidx58.2.i.i.i, align 1
  %inc54.3.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 4
  %arrayidx55.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.2.i.i.i
  %116 = ptrtoint ptr %arrayidx55.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx55.3.i.i.i, align 1
  %arrayidx58.3.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %117)
  %cmp63.3.i.i.i = icmp eq i8 %117, -1
  %spec.select843.3.i.i.i = select i1 %cmp63.3.i.i.i, i8 45, i8 %117
  %118 = ptrtoint ptr %arrayidx58.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %spec.select843.3.i.i.i, ptr %arrayidx58.3.i.i.i, align 1
  %inc54.4.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 5
  %arrayidx55.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.3.i.i.i
  %119 = ptrtoint ptr %arrayidx55.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx55.4.i.i.i, align 2
  %arrayidx58.4.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %120)
  %cmp63.4.i.i.i = icmp eq i8 %120, -1
  %spec.select843.4.i.i.i = select i1 %cmp63.4.i.i.i, i8 45, i8 %120
  %121 = ptrtoint ptr %arrayidx58.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %spec.select843.4.i.i.i, ptr %arrayidx58.4.i.i.i, align 1
  %inc54.5.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 6
  %arrayidx55.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.4.i.i.i
  %122 = ptrtoint ptr %arrayidx55.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx55.5.i.i.i, align 1
  %arrayidx58.5.i.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %path.1865.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %123)
  %cmp63.5.i.i.i = icmp eq i8 %123, -1
  %spec.select843.5.i.i.i = select i1 %cmp63.5.i.i.i, i8 45, i8 %123
  %124 = ptrtoint ptr %arrayidx58.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select843.5.i.i.i, ptr %arrayidx58.5.i.i.i, align 1
  %inc77.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 7
  %arrayidx78.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc54.5.i.i.i
  %125 = ptrtoint ptr %arrayidx78.i.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx78.i.i.i, align 2
  %arrayidx81.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %126)
  %cmp86.i.i.i = icmp eq i8 %126, -1
  %spec.select844.i.i.i = select i1 %cmp86.i.i.i, i8 45, i8 %126
  %127 = ptrtoint ptr %arrayidx81.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %spec.select844.i.i.i, ptr %arrayidx81.i.i.i, align 1
  %inc77.1.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 8
  %arrayidx78.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc77.i.i.i
  %128 = ptrtoint ptr %arrayidx78.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx78.1.i.i.i, align 1
  %arrayidx81.1.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %cmp86.1.i.i.i = icmp eq i8 %129, -1
  %spec.select844.1.i.i.i = select i1 %cmp86.1.i.i.i, i8 45, i8 %129
  %130 = ptrtoint ptr %arrayidx81.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %spec.select844.1.i.i.i, ptr %arrayidx81.1.i.i.i, align 1
  %inc77.2.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 9
  %arrayidx78.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc77.1.i.i.i
  %131 = ptrtoint ptr %arrayidx78.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx78.2.i.i.i, align 2
  %arrayidx81.2.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %132)
  %cmp86.2.i.i.i = icmp eq i8 %132, -1
  %spec.select844.2.i.i.i = select i1 %cmp86.2.i.i.i, i8 45, i8 %132
  %133 = ptrtoint ptr %arrayidx81.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %spec.select844.2.i.i.i, ptr %arrayidx81.2.i.i.i, align 1
  %inc77.3.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 10
  %arrayidx78.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc77.2.i.i.i
  %134 = ptrtoint ptr %arrayidx78.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx78.3.i.i.i, align 1
  %arrayidx81.3.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %135)
  %cmp86.3.i.i.i = icmp eq i8 %135, -1
  %spec.select844.3.i.i.i = select i1 %cmp86.3.i.i.i, i8 45, i8 %135
  %136 = ptrtoint ptr %arrayidx81.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %spec.select844.3.i.i.i, ptr %arrayidx81.3.i.i.i, align 1
  %arrayidx78.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc77.3.i.i.i
  %137 = ptrtoint ptr %arrayidx78.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx78.4.i.i.i, align 2
  %arrayidx81.4.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %cmp86.4.i.i.i = icmp eq i8 %138, -1
  %spec.select844.4.i.i.i = select i1 %cmp86.4.i.i.i, i8 45, i8 %138
  %139 = ptrtoint ptr %arrayidx81.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %spec.select844.4.i.i.i, ptr %arrayidx81.4.i.i.i, align 1
  %arrayidx119.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i
  %arrayidx149.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i
  %arrayidx167.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i
  %inc77.4.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 11
  %arrayidx104.i.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i
  %140 = ptrtoint ptr %arrayidx104.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx104.i.i.i, align 1
  %arrayidx106.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc77.4.i.i.i
  %141 = ptrtoint ptr %arrayidx106.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx106.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %142)
  %cmp108.i.i.i = icmp eq i8 %142, -1
  br i1 %cmp108.i.i.i, label %if.end134.i.thread175.i.i, label %if.else114.i.i.i

if.end134.i.thread175.i.i:                        ; preds = %if.then102.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = ptrtoint ptr %arrayidx119.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 2, ptr %arrayidx119.i.i.i, align 1
  br label %if.end165.sink.split.i.i.i

if.else114.i.i.i:                                 ; preds = %if.then102.i.i.i
  %144 = lshr i8 %142, 4
  %or.i.i.i = or i8 %144, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool126.not.i213.i.i = icmp slt i8 %142, 0
  %spec.select.i.i = select i1 %tobool126.not.i213.i.i, i8 %or.i.i.i, i8 %144
  %145 = ptrtoint ptr %arrayidx119.i.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %spec.select.i.i, ptr %arrayidx119.i.i.i, align 1
  %146 = and i8 %142, 15
  %147 = ptrtoint ptr %arrayidx149.i.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx149.i.i.i, align 1
  %148 = and i8 %142, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool156.not.i.i.i = icmp eq i8 %148, 0
  br i1 %tobool156.not.i.i.i, label %if.else114.i.i.i.if.else170.i.1.i.i_crit_edge, label %if.then157.i.i.i

if.else114.i.i.i.if.else170.i.1.i.i_crit_edge:    ; preds = %if.else114.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else170.i.1.i.i

if.then157.i.i.i:                                 ; preds = %if.else114.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or162.i.i.i = or i8 %142, -16
  br label %if.end165.sink.split.i.i.i

if.end165.sink.split.i.i.i:                       ; preds = %if.then157.i.i.i, %if.end134.i.thread175.i.i
  %or162.sink.i.i.i = phi i8 [ %or162.i.i.i, %if.then157.i.i.i ], [ 4, %if.end134.i.thread175.i.i ]
  %149 = ptrtoint ptr %arrayidx149.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %or162.sink.i.i.i, ptr %arrayidx149.i.i.i, align 1
  br label %if.else170.i.1.i.i

if.else170.i.1.i.i:                               ; preds = %if.end165.sink.split.i.i.i, %if.else114.i.i.i.if.else170.i.1.i.i_crit_edge
  %150 = ptrtoint ptr %arrayidx167.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx167.i.i.i, align 1
  %.pre.i.i = add nuw nsw i32 %addr.0868.i.i.i, 12
  %arrayidx171.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %.pre.i.i
  %151 = ptrtoint ptr %arrayidx171.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx171.i.1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %152)
  %cmp173.i.1.i.i = icmp eq i8 %152, -1
  br i1 %cmp173.i.1.i.i, label %if.then207.i.1.i.i, label %if.else179.i.1.i.i

if.else179.i.1.i.i:                               ; preds = %if.else170.i.1.i.i
  %153 = lshr i8 %152, 4
  %arrayidx187.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 1
  %or199.i.1.i.i = or i8 %153, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool193.not.i207.1.i.i = icmp slt i8 %152, 0
  %spec.select196.1.i.i = select i1 %tobool193.not.i207.1.i.i, i8 %or199.i.1.i.i, i8 %153
  %154 = ptrtoint ptr %arrayidx187.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %spec.select196.1.i.i, ptr %arrayidx187.i.1.i.i, align 1
  %155 = and i8 %152, 15
  %arrayidx218.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 1
  %156 = ptrtoint ptr %arrayidx218.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx218.i.1.i.i, align 1
  %157 = and i8 %152, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool224.not.i.1.i.i = icmp eq i8 %157, 0
  br i1 %tobool224.not.i.1.i.i, label %if.else179.i.1.i.i.if.end233.i.1.i.i_crit_edge, label %if.then225.i.1.i.i

if.else179.i.1.i.i.if.end233.i.1.i.i_crit_edge:   ; preds = %if.else179.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i.1.i.i

if.then225.i.1.i.i:                               ; preds = %if.else179.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or230.i.1.i.i = or i8 %152, -16
  %158 = ptrtoint ptr %arrayidx218.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %or230.i.1.i.i, ptr %arrayidx218.i.1.i.i, align 1
  br label %if.end233.i.1.i.i

if.then207.i.1.i.i:                               ; preds = %if.else170.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 1
  %159 = ptrtoint ptr %arrayidx178.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -2, ptr %arrayidx178.i.1.i.i, align 1
  %arrayidx210.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 1
  %160 = ptrtoint ptr %arrayidx210.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -2, ptr %arrayidx210.i.1.i.i, align 1
  br label %if.end233.i.1.i.i

if.end233.i.1.i.i:                                ; preds = %if.then207.i.1.i.i, %if.then225.i.1.i.i, %if.else179.i.1.i.i.if.end233.i.1.i.i_crit_edge
  %inc234.i.1.i.i = add nuw nsw i32 %addr.0868.i.i.i, 13
  %arrayidx235.i.1.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc234.i.1.i.i
  %161 = ptrtoint ptr %arrayidx235.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx235.i.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %162)
  %cmp237.i.1.i.i = icmp eq i8 %162, -1
  br i1 %cmp237.i.1.i.i, label %if.then271.i.1.i.i, label %if.else243.i.1.i.i

if.else243.i.1.i.i:                               ; preds = %if.end233.i.1.i.i
  %163 = lshr i8 %162, 4
  %arrayidx251.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 1
  %or263.i.1.i.i = or i8 %163, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool257.not.i208.1.i.i = icmp slt i8 %162, 0
  %spec.select197.1.i.i = select i1 %tobool257.not.i208.1.i.i, i8 %or263.i.1.i.i, i8 %163
  %164 = ptrtoint ptr %arrayidx251.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %spec.select197.1.i.i, ptr %arrayidx251.i.1.i.i, align 1
  %165 = and i8 %162, 15
  %arrayidx282.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 1
  %166 = ptrtoint ptr %arrayidx282.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %165, ptr %arrayidx282.i.1.i.i, align 1
  %167 = and i8 %162, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool288.not.i.1.i.i = icmp eq i8 %167, 0
  br i1 %tobool288.not.i.1.i.i, label %if.else243.i.1.i.i.if.else170.i.2.i.i_crit_edge, label %if.then289.i.1.i.i

if.else243.i.1.i.i.if.else170.i.2.i.i_crit_edge:  ; preds = %if.else243.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else170.i.2.i.i

if.then289.i.1.i.i:                               ; preds = %if.else243.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or294.i.1.i.i = or i8 %162, -16
  %168 = ptrtoint ptr %arrayidx282.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %or294.i.1.i.i, ptr %arrayidx282.i.1.i.i, align 1
  br label %if.else170.i.2.i.i

if.then271.i.1.i.i:                               ; preds = %if.end233.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx242.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 1
  %169 = ptrtoint ptr %arrayidx242.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -2, ptr %arrayidx242.i.1.i.i, align 1
  %arrayidx274.i.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 1
  %170 = ptrtoint ptr %arrayidx274.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -2, ptr %arrayidx274.i.1.i.i, align 1
  br label %if.else170.i.2.i.i

if.else170.i.2.i.i:                               ; preds = %if.then271.i.1.i.i, %if.then289.i.1.i.i, %if.else243.i.1.i.i.if.else170.i.2.i.i_crit_edge
  %inc169.i.1.i.i = add nuw nsw i32 %addr.0868.i.i.i, 14
  %arrayidx171.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc169.i.1.i.i
  %171 = ptrtoint ptr %arrayidx171.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx171.i.2.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %172)
  %cmp173.i.2.i.i = icmp eq i8 %172, -1
  br i1 %cmp173.i.2.i.i, label %if.then207.i.2.i.i, label %if.else179.i.2.i.i

if.else179.i.2.i.i:                               ; preds = %if.else170.i.2.i.i
  %173 = lshr i8 %172, 4
  %arrayidx187.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 2
  %or199.i.2.i.i = or i8 %173, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool193.not.i207.2.i.i = icmp slt i8 %172, 0
  %spec.select196.2.i.i = select i1 %tobool193.not.i207.2.i.i, i8 %or199.i.2.i.i, i8 %173
  %174 = ptrtoint ptr %arrayidx187.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %spec.select196.2.i.i, ptr %arrayidx187.i.2.i.i, align 1
  %175 = and i8 %172, 15
  %arrayidx218.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 2
  %176 = ptrtoint ptr %arrayidx218.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %arrayidx218.i.2.i.i, align 1
  %177 = and i8 %172, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool224.not.i.2.i.i = icmp eq i8 %177, 0
  br i1 %tobool224.not.i.2.i.i, label %if.else179.i.2.i.i.if.end233.i.2.i.i_crit_edge, label %if.then225.i.2.i.i

if.else179.i.2.i.i.if.end233.i.2.i.i_crit_edge:   ; preds = %if.else179.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i.2.i.i

if.then225.i.2.i.i:                               ; preds = %if.else179.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or230.i.2.i.i = or i8 %172, -16
  %178 = ptrtoint ptr %arrayidx218.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %or230.i.2.i.i, ptr %arrayidx218.i.2.i.i, align 1
  br label %if.end233.i.2.i.i

if.then207.i.2.i.i:                               ; preds = %if.else170.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 2
  %179 = ptrtoint ptr %arrayidx178.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 -2, ptr %arrayidx178.i.2.i.i, align 1
  %arrayidx210.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 2
  %180 = ptrtoint ptr %arrayidx210.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -2, ptr %arrayidx210.i.2.i.i, align 1
  br label %if.end233.i.2.i.i

if.end233.i.2.i.i:                                ; preds = %if.then207.i.2.i.i, %if.then225.i.2.i.i, %if.else179.i.2.i.i.if.end233.i.2.i.i_crit_edge
  %inc234.i.2.i.i = add nuw nsw i32 %addr.0868.i.i.i, 15
  %arrayidx235.i.2.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc234.i.2.i.i
  %181 = ptrtoint ptr %arrayidx235.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx235.i.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %182)
  %cmp237.i.2.i.i = icmp eq i8 %182, -1
  br i1 %cmp237.i.2.i.i, label %if.then271.i.2.i.i, label %if.else243.i.2.i.i

if.else243.i.2.i.i:                               ; preds = %if.end233.i.2.i.i
  %183 = lshr i8 %182, 4
  %arrayidx251.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 2
  %or263.i.2.i.i = or i8 %183, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool257.not.i208.2.i.i = icmp slt i8 %182, 0
  %spec.select197.2.i.i = select i1 %tobool257.not.i208.2.i.i, i8 %or263.i.2.i.i, i8 %183
  %184 = ptrtoint ptr %arrayidx251.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %spec.select197.2.i.i, ptr %arrayidx251.i.2.i.i, align 1
  %185 = and i8 %182, 15
  %arrayidx282.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 2
  %186 = ptrtoint ptr %arrayidx282.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx282.i.2.i.i, align 1
  %187 = and i8 %182, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool288.not.i.2.i.i = icmp eq i8 %187, 0
  br i1 %tobool288.not.i.2.i.i, label %if.else243.i.2.i.i.if.else170.i.3.i.i_crit_edge, label %if.then289.i.2.i.i

if.else243.i.2.i.i.if.else170.i.3.i.i_crit_edge:  ; preds = %if.else243.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else170.i.3.i.i

if.then289.i.2.i.i:                               ; preds = %if.else243.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or294.i.2.i.i = or i8 %182, -16
  %188 = ptrtoint ptr %arrayidx282.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %or294.i.2.i.i, ptr %arrayidx282.i.2.i.i, align 1
  br label %if.else170.i.3.i.i

if.then271.i.2.i.i:                               ; preds = %if.end233.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx242.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 2
  %189 = ptrtoint ptr %arrayidx242.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 -2, ptr %arrayidx242.i.2.i.i, align 1
  %arrayidx274.i.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 2
  %190 = ptrtoint ptr %arrayidx274.i.2.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -2, ptr %arrayidx274.i.2.i.i, align 1
  br label %if.else170.i.3.i.i

if.else170.i.3.i.i:                               ; preds = %if.then271.i.2.i.i, %if.then289.i.2.i.i, %if.else243.i.2.i.i.if.else170.i.3.i.i_crit_edge
  %inc169.i.2.i.i = add nuw nsw i32 %addr.0868.i.i.i, 16
  %arrayidx171.i.3.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc169.i.2.i.i
  %191 = ptrtoint ptr %arrayidx171.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx171.i.3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %192)
  %cmp173.i.3.i.i = icmp eq i8 %192, -1
  br i1 %cmp173.i.3.i.i, label %if.then207.i.3.i.i, label %if.else179.i.3.i.i

if.else179.i.3.i.i:                               ; preds = %if.else170.i.3.i.i
  %193 = lshr i8 %192, 4
  %arrayidx187.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 3
  %or199.i.3.i.i = or i8 %193, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool193.not.i207.3.i.i = icmp slt i8 %192, 0
  %spec.select196.3.i.i = select i1 %tobool193.not.i207.3.i.i, i8 %or199.i.3.i.i, i8 %193
  %194 = ptrtoint ptr %arrayidx187.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %spec.select196.3.i.i, ptr %arrayidx187.i.3.i.i, align 1
  %195 = and i8 %192, 15
  %arrayidx218.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 3
  %196 = ptrtoint ptr %arrayidx218.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %arrayidx218.i.3.i.i, align 1
  %197 = and i8 %192, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool224.not.i.3.i.i = icmp eq i8 %197, 0
  br i1 %tobool224.not.i.3.i.i, label %if.else179.i.3.i.i.if.end233.i.3.i.i_crit_edge, label %if.then225.i.3.i.i

if.else179.i.3.i.i.if.end233.i.3.i.i_crit_edge:   ; preds = %if.else179.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end233.i.3.i.i

if.then225.i.3.i.i:                               ; preds = %if.else179.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or230.i.3.i.i = or i8 %192, -16
  %198 = ptrtoint ptr %arrayidx218.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %or230.i.3.i.i, ptr %arrayidx218.i.3.i.i, align 1
  br label %if.end233.i.3.i.i

if.then207.i.3.i.i:                               ; preds = %if.else170.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx178.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %path.1865.i.i.i, i32 3
  %199 = ptrtoint ptr %arrayidx178.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 -2, ptr %arrayidx178.i.3.i.i, align 1
  %arrayidx210.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %path.1865.i.i.i, i32 3
  %200 = ptrtoint ptr %arrayidx210.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -2, ptr %arrayidx210.i.3.i.i, align 1
  br label %if.end233.i.3.i.i

if.end233.i.3.i.i:                                ; preds = %if.then207.i.3.i.i, %if.then225.i.3.i.i, %if.else179.i.3.i.i.if.end233.i.3.i.i_crit_edge
  %inc234.i.3.i.i = add nuw nsw i32 %addr.0868.i.i.i, 17
  %arrayidx235.i.3.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc234.i.3.i.i
  %201 = ptrtoint ptr %arrayidx235.i.3.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %arrayidx235.i.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %202)
  %cmp237.i.3.i.i = icmp eq i8 %202, -1
  br i1 %cmp237.i.3.i.i, label %if.then271.i.3.i.i, label %if.else243.i.3.i.i

if.else243.i.3.i.i:                               ; preds = %if.end233.i.3.i.i
  %203 = lshr i8 %202, 4
  %arrayidx251.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 3
  %or263.i.3.i.i = or i8 %203, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool257.not.i208.3.i.i = icmp slt i8 %202, 0
  %spec.select197.3.i.i = select i1 %tobool257.not.i208.3.i.i, i8 %or263.i.3.i.i, i8 %203
  %204 = ptrtoint ptr %arrayidx251.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %spec.select197.3.i.i, ptr %arrayidx251.i.3.i.i, align 1
  %205 = and i8 %202, 15
  %arrayidx282.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 3
  %206 = ptrtoint ptr %arrayidx282.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx282.i.3.i.i, align 1
  %207 = and i8 %202, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool288.not.i.3.i.i = icmp eq i8 %207, 0
  br i1 %tobool288.not.i.3.i.i, label %if.else243.i.3.i.i.for.inc300.i.3.i.i_crit_edge, label %if.then289.i.3.i.i

if.else243.i.3.i.i.for.inc300.i.3.i.i_crit_edge:  ; preds = %if.else243.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc300.i.3.i.i

if.then289.i.3.i.i:                               ; preds = %if.else243.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or294.i.3.i.i = or i8 %202, -16
  %208 = ptrtoint ptr %arrayidx282.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %or294.i.3.i.i, ptr %arrayidx282.i.3.i.i, align 1
  br label %for.inc300.i.3.i.i

if.then271.i.3.i.i:                               ; preds = %if.end233.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx242.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 3
  %209 = ptrtoint ptr %arrayidx242.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -2, ptr %arrayidx242.i.3.i.i, align 1
  %arrayidx274.i.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 3
  %210 = ptrtoint ptr %arrayidx274.i.3.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -2, ptr %arrayidx274.i.3.i.i, align 1
  br label %for.inc300.i.3.i.i

for.inc300.i.3.i.i:                               ; preds = %if.then271.i.3.i.i, %if.then289.i.3.i.i, %if.else243.i.3.i.i.for.inc300.i.3.i.i_crit_edge
  %inc169.i.3.i.i = add nuw nsw i32 %addr.0868.i.i.i, 18
  %inc307.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 19
  %arrayidx308.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc169.i.3.i.i
  %211 = ptrtoint ptr %arrayidx308.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx308.i.i.i, align 2
  %arrayidx311.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %212)
  %cmp316.i.i.i = icmp eq i8 %212, -1
  %spec.select845.i.i.i = select i1 %cmp316.i.i.i, i8 -2, i8 %212
  %213 = ptrtoint ptr %arrayidx311.i.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %spec.select845.i.i.i, ptr %arrayidx311.i.i.i, align 1
  %inc307.1.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 20
  %arrayidx308.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.i.i.i
  %214 = ptrtoint ptr %arrayidx308.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx308.1.i.i.i, align 1
  %arrayidx311.1.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %215)
  %cmp316.1.i.i.i = icmp eq i8 %215, -1
  %spec.select845.1.i.i.i = select i1 %cmp316.1.i.i.i, i8 -2, i8 %215
  %216 = ptrtoint ptr %arrayidx311.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %spec.select845.1.i.i.i, ptr %arrayidx311.1.i.i.i, align 1
  %inc307.2.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 21
  %arrayidx308.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.1.i.i.i
  %217 = ptrtoint ptr %arrayidx308.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx308.2.i.i.i, align 2
  %arrayidx311.2.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %218)
  %cmp316.2.i.i.i = icmp eq i8 %218, -1
  %spec.select845.2.i.i.i = select i1 %cmp316.2.i.i.i, i8 -2, i8 %218
  %219 = ptrtoint ptr %arrayidx311.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %spec.select845.2.i.i.i, ptr %arrayidx311.2.i.i.i, align 1
  %inc307.3.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 22
  %arrayidx308.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.2.i.i.i
  %220 = ptrtoint ptr %arrayidx308.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx308.3.i.i.i, align 1
  %arrayidx311.3.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %221)
  %cmp316.3.i.i.i = icmp eq i8 %221, -1
  %spec.select845.3.i.i.i = select i1 %cmp316.3.i.i.i, i8 -2, i8 %221
  %222 = ptrtoint ptr %arrayidx311.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %spec.select845.3.i.i.i, ptr %arrayidx311.3.i.i.i, align 1
  %inc307.4.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 23
  %arrayidx308.4.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.3.i.i.i
  %223 = ptrtoint ptr %arrayidx308.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx308.4.i.i.i, align 2
  %arrayidx311.4.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %224)
  %cmp316.4.i.i.i = icmp eq i8 %224, -1
  %spec.select845.4.i.i.i = select i1 %cmp316.4.i.i.i, i8 -2, i8 %224
  %225 = ptrtoint ptr %arrayidx311.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %spec.select845.4.i.i.i, ptr %arrayidx311.4.i.i.i, align 1
  %inc307.5.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 24
  %arrayidx308.5.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.4.i.i.i
  %226 = ptrtoint ptr %arrayidx308.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %arrayidx308.5.i.i.i, align 1
  %arrayidx311.5.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %227)
  %cmp316.5.i.i.i = icmp eq i8 %227, -1
  %spec.select845.5.i.i.i = select i1 %cmp316.5.i.i.i, i8 -2, i8 %227
  %228 = ptrtoint ptr %arrayidx311.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %spec.select845.5.i.i.i, ptr %arrayidx311.5.i.i.i, align 1
  %inc307.6.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 25
  %arrayidx308.6.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.5.i.i.i
  %229 = ptrtoint ptr %arrayidx308.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %arrayidx308.6.i.i.i, align 2
  %arrayidx311.6.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %230)
  %cmp316.6.i.i.i = icmp eq i8 %230, -1
  %spec.select845.6.i.i.i = select i1 %cmp316.6.i.i.i, i8 -2, i8 %230
  %231 = ptrtoint ptr %arrayidx311.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %spec.select845.6.i.i.i, ptr %arrayidx311.6.i.i.i, align 1
  %inc307.7.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 26
  %arrayidx308.7.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.6.i.i.i
  %232 = ptrtoint ptr %arrayidx308.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %arrayidx308.7.i.i.i, align 1
  %arrayidx311.7.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %233)
  %cmp316.7.i.i.i = icmp eq i8 %233, -1
  %spec.select845.7.i.i.i = select i1 %cmp316.7.i.i.i, i8 -2, i8 %233
  %234 = ptrtoint ptr %arrayidx311.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %spec.select845.7.i.i.i, ptr %arrayidx311.7.i.i.i, align 1
  %inc307.8.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 27
  %arrayidx308.8.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.7.i.i.i
  %235 = ptrtoint ptr %arrayidx308.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx308.8.i.i.i, align 2
  %arrayidx311.8.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %236)
  %cmp316.8.i.i.i = icmp eq i8 %236, -1
  %spec.select845.8.i.i.i = select i1 %cmp316.8.i.i.i, i8 -2, i8 %236
  %237 = ptrtoint ptr %arrayidx311.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %spec.select845.8.i.i.i, ptr %arrayidx311.8.i.i.i, align 1
  %inc307.9.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 28
  %arrayidx308.9.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.8.i.i.i
  %238 = ptrtoint ptr %arrayidx308.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx308.9.i.i.i, align 1
  %arrayidx311.9.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %239)
  %cmp316.9.i.i.i = icmp eq i8 %239, -1
  %spec.select845.9.i.i.i = select i1 %cmp316.9.i.i.i, i8 -2, i8 %239
  %240 = ptrtoint ptr %arrayidx311.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %spec.select845.9.i.i.i, ptr %arrayidx311.9.i.i.i, align 1
  %inc307.10.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 29
  %arrayidx308.10.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.9.i.i.i
  %241 = ptrtoint ptr %arrayidx308.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx308.10.i.i.i, align 2
  %arrayidx311.10.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %242)
  %cmp316.10.i.i.i = icmp eq i8 %242, -1
  %spec.select845.10.i.i.i = select i1 %cmp316.10.i.i.i, i8 -2, i8 %242
  %243 = ptrtoint ptr %arrayidx311.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %spec.select845.10.i.i.i, ptr %arrayidx311.10.i.i.i, align 1
  %inc307.11.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 30
  %arrayidx308.11.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.10.i.i.i
  %244 = ptrtoint ptr %arrayidx308.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %arrayidx308.11.i.i.i, align 1
  %arrayidx311.11.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %245)
  %cmp316.11.i.i.i = icmp eq i8 %245, -1
  %spec.select845.11.i.i.i = select i1 %cmp316.11.i.i.i, i8 -2, i8 %245
  %246 = ptrtoint ptr %arrayidx311.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 %spec.select845.11.i.i.i, ptr %arrayidx311.11.i.i.i, align 1
  %inc307.12.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 31
  %arrayidx308.12.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.11.i.i.i
  %247 = ptrtoint ptr %arrayidx308.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx308.12.i.i.i, align 2
  %arrayidx311.12.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %248)
  %cmp316.12.i.i.i = icmp eq i8 %248, -1
  %spec.select845.12.i.i.i = select i1 %cmp316.12.i.i.i, i8 -2, i8 %248
  %249 = ptrtoint ptr %arrayidx311.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %spec.select845.12.i.i.i, ptr %arrayidx311.12.i.i.i, align 1
  %arrayidx308.13.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.12.i.i.i
  %250 = ptrtoint ptr %arrayidx308.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx308.13.i.i.i, align 1
  %arrayidx311.13.i.i.i = getelementptr [4 x [14 x i8]], ptr %pw5g.i.i, i32 0, i32 %path.1865.i.i.i, i32 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %251)
  %cmp316.13.i.i.i = icmp eq i8 %251, -1
  %spec.select845.13.i.i.i = select i1 %cmp316.13.i.i.i, i8 -2, i8 %251
  %252 = ptrtoint ptr %arrayidx311.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %spec.select845.13.i.i.i, ptr %arrayidx311.13.i.i.i, align 1
  %arrayidx351.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i
  %arrayidx382.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i
  %inc307.13.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 32
  %arrayidx334.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i
  %253 = ptrtoint ptr %arrayidx334.i.i.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %arrayidx334.i.i.i, align 1
  %arrayidx336.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc307.13.i.i.i
  %254 = ptrtoint ptr %arrayidx336.i.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx336.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %255)
  %cmp338.i.i.i = icmp eq i8 %255, -1
  br i1 %cmp338.i.i.i, label %if.end367.i.thread177.i.i, label %if.else344.i.i.i

if.end367.i.thread177.i.i:                        ; preds = %for.inc300.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %arrayidx351.i.i.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %arrayidx351.i.i.i, align 1
  br label %if.else400.1.sink.split.i.i.i

if.else344.i.i.i:                                 ; preds = %for.inc300.i.3.i.i
  %257 = lshr i8 %255, 4
  %or364.i.i.i = or i8 %257, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool358.not.i209.i.i = icmp slt i8 %255, 0
  %spec.select198.i.i = select i1 %tobool358.not.i209.i.i, i8 %or364.i.i.i, i8 %257
  %258 = ptrtoint ptr %arrayidx351.i.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %spec.select198.i.i, ptr %arrayidx351.i.i.i, align 1
  %259 = and i8 %255, 15
  %260 = ptrtoint ptr %arrayidx382.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %arrayidx382.i.i.i, align 1
  %261 = and i8 %255, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool389.not.i.i.i = icmp eq i8 %261, 0
  br i1 %tobool389.not.i.i.i, label %if.else344.i.i.i.if.else400.1.i.i.i_crit_edge, label %if.then390.i.i.i

if.else344.i.i.i.if.else400.1.i.i.i_crit_edge:    ; preds = %if.else344.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else400.1.i.i.i

if.then390.i.i.i:                                 ; preds = %if.else344.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or395.i.i.i = or i8 %255, -16
  br label %if.else400.1.sink.split.i.i.i

if.else400.1.sink.split.i.i.i:                    ; preds = %if.then390.i.i.i, %if.end367.i.thread177.i.i
  %or395.sink.i.i.i = phi i8 [ %or395.i.i.i, %if.then390.i.i.i ], [ 4, %if.end367.i.thread177.i.i ]
  %262 = ptrtoint ptr %arrayidx382.i.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %or395.sink.i.i.i, ptr %arrayidx382.i.i.i, align 1
  br label %if.else400.1.i.i.i

if.else400.1.i.i.i:                               ; preds = %if.else400.1.sink.split.i.i.i, %if.else344.i.i.i.if.else400.1.i.i.i_crit_edge
  %addr.7.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 33
  %arrayidx401.1.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.i.i.i
  %263 = ptrtoint ptr %arrayidx401.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx401.1.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %264)
  %cmp403.1.i.i.i = icmp eq i8 %264, -1
  br i1 %cmp403.1.i.i.i, label %if.then437.1.i.i.i, label %if.else409.1.i.i.i

if.else409.1.i.i.i:                               ; preds = %if.else400.1.i.i.i
  %265 = lshr i8 %264, 4
  %arrayidx417.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 1
  %or429.1.i.i.i = or i8 %265, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool423.not.1.i210.i.i = icmp slt i8 %264, 0
  %spec.select199.i.i = select i1 %tobool423.not.1.i210.i.i, i8 %or429.1.i.i.i, i8 %265
  %266 = ptrtoint ptr %arrayidx417.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %spec.select199.i.i, ptr %arrayidx417.1.i.i.i, align 1
  %267 = and i8 %264, 15
  %arrayidx448.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 1
  %268 = ptrtoint ptr %arrayidx448.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %arrayidx448.1.i.i.i, align 1
  %269 = and i8 %264, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool454.not.1.i.i.i = icmp eq i8 %269, 0
  br i1 %tobool454.not.1.i.i.i, label %if.else409.1.i.i.i.if.else400.2.i.i.i_crit_edge, label %if.then455.1.i.i.i

if.else409.1.i.i.i.if.else400.2.i.i.i_crit_edge:  ; preds = %if.else409.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else400.2.i.i.i

if.then455.1.i.i.i:                               ; preds = %if.else409.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or460.1.i.i.i = or i8 %264, -16
  %270 = ptrtoint ptr %arrayidx448.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %or460.1.i.i.i, ptr %arrayidx448.1.i.i.i, align 1
  br label %if.else400.2.i.i.i

if.then437.1.i.i.i:                               ; preds = %if.else400.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx408.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 1
  %271 = ptrtoint ptr %arrayidx408.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -2, ptr %arrayidx408.1.i.i.i, align 1
  %arrayidx440.1.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 1
  %272 = ptrtoint ptr %arrayidx440.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 -2, ptr %arrayidx440.1.i.i.i, align 1
  br label %if.else400.2.i.i.i

if.else400.2.i.i.i:                               ; preds = %if.then437.1.i.i.i, %if.then455.1.i.i.i, %if.else409.1.i.i.i.if.else400.2.i.i.i_crit_edge
  %addr.7.1.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 34
  %arrayidx401.2.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.1.i.i.i
  %273 = ptrtoint ptr %arrayidx401.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %arrayidx401.2.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %274)
  %cmp403.2.i.i.i = icmp eq i8 %274, -1
  br i1 %cmp403.2.i.i.i, label %if.then437.2.i.i.i, label %if.else409.2.i.i.i

if.else409.2.i.i.i:                               ; preds = %if.else400.2.i.i.i
  %275 = lshr i8 %274, 4
  %arrayidx417.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 2
  %or429.2.i.i.i = or i8 %275, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %274)
  %tobool423.not.2.i211.i.i = icmp slt i8 %274, 0
  %spec.select200.i.i = select i1 %tobool423.not.2.i211.i.i, i8 %or429.2.i.i.i, i8 %275
  %276 = ptrtoint ptr %arrayidx417.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %spec.select200.i.i, ptr %arrayidx417.2.i.i.i, align 1
  %277 = and i8 %274, 15
  %arrayidx448.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 2
  %278 = ptrtoint ptr %arrayidx448.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %277, ptr %arrayidx448.2.i.i.i, align 1
  %279 = and i8 %274, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool454.not.2.i.i.i = icmp eq i8 %279, 0
  br i1 %tobool454.not.2.i.i.i, label %if.else409.2.i.i.i.if.else400.3.i.i.i_crit_edge, label %if.then455.2.i.i.i

if.else409.2.i.i.i.if.else400.3.i.i.i_crit_edge:  ; preds = %if.else409.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else400.3.i.i.i

if.then455.2.i.i.i:                               ; preds = %if.else409.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or460.2.i.i.i = or i8 %274, -16
  %280 = ptrtoint ptr %arrayidx448.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %or460.2.i.i.i, ptr %arrayidx448.2.i.i.i, align 1
  br label %if.else400.3.i.i.i

if.then437.2.i.i.i:                               ; preds = %if.else400.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx408.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 2
  %281 = ptrtoint ptr %arrayidx408.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 -2, ptr %arrayidx408.2.i.i.i, align 1
  %arrayidx440.2.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 2
  %282 = ptrtoint ptr %arrayidx440.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 -2, ptr %arrayidx440.2.i.i.i, align 1
  br label %if.else400.3.i.i.i

if.else400.3.i.i.i:                               ; preds = %if.then437.2.i.i.i, %if.then455.2.i.i.i, %if.else409.2.i.i.i.if.else400.3.i.i.i_crit_edge
  %addr.7.2.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 35
  %arrayidx401.3.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.2.i.i.i
  %283 = ptrtoint ptr %arrayidx401.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx401.3.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %284)
  %cmp403.3.i.i.i = icmp eq i8 %284, -1
  br i1 %cmp403.3.i.i.i, label %if.then437.3.i.i.i, label %if.else409.3.i.i.i

if.else409.3.i.i.i:                               ; preds = %if.else400.3.i.i.i
  %285 = lshr i8 %284, 4
  %arrayidx417.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 3
  %or429.3.i.i.i = or i8 %285, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %tobool423.not.3.i212.i.i = icmp slt i8 %284, 0
  %spec.select201.i.i = select i1 %tobool423.not.3.i212.i.i, i8 %or429.3.i.i.i, i8 %285
  %286 = ptrtoint ptr %arrayidx417.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %spec.select201.i.i, ptr %arrayidx417.3.i.i.i, align 1
  %287 = and i8 %284, 15
  %arrayidx448.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 3
  %288 = ptrtoint ptr %arrayidx448.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %arrayidx448.3.i.i.i, align 1
  %289 = and i8 %284, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool454.not.3.i.i.i = icmp eq i8 %289, 0
  br i1 %tobool454.not.3.i.i.i, label %if.else409.3.i.i.i.for.inc466.3.i.i.i_crit_edge, label %if.then455.3.i.i.i

if.else409.3.i.i.i.for.inc466.3.i.i.i_crit_edge:  ; preds = %if.else409.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc466.3.i.i.i

if.then455.3.i.i.i:                               ; preds = %if.else409.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or460.3.i.i.i = or i8 %284, -16
  %290 = ptrtoint ptr %arrayidx448.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %or460.3.i.i.i, ptr %arrayidx448.3.i.i.i, align 1
  br label %for.inc466.3.i.i.i

if.then437.3.i.i.i:                               ; preds = %if.else400.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx408.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 3, i32 %path.1865.i.i.i, i32 3
  %291 = ptrtoint ptr %arrayidx408.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 -2, ptr %arrayidx408.3.i.i.i, align 1
  %arrayidx440.3.i.i.i = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 2, i32 %path.1865.i.i.i, i32 3
  %292 = ptrtoint ptr %arrayidx440.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 -2, ptr %arrayidx440.3.i.i.i, align 1
  br label %for.inc466.3.i.i.i

for.inc466.3.i.i.i:                               ; preds = %if.then437.3.i.i.i, %if.then455.3.i.i.i, %if.else409.3.i.i.i.for.inc466.3.i.i.i_crit_edge
  %addr.7.3.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 36
  %arrayidx469.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %addr.7.3.i.i.i
  %293 = ptrtoint ptr %arrayidx469.i.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx469.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %294)
  %cmp471.i.i.i = icmp eq i8 %294, -1
  %295 = lshr i8 %294, 4
  %296 = and i8 %294, 15
  %.sink.i.i = select i1 %cmp471.i.i.i, i8 -2, i8 %295
  %.sink.i.i.i = select i1 %cmp471.i.i.i, i8 -2, i8 %296
  %297 = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 1
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %.sink.i.i, ptr %297, align 1
  %299 = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 2
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %.sink.i.i.i, ptr %299, align 1
  %inc497.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 37
  %arrayidx498.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc497.i.i.i
  %301 = ptrtoint ptr %arrayidx498.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx498.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %302)
  %cmp500.i.i.i = icmp eq i8 %302, -1
  %303 = and i8 %302, 15
  %spec.select905.i.i.i = select i1 %cmp500.i.i.i, i8 -2, i8 %303
  %304 = getelementptr %struct.txpower_info_5g, ptr %pw5g.i.i, i32 0, i32 1, i32 %path.1865.i.i.i, i32 3
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %spec.select905.i.i.i, ptr %304, align 1
  %306 = and i8 %.sink.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %306)
  %tobool536.not.i.i.i = icmp eq i8 %306, 0
  br i1 %tobool536.not.i.i.i, label %for.inc466.3.i.i.i.for.inc546.i.i.i_crit_edge, label %for.inc546.sink.split.i.i.i

for.inc466.3.i.i.i.for.inc546.i.i.i_crit_edge:    ; preds = %for.inc466.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc546.i.i.i

for.inc546.sink.split.i.i.i:                      ; preds = %for.inc466.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or542.i.i.i = or i8 %.sink.i.i, -16
  %307 = ptrtoint ptr %297 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %or542.i.i.i, ptr %297, align 1
  br label %for.inc546.i.i.i

for.inc546.i.i.i:                                 ; preds = %for.inc546.sink.split.i.i.i, %for.inc466.3.i.i.i.for.inc546.i.i.i_crit_edge
  %308 = ptrtoint ptr %299 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %309)
  %cmp524.1.i.i.i = icmp eq i8 %309, -1
  br i1 %cmp524.1.i.i.i, label %for.inc546.i.i.i.for.inc546.1.sink.split.i.i.i_crit_edge, label %if.else530.1.i.i.i

for.inc546.i.i.i.for.inc546.1.sink.split.i.i.i_crit_edge: ; preds = %for.inc546.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc546.1.sink.split.i.i.i

if.else530.1.i.i.i:                               ; preds = %for.inc546.i.i.i
  %310 = and i8 %309, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool536.not.1.i.i.i = icmp eq i8 %310, 0
  br i1 %tobool536.not.1.i.i.i, label %if.else530.1.i.i.i.for.inc546.1.i.i.i_crit_edge, label %if.then537.1.i.i.i

if.else530.1.i.i.i.for.inc546.1.i.i.i_crit_edge:  ; preds = %if.else530.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc546.1.i.i.i

if.then537.1.i.i.i:                               ; preds = %if.else530.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or542.1.i.i.i = or i8 %309, -16
  br label %for.inc546.1.sink.split.i.i.i

for.inc546.1.sink.split.i.i.i:                    ; preds = %if.then537.1.i.i.i, %for.inc546.i.i.i.for.inc546.1.sink.split.i.i.i_crit_edge
  %.sink907.i.i.i = phi i8 [ %or542.1.i.i.i, %if.then537.1.i.i.i ], [ -2, %for.inc546.i.i.i.for.inc546.1.sink.split.i.i.i_crit_edge ]
  %311 = ptrtoint ptr %299 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 %.sink907.i.i.i, ptr %299, align 1
  br label %for.inc546.1.i.i.i

for.inc546.1.i.i.i:                               ; preds = %for.inc546.1.sink.split.i.i.i, %if.else530.1.i.i.i.for.inc546.1.i.i.i_crit_edge
  %312 = ptrtoint ptr %304 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %304, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %313)
  %cmp524.2.i.i.i = icmp eq i8 %313, -1
  br i1 %cmp524.2.i.i.i, label %for.inc546.1.i.i.i.for.inc546.2.sink.split.i.i.i_crit_edge, label %if.else530.2.i.i.i

for.inc546.1.i.i.i.for.inc546.2.sink.split.i.i.i_crit_edge: ; preds = %for.inc546.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc546.2.sink.split.i.i.i

if.else530.2.i.i.i:                               ; preds = %for.inc546.1.i.i.i
  %314 = and i8 %313, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool536.not.2.i.i.i = icmp eq i8 %314, 0
  br i1 %tobool536.not.2.i.i.i, label %if.else530.2.i.i.i.for.inc546.2.i.i.i_crit_edge, label %if.then537.2.i.i.i

if.else530.2.i.i.i.for.inc546.2.i.i.i_crit_edge:  ; preds = %if.else530.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc546.2.i.i.i

if.then537.2.i.i.i:                               ; preds = %if.else530.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or542.2.i.i.i = or i8 %313, -16
  br label %for.inc546.2.sink.split.i.i.i

for.inc546.2.sink.split.i.i.i:                    ; preds = %if.then537.2.i.i.i, %for.inc546.1.i.i.i.for.inc546.2.sink.split.i.i.i_crit_edge
  %.sink908.i.i.i = phi i8 [ %or542.2.i.i.i, %if.then537.2.i.i.i ], [ -2, %for.inc546.1.i.i.i.for.inc546.2.sink.split.i.i.i_crit_edge ]
  %315 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %.sink908.i.i.i, ptr %304, align 1
  br label %for.inc546.2.i.i.i

for.inc546.2.i.i.i:                               ; preds = %for.inc546.2.sink.split.i.i.i, %if.else530.2.i.i.i.for.inc546.2.i.i.i_crit_edge
  %inc515.i.i.i = add nuw nsw i32 %addr.0868.i.i.i, 38
  %inc550.i.i.i = add nuw nsw i32 %path.1865.i.i.i, 1
  %exitcond877.not.i.i.i = icmp eq i32 %inc550.i.i.i, 4
  br i1 %exitcond877.not.i.i.i, label %for.inc546.2.i.i.i.for.cond3.preheader.i.i.preheader_crit_edge, label %for.inc546.2.i.i.i.if.then102.i.i.i_crit_edge

for.inc546.2.i.i.i.if.then102.i.i.i_crit_edge:    ; preds = %for.inc546.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then102.i.i.i

for.inc546.2.i.i.i.for.cond3.preheader.i.i.preheader_crit_edge: ; preds = %for.inc546.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i.preheader

for.cond3.preheader.i.i.preheader:                ; preds = %for.inc546.2.i.i.i.for.cond3.preheader.i.i.preheader_crit_edge, %for.inc39.3.3.i.i.i
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body28.preheader.i.i.for.cond3.preheader.i.i_crit_edge, %for.cond3.preheader.i.i.preheader
  %indvars.iv220.i.i = phi i32 [ %indvars.iv.next221.i.i, %for.body28.preheader.i.i.for.cond3.preheader.i.i_crit_edge ], [ 0, %for.cond3.preheader.i.i.preheader ]
  br label %for.body7.i.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond3.preheader.i.i
  %indvars.iv.i.i = phi i32 [ 0, %for.cond3.preheader.i.i ], [ %indvars.iv.next.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ]
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv.i.i)
  %cmp.i174.i.i = icmp ult i32 %indvars.iv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv.i.i)
  %cmp3.i.i.i = icmp ult i32 %indvars.iv.i.i, 8
  %..i.i.i = select i1 %cmp3.i.i.i, i32 1, i32 2
  %group.0.i.i.i = select i1 %cmp.i174.i.i, i32 0, i32 %..i.i.i
  %arrayidx11.i.i = getelementptr [4 x [6 x i8]], ptr %pw2g.i.i, i32 0, i32 %indvars.iv220.i.i, i32 %group.0.i.i.i
  %316 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx11.i.i, align 1
  %arrayidx15.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 %indvars.iv.i.i
  %318 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %arrayidx15.i.i, align 1
  %arrayidx19.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 1, i32 %indvars.iv220.i.i, i32 %group.0.i.i.i
  %319 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx19.i.i, align 1
  %arrayidx23.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 %indvars.iv.i.i
  %321 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %arrayidx23.i.i, align 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 14
  br i1 %exitcond.not.i.i, label %for.body28.preheader.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.i

for.body28.preheader.i.i:                         ; preds = %for.body7.i.i
  %arrayidx32.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %indvars.iv220.i.i, i32 0
  %322 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx32.i.i, align 1
  %arrayidx36.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv220.i.i, i32 0
  %324 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx36.i.i, align 1
  %arrayidx40.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %indvars.iv220.i.i, i32 0
  %325 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx40.i.i, align 1
  %arrayidx44.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv220.i.i, i32 0
  %327 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %arrayidx44.i.i, align 1
  %arrayidx48.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %indvars.iv220.i.i, i32 0
  %328 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx48.i.i, align 1
  %arrayidx52.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv220.i.i, i32 0
  %330 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %arrayidx52.i.i, align 1
  %arrayidx32.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %indvars.iv220.i.i, i32 1
  %331 = ptrtoint ptr %arrayidx32.1.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx32.1.i.i, align 1
  %arrayidx36.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv220.i.i, i32 1
  %333 = ptrtoint ptr %arrayidx36.1.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %arrayidx36.1.i.i, align 1
  %arrayidx40.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %indvars.iv220.i.i, i32 1
  %334 = ptrtoint ptr %arrayidx40.1.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx40.1.i.i, align 1
  %arrayidx44.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv220.i.i, i32 1
  %336 = ptrtoint ptr %arrayidx44.1.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %arrayidx44.1.i.i, align 1
  %arrayidx48.1.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %indvars.iv220.i.i, i32 1
  %337 = ptrtoint ptr %arrayidx48.1.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx48.1.i.i, align 1
  %arrayidx52.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv220.i.i, i32 1
  %339 = ptrtoint ptr %arrayidx52.1.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %338, ptr %arrayidx52.1.i.i, align 1
  %arrayidx32.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %indvars.iv220.i.i, i32 2
  %340 = ptrtoint ptr %arrayidx32.2.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx32.2.i.i, align 1
  %arrayidx36.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv220.i.i, i32 2
  %342 = ptrtoint ptr %arrayidx36.2.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %arrayidx36.2.i.i, align 1
  %arrayidx40.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %indvars.iv220.i.i, i32 2
  %343 = ptrtoint ptr %arrayidx40.2.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx40.2.i.i, align 1
  %arrayidx44.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv220.i.i, i32 2
  %345 = ptrtoint ptr %arrayidx44.2.i.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %arrayidx44.2.i.i, align 1
  %arrayidx48.2.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %indvars.iv220.i.i, i32 2
  %346 = ptrtoint ptr %arrayidx48.2.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx48.2.i.i, align 1
  %arrayidx52.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv220.i.i, i32 2
  %348 = ptrtoint ptr %arrayidx52.2.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx52.2.i.i, align 1
  %arrayidx32.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 4, i32 %indvars.iv220.i.i, i32 3
  %349 = ptrtoint ptr %arrayidx32.3.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx32.3.i.i, align 1
  %arrayidx36.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 42, i32 %indvars.iv220.i.i, i32 3
  %351 = ptrtoint ptr %arrayidx36.3.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %arrayidx36.3.i.i, align 1
  %arrayidx40.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 5, i32 %indvars.iv220.i.i, i32 3
  %352 = ptrtoint ptr %arrayidx40.3.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx40.3.i.i, align 1
  %arrayidx44.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 43, i32 %indvars.iv220.i.i, i32 3
  %354 = ptrtoint ptr %arrayidx44.3.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %arrayidx44.3.i.i, align 1
  %arrayidx48.3.i.i = getelementptr %struct.txpower_info_2g, ptr %pw2g.i.i, i32 0, i32 3, i32 %indvars.iv220.i.i, i32 3
  %355 = ptrtoint ptr %arrayidx48.3.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx48.3.i.i, align 1
  %arrayidx52.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 44, i32 %indvars.iv220.i.i, i32 3
  %357 = ptrtoint ptr %arrayidx52.3.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %arrayidx52.3.i.i, align 1
  %arrayidx67.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 0
  %358 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %359 to i32
  %arrayidx73.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 0
  %360 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %arrayidx73.i.i, align 1
  %conv74.i.i = zext i8 %361 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 0, i32 noundef %conv68.i.i, i32 noundef %conv74.i.i) #7
  %arrayidx67.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 1
  %362 = ptrtoint ptr %arrayidx67.1.i.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %arrayidx67.1.i.i, align 1
  %conv68.1.i.i = zext i8 %363 to i32
  %arrayidx73.1.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 1
  %364 = ptrtoint ptr %arrayidx73.1.i.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %arrayidx73.1.i.i, align 1
  %conv74.1.i.i = zext i8 %365 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 1, i32 noundef %conv68.1.i.i, i32 noundef %conv74.1.i.i) #7
  %arrayidx67.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 2
  %366 = ptrtoint ptr %arrayidx67.2.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %arrayidx67.2.i.i, align 1
  %conv68.2.i.i = zext i8 %367 to i32
  %arrayidx73.2.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 2
  %368 = ptrtoint ptr %arrayidx73.2.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %arrayidx73.2.i.i, align 1
  %conv74.2.i.i = zext i8 %369 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 2, i32 noundef %conv68.2.i.i, i32 noundef %conv74.2.i.i) #7
  %arrayidx67.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 3
  %370 = ptrtoint ptr %arrayidx67.3.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %arrayidx67.3.i.i, align 1
  %conv68.3.i.i = zext i8 %371 to i32
  %arrayidx73.3.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 3
  %372 = ptrtoint ptr %arrayidx73.3.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %arrayidx73.3.i.i, align 1
  %conv74.3.i.i = zext i8 %373 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 3, i32 noundef %conv68.3.i.i, i32 noundef %conv74.3.i.i) #7
  %arrayidx67.4.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 4
  %374 = ptrtoint ptr %arrayidx67.4.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %arrayidx67.4.i.i, align 1
  %conv68.4.i.i = zext i8 %375 to i32
  %arrayidx73.4.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 4
  %376 = ptrtoint ptr %arrayidx73.4.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %arrayidx73.4.i.i, align 1
  %conv74.4.i.i = zext i8 %377 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 4, i32 noundef %conv68.4.i.i, i32 noundef %conv74.4.i.i) #7
  %arrayidx67.5.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 5
  %378 = ptrtoint ptr %arrayidx67.5.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %arrayidx67.5.i.i, align 1
  %conv68.5.i.i = zext i8 %379 to i32
  %arrayidx73.5.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 5
  %380 = ptrtoint ptr %arrayidx73.5.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %arrayidx73.5.i.i, align 1
  %conv74.5.i.i = zext i8 %381 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 5, i32 noundef %conv68.5.i.i, i32 noundef %conv74.5.i.i) #7
  %arrayidx67.6.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 6
  %382 = ptrtoint ptr %arrayidx67.6.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %arrayidx67.6.i.i, align 1
  %conv68.6.i.i = zext i8 %383 to i32
  %arrayidx73.6.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 6
  %384 = ptrtoint ptr %arrayidx73.6.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %arrayidx73.6.i.i, align 1
  %conv74.6.i.i = zext i8 %385 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 6, i32 noundef %conv68.6.i.i, i32 noundef %conv74.6.i.i) #7
  %arrayidx67.7.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 7
  %386 = ptrtoint ptr %arrayidx67.7.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %arrayidx67.7.i.i, align 1
  %conv68.7.i.i = zext i8 %387 to i32
  %arrayidx73.7.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 7
  %388 = ptrtoint ptr %arrayidx73.7.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %arrayidx73.7.i.i, align 1
  %conv74.7.i.i = zext i8 %389 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 7, i32 noundef %conv68.7.i.i, i32 noundef %conv74.7.i.i) #7
  %arrayidx67.8.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 8
  %390 = ptrtoint ptr %arrayidx67.8.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %arrayidx67.8.i.i, align 1
  %conv68.8.i.i = zext i8 %391 to i32
  %arrayidx73.8.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 8
  %392 = ptrtoint ptr %arrayidx73.8.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx73.8.i.i, align 1
  %conv74.8.i.i = zext i8 %393 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 8, i32 noundef %conv68.8.i.i, i32 noundef %conv74.8.i.i) #7
  %arrayidx67.9.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 9
  %394 = ptrtoint ptr %arrayidx67.9.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx67.9.i.i, align 1
  %conv68.9.i.i = zext i8 %395 to i32
  %arrayidx73.9.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 9
  %396 = ptrtoint ptr %arrayidx73.9.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx73.9.i.i, align 1
  %conv74.9.i.i = zext i8 %397 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 9, i32 noundef %conv68.9.i.i, i32 noundef %conv74.9.i.i) #7
  %arrayidx67.10.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 10
  %398 = ptrtoint ptr %arrayidx67.10.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx67.10.i.i, align 1
  %conv68.10.i.i = zext i8 %399 to i32
  %arrayidx73.10.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 10
  %400 = ptrtoint ptr %arrayidx73.10.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx73.10.i.i, align 1
  %conv74.10.i.i = zext i8 %401 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 10, i32 noundef %conv68.10.i.i, i32 noundef %conv74.10.i.i) #7
  %arrayidx67.11.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 11
  %402 = ptrtoint ptr %arrayidx67.11.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx67.11.i.i, align 1
  %conv68.11.i.i = zext i8 %403 to i32
  %arrayidx73.11.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 11
  %404 = ptrtoint ptr %arrayidx73.11.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx73.11.i.i, align 1
  %conv74.11.i.i = zext i8 %405 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 11, i32 noundef %conv68.11.i.i, i32 noundef %conv74.11.i.i) #7
  %arrayidx67.12.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 12
  %406 = ptrtoint ptr %arrayidx67.12.i.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %arrayidx67.12.i.i, align 1
  %conv68.12.i.i = zext i8 %407 to i32
  %arrayidx73.12.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 12
  %408 = ptrtoint ptr %arrayidx73.12.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx73.12.i.i, align 1
  %conv74.12.i.i = zext i8 %409 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 12, i32 noundef %conv68.12.i.i, i32 noundef %conv74.12.i.i) #7
  %arrayidx67.13.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 38, i32 %indvars.iv220.i.i, i32 13
  %410 = ptrtoint ptr %arrayidx67.13.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %arrayidx67.13.i.i, align 1
  %conv68.13.i.i = zext i8 %411 to i32
  %arrayidx73.13.i.i = getelementptr %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 39, i32 %indvars.iv220.i.i, i32 13
  %412 = ptrtoint ptr %arrayidx73.13.i.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx73.13.i.i, align 1
  %conv74.13.i.i = zext i8 %413 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef %indvars.iv220.i.i, i32 noundef 13, i32 noundef %conv68.13.i.i, i32 noundef %conv74.13.i.i) #7
  %indvars.iv.next221.i.i = add nuw nsw i32 %indvars.iv220.i.i, 1
  %exitcond222.not.i.i = icmp eq i32 %indvars.iv.next221.i.i, 2
  br i1 %exitcond222.not.i.i, label %for.end80.i.i, label %for.body28.preheader.i.i.for.cond3.preheader.i.i_crit_edge

for.body28.preheader.i.i.for.cond3.preheader.i.i_crit_edge: ; preds = %for.body28.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i

for.end80.i.i:                                    ; preds = %for.body28.preheader.i.i
  br i1 %tobool16.i, label %if.end.thread.i.i, label %if.end.i.i

if.end.thread.i.i:                                ; preds = %for.end80.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %eeprom_thermalmeter83.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %apk_thermalmeterignore.c.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %414 = ptrtoint ptr %apk_thermalmeterignore.c.i.i to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %apk_thermalmeterignore.c.i.i, align 2
  %415 = ptrtoint ptr %eeprom_thermalmeter83.i.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 24, ptr %eeprom_thermalmeter83.i.i, align 4
  %thermalmeter.c184.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %416 = ptrtoint ptr %thermalmeter.c184.i.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 24, ptr %thermalmeter.c184.i.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 24) #7
  %eeprom_regulatory110.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %417 = ptrtoint ptr %eeprom_regulatory110.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %eeprom_regulatory110.i.i, align 1
  br label %_rtl8723be_read_txpower_info_from_hwpg.exit.i

if.end.i.i:                                       ; preds = %for.end80.i.i
  %arrayidx82.i.i = getelementptr i8, ptr %call7.i.i.i, i32 186
  %418 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx82.i.i, align 2
  %eeprom_thermalmeter.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 55
  %420 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %419, ptr %eeprom_thermalmeter.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %419)
  %cmp86.i.i = icmp eq i8 %419, -1
  br i1 %cmp86.i.i, label %if.then98.critedge186.i.i, label %if.then98.critedge.i.i

if.then98.critedge.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv96.c.i.i = zext i8 %419 to i32
  br label %if.then98.i.i

if.then98.critedge186.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %apk_thermalmeterignore.c187.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 62
  %421 = ptrtoint ptr %apk_thermalmeterignore.c187.i.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 1, ptr %apk_thermalmeterignore.c187.i.i, align 2
  %422 = ptrtoint ptr %eeprom_thermalmeter.i.i to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 24, ptr %eeprom_thermalmeter.i.i, align 4
  br label %if.then98.i.i

if.then98.i.i:                                    ; preds = %if.then98.critedge186.i.i, %if.then98.critedge.i.i
  %.sink.i = phi i8 [ 24, %if.then98.critedge186.i.i ], [ %419, %if.then98.critedge.i.i ]
  %.sink223.i.i = phi i32 [ 24, %if.then98.critedge186.i.i ], [ %conv96.c.i.i, %if.then98.critedge.i.i ]
  %423 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 56
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %.sink.i, ptr %423, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef %.sink223.i.i) #7
  %arrayidx99.i.i = getelementptr i8, ptr %call7.i.i.i, i32 193
  %425 = ptrtoint ptr %arrayidx99.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %arrayidx99.i.i, align 1
  %427 = and i8 %426, 7
  %eeprom_regulatory.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %428 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %427, ptr %eeprom_regulatory.i.i, align 1
  %429 = load i8, ptr %arrayidx99.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %429)
  %cmp104.i.i = icmp eq i8 %429, -1
  %spec.store.select.i.i = select i1 %cmp104.i.i, i8 0, i8 %427
  %430 = ptrtoint ptr %eeprom_regulatory.i.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %spec.store.select.i.i, ptr %eeprom_regulatory.i.i, align 1
  br label %_rtl8723be_read_txpower_info_from_hwpg.exit.i

_rtl8723be_read_txpower_info_from_hwpg.exit.i:    ; preds = %if.then98.i.i, %if.end.thread.i.i
  %eeprom_regulatory112.i.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 54
  %431 = ptrtoint ptr %eeprom_regulatory112.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %eeprom_regulatory112.i.i, align 1
  %conv113.i.i = zext i8 %432 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %36, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef %conv113.i.i) #7
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pw5g.i.i) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %pw2g.i.i) #7
  %433 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %434)
  %tobool18.not.i = icmp eq i8 %434, 0
  %435 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 32
  %437 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %cfg.i.i, align 8
  %mod_params1.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %438, i32 0, i32 5
  %439 = ptrtoint ptr %mod_params1.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %mod_params1.i.i, align 4
  br i1 %tobool18.not.i, label %if.then.i.i, label %if.else20.i.i

if.then.i.i:                                      ; preds = %_rtl8723be_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 13, i32 11
  %441 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i.i.i = call i32 %442(ptr noundef %436, i32 noundef 104) #7
  %and.i.i = lshr i32 %call.i.i.i, 18
  %443 = trunc i32 %and.i.i to i8
  %444 = and i8 %443, 1
  %445 = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 49, i32 1, i32 1
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %444, ptr %445, align 1
  %arrayidx.i.i = getelementptr i8, ptr %call7.i.i.i, i32 195
  %447 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %arrayidx.i.i, align 1
  %and10.i.i = and i8 %448, 1
  %449 = lshr i8 %448, 6
  %.lobit.i.i = and i8 %449, 1
  br label %if.end33.i.i

if.else20.i.i:                                    ; preds = %_rtl8723be_read_txpower_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %btcoexist23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 49, i32 1, i32 1
  %450 = ptrtoint ptr %btcoexist23.i.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %btcoexist23.i.i, align 1
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.else20.i.i, %if.then.i.i
  %.sink37.i = phi i8 [ %and10.i.i, %if.then.i.i ], [ 0, %if.else20.i.i ]
  %.sink.i4.i = phi i8 [ %.lobit.i.i, %if.then.i.i ], [ 0, %if.else20.i.i ]
  %451 = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 49, i32 1
  %452 = ptrtoint ptr %451 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 8, ptr %451, align 4
  %453 = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 49, i32 1, i32 2
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %.sink37.i, ptr %453, align 2
  %single_ant_path32.i.i = getelementptr inbounds %struct.rtl_priv, ptr %436, i32 0, i32 49, i32 1, i32 3
  %455 = ptrtoint ptr %single_ant_path32.i.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %.sink.i4.i, ptr %single_ant_path32.i.i, align 1
  %ant_sel.i.i = getelementptr inbounds %struct.rtl_mod_params, ptr %440, i32 0, i32 11
  %456 = ptrtoint ptr %ant_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %ant_sel.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %tobool34.not.i.i = icmp eq i32 %457, 0
  br i1 %tobool34.not.i.i, label %if.end33.i.i.rtl8723be_read_bt_coexist_info_from_hwpg.exit.i_crit_edge, label %if.then35.i.i

if.end33.i.i.rtl8723be_read_bt_coexist_info_from_hwpg.exit.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i

if.then35.i.i:                                    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %457)
  %cmp.i.i = icmp eq i32 %457, 1
  %conv39.i.i = zext i1 %cmp.i.i to i8
  %458 = ptrtoint ptr %453 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %conv39.i.i, ptr %453, align 2
  %459 = ptrtoint ptr %ant_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %ant_sel.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %460)
  %cmp44.i.i = icmp eq i32 %460, 1
  %conv47.i.i = zext i1 %cmp44.i.i to i8
  %461 = ptrtoint ptr %single_ant_path32.i.i to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 %conv47.i.i, ptr %single_ant_path32.i.i, align 1
  br label %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i

rtl8723be_read_bt_coexist_info_from_hwpg.exit.i:  ; preds = %if.then35.i.i, %if.end33.i.i.rtl8723be_read_bt_coexist_info_from_hwpg.exit.i_crit_edge
  %btcoexist19.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 49, i32 1, i32 1
  %462 = ptrtoint ptr %btcoexist19.i to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %btcoexist19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %463)
  %cmp21.i = icmp eq i8 %463, 1
  br i1 %cmp21.i, label %if.then23.i, label %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i.if.end26.i_crit_edge

rtl8723be_read_bt_coexist_info_from_hwpg.exit.i.if.end26.i_crit_edge: ; preds = %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then23.i:                                      ; preds = %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 17
  %464 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %board_type.i, align 1
  %466 = or i8 %465, 4
  store i8 %466, ptr %board_type.i, align 1
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %rtl8723be_read_bt_coexist_info_from_hwpg.exit.i.if.end26.i_crit_edge
  %board_type27.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 17
  %467 = ptrtoint ptr %board_type27.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %board_type27.i, align 1
  %board_type28.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 10, i32 15
  %469 = ptrtoint ptr %board_type28.i to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %468, ptr %board_type28.i, align 1
  %conv30.i = zext i8 %468 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %27, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.49, i32 noundef %conv30.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i.i) #7
  %470 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 -1, ptr %value.i.i, align 1, !annotation !132
  call void @efuse_power_switch(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %call.i.i46 = call i32 @efuse_one_byte_read(ptr noundef %hw, i16 noundef zeroext 507, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i.i = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i.i, label %if.then.i5.i, label %if.end26.i.if.end.i7.i_crit_edge

if.end26.i.if.end.i7.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i7.i

if.then.i5.i:                                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %471 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 0, ptr %value.i.i, align 1
  br label %if.end.i7.i

if.end.i7.i:                                      ; preds = %if.then.i5.i, %if.end26.i.if.end.i7.i_crit_edge
  call void @efuse_power_switch(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %472 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %value.i.i, align 1
  %474 = and i8 %473, 7
  %and.i6.i = zext i8 %474 to i32
  %switch.tableidx = add nsw i32 %and.i6.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %475 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl nsw i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 50397700, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %package_type.0.i.i = select i1 %475, i8 %switch.masked, i8 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i.i) #7
  %package_type.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 10, i32 16
  %476 = ptrtoint ptr %package_type.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %package_type.0.i.i, ptr %package_type.i, align 2
  %eeprom_channelplan.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 15
  %477 = ptrtoint ptr %eeprom_channelplan.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %eeprom_channelplan.i, align 2
  %conv32.i = trunc i16 %478 to i8
  %channel_plan.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 65
  %479 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %conv32.i, ptr %channel_plan.i, align 1
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 10, i32 12
  %480 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %cmp34.i = icmp eq i8 %481, 0
  br i1 %cmp34.i, label %for.cond.preheader.i, label %if.end.i7.i.exit.i_crit_edge

if.end.i7.i.exit.i_crit_edge:                     ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

for.cond.preheader.i:                             ; preds = %if.end.i7.i
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 13
  %482 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %482)
  %483 = load i16, ptr %eeprom_smid.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24913, i16 %483)
  %cmp42.i49 = icmp eq i16 %483, 24913
  br i1 %cmp42.i49, label %for.cond.preheader.i.for.cond46.14.i_crit_edge, label %for.cond.preheader.i.for.cond.i_crit_edge

for.cond.preheader.i.for.cond.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.cond.i

for.cond.preheader.i.for.cond46.14.i_crit_edge:   ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond46.14.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i.for.cond.i_crit_edge
  %i.026.i50 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.cond.preheader.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.026.i50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx40.i = getelementptr [32 x i16], ptr @__const._rtl8723be_read_adapter_info.toshiba_smid1, i32 0, i32 %inc.i
  %484 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %484)
  %485 = load i16, ptr %arrayidx40.i, align 2
  %cmp42.i = icmp eq i16 %483, %485
  br i1 %cmp42.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.026.i50)
  %cmp37.i.le = icmp ult i32 %i.026.i50, 31
  %486 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %486, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %483, label %for.end.i.for.cond46.14.i_crit_edge [
    i16 24961, label %for.end.i.for.cond61.11.i_crit_edge
    i16 24964, label %for.end.i.for.cond61.11.i_crit_edge59
    i16 24965, label %for.end.i.for.end60.i_crit_edge
    i16 29057, label %for.end.i.for.end60.i_crit_edge60
    i16 29058, label %for.end.i.for.end60.i_crit_edge61
    i16 29060, label %for.end.i.for.end60.i_crit_edge62
    i16 29061, label %for.end.i.for.end60.i_crit_edge63
    i16 -32383, label %for.end.i.for.end60.i_crit_edge64
    i16 -32382, label %for.end.i.for.end60.i_crit_edge65
    i16 -32380, label %for.end.i.for.end60.i_crit_edge66
    i16 -32379, label %for.end.i.for.end60.i_crit_edge67
    i16 -28287, label %for.end.i.for.end60.i_crit_edge68
    i16 -28286, label %for.end.i.for.end60.i_crit_edge69
    i16 -28284, label %for.end.i.for.end60.i_crit_edge70
    i16 -28283, label %for.end.i.for.end60.i_crit_edge71
  ]

for.end.i.for.end60.i_crit_edge71:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge70:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge69:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge68:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge67:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge66:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge65:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge64:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge63:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge62:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge61:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge60:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.end60.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end60.i

for.end.i.for.cond61.11.i_crit_edge59:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond61.11.i

for.end.i.for.cond61.11.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond61.11.i

for.end.i.for.cond46.14.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond46.14.i

for.cond46.14.i:                                  ; preds = %for.end.i.for.cond46.14.i_crit_edge, %for.cond.preheader.i.for.cond46.14.i_crit_edge
  %cmp37.lcssa.i58 = phi i1 [ %cmp37.i.le, %for.end.i.for.cond46.14.i_crit_edge ], [ true, %for.cond.preheader.i.for.cond46.14.i_crit_edge ]
  br label %for.end60.i

for.end60.i:                                      ; preds = %for.cond46.14.i, %for.end.i.for.end60.i_crit_edge, %for.end.i.for.end60.i_crit_edge60, %for.end.i.for.end60.i_crit_edge61, %for.end.i.for.end60.i_crit_edge62, %for.end.i.for.end60.i_crit_edge63, %for.end.i.for.end60.i_crit_edge64, %for.end.i.for.end60.i_crit_edge65, %for.end.i.for.end60.i_crit_edge66, %for.end.i.for.end60.i_crit_edge67, %for.end.i.for.end60.i_crit_edge68, %for.end.i.for.end60.i_crit_edge69, %for.end.i.for.end60.i_crit_edge70, %for.end.i.for.end60.i_crit_edge71
  %cmp37.lcssa.i56 = phi i1 [ %cmp37.lcssa.i58, %for.cond46.14.i ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge60 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge61 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge62 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge63 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge64 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge65 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge66 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge67 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge68 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge69 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge70 ], [ %cmp37.i.le, %for.end.i.for.end60.i_crit_edge71 ]
  %cmp47.lcssa.ph.i = phi i1 [ true, %for.cond46.14.i ], [ false, %for.end.i.for.end60.i_crit_edge ], [ false, %for.end.i.for.end60.i_crit_edge60 ], [ false, %for.end.i.for.end60.i_crit_edge61 ], [ false, %for.end.i.for.end60.i_crit_edge62 ], [ false, %for.end.i.for.end60.i_crit_edge63 ], [ false, %for.end.i.for.end60.i_crit_edge64 ], [ false, %for.end.i.for.end60.i_crit_edge65 ], [ false, %for.end.i.for.end60.i_crit_edge66 ], [ false, %for.end.i.for.end60.i_crit_edge67 ], [ false, %for.end.i.for.end60.i_crit_edge68 ], [ false, %for.end.i.for.end60.i_crit_edge69 ], [ false, %for.end.i.for.end60.i_crit_edge70 ], [ false, %for.end.i.for.end60.i_crit_edge71 ]
  %487 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %487, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %483, label %for.cond61.7.i [
    i16 24977, label %for.end60.i.for.cond76.7.i_crit_edge
    i16 24978, label %for.end60.i.for.end75.i_crit_edge
    i16 24979, label %for.end60.i.for.end75.i_crit_edge72
    i16 29073, label %for.end60.i.for.end75.i_crit_edge73
    i16 29074, label %for.end60.i.for.end75.i_crit_edge74
    i16 29075, label %for.end60.i.for.end75.i_crit_edge75
    i16 -32367, label %for.end60.i.for.end75.i_crit_edge76
    i16 -32366, label %for.end60.i.for.end75.i_crit_edge77
  ]

for.end60.i.for.end75.i_crit_edge77:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge76:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge75:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge74:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge73:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge72:              ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.end75.i_crit_edge:                ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.end60.i.for.cond76.7.i_crit_edge:             ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond76.7.i

for.cond61.7.i:                                   ; preds = %for.end60.i
  %488 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %488, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %483, label %for.cond61.7.i.for.cond61.11.i_crit_edge [
    i16 -32365, label %for.cond61.7.i.for.end75.i_crit_edge
    i16 -28271, label %for.cond61.7.i.for.end75.i_crit_edge78
    i16 -28270, label %for.cond61.7.i.for.end75.i_crit_edge79
    i16 -28269, label %for.cond61.7.i.for.end75.i_crit_edge80
  ]

for.cond61.7.i.for.end75.i_crit_edge80:           ; preds = %for.cond61.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.cond61.7.i.for.end75.i_crit_edge79:           ; preds = %for.cond61.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.cond61.7.i.for.end75.i_crit_edge78:           ; preds = %for.cond61.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.cond61.7.i.for.end75.i_crit_edge:             ; preds = %for.cond61.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end75.i

for.cond61.7.i.for.cond61.11.i_crit_edge:         ; preds = %for.cond61.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond61.11.i

for.cond61.11.i:                                  ; preds = %for.cond61.7.i.for.cond61.11.i_crit_edge, %for.end.i.for.cond61.11.i_crit_edge, %for.end.i.for.cond61.11.i_crit_edge59
  %cmp37.lcssa.i57 = phi i1 [ %cmp37.i.le, %for.end.i.for.cond61.11.i_crit_edge ], [ %cmp37.i.le, %for.end.i.for.cond61.11.i_crit_edge59 ], [ %cmp37.lcssa.i56, %for.cond61.7.i.for.cond61.11.i_crit_edge ]
  %cmp47.lcssa404447505356596265687174.i = phi i1 [ false, %for.end.i.for.cond61.11.i_crit_edge ], [ false, %for.end.i.for.cond61.11.i_crit_edge59 ], [ %cmp47.lcssa.ph.i, %for.cond61.7.i.for.cond61.11.i_crit_edge ]
  br label %for.end75.i

for.end75.i:                                      ; preds = %for.cond61.11.i, %for.cond61.7.i.for.end75.i_crit_edge, %for.cond61.7.i.for.end75.i_crit_edge78, %for.cond61.7.i.for.end75.i_crit_edge79, %for.cond61.7.i.for.end75.i_crit_edge80, %for.end60.i.for.end75.i_crit_edge, %for.end60.i.for.end75.i_crit_edge72, %for.end60.i.for.end75.i_crit_edge73, %for.end60.i.for.end75.i_crit_edge74, %for.end60.i.for.end75.i_crit_edge75, %for.end60.i.for.end75.i_crit_edge76, %for.end60.i.for.end75.i_crit_edge77
  %cmp37.lcssa.i54 = phi i1 [ %cmp37.lcssa.i57, %for.cond61.11.i ], [ %cmp37.lcssa.i56, %for.cond61.7.i.for.end75.i_crit_edge ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge72 ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge73 ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge74 ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge75 ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge76 ], [ %cmp37.lcssa.i56, %for.end60.i.for.end75.i_crit_edge77 ], [ %cmp37.lcssa.i56, %for.cond61.7.i.for.end75.i_crit_edge78 ], [ %cmp37.lcssa.i56, %for.cond61.7.i.for.end75.i_crit_edge79 ], [ %cmp37.lcssa.i56, %for.cond61.7.i.for.end75.i_crit_edge80 ]
  %cmp47.lcssa41.ph.i = phi i1 [ %cmp47.lcssa404447505356596265687174.i, %for.cond61.11.i ], [ %cmp47.lcssa.ph.i, %for.cond61.7.i.for.end75.i_crit_edge ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge72 ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge73 ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge74 ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge75 ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge76 ], [ %cmp47.lcssa.ph.i, %for.end60.i.for.end75.i_crit_edge77 ], [ %cmp47.lcssa.ph.i, %for.cond61.7.i.for.end75.i_crit_edge78 ], [ %cmp47.lcssa.ph.i, %for.cond61.7.i.for.end75.i_crit_edge79 ], [ %cmp47.lcssa.ph.i, %for.cond61.7.i.for.end75.i_crit_edge80 ]
  %cmp62.lcssa.ph.i = phi i1 [ false, %for.cond61.11.i ], [ true, %for.cond61.7.i.for.end75.i_crit_edge ], [ true, %for.end60.i.for.end75.i_crit_edge ], [ true, %for.end60.i.for.end75.i_crit_edge72 ], [ true, %for.end60.i.for.end75.i_crit_edge73 ], [ true, %for.end60.i.for.end75.i_crit_edge74 ], [ true, %for.end60.i.for.end75.i_crit_edge75 ], [ true, %for.end60.i.for.end75.i_crit_edge76 ], [ true, %for.end60.i.for.end75.i_crit_edge77 ], [ true, %for.cond61.7.i.for.end75.i_crit_edge78 ], [ true, %for.cond61.7.i.for.end75.i_crit_edge79 ], [ true, %for.cond61.7.i.for.end75.i_crit_edge80 ]
  %489 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %489, ptr @__sancov_gen_cov_switch_values.69)
  switch i16 %483, label %for.end75.i.for.cond76.7.i_crit_edge [
    i16 -32363, label %for.end75.i.for.end90.i_crit_edge
    i16 -28267, label %for.end75.i.for.end90.i_crit_edge81
    i16 29076, label %for.end75.i.for.end90.i_crit_edge82
    i16 -32256, label %for.end75.i.for.end90.i_crit_edge83
    i16 -32255, label %for.end75.i.for.end90.i_crit_edge84
    i16 -32254, label %for.end75.i.for.end90.i_crit_edge85
    i16 -28263, label %for.end75.i.for.end90.i_crit_edge86
    i16 -28160, label %for.end75.i.for.end90.i_crit_edge87
  ]

for.end75.i.for.end90.i_crit_edge87:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge86:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge85:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge84:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge83:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge82:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge81:              ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.end90.i_crit_edge:                ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end90.i

for.end75.i.for.cond76.7.i_crit_edge:             ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond76.7.i

for.cond76.7.i:                                   ; preds = %for.end75.i.for.cond76.7.i_crit_edge, %for.end60.i.for.cond76.7.i_crit_edge
  %cmp37.lcssa.i55 = phi i1 [ %cmp37.lcssa.i56, %for.end60.i.for.cond76.7.i_crit_edge ], [ %cmp37.lcssa.i54, %for.end75.i.for.cond76.7.i_crit_edge ]
  %cmp47.lcssa4179879197101107111117.i = phi i1 [ %cmp47.lcssa.ph.i, %for.end60.i.for.cond76.7.i_crit_edge ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.cond76.7.i_crit_edge ]
  %cmp62.lcssa81869296102106112116.i = phi i1 [ true, %for.end60.i.for.cond76.7.i_crit_edge ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.cond76.7.i_crit_edge ]
  br label %for.end90.i

for.end90.i:                                      ; preds = %for.cond76.7.i, %for.end75.i.for.end90.i_crit_edge, %for.end75.i.for.end90.i_crit_edge81, %for.end75.i.for.end90.i_crit_edge82, %for.end75.i.for.end90.i_crit_edge83, %for.end75.i.for.end90.i_crit_edge84, %for.end75.i.for.end90.i_crit_edge85, %for.end75.i.for.end90.i_crit_edge86, %for.end75.i.for.end90.i_crit_edge87
  %cmp37.lcssa.i53 = phi i1 [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge ], [ %cmp37.lcssa.i55, %for.cond76.7.i ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge81 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge82 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge83 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge84 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge85 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge86 ], [ %cmp37.lcssa.i54, %for.end75.i.for.end90.i_crit_edge87 ]
  %cmp62.lcssa82.i = phi i1 [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge ], [ %cmp62.lcssa81869296102106112116.i, %for.cond76.7.i ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge81 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge82 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge83 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge84 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge85 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge86 ], [ %cmp62.lcssa.ph.i, %for.end75.i.for.end90.i_crit_edge87 ]
  %cmp47.lcssa4180.i = phi i1 [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge ], [ %cmp47.lcssa4179879197101107111117.i, %for.cond76.7.i ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge81 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge82 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge83 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge84 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge85 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge86 ], [ %cmp47.lcssa41.ph.i, %for.end75.i.for.end90.i_crit_edge87 ]
  %cmp77.lcssa.i = phi i1 [ true, %for.end75.i.for.end90.i_crit_edge ], [ false, %for.cond76.7.i ], [ true, %for.end75.i.for.end90.i_crit_edge81 ], [ true, %for.end75.i.for.end90.i_crit_edge82 ], [ true, %for.end75.i.for.end90.i_crit_edge83 ], [ true, %for.end75.i.for.end90.i_crit_edge84 ], [ true, %for.end75.i.for.end90.i_crit_edge85 ], [ true, %for.end75.i.for.end90.i_crit_edge86 ], [ true, %for.end75.i.for.end90.i_crit_edge87 ]
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 14
  %490 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %eeprom_oemid.i, align 4
  %492 = zext i8 %491 to i64
  call void @__sanitizer_cov_trace_switch(i64 %492, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %491, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 4, label %for.end90.i.exit.sink.split.i_crit_edge
    i8 16, label %sw.bb310.i
    i8 13, label %sw.bb312.i
    i8 -2, label %for.end90.i.exit.i_crit_edge
  ]

for.end90.i.exit.i_crit_edge:                     ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

for.end90.i.exit.sink.split.i_crit_edge:          ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.bb.i:                                          ; preds = %for.end90.i
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 11
  %493 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %eeprom_did.i, align 2
  %495 = zext i16 %494 to i64
  call void @__sanitizer_cov_trace_switch(i64 %495, ptr @__sancov_gen_cov_switch_values.71)
  switch i16 %494, label %sw.bb.i.exit.sink.split.i_crit_edge [
    i16 -32394, label %if.then95.i
    i16 -32392, label %if.then257.i
  ]

sw.bb.i.exit.sink.split.i_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.then95.i:                                      ; preds = %sw.bb.i
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 12
  %496 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %eeprom_svid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %497)
  %cmp97.i = icmp eq i16 %497, 4332
  %498 = select i1 %cmp97.i, i1 %cmp37.lcssa.i53, i1 false
  br i1 %498, label %if.then95.i.exit.sink.split.i_crit_edge, label %if.else.i

if.then95.i.exit.sink.split.i_crit_edge:          ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else.i:                                        ; preds = %if.then95.i
  %499 = zext i16 %497 to i64
  call void @__sanitizer_cov_trace_switch(i64 %499, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %497, label %if.else.i.if.else119.i_crit_edge [
    i16 4133, label %if.else.i.exit.sink.split.i_crit_edge
    i16 4332, label %land.lhs.true114.i
  ]

if.else.i.exit.sink.split.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else.i.if.else119.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else119.i

land.lhs.true114.i:                               ; preds = %if.else.i
  br i1 %cmp62.lcssa82.i, label %land.lhs.true114.i.exit.sink.split.i_crit_edge, label %land.lhs.true114.i.if.else119.i_crit_edge

land.lhs.true114.i.if.else119.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else119.i

land.lhs.true114.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else119.i:                                     ; preds = %land.lhs.true114.i.if.else119.i_crit_edge, %if.else.i.if.else119.i_crit_edge
  %500 = and i1 %cmp77.lcssa.i, %cmp97.i
  br i1 %500, label %if.else119.i.exit.sink.split.i_crit_edge, label %if.else129.i

if.else119.i.exit.sink.split.i_crit_edge:         ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else129.i:                                     ; preds = %if.else119.i
  br i1 %cmp97.i, label %land.lhs.true134.i, label %if.else150.i

land.lhs.true134.i:                               ; preds = %if.else129.i
  %501 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %501, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %483, label %land.lhs.true134.i.if.else240.i_crit_edge [
    i16 -32361, label %land.lhs.true134.i.exit.sink.split.i_crit_edge
    i16 -28266, label %land.lhs.true134.i.exit.sink.split.i_crit_edge88
    i16 -32253, label %exit.sink.split.i.fold.split
  ]

land.lhs.true134.i.exit.sink.split.i_crit_edge88: ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true134.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true134.i.if.else240.i_crit_edge:        ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

if.else150.i:                                     ; preds = %if.else129.i
  %502 = zext i16 %497 to i64
  call void @__sanitizer_cov_trace_switch(i64 %502, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %497, label %if.else150.i.if.else240.i_crit_edge [
    i16 4136, label %land.lhs.true155.i
    i16 4156, label %land.lhs.true197.i
    i16 6706, label %land.lhs.true209.i
    i16 4163, label %land.lhs.true233.i
  ]

if.else150.i.if.else240.i_crit_edge:              ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

land.lhs.true155.i:                               ; preds = %if.else150.i
  %503 = zext i16 %483 to i64
  call void @__sanitizer_cov_trace_switch(i64 %503, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %483, label %land.lhs.true155.i.if.else240.i_crit_edge [
    i16 -32364, label %land.lhs.true155.i.exit.sink.split.i_crit_edge
    i16 -32360, label %land.lhs.true155.i.exit.sink.split.i_crit_edge89
    i16 -28265, label %land.lhs.true155.i.exit.sink.split.i_crit_edge90
    i16 -28264, label %land.lhs.true155.i.exit.sink.split.i_crit_edge91
  ]

land.lhs.true155.i.exit.sink.split.i_crit_edge91: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true155.i.exit.sink.split.i_crit_edge90: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true155.i.exit.sink.split.i_crit_edge89: ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true155.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true155.i.if.else240.i_crit_edge:        ; preds = %land.lhs.true155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

land.lhs.true197.i:                               ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5673, i16 %483)
  %cmp200.i = icmp eq i16 %483, 5673
  br i1 %cmp200.i, label %land.lhs.true197.i.exit.sink.split.i_crit_edge, label %land.lhs.true197.i.if.else240.i_crit_edge

land.lhs.true197.i.if.else240.i_crit_edge:        ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

land.lhs.true197.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true209.i:                               ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8981, i16 %483)
  %cmp212.i = icmp eq i16 %483, 8981
  br i1 %cmp212.i, label %land.lhs.true209.i.exit.sink.split.i_crit_edge, label %land.lhs.true209.i.if.else240.i_crit_edge

land.lhs.true209.i.if.else240.i_crit_edge:        ; preds = %land.lhs.true209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

land.lhs.true209.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true209.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true233.i:                               ; preds = %if.else150.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31563, i16 %483)
  %cmp236.i = icmp eq i16 %483, -31563
  br i1 %cmp236.i, label %land.lhs.true233.i.exit.sink.split.i_crit_edge, label %land.lhs.true233.i.if.else240.i_crit_edge

land.lhs.true233.i.if.else240.i_crit_edge:        ; preds = %land.lhs.true233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else240.i

land.lhs.true233.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else240.i:                                     ; preds = %land.lhs.true233.i.if.else240.i_crit_edge, %land.lhs.true209.i.if.else240.i_crit_edge, %land.lhs.true197.i.if.else240.i_crit_edge, %land.lhs.true155.i.if.else240.i_crit_edge, %if.else150.i.if.else240.i_crit_edge, %land.lhs.true134.i.if.else240.i_crit_edge
  br label %exit.sink.split.i

if.then257.i:                                     ; preds = %sw.bb.i
  %eeprom_svid258.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 17, i32 12
  %504 = ptrtoint ptr %eeprom_svid258.i to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %eeprom_svid258.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4332, i16 %505)
  %cmp260.i = icmp ne i16 %505, 4332
  %brmerge2.i = or i1 %cmp47.lcssa4180.i, %cmp260.i
  br i1 %brmerge2.i, label %if.else267.i, label %if.then257.i.exit.sink.split.i_crit_edge

if.then257.i.exit.sink.split.i_crit_edge:         ; preds = %if.then257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else267.i:                                     ; preds = %if.then257.i
  %506 = zext i16 %505 to i64
  call void @__sanitizer_cov_trace_switch(i64 %506, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %505, label %if.else267.i.if.else298.i_crit_edge [
    i16 4133, label %if.else267.i.exit.sink.split.i_crit_edge
    i16 4332, label %land.lhs.true279.i
    i16 4163, label %land.lhs.true291.i
  ]

if.else267.i.exit.sink.split.i_crit_edge:         ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else267.i.if.else298.i_crit_edge:              ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else298.i

land.lhs.true279.i:                               ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32378, i16 %483)
  %cmp282.i = icmp eq i16 %483, -32378
  br i1 %cmp282.i, label %land.lhs.true279.i.exit.sink.split.i_crit_edge, label %land.lhs.true279.i.if.else298.i_crit_edge

land.lhs.true279.i.if.else298.i_crit_edge:        ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else298.i

land.lhs.true279.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

land.lhs.true291.i:                               ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31562, i16 %483)
  %cmp294.i = icmp eq i16 %483, -31562
  br i1 %cmp294.i, label %land.lhs.true291.i.exit.sink.split.i_crit_edge, label %land.lhs.true291.i.if.else298.i_crit_edge

land.lhs.true291.i.if.else298.i_crit_edge:        ; preds = %land.lhs.true291.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else298.i

land.lhs.true291.i.exit.sink.split.i_crit_edge:   ; preds = %land.lhs.true291.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

if.else298.i:                                     ; preds = %land.lhs.true291.i.if.else298.i_crit_edge, %land.lhs.true279.i.if.else298.i_crit_edge, %if.else267.i.if.else298.i_crit_edge
  br label %exit.sink.split.i

sw.bb310.i:                                       ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.bb312.i:                                       ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

sw.default.i:                                     ; preds = %for.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

exit.sink.split.i.fold.split:                     ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %exit.sink.split.i.fold.split, %sw.default.i, %sw.bb312.i, %sw.bb310.i, %if.else298.i, %land.lhs.true291.i.exit.sink.split.i_crit_edge, %land.lhs.true279.i.exit.sink.split.i_crit_edge, %if.else267.i.exit.sink.split.i_crit_edge, %if.then257.i.exit.sink.split.i_crit_edge, %if.else240.i, %land.lhs.true233.i.exit.sink.split.i_crit_edge, %land.lhs.true209.i.exit.sink.split.i_crit_edge, %land.lhs.true197.i.exit.sink.split.i_crit_edge, %land.lhs.true155.i.exit.sink.split.i_crit_edge, %land.lhs.true155.i.exit.sink.split.i_crit_edge89, %land.lhs.true155.i.exit.sink.split.i_crit_edge90, %land.lhs.true155.i.exit.sink.split.i_crit_edge91, %land.lhs.true134.i.exit.sink.split.i_crit_edge, %land.lhs.true134.i.exit.sink.split.i_crit_edge88, %if.else119.i.exit.sink.split.i_crit_edge, %land.lhs.true114.i.exit.sink.split.i_crit_edge, %if.else.i.exit.sink.split.i_crit_edge, %if.then95.i.exit.sink.split.i_crit_edge, %sw.bb.i.exit.sink.split.i_crit_edge, %for.end90.i.exit.sink.split.i_crit_edge
  %.sink118.i = phi i8 [ 0, %if.else240.i ], [ 0, %if.else298.i ], [ 0, %sw.default.i ], [ 19, %sw.bb312.i ], [ 17, %sw.bb310.i ], [ 9, %if.then95.i.exit.sink.split.i_crit_edge ], [ 24, %if.else.i.exit.sink.split.i_crit_edge ], [ 30, %land.lhs.true114.i.exit.sink.split.i_crit_edge ], [ 18, %if.else119.i.exit.sink.split.i_crit_edge ], [ 28, %land.lhs.true134.i.exit.sink.split.i_crit_edge ], [ 33, %land.lhs.true155.i.exit.sink.split.i_crit_edge ], [ 27, %land.lhs.true197.i.exit.sink.split.i_crit_edge ], [ 19, %land.lhs.true209.i.exit.sink.split.i_crit_edge ], [ 35, %land.lhs.true233.i.exit.sink.split.i_crit_edge ], [ 9, %if.then257.i.exit.sink.split.i_crit_edge ], [ 24, %if.else267.i.exit.sink.split.i_crit_edge ], [ 34, %land.lhs.true279.i.exit.sink.split.i_crit_edge ], [ 35, %land.lhs.true291.i.exit.sink.split.i_crit_edge ], [ 0, %sw.bb.i.exit.sink.split.i_crit_edge ], [ 9, %for.end90.i.exit.sink.split.i_crit_edge ], [ 28, %land.lhs.true134.i.exit.sink.split.i_crit_edge88 ], [ 33, %land.lhs.true155.i.exit.sink.split.i_crit_edge89 ], [ 33, %land.lhs.true155.i.exit.sink.split.i_crit_edge90 ], [ 33, %land.lhs.true155.i.exit.sink.split.i_crit_edge91 ], [ 34, %exit.sink.split.i.fold.split ]
  %507 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %.sink118.i, ptr %oem_id.i, align 1
  br label %exit.i

exit.i:                                           ; preds = %exit.sink.split.i, %for.end90.i.exit.i_crit_edge, %if.end.i7.i.exit.i_crit_edge, %if.end6.i.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %_rtl8723be_read_adapter_info.exit

_rtl8723be_read_adapter_info.exit:                ; preds = %exit.i, %if.then22._rtl8723be_read_adapter_info.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params.i) #7
  br label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end25

if.end25:                                         ; preds = %do.end, %_rtl8723be_read_adapter_info.exit
  %508 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %priv, align 8
  %ledctl.i = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 18
  %oem_id.i48 = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 10, i32 12
  %510 = ptrtoint ptr %oem_id.i48 to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %oem_id.i48, align 1
  %512 = ptrtoint ptr %ledctl.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 1, ptr %ledctl.i, align 8
  %conv7.i = zext i8 %511 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %509, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.55, i32 noundef %conv7.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  %rate_mask.i = alloca [7 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %4 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ht_cap.i, align 4
  %6 = trunc i16 %5 to i8
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rate_mask.i) #7
  %9 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 1
  %10 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 3
  %12 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 4
  %13 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 5
  %14 = getelementptr inbounds [7 x i8], ptr %rate_mask.i, i32 0, i32 6
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %15 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rate_mask.i, align 4
  %16 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %19, label %if.then.if.end32.i_crit_edge [
    i32 2, label %if.then.if.then.i_crit_edge
    i32 7, label %if.then.if.then.i_crit_edge3
    i32 3, label %if.then.if.then29.i_crit_edge
    i32 1, label %if.then.if.then29.i_crit_edge4
  ]

if.then.if.then29.i_crit_edge4:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.then.if.then29.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29.i

if.then.if.then.i_crit_edge3:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.if.end32.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then.i:                                        ; preds = %if.then.if.then.i_crit_edge, %if.then.if.then.i_crit_edge3
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %21 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bw_40.i, align 1
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.then.if.then29.i_crit_edge, %if.then.if.then29.i_crit_edge4
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %23 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %aid.i, align 2
  %conv30.i = trunc i16 %24 to i8
  %add.i = add i8 %conv30.i, 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.then.i, %if.then.if.end32.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %22, %if.then.i ], [ %8, %if.then29.i ], [ %8, %if.then.if.end32.i_crit_edge ]
  %macid.0.i = phi i8 [ 0, %if.then.i ], [ %add.i, %if.then29.i ], [ 0, %if.then.if.end32.i_crit_edge ]
  %25 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp34.i = icmp eq i32 %19, 1
  %spec.store.select.i = select i1 %cmp34.i, i32 4095, i32 %26
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx39.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %28 to i32
  %shl.i = shl nuw nsw i32 %conv40.i, 20
  %29 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mcs.i, align 1
  %conv45.i = zext i8 %30 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 12
  %or.i = or i32 %shl.i, %spec.store.select.i
  %or47.i = or i32 %or.i, %shl46.i
  %31 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %17, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb55.i
    i16 16, label %if.end32.i.sw.bb71.i_crit_edge
    i16 32, label %if.end32.i.sw.bb71.i_crit_edge5
  ]

if.end32.i.sw.bb71.i_crit_edge5:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i

if.end32.i.sw.bb71.i_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71.i

sw.bb.i:                                          ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %and48.i = and i32 %spec.store.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  %ratr_bitmap.1.v.i = select i1 %tobool49.not.i, i32 15, i32 13
  %ratr_bitmap.1.i = and i32 %ratr_bitmap.1.v.i, %spec.store.select.i
  %ratr_index177.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %32 = ptrtoint ptr %ratr_index177.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 6, ptr %ratr_index177.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef %ratr_bitmap.1.i) #7
  %33 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %macid.0.i, ptr %rate_mask.i, align 4
  br label %_rtl8723be_mrate_idx_to_arfr_id.exit.i

sw.bb55.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp.i = icmp eq i8 %rssi_level, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4080, i32 4085
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp329.i = icmp eq i8 %rssi_level, 1
  %switch.select330.i = select i1 %switch.selectcmp329.i, i32 3840, i32 %switch.select.i
  %and60.i = and i32 %spec.store.select.i, %switch.select330.i
  %ratr_index177319.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %34 = ptrtoint ptr %ratr_index177319.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 4, ptr %ratr_index177319.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef %and60.i) #7
  %35 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %macid.0.i, ptr %rate_mask.i, align 4
  br label %_rtl8723be_mrate_idx_to_arfr_id.exit.i

sw.bb71.i:                                        ; preds = %if.end32.i.sw.bb71.i_crit_edge, %if.end32.i.sw.bb71.i_crit_edge5
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %36 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp73.i = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool76.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rssi_level)
  %switch.selectcmp335.i = icmp eq i8 %rssi_level, 2
  br i1 %cmp73.i, label %if.then75.i, label %if.else110.i

if.then75.i:                                      ; preds = %sw.bb71.i
  br i1 %tobool76.not.i, label %if.else93.i, label %if.then77.i

if.then77.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select332.i = select i1 %switch.selectcmp335.i, i32 1044480, i32 1044501
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp333.i = icmp eq i8 %rssi_level, 1
  %switch.select334.i = select i1 %switch.selectcmp333.i, i32 983040, i32 %switch.select332.i
  br label %if.end145.i

if.else93.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select336.i = select i1 %switch.selectcmp335.i, i32 1044480, i32 1044485
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp337.i = icmp eq i8 %rssi_level, 1
  %switch.select338.i = select i1 %switch.selectcmp337.i, i32 983040, i32 %switch.select336.i
  br label %lor.lhs.false150.i

if.else110.i:                                     ; preds = %sw.bb71.i
  br i1 %tobool76.not.i, label %if.else128.i, label %if.then112.i

if.then112.i:                                     ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select340.i = select i1 %switch.selectcmp335.i, i32 261091328, i32 261091349
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp341.i = icmp eq i8 %rssi_level, 1
  %switch.select342.i = select i1 %switch.selectcmp341.i, i32 261029888, i32 %switch.select340.i
  br label %if.end145.i

if.else128.i:                                     ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.select344.i = select i1 %switch.selectcmp335.i, i32 261091328, i32 261091333
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rssi_level)
  %switch.selectcmp345.i = icmp eq i8 %rssi_level, 1
  %switch.select346.i = select i1 %switch.selectcmp345.i, i32 261029888, i32 %switch.select344.i
  br label %lor.lhs.false150.i

if.end145.i:                                      ; preds = %if.then112.i, %if.then77.i
  %.sink.i = phi i32 [ %switch.select334.i, %if.then77.i ], [ %switch.select342.i, %if.then112.i ]
  %and123.i = and i32 %.sink.i, %or47.i
  %38 = and i16 %5, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool149.not.i = icmp eq i16 %38, 0
  br i1 %tobool149.not.i, label %if.end145.i.sw.epilog.thread.i_crit_edge, label %if.end145.i.if.then155.i_crit_edge

if.end145.i.if.then155.i_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then155.i

if.end145.i.sw.epilog.thread.i_crit_edge:         ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

lor.lhs.false150.i:                               ; preds = %if.else128.i, %if.else93.i
  %.sink327.i = phi i32 [ %switch.select338.i, %if.else93.i ], [ %switch.select346.i, %if.else128.i ]
  %and139.i = and i32 %.sink327.i, %or47.i
  %39 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool154.not.i = icmp eq i16 %39, 0
  br i1 %tobool154.not.i, label %lor.lhs.false150.i.sw.epilog.thread.i_crit_edge, label %lor.lhs.false150.i.if.then155.i_crit_edge

lor.lhs.false150.i.if.then155.i_crit_edge:        ; preds = %lor.lhs.false150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then155.i

lor.lhs.false150.i.sw.epilog.thread.i_crit_edge:  ; preds = %lor.lhs.false150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

if.then155.i:                                     ; preds = %lor.lhs.false150.i.if.then155.i_crit_edge, %if.end145.i.if.then155.i_crit_edge
  %ratr_bitmap.0296.i = phi i32 [ %and139.i, %lor.lhs.false150.i.if.then155.i_crit_edge ], [ %and123.i, %if.end145.i.if.then155.i_crit_edge ]
  %40 = zext i8 %macid.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %macid.0.i, label %sw.epilog.fold.split.i [
    i8 0, label %if.then155.i.sw.epilog.thread.i_crit_edge
    i8 1, label %if.then164.i
  ]

if.then155.i.sw.epilog.thread.i_crit_edge:        ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

if.then164.i:                                     ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.default.i:                                     ; preds = %if.end32.i
  %rf_type168.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %41 = ptrtoint ptr %rf_type168.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rf_type168.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp170.i = icmp eq i8 %42, 1
  br i1 %cmp170.i, label %if.then172.i, label %if.else174.i

if.then172.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and173.i = and i32 %or47.i, 1044735
  br label %sw.epilog.thread.i

if.else174.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and175.i = and i32 %or47.i, 252702975
  br label %sw.epilog.thread.i

sw.epilog.fold.split.i:                           ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %sw.epilog.fold.split.i, %if.else174.i, %if.then172.i, %if.then164.i, %if.then155.i.sw.epilog.thread.i_crit_edge, %lor.lhs.false150.i.sw.epilog.thread.i_crit_edge, %if.end145.i.sw.epilog.thread.i_crit_edge
  %ratr_bitmap.1.ph.i = phi i32 [ %ratr_bitmap.0296.i, %sw.epilog.fold.split.i ], [ %ratr_bitmap.0296.i, %if.then155.i.sw.epilog.thread.i_crit_edge ], [ %and139.i, %lor.lhs.false150.i.sw.epilog.thread.i_crit_edge ], [ %ratr_bitmap.0296.i, %if.then164.i ], [ %and175.i, %if.else174.i ], [ %and173.i, %if.then172.i ], [ %and123.i, %if.end145.i.sw.epilog.thread.i_crit_edge ]
  %shortgi.0.off0.ph.i = phi i8 [ 0, %sw.epilog.fold.split.i ], [ -128, %if.then155.i.sw.epilog.thread.i_crit_edge ], [ 0, %lor.lhs.false150.i.sw.epilog.thread.i_crit_edge ], [ 0, %if.then164.i ], [ 0, %if.else174.i ], [ 0, %if.then172.i ], [ 0, %if.end145.i.sw.epilog.thread.i_crit_edge ]
  %ratr_index177305.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %43 = ptrtoint ptr %ratr_index177305.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ratr_index177305.i, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.56, i32 noundef %ratr_bitmap.1.ph.i) #7
  %44 = ptrtoint ptr %rate_mask.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %macid.0.i, ptr %rate_mask.i, align 4
  br label %_rtl8723be_mrate_idx_to_arfr_id.exit.i

_rtl8723be_mrate_idx_to_arfr_id.exit.i:           ; preds = %sw.epilog.thread.i, %sw.bb55.i, %sw.bb.i
  %conv179312.i = phi i32 [ 6, %sw.bb.i ], [ 4, %sw.bb55.i ], [ 0, %sw.epilog.thread.i ]
  %shortgi.0.off0311.i = phi i8 [ 0, %sw.bb.i ], [ 0, %sw.bb55.i ], [ %shortgi.0.off0.ph.i, %sw.epilog.thread.i ]
  %ratr_bitmap.1310.i = phi i32 [ %ratr_bitmap.1.i, %sw.bb.i ], [ %and60.i, %sw.bb55.i ], [ %ratr_bitmap.1.ph.i, %sw.epilog.thread.i ]
  %ret.0.i.i = phi i8 [ 8, %sw.bb.i ], [ 6, %sw.bb55.i ], [ 1, %sw.epilog.thread.i ]
  %or187.i = or i8 %ret.0.i.i, %shortgi.0.off0311.i
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or187.i, ptr %9, align 1
  %shl192.i = select i1 %update_bw, i8 0, i8 8
  %or193.i = or i8 %curtxbw_40mhz.0.i, %shl192.i
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %or193.i, ptr %10, align 2
  %conv197.i = trunc i32 %ratr_bitmap.1310.i to i8
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv197.i, ptr %11, align 1
  %and199.i = lshr i32 %ratr_bitmap.1310.i, 8
  %conv200.i = trunc i32 %and199.i to i8
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv200.i, ptr %12, align 4
  %and202.i = lshr i32 %ratr_bitmap.1310.i, 16
  %conv204.i = trunc i32 %and202.i to i8
  %49 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv204.i, ptr %13, align 1
  %shr207.i = lshr i32 %ratr_bitmap.1310.i, 24
  %conv208.i = trunc i32 %shr207.i to i8
  %50 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv208.i, ptr %14, align 2
  %conv212.i = zext i8 %macid.0.i to i32
  %conv214.i = zext i8 %or187.i to i32
  %conv216.i = zext i8 %or193.i to i32
  %conv218.i = and i32 %ratr_bitmap.1310.i, 255
  %conv220.i = and i32 %and199.i, 255
  %conv222.i = and i32 %and202.i, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.57, i32 noundef %conv179312.i, i32 noundef %ratr_bitmap.1310.i, i32 noundef %conv212.i, i32 noundef %conv214.i, i32 noundef %conv216.i, i32 noundef %conv218.i, i32 noundef %conv220.i, i32 noundef %conv222.i, i32 noundef %shr207.i) #7
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 64, i32 noundef 7, ptr noundef nonnull %rate_mask.i) #7
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %reg_bcn_ctrl_val.i.i = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %reg_bcn_ctrl_val.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_bcn_ctrl_val.i.i, align 4
  %or.i.i = or i32 %54, 8
  store i32 %or.i.i, ptr %reg_bcn_ctrl_val.i.i, align 4
  %conv6.i.i = trunc i32 %or.i.i to i8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 13, i32 5
  %55 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %56(ptr noundef %52, i32 noundef 1360, i8 noundef zeroext %conv6.i.i) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i.i.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i.i.i, label %_rtl8723be_mrate_idx_to_arfr_id.exit.i.rtl8723be_update_hal_rate_mask.exit_crit_edge, label %if.then.i.i.i

_rtl8723be_mrate_idx_to_arfr_id.exit.i.rtl8723be_update_hal_rate_mask.exit_crit_edge: ; preds = %_rtl8723be_mrate_idx_to_arfr_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8723be_update_hal_rate_mask.exit

if.then.i.i.i:                                    ; preds = %_rtl8723be_mrate_idx_to_arfr_id.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 13, i32 9
  %61 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %62(ptr noundef %52, i32 noundef 1360) #7
  br label %rtl8723be_update_hal_rate_mask.exit

rtl8723be_update_hal_rate_mask.exit:              ; preds = %if.then.i.i.i, %_rtl8723be_mrate_idx_to_arfr_id.exit.i.rtl8723be_update_hal_rate_mask.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rate_mask.i) #7
  br label %if.end

if.end:                                           ; preds = %rtl8723be_update_hal_rate_mask.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
define dso_local zeroext i1 @rtl8723be_gpio_radio_on_off_checking(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
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
  %3 = load i8, ptr %being_init_adapter, align 1, !range !133
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
  %5 = load i8, ptr %swrf_processing, align 1, !range !133
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
  %7 = load i8, ptr %rfchange_inprogress, align 2, !range !133
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
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 98) #7
  %11 = and i8 %call.i, -3
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write8_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 98, i8 noundef zeroext %11) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.else.rtl_write_byte.exit_crit_edge, label %if.then.i

if.else.rtl_write_byte.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i, align 4
  %call.i95 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 98) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.else.rtl_write_byte.exit_crit_edge
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i97 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 96) #7
  %polarity_ctl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 62
  %22 = ptrtoint ptr %polarity_ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %polarity_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  %24 = and i8 %call.i97, 2
  %25 = xor i8 %24, 2
  %e_rfpowerstate_toset.0.in = select i1 %tobool15.not, i8 %25, i8 %24
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %26 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hwradiooff, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp ne i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %e_rfpowerstate_toset.0.in)
  %cmp = icmp eq i8 %e_rfpowerstate_toset.0.in, 0
  %or.cond = select i1 %tobool26.not, i1 %cmp, i1 false
  br i1 %or.cond, label %rtl_write_byte.exit.if.then42_crit_edge, label %if.else31

rtl_write_byte.exit.if.then42_crit_edge:          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.else31:                                        ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %e_rfpowerstate_toset.0.in)
  %cmp35 = icmp eq i8 %e_rfpowerstate_toset.0.in, 2
  %or.cond93 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond93, label %if.else31.if.then42_crit_edge, label %if.else48

if.else31.if.then42_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then42

if.then42:                                        ; preds = %if.else31.if.then42_crit_edge, %rtl_write_byte.exit.if.then42_crit_edge
  %.str.24.sink = phi ptr [ @.str.23, %rtl_write_byte.exit.if.then42_crit_edge ], [ @.str.24, %if.else31.if.then42_crit_edge ]
  %storemerge = phi i8 [ 0, %rtl_write_byte.exit.if.then42_crit_edge ], [ 1, %if.else31.if.then42_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.24.sink) #7
  %28 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge, ptr %hwradiooff, align 4
  br label %if.end58

if.else48:                                        ; preds = %if.else31
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %29 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_rfps_level, align 4
  %and49 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else48.if.end58_crit_edge, label %if.then51

if.else48.if.end58_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #9
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %31 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %32, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then51, %if.else48.if.end58_crit_edge, %if.then42
  tail call void @_raw_spin_lock(ptr noundef %rf_ps_lock) #7
  %33 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %rf_ps_lock) #7
  %34 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %valid, align 1
  %35 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hwradiooff, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool60.not = icmp eq i8 %36, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ %tobool60.not, %if.end58 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.25) #7
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
  br i1 %12, label %switch.hole_check, label %if.else.sw.default_crit_edge

if.else.sw.default_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %if.else.sw.default_crit_edge
  %conv21 = zext i8 %enc_algo to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv21) #7
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.else
  %switch.shifted = lshr i8 27, %switch.tableidx
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl8723be_set_key, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.default
  %enc_algo.addr.0 = phi i32 [ 2, %sw.default ], [ %switch.load, %switch.lookup ]
  br i1 %is_wepkey, label %sw.epilog.if.then31_crit_edge, label %lor.lhs.false

sw.epilog.if.then31_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

lor.lhs.false:                                    ; preds = %sw.epilog
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %16 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %use_defaultkey, align 2, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl8723be_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end50

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end50_crit_edge, label %if.else37

if.else34.if.end50_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp38 = icmp eq i32 %19, 3
  br i1 %cmp38, label %if.then40, label %if.else37.if.end50_crit_edge

if.else37.if.end50_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then40:                                        ; preds = %if.else37
  %call = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  %conv41 = zext i8 %call to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call)
  %cmp42 = icmp ugt i8 %call, 31
  br i1 %cmp42, label %do.end, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end50:                                         ; preds = %if.then40.if.end50_crit_edge, %if.else37.if.end50_crit_edge, %if.else34.if.end50_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl8723be_set_key.cam_const_broad, %if.else34.if.end50_crit_edge ], [ %p_macaddr, %if.else37.if.end50_crit_edge ], [ %p_macaddr, %if.then40.if.end50_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end50_crit_edge ], [ 4, %if.else37.if.end50_crit_edge ], [ %conv41, %if.then40.if.end50_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end50_crit_edge ], [ true, %if.else37.if.end50_crit_edge ], [ true, %if.then40.if.end50_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end50_crit_edge ], [ 0, %if.else37.if.end50_crit_edge ], [ 0, %if.then40.if.end50_crit_edge ]
  %arrayidx53 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %20 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp55 = icmp eq i8 %21, 0
  br i1 %cmp55, label %if.then57, label %if.else64

if.then57:                                        ; preds = %if.end50
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %entry_id.1) #7
  %opmode58 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %22 = ptrtoint ptr %opmode58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp59 = icmp eq i32 %23, 3
  br i1 %cmp59, label %if.then61, label %if.then57.if.end62_crit_edge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then57.if.end62_crit_edge
  %call63 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #7
  br label %cleanup

if.else64:                                        ; preds = %if.end50
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.29) #7
  br i1 %is_pairwise.0.off0, label %if.then66, label %if.else73

if.then66:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.30) #7
  %arrayidx70 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call72 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx70) #7
  br label %cleanup

if.else73:                                        ; preds = %if.else64
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.31) #7
  %opmode74 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %opmode74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp75 = icmp eq i32 %25, 1
  br i1 %cmp75, label %if.then77, label %if.else73.if.end85_crit_edge

if.else73.if.end85_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then77:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx82 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call84 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx82) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %if.else73.if.end85_crit_edge
  %arrayidx89 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call91 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx89) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then66, %if.end62, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_mark_invalid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_empty_entry(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_get_free_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_del_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_cam_delete_one_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl_cam_add_one_entry(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_read_bt_coexist_info_from_hwpg(ptr nocapture noundef readonly %hw, i1 noundef zeroext %auto_load_fail, ptr nocapture noundef readonly %hwinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %mod_params1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mod_params1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod_params1, align 4
  br i1 %auto_load_fail, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %6 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 104) #7
  %and = lshr i32 %call.i, 18
  %8 = trunc i32 %and to i8
  %9 = and i8 %8, 1
  %10 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %10, align 1
  %arrayidx = getelementptr i8, ptr %hwinfo, i32 195
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %btc_info9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1
  %14 = ptrtoint ptr %btc_info9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %btc_info9, align 4
  %and10 = and i8 %13, 1
  %ant_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 2
  %15 = ptrtoint ptr %ant_num to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and10, ptr %ant_num, align 2
  %16 = lshr i8 %13, 6
  %.lobit = and i8 %16, 1
  br label %if.end33

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %btc_info22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1
  %btcoexist23 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 1
  %17 = ptrtoint ptr %btcoexist23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %btcoexist23, align 1
  %18 = ptrtoint ptr %btc_info22 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %btc_info22, align 4
  %ant_num29 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 2
  %19 = ptrtoint ptr %ant_num29 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ant_num29, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.else20, %if.then
  %.sink = phi i8 [ 0, %if.else20 ], [ %.lobit, %if.then ]
  %single_ant_path32 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 3
  %20 = ptrtoint ptr %single_ant_path32 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %single_ant_path32, align 1
  %ant_sel = getelementptr inbounds %struct.rtl_mod_params, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %ant_sel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ant_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %if.end33.if.end51_crit_edge, label %if.then35

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp = icmp eq i32 %22, 1
  %conv39 = zext i1 %cmp to i8
  %ant_num42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 2
  %23 = ptrtoint ptr %ant_num42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv39, ptr %ant_num42, align 2
  %24 = ptrtoint ptr %ant_sel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ant_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp44 = icmp eq i32 %25, 1
  %conv47 = zext i1 %cmp44 to i8
  %single_ant_path50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49, i32 1, i32 3
  %26 = ptrtoint ptr %single_ant_path50 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv47, ptr %single_ant_path50, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then35, %if.end33.if.end51_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723be_bt_reg_init(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723be_suspend(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl8723be_resume(ptr nocapture noundef %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_set_fw_clock_on(ptr noundef %hw, i1 noundef zeroext %b_need_turn_off_ckk) unnamed_addr #0 align 64 {
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
  store i8 -1, ptr %b_support_remote_wake_up, align 1, !annotation !132
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
  %11 = load i8, ptr %fw_ready, align 2, !range !133
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
  %13 = load i8, ptr %fw_current_inpsmode, align 1, !range !133
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
  %15 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !133
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
  %19 = load i8, ptr %fw_clk_change_in_progress, align 1, !range !133
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
  %43 = load i8, ptr %write_readback.i, align 1, !range !133
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
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef 0) #7
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
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_set_fw_rsvdpagepkt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_hal_pwrseqcmdparsing(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_firmware_selfreset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_dbi_write(ptr noundef %rtlpriv, i16 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i16 %addr, 3
  %add = or i16 %rem, 840
  %conv4 = zext i16 %add to i32
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write8_async.i, align 4
  tail call void %1(ptr noundef %rtlpriv, i32 noundef %conv4, i8 noundef zeroext %data) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 32
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %write_readback.i, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %rtlpriv, i32 noundef %conv4) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %8 = and i16 %addr, -4
  %9 = or i16 %rem, 12
  %shl = shl nuw i16 1, %9
  %or = or i16 %shl, %8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 6
  %10 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write16_async.i, align 4
  tail call void %11(ptr noundef %rtlpriv, i32 noundef 848, i16 noundef zeroext %or) #7
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i22 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i22, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i23 = icmp eq i8 %15, 0
  br i1 %tobool.not.i23, label %rtl_write_byte.exit.rtl_write_word.exit_crit_edge, label %if.then.i25

rtl_write_byte.exit.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i25:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 10
  %16 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16_sync.i, align 4
  %call.i24 = tail call zeroext i16 %17(ptr noundef %rtlpriv, i32 noundef 848) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i25, %rtl_write_byte.exit.rtl_write_word.exit_crit_edge
  %18 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i, align 4
  tail call void %19(ptr noundef %rtlpriv, i32 noundef 850, i8 noundef zeroext 1) #7
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i28, align 1, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i29 = icmp eq i8 %23, 0
  br i1 %tobool.not.i29, label %rtl_write_word.exit.rtl_write_byte.exit33_crit_edge, label %if.then.i32

rtl_write_word.exit.rtl_write_byte.exit33_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit33

if.then.i32:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i30 = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i30, align 4
  %call.i31 = tail call zeroext i8 %25(ptr noundef %rtlpriv, i32 noundef 850) #7
  br label %rtl_write_byte.exit33

rtl_write_byte.exit33:                            ; preds = %if.then.i32, %rtl_write_word.exit.rtl_write_byte.exit33_crit_edge
  %read8_sync.i34 = getelementptr inbounds %struct.rtl_priv, ptr %rtlpriv, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i34, align 4
  %call.i35 = tail call zeroext i8 %27(ptr noundef %rtlpriv, i32 noundef 850) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i35)
  %tobool.not38.not = icmp eq i8 %call.i35, 0
  br i1 %tobool.not38.not, label %rtl_write_byte.exit33.while.end_crit_edge, label %rtl_write_byte.exit33.while.body_crit_edge

rtl_write_byte.exit33.while.body_crit_edge:       ; preds = %rtl_write_byte.exit33
  br label %while.body

rtl_write_byte.exit33.while.end_crit_edge:        ; preds = %rtl_write_byte.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit33.while.body_crit_edge
  %count.039 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit33.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #7
  %29 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i34, align 4
  %call.i37 = tail call zeroext i8 %30(ptr noundef %rtlpriv, i32 noundef 850) #7
  %inc = add nuw nsw i8 %count.039, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i37)
  %tobool.not = icmp ne i8 %call.i37, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %count.039)
  %cmp = icmp ult i8 %count.039, 19
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit33.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_get_hwinfo(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @efuse_power_switch(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efuse_one_byte_read(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !103, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 333, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 438, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 481, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 496, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 536, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 573, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 597, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1123, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1129, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1145, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1367, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl8723be_hw_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl8723be_hw_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1377, i32 3}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1616, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1704, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1717, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2257, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2261, i32 3}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2264, i32 3}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2268, i32 3}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2272, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rtl8723be_read_eeprom_info._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rtl8723be_read_eeprom_info._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2502, i32 3}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2509, i32 3}
!52 = !{ptr @rtl8723be_set_key.cam_const_addr, !53, !"cam_const_addr", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2546, i32 12}
!54 = !{ptr @rtl8723be_set_key.cam_const_broad, !55, !"cam_const_broad", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2552, i32 12}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2561, i32 3}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2607, i32 7}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rtl8723be_set_key._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @rtl8723be_set_key._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2620, i32 4}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2627, i32 4}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2630, i32 5}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2638, i32 5}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 148, i32 5}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1210, i32 3}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1224, i32 2}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 823, i32 3}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 729, i32 4}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @_rtl8723be_llt_write._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @_rtl8723be_llt_write._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1496, i32 3}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1502, i32 3}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1508, i32 3}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1514, i32 3}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1518, i32 3}
!94 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @_rtl8723be_set_media_status._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @_rtl8723be_set_media_status._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1540, i32 3}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1462, i32 3}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1478, i32 2}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2101, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1973, i32 4}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1993, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2004, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1749, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 1756, i32 3}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2239, i32 2}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2419, i32 2}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/hw.c", i32 2433, i32 2}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{i8 0, i8 2}
!134 = !{i64 964586}
!135 = !{i64 962099}
!136 = !{!"branch_weights", i32 1, i32 2000}
!137 = !{i64 964871}
!138 = !{!"branch_weights", i32 2000, i32 1}
