; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.rtl_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_pci = type { ptr, i8, i8, i8, i8, i8, i8, [9 x %struct.rtl8192_tx_ring], [9 x i32], i32, [2 x %struct.rtl8192_rx_ring], i32, i16, i32, i8, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i8, i8, i8 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }
%struct.rt_firmware = type { ptr, i32, i16, [64000 x i8], [64000 x i8], i32, i32, [90000 x i8], i32, i16 }
%struct.rtl_int = type { i32, i32, i32, i32 }
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
%struct.ieee80211_sta = type <{ [6 x i32], [6 x i8], i16, %struct.ieee80211_sta_ht_cap, [2 x i8], %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_he_cap, %struct.ieee80211_he_6ghz_capa, i8, i16, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, i8, i16, i8, i8, i16, [16 x i16], [2 x i8], %struct.ieee80211_sta_txpwr, [17 x ptr], [0 x i8] }>
%struct.ieee80211_sta_he_cap = type <{ i8, %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_mcs_nss_supp, [25 x i8] }>
%struct.ieee80211_he_cap_elem = type { [6 x i8], [11 x i8] }
%struct.ieee80211_he_mcs_nss_supp = type { i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_he_6ghz_capa = type { i16 }
%struct.ieee80211_sta_txpwr = type { i16, i32 }
%struct.rtl_sta_info = type <{ %struct.list_head, [9 x %struct.rtl_tid_data], %struct.rssi_sta, i8, i16, i8, i8, [6 x i8] }>
%struct.rssi_sta = type { i32, i32 }

@rtl92se_get_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192se: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92se_get_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92se_get_hw_reg._entry_ptr = internal global ptr @rtl92se_get_hw_reg._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HW_VAR_SLOT_TIME %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_AMPDU_MIN_SPACE: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set HW_VAR_SHORTGI_DENSITY: %#x\0A\00", [63 x i8] zeroinitializer }, align 32
@__const.rtl92se_set_hw_reg.factorlevel = private unnamed_addr constant [18 x i8] c"\02\04\04\07\07\0D\0D\0D\02\07\07\0D\0D\0F\0F\0F\0F\00", align 1
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set HW_VAR_AMPDU_FACTOR: %#x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"HW_VAR_ACM_CTRL acm set failed: eACI is %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92se_set_hw_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92se_set_hw_reg\00", [45 x i8] zeroinitializer }, align 32
@rtl92se_set_hw_reg._entry_ptr = internal global ptr @rtl92se_set_hw_reg._entry, section ".printk_index", align 4
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HW_VAR_ACM_CTRL Write 0x%X\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92se_set_hw_reg._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92se_set_hw_reg._entry_ptr.11 = internal global ptr @rtl92se_set_hw_reg._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PairwiseEncAlgorithm = %d GroupEncAlgorithm = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not open hw encryption\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"The SECR-value %x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Failed to download FW. Init HW without FW now... Please copy FW into /lib/firmware/rtlwifi\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl92se_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013rtl8192se: MAC Config failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92se_hw_init\00", [16 x i8] zeroinitializer }, align 32
@rtl92se_hw_init._entry_ptr = internal global ptr @rtl92se_hw_init._entry, section ".printk_index", align 4
@rtl92se_hw_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8192se: BB Config failed\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl92se_hw_init._entry_ptr.20 = internal global ptr @rtl92se_hw_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RF Config failed\0A\00", [46 x i8] zeroinitializer }, align 32
@rtl92se_set_qos.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl8192se: invalid aci: %d !\0A\00", [34 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"add_msr:%x, rm_msr:%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Boot from EEPROM\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Boot from EFUSE\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Autoload OK\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92se_read_eeprom_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 2001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8192se: Autoload ERR!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl92se_read_eeprom_info\00", [39 x i8] zeroinitializer }, align 32
@rtl92se_read_eeprom_info._entry_ptr = internal global ptr @rtl92se_read_eeprom_info._entry, section ".printk_index", align 4
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RFKILL-HW Radio ON, RF ON\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RFKILL-HW Radio OFF, RF OFF\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl92se_set_key.cam_const_addr = internal global { [4 x [6 x i8]], [40 x i8] } { [4 x [6 x i8]] [[6 x i8] zeroinitializer, [6 x i8] c"\00\00\00\00\00\01", [6 x i8] c"\00\00\00\00\00\02", [6 x i8] c"\00\00\00\00\00\03"], [40 x i8] zeroinitializer }, align 32
@rtl92se_set_key.cam_const_broad = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clear_all\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl92se_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 2435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtl92se_set_key\00", [16 x i8] zeroinitializer }, align 32
@rtl92se_set_key._entry_ptr = internal global ptr @rtl92se_set_key._entry, section ".printk_index", align 4
@rtl92se_set_key._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192se: Can not find free hw security cam entry\0A\00", [42 x i8] zeroinitializer }, align 32
@rtl92se_set_key._entry_ptr.35 = internal global ptr @rtl92se_set_key._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"delete one entry, entry_id is %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"add one entry\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set Pairwise key\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set group key\0A\00", [17 x i8] zeroinitializer }, align 32
@_rtl92se_macconfig_before_fwdownload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013rtl8192se: Polling TXDMA_INIT_VALUE timeout!! Current TCR(%#x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"_rtl92se_macconfig_before_fwdownload\00", [59 x i8] zeroinitializer }, align 32
@_rtl92se_macconfig_before_fwdownload._entry_ptr = internal global ptr @_rtl92se_macconfig_before_fwdownload._entry, section ".printk_index", align 4
@_rtl92se_halset_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtl8192se: wait for BIT(6) return value %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92se_halset_sysclk\00", [41 x i8] zeroinitializer }, align 32
@_rtl92se_halset_sysclk._entry_ptr = internal global ptr @_rtl92se_halset_sysclk._entry, section ".printk_index", align 4
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EFUSE CONFIG OK\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OK\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set Network type to NO LINK!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Set Network type to Ad Hoc!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Network type to STA!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set Network type to AP!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl92se_set_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8192se: Network type %d not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_rtl92se_set_media_status\00", [38 x i8] zeroinitializer }, align 32
@_rtl92se_set_media_status._entry_ptr = internal global ptr @_rtl92se_set_media_status._entry, section ".printk_index", align 4
@_rtl92s_phy_set_rfhalt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013rtl8192se: Switch ctrl path fail\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92s_phy_set_rfhalt\00", [41 x i8] zeroinitializer }, align 32
@_rtl92s_phy_set_rfhalt._entry_ptr = internal global ptr @_rtl92s_phy_set_rfhalt._entry, section ".printk_index", align 4
@_rtl92s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.54, ptr @.str.2, i32 1282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_rtl92s_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@_rtl92s_set_sysclk._entry_ptr = internal global ptr @_rtl92s_set_sysclk._entry, section ".printk_index", align 4
@_rtl92se_read_adapter_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013rtl8192se: RTL819X Not boot from eeprom, check it !!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_rtl92se_read_adapter_info\00", [37 x i8] zeroinitializer }, align 32
@_rtl92se_read_adapter_info._entry_ptr = internal global ptr @_rtl92se_read_adapter_info._entry, section ".printk_index", align 4
@_rtl92se_read_adapter_info._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1661, ptr @.str.59, ptr @.str.60 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no efuse data\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_rtl92se_read_adapter_info._entry_ptr.61 = internal global ptr @_rtl92se_read_adapter_info._entry.57, section ".printk_index", align 4
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAP\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"EEPROM ID(%#x) is invalid!!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EEPROMId = 0x%4x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM VID = 0x%4x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM DID = 0x%4x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EEPROM SVID = 0x%4x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EEPROM SMID = 0x%4x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF(%d) EEPROM CCK Area(%d) = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RF(%d) EEPROM HT40 1S Area(%d) = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RF(%d) EEPROM HT40 2S Diff Area(%d) = 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"RF(%d)-Ch(%d) [CCK / HT40_1S / HT40_2S] = [0x%x / 0x%x / 0x%x]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht20[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RF-%d pwrgroup_ht40[%d] = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-A Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-A Legacy to Ht40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RF-B Ht20 to HT40 Diff[%d] = 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RF-B Legacy to HT40 Diff[%d] = 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxPwrSafetyFlag = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TxPowerDiff = %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TSSI_A = 0x%x, TSSI_B = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"thermalmeter = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"EEPROM ChannelPlan = 0x%4x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RF_TYPE=1T2R but only 1SS\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"EEPROM Customer ID: 0x%2x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mask = %x, bitmap = %x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.rtl92se_set_key = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 1, i32 4, i32 5], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 44, i64 65, i64 84, i64 92, i64 93]
@__sancov_gen_cov_switch_values.90 = internal global [28 x i64] [i64 26, i64 8, i64 0, i64 2, i64 3, i64 14, i64 18, i64 19, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 44, i64 53, i64 56, i64 57, i64 60, i64 61, i64 62, i64 65, i64 68, i64 72, i64 82, i64 84, i64 87, i64 93]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 268435456]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 4, i64 16, i64 32]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.103 = internal global [6 x i64] [i64 4, i64 16, i64 2, i64 4, i64 16, i64 32]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 57, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 114, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 159, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 175, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 218, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 256, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 273, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 279, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 409, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 420, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 426, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 438, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 963, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 978, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 998, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1016, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1224, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1608, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1989, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1992, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1997, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2001, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2334, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2341, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"cam_const_addr\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2391, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"cam_const_broad\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2397, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2406, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2434, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2452, i32 7 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2465, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2472, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2475, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2483, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 722, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 472, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 873, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 876, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1149, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1154, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1159, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1164, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1168, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1341, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1282, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1657, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1661, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1668, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1673, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1694, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1696, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1698, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1700, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1702, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1713, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1737, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1744, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1751, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1785, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1822, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1826, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1881, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1885, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1889, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1893, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1897, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1901, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1911, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1920, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1928, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1945, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1966, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1973, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2258, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2103, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [29 x i8] c"switch.table.rtl92se_set_key\00", align 1
@llvm.compiler.used = appending global [115 x ptr] [ptr @_rtl92s_phy_set_rfhalt._entry, ptr @_rtl92s_phy_set_rfhalt._entry_ptr, ptr @_rtl92s_set_sysclk._entry, ptr @_rtl92s_set_sysclk._entry_ptr, ptr @_rtl92se_halset_sysclk._entry, ptr @_rtl92se_halset_sysclk._entry_ptr, ptr @_rtl92se_macconfig_before_fwdownload._entry, ptr @_rtl92se_macconfig_before_fwdownload._entry_ptr, ptr @_rtl92se_read_adapter_info._entry, ptr @_rtl92se_read_adapter_info._entry.57, ptr @_rtl92se_read_adapter_info._entry_ptr, ptr @_rtl92se_read_adapter_info._entry_ptr.61, ptr @_rtl92se_set_media_status._entry, ptr @_rtl92se_set_media_status._entry_ptr, ptr @rtl92se_get_hw_reg._entry, ptr @rtl92se_get_hw_reg._entry_ptr, ptr @rtl92se_hw_init._entry, ptr @rtl92se_hw_init._entry.18, ptr @rtl92se_hw_init._entry_ptr, ptr @rtl92se_hw_init._entry_ptr.20, ptr @rtl92se_read_eeprom_info._entry, ptr @rtl92se_read_eeprom_info._entry_ptr, ptr @rtl92se_set_hw_reg._entry, ptr @rtl92se_set_hw_reg._entry.10, ptr @rtl92se_set_hw_reg._entry_ptr, ptr @rtl92se_set_hw_reg._entry_ptr.11, ptr @rtl92se_set_key._entry, ptr @rtl92se_set_key._entry.33, ptr @rtl92se_set_key._entry_ptr, ptr @rtl92se_set_key._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @rtl92se_set_key.cam_const_addr, ptr @rtl92se_set_key.cam_const_broad, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @switch.table.rtl92se_set_key], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_get_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_hw_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_hw_reg._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_hw_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_read_eeprom_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_key.cam_const_addr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_key.cam_const_broad to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_set_key._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92se_macconfig_before_fwdownload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92se_halset_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92se_set_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_phy_set_rfhalt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92se_read_adapter_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92se_read_adapter_info._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl92se_set_key to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_get_hw_reg(ptr nocapture noundef readonly %hw, i8 noundef zeroext %variable, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
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
    i8 65, label %sw.bb5
    i8 84, label %sw.bb6
    i8 93, label %sw.bb8
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
  call void @__sanitizer_cov_trace_pc() #9
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %9 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fw_current_inpsmode, align 1, !range !198
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %val, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %12 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1, i32 noundef 132) #7
  %14 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32_sync.i, align 4
  %call.i24 = tail call i32 %15(ptr noundef %1, i32 noundef 128) #7
  %tsf.sroa.5.0.insert.ext = zext i32 %call.i to i64
  %tsf.sroa.0.0.insert.ext = zext i32 %call.i24 to i64
  %tsf.sroa.0.0.insert.shift = shl nuw i64 %tsf.sroa.0.0.insert.ext, 32
  %tsf.sroa.0.0.insert.insert = or i64 %tsf.sroa.0.0.insert.shift, %tsf.sroa.5.0.insert.ext
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %tsf.sroa.0.0.insert.insert, ptr %val, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_mrc_switch = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 17
  %17 = ptrtoint ptr %current_mrc_switch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %current_mrc_switch, align 1, !range !198
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %val, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_hw_reg(ptr noundef %hw, i8 noundef zeroext %variable, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %e_aci = alloca i8, align 1
  %factorlevel = alloca [18 x i8], align 1
  %e_aci160 = alloca i8, align 1
  %rpwm_val = alloca i8, align 1
  %fw_pwrmode = alloca i8, align 1
  %fw_current_inps = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i8 %variable to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %variable, label %do.end295 [
    i8 0, label %sw.bb
    i8 2, label %sw.bb9
    i8 3, label %sw.bb31
    i8 14, label %sw.bb35
    i8 18, label %sw.bb38
    i8 19, label %sw.bb46
    i8 28, label %sw.bb56
    i8 29, label %sw.bb87
    i8 30, label %sw.bb99
    i8 32, label %sw.bb159
    i8 33, label %sw.bb168
    i8 44, label %sw.bb213
    i8 53, label %sw.bb216
    i8 87, label %entry.sw.epilog299_crit_edge
    i8 57, label %sw.bb225
    i8 56, label %sw.bb226
    i8 72, label %entry.sw.epilog299_crit_edge630
    i8 27, label %sw.bb228
    i8 60, label %entry.sw.epilog299_crit_edge631
    i8 61, label %entry.sw.epilog299_crit_edge632
    i8 65, label %sw.bb231
    i8 62, label %entry.sw.epilog299_crit_edge633
    i8 82, label %entry.sw.epilog299_crit_edge634
    i8 84, label %entry.sw.epilog299_crit_edge635
    i8 93, label %sw.bb236
    i8 68, label %sw.bb267
  ]

entry.sw.epilog299_crit_edge635:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge634:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge633:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge632:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge631:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge630:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

entry.sw.epilog299_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %5 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 80, i32 noundef %4) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.bb.rtl_write_dword.exit_crit_edge, label %if.then.i

sw.bb.rtl_write_dword.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %12(ptr noundef %1, i32 noundef 80) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %sw.bb.rtl_write_dword.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %val, i32 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr, align 2
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %15 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write16_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 84, i16 noundef zeroext %14) #7
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i446 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i446 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i446, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i447 = icmp eq i8 %20, 0
  br i1 %tobool.not.i447, label %rtl_write_dword.exit.sw.epilog299_crit_edge, label %if.then.i449

rtl_write_dword.exit.sw.epilog299_crit_edge:      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i449:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %21 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read16_sync.i, align 4
  %call.i448 = tail call zeroext i16 %22(ptr noundef %1, i32 noundef 84) #7
  br label %sw.epilog299

sw.bb9:                                           ; preds = %entry
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val, align 2
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  %rate_cfg.0.v = select i1 %cmp, i16 336, i16 351
  %rate_cfg.0 = and i16 %rate_cfg.0.v, %24
  %27 = or i16 %rate_cfg.0, 1
  %conv21 = trunc i16 %27 to i8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %28 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef 385, i8 noundef zeroext %conv21) #7
  %cfg.i450 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i450 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i450, align 8
  %write_readback.i451 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i451 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i451, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i452 = icmp eq i8 %33, 0
  br i1 %tobool.not.i452, label %sw.bb9.rtl_write_byte.exit_crit_edge, label %if.then.i454

sw.bb9.rtl_write_byte.exit_crit_edge:             ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i454:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %34 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i, align 4
  %call.i453 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 385) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i454, %sw.bb9.rtl_write_byte.exit_crit_edge
  %36 = lshr i16 %rate_cfg.0, 8
  %conv24 = trunc i16 %36 to i8
  %37 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 386, i8 noundef zeroext %conv24) #7
  %39 = ptrtoint ptr %cfg.i450 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i450, align 8
  %write_readback.i457 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i457 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i457, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i458 = icmp eq i8 %42, 0
  br i1 %tobool.not.i458, label %rtl_write_byte.exit.rtl_write_byte.exit462_crit_edge, label %if.then.i461

rtl_write_byte.exit.rtl_write_byte.exit462_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit462

if.then.i461:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i459 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i459 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i459, align 4
  %call.i460 = tail call zeroext i8 %44(ptr noundef %1, i32 noundef 386) #7
  br label %rtl_write_byte.exit462

rtl_write_byte.exit462:                           ; preds = %if.then.i461, %rtl_write_byte.exit.rtl_write_byte.exit462_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rate_cfg.0)
  %cmp26627.not = icmp ult i16 %rate_cfg.0, 2
  br i1 %cmp26627.not, label %rtl_write_byte.exit462.while.end_crit_edge, label %rtl_write_byte.exit462.while.body_crit_edge

rtl_write_byte.exit462.while.body_crit_edge:      ; preds = %rtl_write_byte.exit462
  br label %while.body

rtl_write_byte.exit462.while.end_crit_edge:       ; preds = %rtl_write_byte.exit462
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %rtl_write_byte.exit462.while.body_crit_edge
  %rate_cfg.1629 = phi i16 [ %45, %while.body.while.body_crit_edge ], [ %27, %rtl_write_byte.exit462.while.body_crit_edge ]
  %rate_index.0628 = phi i8 [ %inc, %while.body.while.body_crit_edge ], [ 0, %rtl_write_byte.exit462.while.body_crit_edge ]
  %45 = lshr i16 %rate_cfg.1629, 1
  %inc = add nuw nsw i8 %rate_index.0628, 1
  %cmp26 = icmp ugt i16 %rate_cfg.1629, 3
  br i1 %cmp26, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %rtl_write_byte.exit462.while.end_crit_edge
  %rate_index.0.lcssa = phi i8 [ 0, %rtl_write_byte.exit462.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %46 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write8_async.i, align 4
  tail call void %47(ptr noundef %1, i32 noundef 384, i8 noundef zeroext %rate_index.0.lcssa) #7
  %48 = ptrtoint ptr %cfg.i450 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i450, align 8
  %write_readback.i465 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write_readback.i465 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %write_readback.i465, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i466 = icmp eq i8 %51, 0
  br i1 %tobool.not.i466, label %while.end.sw.epilog299_crit_edge, label %if.then.i469

while.end.sw.epilog299_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i469:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i467 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %52 = ptrtoint ptr %read8_sync.i467 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %read8_sync.i467, align 4
  %call.i468 = tail call zeroext i8 %53(ptr noundef %1, i32 noundef 384) #7
  br label %sw.epilog299

sw.bb31:                                          ; preds = %entry
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %write32_async.i471 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %56 = ptrtoint ptr %write32_async.i471 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write32_async.i471, align 4
  tail call void %57(ptr noundef %1, i32 noundef 88, i32 noundef %55) #7
  %cfg.i472 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i472 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i472, align 8
  %write_readback.i473 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i473 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i473, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i474 = icmp eq i8 %61, 0
  br i1 %tobool.not.i474, label %sw.bb31.rtl_write_dword.exit478_crit_edge, label %if.then.i477

sw.bb31.rtl_write_dword.exit478_crit_edge:        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit478

if.then.i477:                                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i475 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %62 = ptrtoint ptr %read32_sync.i475 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read32_sync.i475, align 4
  %call.i476 = tail call i32 %63(ptr noundef %1, i32 noundef 88) #7
  br label %rtl_write_dword.exit478

rtl_write_dword.exit478:                          ; preds = %if.then.i477, %sw.bb31.rtl_write_dword.exit478_crit_edge
  %add.ptr33 = getelementptr i8, ptr %val, i32 4
  %64 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %add.ptr33, align 2
  %write16_async.i479 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %66 = ptrtoint ptr %write16_async.i479 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write16_async.i479, align 4
  tail call void %67(ptr noundef %1, i32 noundef 92, i16 noundef zeroext %65) #7
  %68 = ptrtoint ptr %cfg.i472 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i472, align 8
  %write_readback.i481 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i481 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i481, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i482 = icmp eq i8 %71, 0
  br i1 %tobool.not.i482, label %rtl_write_dword.exit478.sw.epilog299_crit_edge, label %if.then.i485

rtl_write_dword.exit478.sw.epilog299_crit_edge:   ; preds = %rtl_write_dword.exit478
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i485:                                     ; preds = %rtl_write_dword.exit478
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i483 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %72 = ptrtoint ptr %read16_sync.i483 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read16_sync.i483, align 4
  %call.i484 = tail call zeroext i16 %73(ptr noundef %1, i32 noundef 92) #7
  br label %sw.epilog299

sw.bb35:                                          ; preds = %entry
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %val, align 1
  %write8_async.i487 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %76 = ptrtoint ptr %write8_async.i487 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8_async.i487, align 4
  tail call void %77(ptr noundef %1, i32 noundef 142, i8 noundef zeroext %75) #7
  %cfg.i488 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i488 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i488, align 8
  %write_readback.i489 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i489 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i489, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i490 = icmp eq i8 %81, 0
  br i1 %tobool.not.i490, label %sw.bb35.rtl_write_byte.exit494_crit_edge, label %if.then.i493

sw.bb35.rtl_write_byte.exit494_crit_edge:         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit494

if.then.i493:                                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i491 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %82 = ptrtoint ptr %read8_sync.i491 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i491, align 4
  %call.i492 = tail call zeroext i8 %83(ptr noundef %1, i32 noundef 142) #7
  br label %rtl_write_byte.exit494

rtl_write_byte.exit494:                           ; preds = %if.then.i493, %sw.bb35.rtl_write_byte.exit494_crit_edge
  %arrayidx37 = getelementptr i8, ptr %val, i32 1
  %84 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx37, align 1
  %86 = ptrtoint ptr %write8_async.i487 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i487, align 4
  tail call void %87(ptr noundef %1, i32 noundef 143, i8 noundef zeroext %85) #7
  %88 = ptrtoint ptr %cfg.i488 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i488, align 8
  %write_readback.i497 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i497 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i497, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i498 = icmp eq i8 %91, 0
  br i1 %tobool.not.i498, label %rtl_write_byte.exit494.sw.epilog299_crit_edge, label %if.then.i501

rtl_write_byte.exit494.sw.epilog299_crit_edge:    ; preds = %rtl_write_byte.exit494
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i501:                                     ; preds = %rtl_write_byte.exit494
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i499 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %92 = ptrtoint ptr %read8_sync.i499 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i499, align 4
  %call.i500 = tail call zeroext i8 %93(ptr noundef %1, i32 noundef 143) #7
  br label %sw.epilog299

sw.bb38:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci) #7
  %94 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %val, align 1
  %conv40 = zext i8 %95 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %conv40) #7
  %96 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val, align 1
  %write8_async.i503 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %98 = ptrtoint ptr %write8_async.i503 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8_async.i503, align 4
  tail call void %99(ptr noundef %1, i32 noundef 137, i8 noundef zeroext %97) #7
  %cfg.i504 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %100 = ptrtoint ptr %cfg.i504 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg.i504, align 8
  %write_readback.i505 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_readback.i505 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %write_readback.i505, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i506 = icmp eq i8 %103, 0
  br i1 %tobool.not.i506, label %sw.bb38.rtl_write_byte.exit510_crit_edge, label %if.then.i509

sw.bb38.rtl_write_byte.exit510_crit_edge:         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit510

if.then.i509:                                     ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i507 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %104 = ptrtoint ptr %read8_sync.i507 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read8_sync.i507, align 4
  %call.i508 = tail call zeroext i8 %105(ptr noundef %1, i32 noundef 137) #7
  br label %rtl_write_byte.exit510

rtl_write_byte.exit510:                           ; preds = %if.then.i509, %sw.bb38.rtl_write_byte.exit510_crit_edge
  %106 = ptrtoint ptr %e_aci to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %e_aci, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %rtl_write_byte.exit510
  %107 = ptrtoint ptr %cfg.i504 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i504, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %110, i32 0, i32 20
  %111 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_hw_reg, align 4
  call void %112(ptr noundef %hw, i8 noundef zeroext 32, ptr noundef nonnull %e_aci) #7
  %113 = ptrtoint ptr %e_aci to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %e_aci, align 1
  %inc45 = add i8 %114, 1
  store i8 %inc45, ptr %e_aci, align 1
  %cmp43 = icmp ult i8 %inc45, 4
  br i1 %cmp43, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci) #7
  br label %sw.epilog299

sw.bb46:                                          ; preds = %entry
  %115 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not = icmp eq i8 %116, 0
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %117 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %118, 5
  %119 = or i8 %shl, -128
  %spec.select = select i1 %tobool.not, i8 %shl, i8 %119
  %write8_async.i511 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %120 = ptrtoint ptr %write8_async.i511 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write8_async.i511, align 4
  tail call void %121(ptr noundef %1, i32 noundef 387, i8 noundef zeroext %spec.select) #7
  %cfg.i512 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %122 = ptrtoint ptr %cfg.i512 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i512, align 8
  %write_readback.i513 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %write_readback.i513 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %write_readback.i513, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i514 = icmp eq i8 %125, 0
  br i1 %tobool.not.i514, label %sw.bb46.sw.epilog299_crit_edge, label %if.then.i517

sw.bb46.sw.epilog299_crit_edge:                   ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i517:                                     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i515 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %126 = ptrtoint ptr %read8_sync.i515 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read8_sync.i515, align 4
  %call.i516 = tail call zeroext i8 %127(ptr noundef %1, i32 noundef 387) #7
  br label %sw.epilog299

sw.bb56:                                          ; preds = %entry
  %128 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %129)
  %cmp58 = icmp ult i8 %129, 8
  br i1 %cmp58, label %if.then60, label %sw.bb56.sw.epilog299_crit_edge

sw.bb56.sw.epilog299_crit_edge:                   ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then60:                                        ; preds = %sw.bb56
  %pairwise_enc_algorithm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 3
  %130 = ptrtoint ptr %pairwise_enc_algorithm to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pairwise_enc_algorithm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp61 = icmp ne i32 %131, 0
  %. = zext i1 %cmp61 to i8
  %132 = tail call i8 @llvm.umax.i8(i8 %129, i8 %.)
  %133 = tail call i8 @llvm.umin.i8(i8 %132, i8 5)
  %min_space_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %134 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %min_space_cfg, align 4
  %136 = and i8 %135, -8
  %or80444 = or i8 %133, %136
  store i8 %or80444, ptr %min_space_cfg, align 4
  %137 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %133, ptr %val, align 1
  %138 = load i8, ptr %min_space_cfg, align 4
  %conv84 = zext i8 %138 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv84) #7
  %139 = ptrtoint ptr %min_space_cfg to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %min_space_cfg, align 4
  %write8_async.i519 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %141 = ptrtoint ptr %write8_async.i519 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %write8_async.i519, align 4
  tail call void %142(ptr noundef %1, i32 noundef 567, i8 noundef zeroext %140) #7
  %cfg.i520 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %143 = ptrtoint ptr %cfg.i520 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i520, align 8
  %write_readback.i521 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %write_readback.i521 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %write_readback.i521, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i522 = icmp eq i8 %146, 0
  br i1 %tobool.not.i522, label %if.then60.sw.epilog299_crit_edge, label %if.then.i525

if.then60.sw.epilog299_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i525:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i523 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %147 = ptrtoint ptr %read8_sync.i523 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %read8_sync.i523, align 4
  %call.i524 = tail call zeroext i8 %148(ptr noundef %1, i32 noundef 567) #7
  br label %sw.epilog299

sw.bb87:                                          ; preds = %entry
  %149 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %val, align 1
  %minspace_cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 51
  %151 = ptrtoint ptr %minspace_cfg to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %minspace_cfg, align 1
  %min_space_cfg89 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 55
  %shl91 = shl i8 %150, 3
  %or94 = or i8 %shl91, %152
  %153 = ptrtoint ptr %min_space_cfg89 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %or94, ptr %min_space_cfg89, align 4
  %conv97 = zext i8 %or94 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv97) #7
  %154 = ptrtoint ptr %min_space_cfg89 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %min_space_cfg89, align 4
  %write8_async.i527 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %156 = ptrtoint ptr %write8_async.i527 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write8_async.i527, align 4
  tail call void %157(ptr noundef %1, i32 noundef 567, i8 noundef zeroext %155) #7
  %cfg.i528 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %158 = ptrtoint ptr %cfg.i528 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i528, align 8
  %write_readback.i529 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %write_readback.i529 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_readback.i529, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i530 = icmp eq i8 %161, 0
  br i1 %tobool.not.i530, label %sw.bb87.sw.epilog299_crit_edge, label %if.then.i533

sw.bb87.sw.epilog299_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i533:                                     ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i531 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %162 = ptrtoint ptr %read8_sync.i531 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i531, align 4
  %call.i532 = tail call zeroext i8 %163(ptr noundef %1, i32 noundef 567) #7
  br label %sw.epilog299

sw.bb99:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %factorlevel) #7
  %164 = call ptr @memcpy(ptr %factorlevel, ptr @__const.rtl92se_set_hw_reg.factorlevel, i32 18)
  %165 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %166)
  %cmp101 = icmp ult i8 %166, 4
  br i1 %cmp101, label %if.then103, label %sw.bb99.if.end158_crit_edge

sw.bb99.if.end158_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then103:                                       ; preds = %sw.bb99
  %conv100 = zext i8 %166 to i32
  %shl105 = shl nuw nsw i32 4, %conv100
  %conv106 = trunc i32 %shl105 to i8
  %conv107 = and i32 %shl105, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv107)
  %cmp108.not = icmp eq i32 %conv107, 0
  %spec.store.select300 = select i1 %cmp108.not, i8 %conv106, i8 15
  %167 = ptrtoint ptr %factorlevel to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %factorlevel, align 1
  %169 = tail call i8 @llvm.umin.i8(i8 %168, i8 %spec.store.select300)
  %170 = ptrtoint ptr %factorlevel to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %factorlevel, align 1
  %arrayidx117.1 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 1
  %171 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx117.1, align 1
  %173 = tail call i8 @llvm.umin.i8(i8 %172, i8 %spec.store.select300)
  %174 = ptrtoint ptr %arrayidx117.1 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx117.1, align 1
  %arrayidx117.2 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 2
  %175 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx117.2, align 1
  %177 = tail call i8 @llvm.umin.i8(i8 %176, i8 %spec.store.select300)
  %178 = ptrtoint ptr %arrayidx117.2 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %arrayidx117.2, align 1
  %arrayidx117.3 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 3
  %179 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx117.3, align 1
  %181 = tail call i8 @llvm.umin.i8(i8 %180, i8 %spec.store.select300)
  %182 = ptrtoint ptr %arrayidx117.3 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %arrayidx117.3, align 1
  %arrayidx117.4 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 4
  %183 = ptrtoint ptr %arrayidx117.4 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx117.4, align 1
  %185 = tail call i8 @llvm.umin.i8(i8 %184, i8 %spec.store.select300)
  %186 = ptrtoint ptr %arrayidx117.4 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %arrayidx117.4, align 1
  %arrayidx117.5 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 5
  %187 = ptrtoint ptr %arrayidx117.5 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx117.5, align 1
  %189 = tail call i8 @llvm.umin.i8(i8 %188, i8 %spec.store.select300)
  %190 = ptrtoint ptr %arrayidx117.5 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %arrayidx117.5, align 1
  %arrayidx117.6 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 6
  %191 = ptrtoint ptr %arrayidx117.6 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx117.6, align 1
  %193 = tail call i8 @llvm.umin.i8(i8 %192, i8 %spec.store.select300)
  %194 = ptrtoint ptr %arrayidx117.6 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx117.6, align 1
  %arrayidx117.7 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 7
  %195 = ptrtoint ptr %arrayidx117.7 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %arrayidx117.7, align 1
  %197 = tail call i8 @llvm.umin.i8(i8 %196, i8 %spec.store.select300)
  %198 = ptrtoint ptr %arrayidx117.7 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %arrayidx117.7, align 1
  %arrayidx117.8 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 8
  %199 = ptrtoint ptr %arrayidx117.8 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %arrayidx117.8, align 1
  %201 = tail call i8 @llvm.umin.i8(i8 %200, i8 %spec.store.select300)
  %202 = ptrtoint ptr %arrayidx117.8 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %arrayidx117.8, align 1
  %arrayidx117.9 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 9
  %203 = ptrtoint ptr %arrayidx117.9 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx117.9, align 1
  %205 = tail call i8 @llvm.umin.i8(i8 %204, i8 %spec.store.select300)
  %206 = ptrtoint ptr %arrayidx117.9 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %arrayidx117.9, align 1
  %arrayidx117.10 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 10
  %207 = ptrtoint ptr %arrayidx117.10 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx117.10, align 1
  %209 = tail call i8 @llvm.umin.i8(i8 %208, i8 %spec.store.select300)
  %210 = ptrtoint ptr %arrayidx117.10 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %arrayidx117.10, align 1
  %arrayidx117.11 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 11
  %211 = ptrtoint ptr %arrayidx117.11 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %arrayidx117.11, align 1
  %213 = tail call i8 @llvm.umin.i8(i8 %212, i8 %spec.store.select300)
  %214 = ptrtoint ptr %arrayidx117.11 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx117.11, align 1
  %arrayidx117.12 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 12
  %215 = ptrtoint ptr %arrayidx117.12 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx117.12, align 1
  %217 = tail call i8 @llvm.umin.i8(i8 %216, i8 %spec.store.select300)
  %218 = ptrtoint ptr %arrayidx117.12 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %217, ptr %arrayidx117.12, align 1
  %arrayidx117.13 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 13
  %219 = ptrtoint ptr %arrayidx117.13 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx117.13, align 1
  %221 = tail call i8 @llvm.umin.i8(i8 %220, i8 %spec.store.select300)
  %222 = ptrtoint ptr %arrayidx117.13 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %221, ptr %arrayidx117.13, align 1
  %arrayidx117.14 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 14
  %223 = ptrtoint ptr %arrayidx117.14 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx117.14, align 1
  %225 = tail call i8 @llvm.umin.i8(i8 %224, i8 %spec.store.select300)
  %226 = ptrtoint ptr %arrayidx117.14 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %arrayidx117.14, align 1
  %arrayidx117.15 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 15
  %227 = ptrtoint ptr %arrayidx117.15 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx117.15, align 1
  %229 = tail call i8 @llvm.umin.i8(i8 %228, i8 %spec.store.select300)
  %230 = ptrtoint ptr %arrayidx117.15 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %arrayidx117.15, align 1
  %arrayidx117.16 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 16
  %231 = ptrtoint ptr %arrayidx117.16 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %arrayidx117.16, align 1
  %233 = tail call i8 @llvm.umin.i8(i8 %232, i8 %spec.store.select300)
  %234 = ptrtoint ptr %arrayidx117.16 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %arrayidx117.16, align 1
  %write8_async.i535 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i536 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i539 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body133

for.body133:                                      ; preds = %rtl_write_byte.exit542.for.body133_crit_edge, %if.then103
  %indvars.iv = phi i32 [ 0, %if.then103 ], [ %indvars.iv.next, %rtl_write_byte.exit542.for.body133_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 1
  %arrayidx135 = getelementptr [18 x i8], ptr %factorlevel, i32 0, i32 %mul
  %235 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx135, align 1
  %add139 = or i32 %mul, 1
  %arrayidx140 = getelementptr [18 x i8], ptr %factorlevel, i32 0, i32 %add139
  %237 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %arrayidx140, align 1
  %shl142 = shl i8 %238, 4
  %or143 = or i8 %shl142, %236
  %add146 = add nuw nsw i32 %indvars.iv, 424
  %239 = ptrtoint ptr %write8_async.i535 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %write8_async.i535, align 4
  tail call void %240(ptr noundef %1, i32 noundef %add146, i8 noundef zeroext %or143) #7
  %241 = ptrtoint ptr %cfg.i536 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cfg.i536, align 8
  %write_readback.i537 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %write_readback.i537 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_readback.i537, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool.not.i538 = icmp eq i8 %244, 0
  br i1 %tobool.not.i538, label %for.body133.rtl_write_byte.exit542_crit_edge, label %if.then.i541

for.body133.rtl_write_byte.exit542_crit_edge:     ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit542

if.then.i541:                                     ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %read8_sync.i539 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %read8_sync.i539, align 4
  %call.i540 = tail call zeroext i8 %246(ptr noundef %1, i32 noundef %add146) #7
  br label %rtl_write_byte.exit542

rtl_write_byte.exit542:                           ; preds = %if.then.i541, %for.body133.rtl_write_byte.exit542_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end149, label %rtl_write_byte.exit542.for.body133_crit_edge

rtl_write_byte.exit542.for.body133_crit_edge:     ; preds = %rtl_write_byte.exit542
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body133

for.end149:                                       ; preds = %rtl_write_byte.exit542
  %247 = ptrtoint ptr %arrayidx117.16 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %arrayidx117.16, align 1
  %arrayidx152 = getelementptr inbounds [18 x i8], ptr %factorlevel, i32 0, i32 17
  %249 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx152, align 1
  %shl154 = shl i8 %250, 4
  %or155 = or i8 %shl154, %248
  %251 = ptrtoint ptr %write8_async.i535 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write8_async.i535, align 4
  tail call void %252(ptr noundef %1, i32 noundef 423, i8 noundef zeroext %or155) #7
  %253 = ptrtoint ptr %cfg.i536 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cfg.i536, align 8
  %write_readback.i545 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %write_readback.i545 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %write_readback.i545, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i546 = icmp eq i8 %256, 0
  br i1 %tobool.not.i546, label %for.end149.rtl_write_byte.exit550_crit_edge, label %if.then.i549

for.end149.rtl_write_byte.exit550_crit_edge:      ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit550

if.then.i549:                                     ; preds = %for.end149
  call void @__sanitizer_cov_trace_pc() #9
  %257 = ptrtoint ptr %read8_sync.i539 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read8_sync.i539, align 4
  %call.i548 = tail call zeroext i8 %258(ptr noundef %1, i32 noundef 423) #7
  br label %rtl_write_byte.exit550

rtl_write_byte.exit550:                           ; preds = %if.then.i549, %for.end149.rtl_write_byte.exit550_crit_edge
  %conv157 = zext i8 %spec.store.select300 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 32, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv157) #7
  br label %if.end158

if.end158:                                        ; preds = %rtl_write_byte.exit550, %sw.bb99.if.end158_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %factorlevel) #7
  br label %sw.epilog299

sw.bb159:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %e_aci160) #7
  %259 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %val, align 1
  %261 = ptrtoint ptr %e_aci160 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %e_aci160, align 1
  tail call void @rtl92s_dm_init_edca_turbo(ptr noundef %hw) #7
  %acm_method = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %262 = ptrtoint ptr %acm_method to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %acm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %263)
  %cmp161.not = icmp eq i32 %263, 2
  br i1 %cmp161.not, label %sw.bb159.if.end167_crit_edge, label %if.then163

sw.bb159.if.end167_crit_edge:                     ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then163:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #9
  %cfg164 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %264 = ptrtoint ptr %cfg164 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg164, align 8
  %ops165 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %ops165 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ops165, align 4
  %set_hw_reg166 = getelementptr inbounds %struct.rtl_hal_ops, ptr %267, i32 0, i32 20
  %268 = ptrtoint ptr %set_hw_reg166 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %set_hw_reg166, align 4
  call void %269(ptr noundef %hw, i8 noundef zeroext 33, ptr noundef nonnull %e_aci160) #7
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %sw.bb159.if.end167_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %e_aci160) #7
  br label %sw.epilog299

sw.bb168:                                         ; preds = %entry
  %270 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %val, align 1
  %aifs = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 60, i32 0, i32 2
  %272 = ptrtoint ptr %aifs to i32
  call void @__asan_load1_noabort(i32 %272)
  %bf.load = load i8, ptr %aifs, align 1
  %read8_sync.i551 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %273 = ptrtoint ptr %read8_sync.i551 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %read8_sync.i551, align 4
  %call.i552 = tail call zeroext i8 %274(ptr noundef %1, i32 noundef 487) #7
  %acm_method172 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 4
  %275 = ptrtoint ptr %acm_method172 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %acm_method172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %276)
  %cmp173 = icmp ne i32 %276, 2
  %cond = zext i1 %cmp173 to i8
  %or175 = or i8 %call.i552, %cond
  %277 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool177.not = icmp eq i8 %277, 0
  br i1 %tobool177.not, label %if.else193, label %if.then178

if.then178:                                       ; preds = %sw.bb168
  %278 = zext i8 %271 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %271, label %sw.default [
    i8 0, label %sw.bb180
    i8 2, label %sw.bb184
    i8 3, label %sw.bb188
  ]

sw.bb180:                                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %279 = or i8 %or175, 2
  br label %if.end211

sw.bb184:                                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %280 = or i8 %or175, 4
  br label %if.end211

sw.bb188:                                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  %281 = or i8 %or175, 8
  br label %if.end211

sw.default:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 1) #7
  br label %if.end211

if.else193:                                       ; preds = %sw.bb168
  %282 = zext i8 %271 to i64
  call void @__sanitizer_cov_trace_switch(i64 %282, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %271, label %do.end [
    i8 0, label %sw.bb195
    i8 2, label %sw.bb199
    i8 3, label %sw.bb203
  ]

sw.bb195:                                         ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  %283 = and i8 %or175, -3
  br label %if.end211

sw.bb199:                                         ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  %284 = and i8 %or175, -5
  br label %if.end211

sw.bb203:                                         ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  %285 = and i8 %or175, -9
  br label %if.end211

do.end:                                           ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #9
  %conv194 = zext i8 %271 to i32
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv194) #10
  br label %if.end211

if.end211:                                        ; preds = %do.end, %sw.bb203, %sw.bb199, %sw.bb195, %sw.default, %sw.bb188, %sw.bb184, %sw.bb180
  %acm_ctrl.0 = phi i8 [ %or175, %sw.default ], [ %281, %sw.bb188 ], [ %280, %sw.bb184 ], [ %279, %sw.bb180 ], [ %or175, %do.end ], [ %285, %sw.bb203 ], [ %284, %sw.bb199 ], [ %283, %sw.bb195 ]
  %conv212 = zext i8 %acm_ctrl.0 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 33554432, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv212) #7
  %write8_async.i553 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %286 = ptrtoint ptr %write8_async.i553 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %write8_async.i553, align 4
  tail call void %287(ptr noundef %1, i32 noundef 487, i8 noundef zeroext %acm_ctrl.0) #7
  %cfg.i554 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %288 = ptrtoint ptr %cfg.i554 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cfg.i554, align 8
  %write_readback.i555 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %write_readback.i555 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %write_readback.i555, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %291)
  %tobool.not.i556 = icmp eq i8 %291, 0
  br i1 %tobool.not.i556, label %if.end211.sw.epilog299_crit_edge, label %if.then.i559

if.end211.sw.epilog299_crit_edge:                 ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i559:                                     ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #9
  %292 = ptrtoint ptr %read8_sync.i551 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %read8_sync.i551, align 4
  %call.i558 = tail call zeroext i8 %293(ptr noundef %1, i32 noundef 487) #7
  br label %sw.epilog299

sw.bb213:                                         ; preds = %entry
  %294 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %val, align 4
  %write32_async.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %296 = ptrtoint ptr %write32_async.i561 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %write32_async.i561, align 4
  tail call void %297(ptr noundef %1, i32 noundef 72, i32 noundef %295) #7
  %cfg.i562 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %298 = ptrtoint ptr %cfg.i562 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %cfg.i562, align 8
  %write_readback.i563 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %299, i32 0, i32 1
  %300 = ptrtoint ptr %write_readback.i563 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %write_readback.i563, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %301)
  %tobool.not.i564 = icmp eq i8 %301, 0
  br i1 %tobool.not.i564, label %sw.bb213.rtl_write_dword.exit568_crit_edge, label %if.then.i567

sw.bb213.rtl_write_dword.exit568_crit_edge:       ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit568

if.then.i567:                                     ; preds = %sw.bb213
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i565 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %302 = ptrtoint ptr %read32_sync.i565 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %read32_sync.i565, align 4
  %call.i566 = tail call i32 %303(ptr noundef %1, i32 noundef 72) #7
  br label %rtl_write_dword.exit568

rtl_write_dword.exit568:                          ; preds = %if.then.i567, %sw.bb213.rtl_write_dword.exit568_crit_edge
  %304 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %val, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %306 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %receive_config, align 4
  br label %sw.epilog299

sw.bb216:                                         ; preds = %entry
  %307 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %val, align 1
  %conv218 = zext i8 %308 to i32
  %shl219 = shl nuw nsw i32 %conv218, 8
  %or222 = or i32 %shl219, %conv218
  %conv223 = trunc i32 %or222 to i16
  %write16_async.i569 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %309 = ptrtoint ptr %write16_async.i569 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %write16_async.i569, align 4
  tail call void %310(ptr noundef %1, i32 noundef 500, i16 noundef zeroext %conv223) #7
  %cfg.i570 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %311 = ptrtoint ptr %cfg.i570 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %cfg.i570, align 8
  %write_readback.i571 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %write_readback.i571 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %write_readback.i571, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %tobool.not.i572 = icmp eq i8 %314, 0
  br i1 %tobool.not.i572, label %sw.bb216.sw.epilog299_crit_edge, label %if.then.i575

sw.bb216.sw.epilog299_crit_edge:                  ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i575:                                     ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i573 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %315 = ptrtoint ptr %read16_sync.i573 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %read16_sync.i573, align 4
  %call.i574 = tail call zeroext i16 %316(ptr noundef %1, i32 noundef 500) #7
  br label %sw.epilog299

sw.bb225:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %val, align 2
  %efuse_usedbytes = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 5
  %319 = ptrtoint ptr %efuse_usedbytes to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %318, ptr %efuse_usedbytes, align 4
  br label %sw.epilog299

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %320 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %val, align 1
  %efuse_usedpercentage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 6
  %322 = ptrtoint ptr %efuse_usedpercentage to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %321, ptr %efuse_usedpercentage, align 2
  br label %sw.epilog299

sw.bb228:                                         ; preds = %entry
  %323 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %val, align 1
  %write8_async.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %325 = ptrtoint ptr %write8_async.i577 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %write8_async.i577, align 4
  tail call void %326(ptr noundef %1, i32 noundef 592, i8 noundef zeroext %324) #7
  %cfg.i578 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %327 = ptrtoint ptr %cfg.i578 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %cfg.i578, align 8
  %write_readback.i579 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %328, i32 0, i32 1
  %329 = ptrtoint ptr %write_readback.i579 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %write_readback.i579, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %330)
  %tobool.not.i580 = icmp eq i8 %330, 0
  br i1 %tobool.not.i580, label %sw.bb228.sw.epilog299_crit_edge, label %if.then.i583

sw.bb228.sw.epilog299_crit_edge:                  ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog299

if.then.i583:                                     ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i581 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %331 = ptrtoint ptr %read8_sync.i581 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %read8_sync.i581, align 4
  %call.i582 = tail call zeroext i8 %332(ptr noundef %1, i32 noundef 592) #7
  br label %sw.epilog299

sw.bb231:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %333 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %val, align 1, !range !198
  %fw_current_inpsmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 13
  %335 = ptrtoint ptr %fw_current_inpsmode to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %334, ptr %fw_current_inpsmode, align 1
  br label %sw.epilog299

sw.bb236:                                         ; preds = %entry
  %336 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %val, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %tobool237.not = icmp eq i8 %337, 0
  %cfg.i604 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %338 = ptrtoint ptr %cfg.i604 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %cfg.i604, align 8
  %ops.i605 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %339, i32 0, i32 4
  %340 = ptrtoint ptr %ops.i605 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %ops.i605, align 4
  %set_bbreg.i606 = getelementptr inbounds %struct.rtl_hal_ops, ptr %341, i32 0, i32 46
  %342 = ptrtoint ptr %set_bbreg.i606 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %set_bbreg.i606, align 4
  br i1 %tobool237.not, label %if.else252, label %if.then240

if.then240:                                       ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %343(ptr noundef %hw, i32 noundef 3076, i32 noundef 255, i32 noundef 51) #7
  %344 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %priv, align 8
  %cfg.i587 = getelementptr inbounds %struct.rtl_priv, ptr %345, i32 0, i32 32
  %346 = ptrtoint ptr %cfg.i587 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %cfg.i587, align 8
  %ops.i588 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %347, i32 0, i32 4
  %348 = ptrtoint ptr %ops.i588 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %ops.i588, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %349, i32 0, i32 45
  %350 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %get_bbreg.i, align 4
  %call.i589 = tail call i32 %351(ptr noundef %hw, i32 noundef 3332, i32 noundef 255) #7
  %and244 = and i32 %call.i589, 240
  %or245 = or i32 %and244, 3
  %352 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %priv, align 8
  %cfg.i591 = getelementptr inbounds %struct.rtl_priv, ptr %353, i32 0, i32 32
  %354 = ptrtoint ptr %cfg.i591 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %cfg.i591, align 8
  %ops.i592 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %355, i32 0, i32 4
  %356 = ptrtoint ptr %ops.i592 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ops.i592, align 4
  %set_bbreg.i593 = getelementptr inbounds %struct.rtl_hal_ops, ptr %357, i32 0, i32 46
  %358 = ptrtoint ptr %set_bbreg.i593 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %set_bbreg.i593, align 4
  tail call void %359(ptr noundef %hw, i32 noundef 3332, i32 noundef 255, i32 noundef %or245) #7
  %360 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %priv, align 8
  %cfg.i595 = getelementptr inbounds %struct.rtl_priv, ptr %361, i32 0, i32 32
  %362 = ptrtoint ptr %cfg.i595 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cfg.i595, align 8
  %ops.i596 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %363, i32 0, i32 4
  %364 = ptrtoint ptr %ops.i596 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ops.i596, align 4
  %get_bbreg.i597 = getelementptr inbounds %struct.rtl_hal_ops, ptr %365, i32 0, i32 45
  %366 = ptrtoint ptr %get_bbreg.i597 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %get_bbreg.i597, align 4
  %call.i598 = tail call i32 %367(ptr noundef %hw, i32 noundef 3076, i32 noundef 65280) #7
  %conv248 = and i32 %call.i598, 251
  %or249 = or i32 %conv248, 4
  %368 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %priv, align 8
  %cfg.i600 = getelementptr inbounds %struct.rtl_priv, ptr %369, i32 0, i32 32
  %370 = ptrtoint ptr %cfg.i600 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cfg.i600, align 8
  %ops.i601 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %371, i32 0, i32 4
  %372 = ptrtoint ptr %ops.i601 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %ops.i601, align 4
  %set_bbreg.i602 = getelementptr inbounds %struct.rtl_hal_ops, ptr %373, i32 0, i32 46
  %374 = ptrtoint ptr %set_bbreg.i602 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %set_bbreg.i602, align 4
  tail call void %375(ptr noundef %hw, i32 noundef 3076, i32 noundef 65280, i32 noundef %or249) #7
  %current_mrc_switch = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 17
  %376 = ptrtoint ptr %current_mrc_switch to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %337, ptr %current_mrc_switch, align 1
  br label %sw.epilog299

if.else252:                                       ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %343(ptr noundef %hw, i32 noundef 3076, i32 noundef 255, i32 noundef 19) #7
  %377 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %priv, align 8
  %cfg.i608 = getelementptr inbounds %struct.rtl_priv, ptr %378, i32 0, i32 32
  %379 = ptrtoint ptr %cfg.i608 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cfg.i608, align 8
  %ops.i609 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %380, i32 0, i32 4
  %381 = ptrtoint ptr %ops.i609 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ops.i609, align 4
  %get_bbreg.i610 = getelementptr inbounds %struct.rtl_hal_ops, ptr %382, i32 0, i32 45
  %383 = ptrtoint ptr %get_bbreg.i610 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %get_bbreg.i610, align 4
  %call.i611 = tail call i32 %384(ptr noundef %hw, i32 noundef 3332, i32 noundef 255) #7
  %and256 = and i32 %call.i611, 240
  %or257 = or i32 %and256, 1
  %385 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %priv, align 8
  %cfg.i613 = getelementptr inbounds %struct.rtl_priv, ptr %386, i32 0, i32 32
  %387 = ptrtoint ptr %cfg.i613 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %cfg.i613, align 8
  %ops.i614 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %388, i32 0, i32 4
  %389 = ptrtoint ptr %ops.i614 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %ops.i614, align 4
  %set_bbreg.i615 = getelementptr inbounds %struct.rtl_hal_ops, ptr %390, i32 0, i32 46
  %391 = ptrtoint ptr %set_bbreg.i615 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %set_bbreg.i615, align 4
  tail call void %392(ptr noundef %hw, i32 noundef 3332, i32 noundef 255, i32 noundef %or257) #7
  %393 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %priv, align 8
  %cfg.i617 = getelementptr inbounds %struct.rtl_priv, ptr %394, i32 0, i32 32
  %395 = ptrtoint ptr %cfg.i617 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %cfg.i617, align 8
  %ops.i618 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %396, i32 0, i32 4
  %397 = ptrtoint ptr %ops.i618 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ops.i618, align 4
  %get_bbreg.i619 = getelementptr inbounds %struct.rtl_hal_ops, ptr %398, i32 0, i32 45
  %399 = ptrtoint ptr %get_bbreg.i619 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %get_bbreg.i619, align 4
  %call.i620 = tail call i32 %400(ptr noundef %hw, i32 noundef 3076, i32 noundef 65280) #7
  %and261 = and i32 %call.i620, 251
  %401 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %priv, align 8
  %cfg.i622 = getelementptr inbounds %struct.rtl_priv, ptr %402, i32 0, i32 32
  %403 = ptrtoint ptr %cfg.i622 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %cfg.i622, align 8
  %ops.i623 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %404, i32 0, i32 4
  %405 = ptrtoint ptr %ops.i623 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %ops.i623, align 4
  %set_bbreg.i624 = getelementptr inbounds %struct.rtl_hal_ops, ptr %406, i32 0, i32 46
  %407 = ptrtoint ptr %set_bbreg.i624 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %set_bbreg.i624, align 4
  tail call void %408(ptr noundef %hw, i32 noundef 3076, i32 noundef 65280, i32 noundef %and261) #7
  %current_mrc_switch264 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 17
  %409 = ptrtoint ptr %current_mrc_switch264 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 0, ptr %current_mrc_switch264, align 1
  br label %sw.epilog299

sw.bb267:                                         ; preds = %entry
  %410 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %val, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %411)
  %tobool268.not = icmp eq i8 %411, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rpwm_val) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_pwrmode) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fw_current_inps) #7
  br i1 %tobool268.not, label %if.else281, label %if.then271

if.then271:                                       ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #9
  %412 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 2, ptr %rpwm_val, align 1
  %413 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 1, ptr %fw_current_inps, align 1
  %cfg272 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %414 = ptrtoint ptr %cfg272 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %cfg272, align 8
  %ops273 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %415, i32 0, i32 4
  %416 = ptrtoint ptr %ops273 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ops273, align 4
  %set_hw_reg274 = getelementptr inbounds %struct.rtl_hal_ops, ptr %417, i32 0, i32 20
  %418 = ptrtoint ptr %set_hw_reg274 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %set_hw_reg274, align 4
  call void %419(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #7
  %420 = ptrtoint ptr %cfg272 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %cfg272, align 8
  %ops276 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %421, i32 0, i32 4
  %422 = ptrtoint ptr %ops276 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ops276, align 4
  %set_hw_reg277 = getelementptr inbounds %struct.rtl_hal_ops, ptr %423, i32 0, i32 20
  %424 = ptrtoint ptr %set_hw_reg277 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %set_hw_reg277, align 4
  %fwctrl_psmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  call void %425(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef %fwctrl_psmode) #7
  %426 = ptrtoint ptr %cfg272 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %cfg272, align 8
  %ops279 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %427, i32 0, i32 4
  %428 = ptrtoint ptr %ops279 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %ops279, align 4
  %set_hw_reg280 = getelementptr inbounds %struct.rtl_hal_ops, ptr %429, i32 0, i32 20
  %430 = ptrtoint ptr %set_hw_reg280 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %set_hw_reg280, align 4
  call void %431(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val) #7
  br label %if.end291

if.else281:                                       ; preds = %sw.bb267
  call void @__sanitizer_cov_trace_pc() #9
  %432 = ptrtoint ptr %rpwm_val to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 12, ptr %rpwm_val, align 1
  %433 = ptrtoint ptr %fw_pwrmode to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 0, ptr %fw_pwrmode, align 1
  %434 = ptrtoint ptr %fw_current_inps to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 0, ptr %fw_current_inps, align 1
  %cfg282 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %435 = ptrtoint ptr %cfg282 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %cfg282, align 8
  %ops283 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %436, i32 0, i32 4
  %437 = ptrtoint ptr %ops283 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %ops283, align 4
  %set_hw_reg284 = getelementptr inbounds %struct.rtl_hal_ops, ptr %438, i32 0, i32 20
  %439 = ptrtoint ptr %set_hw_reg284 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %set_hw_reg284, align 4
  call void %440(ptr noundef %hw, i8 noundef zeroext 60, ptr noundef nonnull %rpwm_val) #7
  %441 = ptrtoint ptr %cfg282 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %cfg282, align 8
  %ops286 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %442, i32 0, i32 4
  %443 = ptrtoint ptr %ops286 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %ops286, align 4
  %set_hw_reg287 = getelementptr inbounds %struct.rtl_hal_ops, ptr %444, i32 0, i32 20
  %445 = ptrtoint ptr %set_hw_reg287 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %set_hw_reg287, align 4
  call void %446(ptr noundef %hw, i8 noundef zeroext 61, ptr noundef nonnull %fw_pwrmode) #7
  %447 = ptrtoint ptr %cfg282 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %cfg282, align 8
  %ops289 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %448, i32 0, i32 4
  %449 = ptrtoint ptr %ops289 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %ops289, align 4
  %set_hw_reg290 = getelementptr inbounds %struct.rtl_hal_ops, ptr %450, i32 0, i32 20
  %451 = ptrtoint ptr %set_hw_reg290 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %set_hw_reg290, align 4
  call void %452(ptr noundef %hw, i8 noundef zeroext 65, ptr noundef nonnull %fw_current_inps) #7
  br label %if.end291

if.end291:                                        ; preds = %if.else281, %if.then271
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_current_inps) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fw_pwrmode) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rpwm_val) #7
  br label %sw.epilog299

do.end295:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %variable to i32
  %call298 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #10
  br label %sw.epilog299

sw.epilog299:                                     ; preds = %do.end295, %if.end291, %if.else252, %if.then240, %sw.bb231, %if.then.i583, %sw.bb228.sw.epilog299_crit_edge, %sw.bb226, %sw.bb225, %if.then.i575, %sw.bb216.sw.epilog299_crit_edge, %rtl_write_dword.exit568, %if.then.i559, %if.end211.sw.epilog299_crit_edge, %if.end167, %if.end158, %if.then.i533, %sw.bb87.sw.epilog299_crit_edge, %if.then.i525, %if.then60.sw.epilog299_crit_edge, %sw.bb56.sw.epilog299_crit_edge, %if.then.i517, %sw.bb46.sw.epilog299_crit_edge, %for.end, %if.then.i501, %rtl_write_byte.exit494.sw.epilog299_crit_edge, %if.then.i485, %rtl_write_dword.exit478.sw.epilog299_crit_edge, %if.then.i469, %while.end.sw.epilog299_crit_edge, %if.then.i449, %rtl_write_dword.exit.sw.epilog299_crit_edge, %entry.sw.epilog299_crit_edge, %entry.sw.epilog299_crit_edge630, %entry.sw.epilog299_crit_edge631, %entry.sw.epilog299_crit_edge632, %entry.sw.epilog299_crit_edge633, %entry.sw.epilog299_crit_edge634, %entry.sw.epilog299_crit_edge635
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_dm_init_edca_turbo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_enable_hw_security_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %5) #7
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
  %11 = load i8, ptr %sw_crypto, align 8, !range !198
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
  %13 = load i8, ptr %sec, align 8, !range !198
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
  call void @__sanitizer_cov_trace_pc() #9
  %use_defaultkey = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 2
  %14 = ptrtoint ptr %use_defaultkey to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %use_defaultkey, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  %spec.store.select = select i1 %tobool5.not, i8 12, i8 15
  %16 = ptrtoint ptr %sec_reg_value to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.store.select, ptr %sec_reg_value, align 1
  %conv12 = zext i8 %spec.store.select to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %conv12) #7
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_hw_reg, align 4
  call void %22(ptr noundef %hw, i8 noundef zeroext 27, ptr noundef nonnull %sec_reg_value) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sec_reg_value) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8192se_gpiobit3_cfg_inputmode(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 753, i8 noundef zeroext 8) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 753) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %read8_sync.i5 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i5, align 4
  %call.i6 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 750) #7
  %12 = and i8 %call.i6, -9
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 750, i8 noundef zeroext %12) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i9 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i9, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i10 = icmp eq i8 %18, 0
  br i1 %tobool.not.i10, label %rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge, label %if.then.i13

rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit14

if.then.i13:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %read8_sync.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i5, align 4
  %call.i12 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 750) #7
  br label %rtl_write_byte.exit14

rtl_write_byte.exit14:                            ; preds = %if.then.i13, %rtl_write_byte.exit.rtl_write_byte.exit14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92se_hw_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %mrc2set = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %2 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %being_init_adapter, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !199
  tail call void @trace_hardirqs_on() #7
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !200
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf_ops, align 4
  %disable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %disable_aspm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_aspm, align 4
  tail call void %7(ptr noundef %hw) #7
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %first_init.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 4
  %10 = ptrtoint ptr %first_init.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %first_init.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %9, i32 noundef 3) #7
  %14 = and i8 %call.i.i, -2
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %16(ptr noundef %9, i32 noundef 3, i8 noundef zeroext %14) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i323.i = tail call zeroext i8 %22(ptr noundef %9, i32 noundef 3) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then.i.rtl_write_byte.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #7
  %24 = or i8 %call.i.i, 1
  %25 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %26(ptr noundef %9, i32 noundef 3, i8 noundef zeroext %24) #7
  %27 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i326.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i326.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i326.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i327.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i327.i, label %rtl_write_byte.exit.i.if.end.i_crit_edge, label %if.then.i330.i

rtl_write_byte.exit.i.if.end.i_crit_edge:         ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i330.i:                                   ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i329.i = tail call zeroext i8 %32(ptr noundef %9, i32 noundef 3) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i330.i, %rtl_write_byte.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %read8_sync.i332.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 9
  %33 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i333.i = tail call zeroext i8 %34(ptr noundef %9, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i333.i)
  %tobool10.not.i = icmp sgt i8 %call.i333.i, -1
  br i1 %tobool10.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then11.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then11.i:                                      ; preds = %if.end.i
  %and13.i = and i8 %call.i333.i, 63
  %call15.i = tail call fastcc zeroext i8 @_rtl92se_halset_sysclk(ptr noundef %hw, i8 noundef zeroext %and13.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call15.i)
  %tobool16.not.i = icmp eq i8 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then11.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge, label %if.then11.i.if.end19.i_crit_edge

if.then11.i.if.end19.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then11.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_macconfig_before_fwdownload.exit

if.end19.i:                                       ; preds = %if.then11.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %write8_async.i334.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 5
  %35 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %36(ptr noundef %9, i32 noundef 40, i8 noundef zeroext 0) #7
  %cfg.i335.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i336.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i336.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i336.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i337.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i337.i, label %if.end19.i.rtl_write_byte.exit341.i_crit_edge, label %if.then.i340.i

if.end19.i.rtl_write_byte.exit341.i_crit_edge:    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit341.i

if.then.i340.i:                                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i339.i = tail call zeroext i8 %42(ptr noundef %9, i32 noundef 40) #7
  br label %rtl_write_byte.exit341.i

rtl_write_byte.exit341.i:                         ; preds = %if.then.i340.i, %if.end19.i.rtl_write_byte.exit341.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 10737400) #7
  %44 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %45(ptr noundef %9, i32 noundef 32, i8 noundef zeroext 52) #7
  %46 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i344.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_readback.i344.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_readback.i344.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i345.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i345.i, label %rtl_write_byte.exit341.i.rtl_write_byte.exit349.i_crit_edge, label %if.then.i348.i

rtl_write_byte.exit341.i.rtl_write_byte.exit349.i_crit_edge: ; preds = %rtl_write_byte.exit341.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit349.i

if.then.i348.i:                                   ; preds = %rtl_write_byte.exit341.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i347.i = tail call zeroext i8 %51(ptr noundef %9, i32 noundef 32) #7
  br label %rtl_write_byte.exit349.i

rtl_write_byte.exit349.i:                         ; preds = %if.then.i348.i, %rtl_write_byte.exit341.i.rtl_write_byte.exit349.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 10737400) #7
  %53 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %54(ptr noundef %9, i32 noundef 1377, i8 noundef zeroext 0) #7
  %55 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i352.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i352.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i352.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i353.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i353.i, label %rtl_write_byte.exit349.i.rtl_write_byte.exit357.i_crit_edge, label %if.then.i356.i

rtl_write_byte.exit349.i.rtl_write_byte.exit357.i_crit_edge: ; preds = %rtl_write_byte.exit349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit357.i

if.then.i356.i:                                   ; preds = %rtl_write_byte.exit349.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i355.i = tail call zeroext i8 %60(ptr noundef %9, i32 noundef 1377) #7
  br label %rtl_write_byte.exit357.i

rtl_write_byte.exit357.i:                         ; preds = %if.then.i356.i, %rtl_write_byte.exit349.i.rtl_write_byte.exit357.i_crit_edge
  %61 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i359.i = tail call zeroext i8 %62(ptr noundef %9, i32 noundef 3) #7
  %63 = and i8 %call.i359.i, 115
  %64 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %65(ptr noundef %9, i32 noundef 3, i8 noundef zeroext %63) #7
  %66 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i362.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i362.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i362.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i363.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i363.i, label %rtl_write_byte.exit357.i.rtl_write_byte.exit367.i_crit_edge, label %if.then.i366.i

rtl_write_byte.exit357.i.rtl_write_byte.exit367.i_crit_edge: ; preds = %rtl_write_byte.exit357.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit367.i

if.then.i366.i:                                   ; preds = %rtl_write_byte.exit357.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i365.i = tail call zeroext i8 %71(ptr noundef %9, i32 noundef 3) #7
  br label %rtl_write_byte.exit367.i

rtl_write_byte.exit367.i:                         ; preds = %if.then.i366.i, %rtl_write_byte.exit357.i.rtl_write_byte.exit367.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  %73 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %74(ptr noundef %9, i32 noundef 64, i8 noundef zeroext 0) #7
  %75 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i370.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i370.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i370.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i371.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i371.i, label %rtl_write_byte.exit367.i.rtl_write_byte.exit375.i_crit_edge, label %if.then.i374.i

rtl_write_byte.exit367.i.rtl_write_byte.exit375.i_crit_edge: ; preds = %rtl_write_byte.exit367.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit375.i

if.then.i374.i:                                   ; preds = %rtl_write_byte.exit367.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i373.i = tail call zeroext i8 %80(ptr noundef %9, i32 noundef 64) #7
  br label %rtl_write_byte.exit375.i

rtl_write_byte.exit375.i:                         ; preds = %if.then.i374.i, %rtl_write_byte.exit367.i.rtl_write_byte.exit375.i_crit_edge
  %81 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %82(ptr noundef %9, i32 noundef 68, i8 noundef zeroext 0) #7
  %83 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i378.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_readback.i378.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %write_readback.i378.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i379.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i379.i, label %rtl_write_byte.exit375.i.rtl_write_byte.exit383.i_crit_edge, label %if.then.i382.i

rtl_write_byte.exit375.i.rtl_write_byte.exit383.i_crit_edge: ; preds = %rtl_write_byte.exit375.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit383.i

if.then.i382.i:                                   ; preds = %rtl_write_byte.exit375.i
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i381.i = tail call zeroext i8 %88(ptr noundef %9, i32 noundef 68) #7
  br label %rtl_write_byte.exit383.i

rtl_write_byte.exit383.i:                         ; preds = %if.then.i382.i, %rtl_write_byte.exit375.i.rtl_write_byte.exit383.i_crit_edge
  %89 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i385.i = tail call zeroext i8 %90(ptr noundef %9, i32 noundef 1378) #7
  %91 = or i8 %call.i385.i, 8
  %92 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %93(ptr noundef %9, i32 noundef 1378, i8 noundef zeroext %91) #7
  %94 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i388.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i388.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i388.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i389.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i389.i, label %rtl_write_byte.exit383.i.rtl_write_byte.exit393.i_crit_edge, label %if.then.i392.i

rtl_write_byte.exit383.i.rtl_write_byte.exit393.i_crit_edge: ; preds = %rtl_write_byte.exit383.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit393.i

if.then.i392.i:                                   ; preds = %rtl_write_byte.exit383.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i391.i = tail call zeroext i8 %99(ptr noundef %9, i32 noundef 1378) #7
  br label %rtl_write_byte.exit393.i

rtl_write_byte.exit393.i:                         ; preds = %if.then.i392.i, %rtl_write_byte.exit383.i.rtl_write_byte.exit393.i_crit_edge
  %100 = and i8 %call.i385.i, -9
  %101 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %102(ptr noundef %9, i32 noundef 1378, i8 noundef zeroext %100) #7
  %103 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i396.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %write_readback.i396.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %write_readback.i396.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i397.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i397.i, label %rtl_write_byte.exit393.i.rtl_write_byte.exit401.i_crit_edge, label %if.then.i400.i

rtl_write_byte.exit393.i.rtl_write_byte.exit401.i_crit_edge: ; preds = %rtl_write_byte.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit401.i

if.then.i400.i:                                   ; preds = %rtl_write_byte.exit393.i
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i399.i = tail call zeroext i8 %108(ptr noundef %9, i32 noundef 1378) #7
  br label %rtl_write_byte.exit401.i

rtl_write_byte.exit401.i:                         ; preds = %if.then.i400.i, %rtl_write_byte.exit393.i.rtl_write_byte.exit401.i_crit_edge
  %109 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i403.i = tail call zeroext i8 %110(ptr noundef %9, i32 noundef 38) #7
  %111 = or i8 %call.i403.i, 1
  %112 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %113(ptr noundef %9, i32 noundef 38, i8 noundef zeroext %111) #7
  %114 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i406.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i406.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i406.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i407.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i407.i, label %rtl_write_byte.exit401.i.rtl_write_byte.exit411.i_crit_edge, label %if.then.i410.i

rtl_write_byte.exit401.i.rtl_write_byte.exit411.i_crit_edge: ; preds = %rtl_write_byte.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit411.i

if.then.i410.i:                                   ; preds = %rtl_write_byte.exit401.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i409.i = tail call zeroext i8 %119(ptr noundef %9, i32 noundef 38) #7
  br label %rtl_write_byte.exit411.i

rtl_write_byte.exit411.i:                         ; preds = %if.then.i410.i, %rtl_write_byte.exit401.i.rtl_write_byte.exit411.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 429496000) #7
  %121 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i413.i = tail call zeroext i8 %122(ptr noundef %9, i32 noundef 39) #7
  %123 = and i8 %call.i413.i, -5
  %124 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %125(ptr noundef %9, i32 noundef 39, i8 noundef zeroext %123) #7
  %126 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i416.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_readback.i416.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %write_readback.i416.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i417.i = icmp eq i8 %129, 0
  br i1 %tobool.not.i417.i, label %rtl_write_byte.exit411.i.rtl_write_byte.exit421.i_crit_edge, label %if.then.i420.i

rtl_write_byte.exit411.i.rtl_write_byte.exit421.i_crit_edge: ; preds = %rtl_write_byte.exit411.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit421.i

if.then.i420.i:                                   ; preds = %rtl_write_byte.exit411.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i419.i = tail call zeroext i8 %131(ptr noundef %9, i32 noundef 39) #7
  br label %rtl_write_byte.exit421.i

rtl_write_byte.exit421.i:                         ; preds = %if.then.i420.i, %rtl_write_byte.exit411.i.rtl_write_byte.exit421.i_crit_edge
  %132 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i423.i = tail call zeroext i8 %133(ptr noundef %9, i32 noundef 16) #7
  %134 = or i8 %call.i423.i, 1
  %135 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %136(ptr noundef %9, i32 noundef 16, i8 noundef zeroext %134) #7
  %137 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i426.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %write_readback.i426.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %write_readback.i426.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i427.i = icmp eq i8 %140, 0
  br i1 %tobool.not.i427.i, label %rtl_write_byte.exit421.i.rtl_write_byte.exit431.i_crit_edge, label %if.then.i430.i

rtl_write_byte.exit421.i.rtl_write_byte.exit431.i_crit_edge: ; preds = %rtl_write_byte.exit421.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit431.i

if.then.i430.i:                                   ; preds = %rtl_write_byte.exit421.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i429.i = tail call zeroext i8 %142(ptr noundef %9, i32 noundef 16) #7
  br label %rtl_write_byte.exit431.i

rtl_write_byte.exit431.i:                         ; preds = %if.then.i430.i, %rtl_write_byte.exit421.i.rtl_write_byte.exit431.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748000) #7
  %144 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i433.i = tail call zeroext i8 %145(ptr noundef %9, i32 noundef 16) #7
  %146 = or i8 %call.i433.i, 2
  %147 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %148(ptr noundef %9, i32 noundef 16, i8 noundef zeroext %146) #7
  %149 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i436.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %write_readback.i436.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %write_readback.i436.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i437.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i437.i, label %rtl_write_byte.exit431.i.rtl_write_byte.exit441.i_crit_edge, label %if.then.i440.i

rtl_write_byte.exit431.i.rtl_write_byte.exit441.i_crit_edge: ; preds = %rtl_write_byte.exit431.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit441.i

if.then.i440.i:                                   ; preds = %rtl_write_byte.exit431.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i439.i = tail call zeroext i8 %154(ptr noundef %9, i32 noundef 16) #7
  br label %rtl_write_byte.exit441.i

rtl_write_byte.exit441.i:                         ; preds = %if.then.i440.i, %rtl_write_byte.exit431.i.rtl_write_byte.exit441.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #7
  %156 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i443.i = tail call zeroext i8 %157(ptr noundef %9, i32 noundef 32) #7
  %158 = or i8 %call.i443.i, 1
  %159 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %160(ptr noundef %9, i32 noundef 32, i8 noundef zeroext %158) #7
  %161 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i446.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %write_readback.i446.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %write_readback.i446.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i447.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i447.i, label %rtl_write_byte.exit441.i.rtl_write_byte.exit451.i_crit_edge, label %if.then.i450.i

rtl_write_byte.exit441.i.rtl_write_byte.exit451.i_crit_edge: ; preds = %rtl_write_byte.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit451.i

if.then.i450.i:                                   ; preds = %rtl_write_byte.exit441.i
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i449.i = tail call zeroext i8 %166(ptr noundef %9, i32 noundef 32) #7
  br label %rtl_write_byte.exit451.i

rtl_write_byte.exit451.i:                         ; preds = %if.then.i450.i, %rtl_write_byte.exit441.i.rtl_write_byte.exit451.i_crit_edge
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 10
  %167 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i452.i = tail call zeroext i16 %168(ptr noundef %9, i32 noundef 0) #7
  %169 = or i16 %call.i452.i, 2048
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 6
  %170 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %171(ptr noundef %9, i32 noundef 0, i16 noundef zeroext %169) #7
  %172 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i454.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %write_readback.i454.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %write_readback.i454.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i455.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i455.i, label %rtl_write_byte.exit451.i.rtl_write_word.exit.i_crit_edge, label %if.then.i458.i

rtl_write_byte.exit451.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_byte.exit451.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i

if.then.i458.i:                                   ; preds = %rtl_write_byte.exit451.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i457.i = tail call zeroext i16 %177(ptr noundef %9, i32 noundef 0) #7
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i458.i, %rtl_write_byte.exit451.i.rtl_write_word.exit.i_crit_edge
  %178 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i460.i = tail call zeroext i16 %179(ptr noundef %9, i32 noundef 2) #7
  %180 = or i16 %call.i460.i, 8192
  %181 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %182(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %180) #7
  %183 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i463.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %write_readback.i463.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %write_readback.i463.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i464.i = icmp eq i8 %186, 0
  br i1 %tobool.not.i464.i, label %rtl_write_word.exit.i.rtl_write_word.exit468.i_crit_edge, label %if.then.i467.i

rtl_write_word.exit.i.rtl_write_word.exit468.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit468.i

if.then.i467.i:                                   ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i466.i = tail call zeroext i16 %188(ptr noundef %9, i32 noundef 2) #7
  br label %rtl_write_word.exit468.i

rtl_write_word.exit468.i:                         ; preds = %if.then.i467.i, %rtl_write_word.exit.i.rtl_write_word.exit468.i_crit_edge
  %189 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %190(ptr noundef %9, i32 noundef 1, i8 noundef zeroext 104) #7
  %191 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i471.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %write_readback.i471.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %write_readback.i471.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i472.i = icmp eq i8 %194, 0
  br i1 %tobool.not.i472.i, label %rtl_write_word.exit468.i.rtl_write_byte.exit476.i_crit_edge, label %if.then.i475.i

rtl_write_word.exit468.i.rtl_write_byte.exit476.i_crit_edge: ; preds = %rtl_write_word.exit468.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit476.i

if.then.i475.i:                                   ; preds = %rtl_write_word.exit468.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i474.i = tail call zeroext i8 %196(ptr noundef %9, i32 noundef 1) #7
  br label %rtl_write_byte.exit476.i

rtl_write_byte.exit476.i:                         ; preds = %if.then.i475.i, %rtl_write_word.exit468.i.rtl_write_byte.exit476.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %197(i32 noundef 42949600) #7
  %198 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i478.i = tail call zeroext i8 %199(ptr noundef %9, i32 noundef 40) #7
  %200 = or i8 %call.i478.i, 17
  %201 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %202(ptr noundef %9, i32 noundef 40, i8 noundef zeroext %200) #7
  %203 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i481.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %write_readback.i481.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %write_readback.i481.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i482.i = icmp eq i8 %206, 0
  br i1 %tobool.not.i482.i, label %rtl_write_byte.exit476.i.rtl_write_byte.exit486.i_crit_edge, label %if.then.i485.i

rtl_write_byte.exit476.i.rtl_write_byte.exit486.i_crit_edge: ; preds = %rtl_write_byte.exit476.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit486.i

if.then.i485.i:                                   ; preds = %rtl_write_byte.exit476.i
  call void @__sanitizer_cov_trace_pc() #9
  %207 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i484.i = tail call zeroext i8 %208(ptr noundef %9, i32 noundef 40) #7
  br label %rtl_write_byte.exit486.i

rtl_write_byte.exit486.i:                         ; preds = %if.then.i485.i, %rtl_write_byte.exit476.i.rtl_write_byte.exit486.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 21474800) #7
  %210 = or i8 %call.i478.i, 81
  %211 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %212(ptr noundef %9, i32 noundef 40, i8 noundef zeroext %210) #7
  %213 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i489.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %write_readback.i489.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %write_readback.i489.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i490.i = icmp eq i8 %216, 0
  br i1 %tobool.not.i490.i, label %rtl_write_byte.exit486.i.rtl_write_byte.exit494.i_crit_edge, label %if.then.i493.i

rtl_write_byte.exit486.i.rtl_write_byte.exit494.i_crit_edge: ; preds = %rtl_write_byte.exit486.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit494.i

if.then.i493.i:                                   ; preds = %rtl_write_byte.exit486.i
  call void @__sanitizer_cov_trace_pc() #9
  %217 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i492.i = tail call zeroext i8 %218(ptr noundef %9, i32 noundef 40) #7
  br label %rtl_write_byte.exit494.i

rtl_write_byte.exit494.i:                         ; preds = %if.then.i493.i, %rtl_write_byte.exit486.i.rtl_write_byte.exit494.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %219 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %219(i32 noundef 2147480) #7
  %220 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %221(ptr noundef %9, i32 noundef 40, i8 noundef zeroext %200) #7
  %222 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i497.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %write_readback.i497.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %write_readback.i497.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i498.i = icmp eq i8 %225, 0
  br i1 %tobool.not.i498.i, label %rtl_write_byte.exit494.i.rtl_write_byte.exit502.i_crit_edge, label %if.then.i501.i

rtl_write_byte.exit494.i.rtl_write_byte.exit502.i_crit_edge: ; preds = %rtl_write_byte.exit494.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit502.i

if.then.i501.i:                                   ; preds = %rtl_write_byte.exit494.i
  call void @__sanitizer_cov_trace_pc() #9
  %226 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i500.i = tail call zeroext i8 %227(ptr noundef %9, i32 noundef 40) #7
  br label %rtl_write_byte.exit502.i

rtl_write_byte.exit502.i:                         ; preds = %if.then.i501.i, %rtl_write_byte.exit494.i.rtl_write_byte.exit502.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %228 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %228(i32 noundef 2147480) #7
  %229 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i504.i = tail call zeroext i8 %230(ptr noundef %9, i32 noundef 41) #7
  %231 = or i8 %call.i504.i, 1
  %232 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %233(ptr noundef %9, i32 noundef 41, i8 noundef zeroext %231) #7
  %234 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i507.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %write_readback.i507.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %write_readback.i507.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i508.i = icmp eq i8 %237, 0
  br i1 %tobool.not.i508.i, label %rtl_write_byte.exit502.i.rtl_write_byte.exit512.i_crit_edge, label %if.then.i511.i

rtl_write_byte.exit502.i.rtl_write_byte.exit512.i_crit_edge: ; preds = %rtl_write_byte.exit502.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit512.i

if.then.i511.i:                                   ; preds = %rtl_write_byte.exit502.i
  call void @__sanitizer_cov_trace_pc() #9
  %238 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i510.i = tail call zeroext i8 %239(ptr noundef %9, i32 noundef 41) #7
  br label %rtl_write_byte.exit512.i

rtl_write_byte.exit512.i:                         ; preds = %if.then.i511.i, %rtl_write_byte.exit502.i.rtl_write_byte.exit512.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %240 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %240(i32 noundef 214748000) #7
  %241 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %242(ptr noundef %9, i32 noundef 0, i8 noundef zeroext -90) #7
  %243 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i515.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %244, i32 0, i32 1
  %245 = ptrtoint ptr %write_readback.i515.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %write_readback.i515.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i516.i = icmp eq i8 %246, 0
  br i1 %tobool.not.i516.i, label %rtl_write_byte.exit512.i.rtl_write_byte.exit520.i_crit_edge, label %if.then.i519.i

rtl_write_byte.exit512.i.rtl_write_byte.exit520.i_crit_edge: ; preds = %rtl_write_byte.exit512.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit520.i

if.then.i519.i:                                   ; preds = %rtl_write_byte.exit512.i
  call void @__sanitizer_cov_trace_pc() #9
  %247 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i518.i = tail call zeroext i8 %248(ptr noundef %9, i32 noundef 0) #7
  br label %rtl_write_byte.exit520.i

rtl_write_byte.exit520.i:                         ; preds = %if.then.i519.i, %rtl_write_byte.exit512.i.rtl_write_byte.exit520.i_crit_edge
  %249 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i522.i = tail call zeroext i16 %250(ptr noundef %9, i32 noundef 8) #7
  %251 = or i16 %call.i522.i, 6144
  %252 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %253(ptr noundef %9, i32 noundef 8, i16 noundef zeroext %251) #7
  %254 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i525.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %255, i32 0, i32 1
  %256 = ptrtoint ptr %write_readback.i525.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %write_readback.i525.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i526.i = icmp eq i8 %257, 0
  br i1 %tobool.not.i526.i, label %rtl_write_byte.exit520.i.rtl_write_word.exit530.i_crit_edge, label %if.then.i529.i

rtl_write_byte.exit520.i.rtl_write_word.exit530.i_crit_edge: ; preds = %rtl_write_byte.exit520.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit530.i

if.then.i529.i:                                   ; preds = %rtl_write_byte.exit520.i
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i528.i = tail call zeroext i16 %259(ptr noundef %9, i32 noundef 8) #7
  br label %rtl_write_word.exit530.i

rtl_write_word.exit530.i:                         ; preds = %if.then.i529.i, %rtl_write_byte.exit520.i.rtl_write_word.exit530.i_crit_edge
  %260 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i532.i = tail call zeroext i16 %261(ptr noundef %9, i32 noundef 2) #7
  %262 = or i16 %call.i532.i, 2048
  %263 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %264(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %262) #7
  %265 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i535.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %266, i32 0, i32 1
  %267 = ptrtoint ptr %write_readback.i535.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %write_readback.i535.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool.not.i536.i = icmp eq i8 %268, 0
  br i1 %tobool.not.i536.i, label %rtl_write_word.exit530.i.rtl_write_word.exit540.i_crit_edge, label %if.then.i539.i

rtl_write_word.exit530.i.rtl_write_word.exit540.i_crit_edge: ; preds = %rtl_write_word.exit530.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit540.i

if.then.i539.i:                                   ; preds = %rtl_write_word.exit530.i
  call void @__sanitizer_cov_trace_pc() #9
  %269 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i538.i = tail call zeroext i16 %270(ptr noundef %9, i32 noundef 2) #7
  br label %rtl_write_word.exit540.i

rtl_write_word.exit540.i:                         ; preds = %if.then.i539.i, %rtl_write_word.exit530.i.rtl_write_word.exit540.i_crit_edge
  %271 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i542.i = tail call zeroext i8 %272(ptr noundef %9, i32 noundef 3) #7
  %273 = and i8 %call.i542.i, 127
  %274 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %275(ptr noundef %9, i32 noundef 3, i8 noundef zeroext %273) #7
  %276 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i545.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %write_readback.i545.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %write_readback.i545.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool.not.i546.i = icmp eq i8 %279, 0
  br i1 %tobool.not.i546.i, label %rtl_write_word.exit540.i.rtl_write_byte.exit550.i_crit_edge, label %if.then.i549.i

rtl_write_word.exit540.i.rtl_write_byte.exit550.i_crit_edge: ; preds = %rtl_write_word.exit540.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit550.i

if.then.i549.i:                                   ; preds = %rtl_write_word.exit540.i
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i548.i = tail call zeroext i8 %281(ptr noundef %9, i32 noundef 3) #7
  br label %rtl_write_byte.exit550.i

rtl_write_byte.exit550.i:                         ; preds = %if.then.i549.i, %rtl_write_word.exit540.i.rtl_write_byte.exit550.i_crit_edge
  %282 = or i16 %call.i532.i, -30720
  %283 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %284(ptr noundef %9, i32 noundef 2, i16 noundef zeroext %282) #7
  %285 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i553.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %286, i32 0, i32 1
  %287 = ptrtoint ptr %write_readback.i553.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %write_readback.i553.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool.not.i554.i = icmp eq i8 %288, 0
  br i1 %tobool.not.i554.i, label %rtl_write_byte.exit550.i.rtl_write_word.exit558.i_crit_edge, label %if.then.i557.i

rtl_write_byte.exit550.i.rtl_write_word.exit558.i_crit_edge: ; preds = %rtl_write_byte.exit550.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit558.i

if.then.i557.i:                                   ; preds = %rtl_write_byte.exit550.i
  call void @__sanitizer_cov_trace_pc() #9
  %289 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i556.i = tail call zeroext i16 %290(ptr noundef %9, i32 noundef 2) #7
  br label %rtl_write_word.exit558.i

rtl_write_word.exit558.i:                         ; preds = %if.then.i557.i, %rtl_write_byte.exit550.i.rtl_write_word.exit558.i_crit_edge
  %291 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i560.i = tail call zeroext i16 %292(ptr noundef %9, i32 noundef 8) #7
  %293 = and i16 %call.i560.i, -5
  %294 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %295(ptr noundef %9, i32 noundef 8, i16 noundef zeroext %293) #7
  %296 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i563.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %write_readback.i563.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %write_readback.i563.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %299)
  %tobool.not.i564.i = icmp eq i8 %299, 0
  br i1 %tobool.not.i564.i, label %rtl_write_word.exit558.i.rtl_write_word.exit568.i_crit_edge, label %if.then.i567.i

rtl_write_word.exit558.i.rtl_write_word.exit568.i_crit_edge: ; preds = %rtl_write_word.exit558.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit568.i

if.then.i567.i:                                   ; preds = %rtl_write_word.exit558.i
  call void @__sanitizer_cov_trace_pc() #9
  %300 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i566.i = tail call zeroext i16 %301(ptr noundef %9, i32 noundef 8) #7
  br label %rtl_write_word.exit568.i

rtl_write_word.exit568.i:                         ; preds = %if.then.i567.i, %rtl_write_word.exit558.i.rtl_write_word.exit568.i_crit_edge
  %302 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i570.i = tail call zeroext i8 %303(ptr noundef %9, i32 noundef 9) #7
  %304 = and i8 %call.i570.i, 63
  %305 = or i8 %304, -128
  %call103.i = tail call fastcc zeroext i8 @_rtl92se_halset_sysclk(ptr noundef %hw, i8 noundef zeroext %305) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call103.i)
  %tobool104.not.i = icmp eq i8 %call103.i, 0
  br i1 %tobool104.not.i, label %rtl_write_word.exit568.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge, label %if.end106.i

rtl_write_word.exit568.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge: ; preds = %rtl_write_word.exit568.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_macconfig_before_fwdownload.exit

if.end106.i:                                      ; preds = %rtl_write_word.exit568.i
  %306 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %307(ptr noundef %9, i32 noundef 64, i16 noundef zeroext 2044) #7
  %308 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i573.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %309, i32 0, i32 1
  %310 = ptrtoint ptr %write_readback.i573.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %write_readback.i573.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %311)
  %tobool.not.i574.i = icmp eq i8 %311, 0
  br i1 %tobool.not.i574.i, label %if.end106.i.rtl_write_word.exit578.i_crit_edge, label %if.then.i577.i

if.end106.i.rtl_write_word.exit578.i_crit_edge:   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit578.i

if.then.i577.i:                                   ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  %312 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i576.i = tail call zeroext i16 %313(ptr noundef %9, i32 noundef 64) #7
  br label %rtl_write_word.exit578.i

rtl_write_word.exit578.i:                         ; preds = %if.then.i577.i, %if.end106.i.rtl_write_word.exit578.i_crit_edge
  %314 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %315(ptr noundef %9, i32 noundef 6, i8 noundef zeroext 48) #7
  %316 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i581.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %write_readback.i581.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %write_readback.i581.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool.not.i582.i = icmp eq i8 %319, 0
  br i1 %tobool.not.i582.i, label %rtl_write_word.exit578.i.rtl_write_byte.exit586.i_crit_edge, label %if.then.i585.i

rtl_write_word.exit578.i.rtl_write_byte.exit586.i_crit_edge: ; preds = %rtl_write_word.exit578.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit586.i

if.then.i585.i:                                   ; preds = %rtl_write_word.exit578.i
  call void @__sanitizer_cov_trace_pc() #9
  %320 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i584.i = tail call zeroext i8 %321(ptr noundef %9, i32 noundef 6) #7
  br label %rtl_write_byte.exit586.i

rtl_write_byte.exit586.i:                         ; preds = %if.then.i585.i, %rtl_write_word.exit578.i.rtl_write_byte.exit586.i_crit_edge
  %322 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %323(ptr noundef %9, i32 noundef 73, i8 noundef zeroext -16) #7
  %324 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i589.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 1
  %326 = ptrtoint ptr %write_readback.i589.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %write_readback.i589.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool.not.i590.i = icmp eq i8 %327, 0
  br i1 %tobool.not.i590.i, label %rtl_write_byte.exit586.i.rtl_write_byte.exit594.i_crit_edge, label %if.then.i593.i

rtl_write_byte.exit586.i.rtl_write_byte.exit594.i_crit_edge: ; preds = %rtl_write_byte.exit586.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit594.i

if.then.i593.i:                                   ; preds = %rtl_write_byte.exit586.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i592.i = tail call zeroext i8 %329(ptr noundef %9, i32 noundef 73) #7
  br label %rtl_write_byte.exit594.i

rtl_write_byte.exit594.i:                         ; preds = %if.then.i593.i, %rtl_write_byte.exit586.i.rtl_write_byte.exit594.i_crit_edge
  %330 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %331(ptr noundef %9, i32 noundef 75, i8 noundef zeroext -127) #7
  %332 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i597.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %333, i32 0, i32 1
  %334 = ptrtoint ptr %write_readback.i597.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %write_readback.i597.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %335)
  %tobool.not.i598.i = icmp eq i8 %335, 0
  br i1 %tobool.not.i598.i, label %rtl_write_byte.exit594.i.rtl_write_byte.exit602.i_crit_edge, label %if.then.i601.i

rtl_write_byte.exit594.i.rtl_write_byte.exit602.i_crit_edge: ; preds = %rtl_write_byte.exit594.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit602.i

if.then.i601.i:                                   ; preds = %rtl_write_byte.exit594.i
  call void @__sanitizer_cov_trace_pc() #9
  %336 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i600.i = tail call zeroext i8 %337(ptr noundef %9, i32 noundef 75) #7
  br label %rtl_write_byte.exit602.i

rtl_write_byte.exit602.i:                         ; preds = %if.then.i601.i, %rtl_write_byte.exit594.i.rtl_write_byte.exit602.i_crit_edge
  %338 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %339(ptr noundef %9, i32 noundef 181, i8 noundef zeroext 33) #7
  %340 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i605.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %write_readback.i605.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %write_readback.i605.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool.not.i606.i = icmp eq i8 %343, 0
  br i1 %tobool.not.i606.i, label %rtl_write_byte.exit602.i.rtl_write_byte.exit610.i_crit_edge, label %if.then.i609.i

rtl_write_byte.exit602.i.rtl_write_byte.exit610.i_crit_edge: ; preds = %rtl_write_byte.exit602.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit610.i

if.then.i609.i:                                   ; preds = %rtl_write_byte.exit602.i
  call void @__sanitizer_cov_trace_pc() #9
  %344 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i608.i = tail call zeroext i8 %345(ptr noundef %9, i32 noundef 181) #7
  br label %rtl_write_byte.exit610.i

rtl_write_byte.exit610.i:                         ; preds = %if.then.i609.i, %rtl_write_byte.exit602.i.rtl_write_byte.exit610.i_crit_edge
  %346 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %347(ptr noundef %9, i32 noundef 220, i8 noundef zeroext -1) #7
  %348 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i613.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %write_readback.i613.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %write_readback.i613.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool.not.i614.i = icmp eq i8 %351, 0
  br i1 %tobool.not.i614.i, label %rtl_write_byte.exit610.i.rtl_write_byte.exit618.i_crit_edge, label %if.then.i617.i

rtl_write_byte.exit610.i.rtl_write_byte.exit618.i_crit_edge: ; preds = %rtl_write_byte.exit610.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit618.i

if.then.i617.i:                                   ; preds = %rtl_write_byte.exit610.i
  call void @__sanitizer_cov_trace_pc() #9
  %352 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i616.i = tail call zeroext i8 %353(ptr noundef %9, i32 noundef 220) #7
  br label %rtl_write_byte.exit618.i

rtl_write_byte.exit618.i:                         ; preds = %if.then.i617.i, %rtl_write_byte.exit610.i.rtl_write_byte.exit618.i_crit_edge
  %354 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %355(ptr noundef %9, i32 noundef 221, i8 noundef zeroext -1) #7
  %356 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i621.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %357, i32 0, i32 1
  %358 = ptrtoint ptr %write_readback.i621.i to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %write_readback.i621.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %359)
  %tobool.not.i622.i = icmp eq i8 %359, 0
  br i1 %tobool.not.i622.i, label %rtl_write_byte.exit618.i.rtl_write_byte.exit626.i_crit_edge, label %if.then.i625.i

rtl_write_byte.exit618.i.rtl_write_byte.exit626.i_crit_edge: ; preds = %rtl_write_byte.exit618.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit626.i

if.then.i625.i:                                   ; preds = %rtl_write_byte.exit618.i
  call void @__sanitizer_cov_trace_pc() #9
  %360 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i624.i = tail call zeroext i8 %361(ptr noundef %9, i32 noundef 221) #7
  br label %rtl_write_byte.exit626.i

rtl_write_byte.exit626.i:                         ; preds = %if.then.i625.i, %rtl_write_byte.exit618.i.rtl_write_byte.exit626.i_crit_edge
  %362 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %363(ptr noundef %9, i32 noundef 222, i8 noundef zeroext -1) #7
  %364 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i629.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %365, i32 0, i32 1
  %366 = ptrtoint ptr %write_readback.i629.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %write_readback.i629.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool.not.i630.i = icmp eq i8 %367, 0
  br i1 %tobool.not.i630.i, label %rtl_write_byte.exit626.i.rtl_write_byte.exit634.i_crit_edge, label %if.then.i633.i

rtl_write_byte.exit626.i.rtl_write_byte.exit634.i_crit_edge: ; preds = %rtl_write_byte.exit626.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit634.i

if.then.i633.i:                                   ; preds = %rtl_write_byte.exit626.i
  call void @__sanitizer_cov_trace_pc() #9
  %368 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i632.i = tail call zeroext i8 %369(ptr noundef %9, i32 noundef 222) #7
  br label %rtl_write_byte.exit634.i

rtl_write_byte.exit634.i:                         ; preds = %if.then.i633.i, %rtl_write_byte.exit626.i.rtl_write_byte.exit634.i_crit_edge
  %370 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %371(ptr noundef %9, i32 noundef 223, i8 noundef zeroext -1) #7
  %372 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i637.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %write_readback.i637.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %write_readback.i637.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %375)
  %tobool.not.i638.i = icmp eq i8 %375, 0
  br i1 %tobool.not.i638.i, label %rtl_write_byte.exit634.i.rtl_write_byte.exit642.i_crit_edge, label %if.then.i641.i

rtl_write_byte.exit634.i.rtl_write_byte.exit642.i_crit_edge: ; preds = %rtl_write_byte.exit634.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit642.i

if.then.i641.i:                                   ; preds = %rtl_write_byte.exit634.i
  call void @__sanitizer_cov_trace_pc() #9
  %376 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i640.i = tail call zeroext i8 %377(ptr noundef %9, i32 noundef 223) #7
  br label %rtl_write_byte.exit642.i

rtl_write_byte.exit642.i:                         ; preds = %if.then.i641.i, %rtl_write_byte.exit634.i.rtl_write_byte.exit642.i_crit_edge
  %378 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %379(ptr noundef %9, i32 noundef 282, i8 noundef zeroext 0) #7
  %380 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i645.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 1
  %382 = ptrtoint ptr %write_readback.i645.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %write_readback.i645.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool.not.i646.i = icmp eq i8 %383, 0
  br i1 %tobool.not.i646.i, label %rtl_write_byte.exit642.i.rtl_write_byte.exit650.i_crit_edge, label %if.then.i649.i

rtl_write_byte.exit642.i.rtl_write_byte.exit650.i_crit_edge: ; preds = %rtl_write_byte.exit642.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit650.i

if.then.i649.i:                                   ; preds = %rtl_write_byte.exit642.i
  call void @__sanitizer_cov_trace_pc() #9
  %384 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i648.i = tail call zeroext i8 %385(ptr noundef %9, i32 noundef 282) #7
  br label %rtl_write_byte.exit650.i

rtl_write_byte.exit650.i:                         ; preds = %if.then.i649.i, %rtl_write_byte.exit642.i.rtl_write_byte.exit650.i_crit_edge
  %386 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %387(ptr noundef %9, i32 noundef 283, i8 noundef zeroext 0) #7
  %388 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i653.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 1
  %390 = ptrtoint ptr %write_readback.i653.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %write_readback.i653.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %391)
  %tobool.not.i654.i = icmp eq i8 %391, 0
  br i1 %tobool.not.i654.i, label %rtl_write_byte.exit650.i.for.body.i.preheader_crit_edge, label %if.then.i657.i

rtl_write_byte.exit650.i.for.body.i.preheader_crit_edge: ; preds = %rtl_write_byte.exit650.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.then.i657.i:                                   ; preds = %rtl_write_byte.exit650.i
  call void @__sanitizer_cov_trace_pc() #9
  %392 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i656.i = tail call zeroext i8 %393(ptr noundef %9, i32 noundef 283) #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i657.i, %rtl_write_byte.exit650.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit666.i.for.body.i_crit_edge, %for.body.i.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %rtl_write_byte.exit666.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw nsw i32 %indvars.iv.i, 352
  %394 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %395(ptr noundef %9, i32 noundef %add.i, i8 noundef zeroext 27) #7
  %396 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i661.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %write_readback.i661.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %write_readback.i661.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %399)
  %tobool.not.i662.i = icmp eq i8 %399, 0
  br i1 %tobool.not.i662.i, label %for.body.i.rtl_write_byte.exit666.i_crit_edge, label %if.then.i665.i

for.body.i.rtl_write_byte.exit666.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit666.i

if.then.i665.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %400 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i664.i = tail call zeroext i8 %401(ptr noundef %9, i32 noundef %add.i) #7
  br label %rtl_write_byte.exit666.i

rtl_write_byte.exit666.i:                         ; preds = %if.then.i665.i, %for.body.i.rtl_write_byte.exit666.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %rtl_write_byte.exit666.i.for.body.i_crit_edge

rtl_write_byte.exit666.i.for.body.i_crit_edge:    ; preds = %rtl_write_byte.exit666.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %rtl_write_byte.exit666.i
  %402 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %403(ptr noundef %9, i32 noundef 566, i8 noundef zeroext -1) #7
  %404 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i669.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %405, i32 0, i32 1
  %406 = ptrtoint ptr %write_readback.i669.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %write_readback.i669.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %tobool.not.i670.i = icmp eq i8 %407, 0
  br i1 %tobool.not.i670.i, label %for.end.i.rtl_write_byte.exit674.i_crit_edge, label %if.then.i673.i

for.end.i.rtl_write_byte.exit674.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit674.i

if.then.i673.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %408 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i672.i = tail call zeroext i8 %409(ptr noundef %9, i32 noundef 566) #7
  br label %rtl_write_byte.exit674.i

rtl_write_byte.exit674.i:                         ; preds = %if.then.i673.i, %for.end.i.rtl_write_byte.exit674.i_crit_edge
  %410 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %411(ptr noundef %9, i32 noundef 1283, i8 noundef zeroext 34) #7
  %412 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i677.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %write_readback.i677.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %write_readback.i677.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %415)
  %tobool.not.i678.i = icmp eq i8 %415, 0
  br i1 %tobool.not.i678.i, label %rtl_write_byte.exit674.i.rtl_write_byte.exit682.i_crit_edge, label %if.then.i681.i

rtl_write_byte.exit674.i.rtl_write_byte.exit682.i_crit_edge: ; preds = %rtl_write_byte.exit674.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit682.i

if.then.i681.i:                                   ; preds = %rtl_write_byte.exit674.i
  call void @__sanitizer_cov_trace_pc() #9
  %416 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i680.i = tail call zeroext i8 %417(ptr noundef %9, i32 noundef 1283) #7
  br label %rtl_write_byte.exit682.i

rtl_write_byte.exit682.i:                         ; preds = %if.then.i681.i, %rtl_write_byte.exit674.i.rtl_write_byte.exit682.i_crit_edge
  %support_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 21, i32 5
  %418 = ptrtoint ptr %support_aspm.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %support_aspm.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %tobool110.not.i = icmp eq i8 %419, 0
  br i1 %tobool110.not.i, label %rtl_write_byte.exit682.i.if.else.i_crit_edge, label %land.lhs.true.i

rtl_write_byte.exit682.i.if.else.i_crit_edge:     ; preds = %rtl_write_byte.exit682.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %rtl_write_byte.exit682.i
  %support_backdoor.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 21, i32 6
  %420 = ptrtoint ptr %support_backdoor.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %support_backdoor.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %421)
  %tobool112.not.i = icmp eq i8 %421, 0
  br i1 %tobool112.not.i, label %if.then113.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then113.i:                                     ; preds = %land.lhs.true.i
  %422 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %423(ptr noundef %9, i32 noundef 1376, i8 noundef zeroext 64) #7
  %424 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i685.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %425, i32 0, i32 1
  %426 = ptrtoint ptr %write_readback.i685.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %write_readback.i685.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %427)
  %tobool.not.i686.i = icmp eq i8 %427, 0
  br i1 %tobool.not.i686.i, label %if.then113.i.if.end114.i_crit_edge, label %if.then113.i.if.end114.sink.split.i_crit_edge

if.then113.i.if.end114.sink.split.i_crit_edge:    ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.i

if.then113.i.if.end114.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %rtl_write_byte.exit682.i.if.else.i_crit_edge
  %428 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %429(ptr noundef %9, i32 noundef 1376, i8 noundef zeroext 0) #7
  %430 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i693.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %431, i32 0, i32 1
  %432 = ptrtoint ptr %write_readback.i693.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %write_readback.i693.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %433)
  %tobool.not.i694.i = icmp eq i8 %433, 0
  br i1 %tobool.not.i694.i, label %if.else.i.if.end114.i_crit_edge, label %if.else.i.if.end114.sink.split.i_crit_edge

if.else.i.if.end114.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split.i

if.else.i.if.end114.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i

if.end114.sink.split.i:                           ; preds = %if.else.i.if.end114.sink.split.i_crit_edge, %if.then113.i.if.end114.sink.split.i_crit_edge
  %434 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i696.i = tail call zeroext i8 %435(ptr noundef %9, i32 noundef 1376) #7
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.end114.sink.split.i, %if.else.i.if.end114.i_crit_edge, %if.then113.i.if.end114.i_crit_edge
  %436 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %437(ptr noundef %9, i32 noundef 58, i8 noundef zeroext -111) #7
  %438 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i701.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %write_readback.i701.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %write_readback.i701.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool.not.i702.i = icmp eq i8 %441, 0
  br i1 %tobool.not.i702.i, label %if.end114.i.rtl_write_byte.exit706.i_crit_edge, label %if.then.i705.i

if.end114.i.rtl_write_byte.exit706.i_crit_edge:   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit706.i

if.then.i705.i:                                   ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #9
  %442 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i704.i = tail call zeroext i8 %443(ptr noundef %9, i32 noundef 58) #7
  br label %rtl_write_byte.exit706.i

rtl_write_byte.exit706.i:                         ; preds = %if.then.i705.i, %if.end114.i.rtl_write_byte.exit706.i_crit_edge
  %dma.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 1, i32 8, i32 2, i32 4, i32 1
  %444 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %dma.i, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 7
  %446 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %447(ptr noundef %9, i32 noundef 1340, i32 noundef %445) #7
  %448 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i708.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %449, i32 0, i32 1
  %450 = ptrtoint ptr %write_readback.i708.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %write_readback.i708.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %451)
  %tobool.not.i709.i = icmp eq i8 %451, 0
  br i1 %tobool.not.i709.i, label %rtl_write_byte.exit706.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i711.i

rtl_write_byte.exit706.i.rtl_write_dword.exit.i_crit_edge: ; preds = %rtl_write_byte.exit706.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i711.i:                                   ; preds = %rtl_write_byte.exit706.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %452 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i710.i = tail call i32 %453(ptr noundef %9, i32 noundef 1340) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i711.i, %rtl_write_byte.exit706.i.rtl_write_dword.exit.i_crit_edge
  %dma117.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 9, i32 23, i32 5, i32 2, i32 0, i32 0, i32 4, i32 7
  %454 = ptrtoint ptr %dma117.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %dma117.i, align 4
  %456 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %457(ptr noundef %9, i32 noundef 1336, i32 noundef %455) #7
  %458 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i714.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %459, i32 0, i32 1
  %460 = ptrtoint ptr %write_readback.i714.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %write_readback.i714.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool.not.i715.i = icmp eq i8 %461, 0
  br i1 %tobool.not.i715.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit719.i_crit_edge, label %if.then.i718.i

rtl_write_dword.exit.i.rtl_write_dword.exit719.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit719.i

if.then.i718.i:                                   ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i716.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %462 = ptrtoint ptr %read32_sync.i716.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %read32_sync.i716.i, align 4
  %call.i717.i = tail call i32 %463(ptr noundef %9, i32 noundef 1336) #7
  br label %rtl_write_dword.exit719.i

rtl_write_dword.exit719.i:                        ; preds = %if.then.i718.i, %rtl_write_dword.exit.i.rtl_write_dword.exit719.i_crit_edge
  %dma119.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 0, i32 1, i32 4, i32 6
  %464 = ptrtoint ptr %dma119.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %dma119.i, align 4
  %466 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %467(ptr noundef %9, i32 noundef 1328, i32 noundef %465) #7
  %468 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i722.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %469, i32 0, i32 1
  %470 = ptrtoint ptr %write_readback.i722.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %write_readback.i722.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %471)
  %tobool.not.i723.i = icmp eq i8 %471, 0
  br i1 %tobool.not.i723.i, label %rtl_write_dword.exit719.i.rtl_write_dword.exit727.i_crit_edge, label %if.then.i726.i

rtl_write_dword.exit719.i.rtl_write_dword.exit727.i_crit_edge: ; preds = %rtl_write_dword.exit719.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit727.i

if.then.i726.i:                                   ; preds = %rtl_write_dword.exit719.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i724.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %472 = ptrtoint ptr %read32_sync.i724.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %read32_sync.i724.i, align 4
  %call.i725.i = tail call i32 %473(ptr noundef %9, i32 noundef 1328) #7
  br label %rtl_write_dword.exit727.i

rtl_write_dword.exit727.i:                        ; preds = %if.then.i726.i, %rtl_write_dword.exit719.i.rtl_write_dword.exit727.i_crit_edge
  %dma122.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 1, i32 1, i32 4, i32 2
  %474 = ptrtoint ptr %dma122.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %dma122.i, align 4
  %476 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %477(ptr noundef %9, i32 noundef 1324, i32 noundef %475) #7
  %478 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i730.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %write_readback.i730.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %write_readback.i730.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool.not.i731.i = icmp eq i8 %481, 0
  br i1 %tobool.not.i731.i, label %rtl_write_dword.exit727.i.rtl_write_dword.exit735.i_crit_edge, label %if.then.i734.i

rtl_write_dword.exit727.i.rtl_write_dword.exit735.i_crit_edge: ; preds = %rtl_write_dword.exit727.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit735.i

if.then.i734.i:                                   ; preds = %rtl_write_dword.exit727.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i732.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %482 = ptrtoint ptr %read32_sync.i732.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %read32_sync.i732.i, align 4
  %call.i733.i = tail call i32 %483(ptr noundef %9, i32 noundef 1324) #7
  br label %rtl_write_dword.exit735.i

rtl_write_dword.exit735.i:                        ; preds = %if.then.i734.i, %rtl_write_dword.exit727.i.rtl_write_dword.exit735.i_crit_edge
  %dma125.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 2, i32 1, i32 4, i32 1
  %484 = ptrtoint ptr %dma125.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %dma125.i, align 4
  %486 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %487(ptr noundef %9, i32 noundef 1320, i32 noundef %485) #7
  %488 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i738.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %489, i32 0, i32 1
  %490 = ptrtoint ptr %write_readback.i738.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %write_readback.i738.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %491)
  %tobool.not.i739.i = icmp eq i8 %491, 0
  br i1 %tobool.not.i739.i, label %rtl_write_dword.exit735.i.rtl_write_dword.exit743.i_crit_edge, label %if.then.i742.i

rtl_write_dword.exit735.i.rtl_write_dword.exit743.i_crit_edge: ; preds = %rtl_write_dword.exit735.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit743.i

if.then.i742.i:                                   ; preds = %rtl_write_dword.exit735.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i740.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %492 = ptrtoint ptr %read32_sync.i740.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %read32_sync.i740.i, align 4
  %call.i741.i = tail call i32 %493(ptr noundef %9, i32 noundef 1320) #7
  br label %rtl_write_dword.exit743.i

rtl_write_dword.exit743.i:                        ; preds = %if.then.i742.i, %rtl_write_dword.exit735.i.rtl_write_dword.exit743.i_crit_edge
  %dma128.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 3, i32 0, i32 0, i32 4
  %494 = ptrtoint ptr %dma128.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %dma128.i, align 4
  %496 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %497(ptr noundef %9, i32 noundef 1316, i32 noundef %495) #7
  %498 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i746.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %499, i32 0, i32 1
  %500 = ptrtoint ptr %write_readback.i746.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %write_readback.i746.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool.not.i747.i = icmp eq i8 %501, 0
  br i1 %tobool.not.i747.i, label %rtl_write_dword.exit743.i.rtl_write_dword.exit751.i_crit_edge, label %if.then.i750.i

rtl_write_dword.exit743.i.rtl_write_dword.exit751.i_crit_edge: ; preds = %rtl_write_dword.exit743.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit751.i

if.then.i750.i:                                   ; preds = %rtl_write_dword.exit743.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i748.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %502 = ptrtoint ptr %read32_sync.i748.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %read32_sync.i748.i, align 4
  %call.i749.i = tail call i32 %503(ptr noundef %9, i32 noundef 1316) #7
  br label %rtl_write_dword.exit751.i

rtl_write_dword.exit751.i:                        ; preds = %if.then.i750.i, %rtl_write_dword.exit743.i.rtl_write_dword.exit751.i_crit_edge
  %dma131.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 5, i32 0, i32 0, i32 3
  %504 = ptrtoint ptr %dma131.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %dma131.i, align 4
  %506 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %507(ptr noundef %9, i32 noundef 1332, i32 noundef %505) #7
  %508 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i754.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %509, i32 0, i32 1
  %510 = ptrtoint ptr %write_readback.i754.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %write_readback.i754.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool.not.i755.i = icmp eq i8 %511, 0
  br i1 %tobool.not.i755.i, label %rtl_write_dword.exit751.i.rtl_write_dword.exit759.i_crit_edge, label %if.then.i758.i

rtl_write_dword.exit751.i.rtl_write_dword.exit759.i_crit_edge: ; preds = %rtl_write_dword.exit751.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit759.i

if.then.i758.i:                                   ; preds = %rtl_write_dword.exit751.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i756.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %512 = ptrtoint ptr %read32_sync.i756.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %read32_sync.i756.i, align 4
  %call.i757.i = tail call i32 %513(ptr noundef %9, i32 noundef 1332) #7
  br label %rtl_write_dword.exit759.i

rtl_write_dword.exit759.i:                        ; preds = %if.then.i758.i, %rtl_write_dword.exit751.i.rtl_write_dword.exit759.i_crit_edge
  %dma134.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 7, i32 0, i32 0, i32 2
  %514 = ptrtoint ptr %dma134.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %dma134.i, align 4
  %516 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %517(ptr noundef %9, i32 noundef 1308, i32 noundef %515) #7
  %518 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i762.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %519, i32 0, i32 1
  %520 = ptrtoint ptr %write_readback.i762.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %write_readback.i762.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %521)
  %tobool.not.i763.i = icmp eq i8 %521, 0
  br i1 %tobool.not.i763.i, label %rtl_write_dword.exit759.i.rtl_write_dword.exit767.i_crit_edge, label %if.then.i766.i

rtl_write_dword.exit759.i.rtl_write_dword.exit767.i_crit_edge: ; preds = %rtl_write_dword.exit759.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit767.i

if.then.i766.i:                                   ; preds = %rtl_write_dword.exit759.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i764.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %522 = ptrtoint ptr %read32_sync.i764.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %read32_sync.i764.i, align 4
  %call.i765.i = tail call i32 %523(ptr noundef %9, i32 noundef 1308) #7
  br label %rtl_write_dword.exit767.i

rtl_write_dword.exit767.i:                        ; preds = %if.then.i766.i, %rtl_write_dword.exit759.i.rtl_write_dword.exit767.i_crit_edge
  %dma137.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 9, i32 0, i32 0, i32 1
  %524 = ptrtoint ptr %dma137.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %dma137.i, align 4
  %526 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %527(ptr noundef %9, i32 noundef 1304, i32 noundef %525) #7
  %528 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i770.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %529, i32 0, i32 1
  %530 = ptrtoint ptr %write_readback.i770.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %write_readback.i770.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %531)
  %tobool.not.i771.i = icmp eq i8 %531, 0
  br i1 %tobool.not.i771.i, label %rtl_write_dword.exit767.i.rtl_write_dword.exit775.i_crit_edge, label %if.then.i774.i

rtl_write_dword.exit767.i.rtl_write_dword.exit775.i_crit_edge: ; preds = %rtl_write_dword.exit767.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit775.i

if.then.i774.i:                                   ; preds = %rtl_write_dword.exit767.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i772.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %532 = ptrtoint ptr %read32_sync.i772.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %read32_sync.i772.i, align 4
  %call.i773.i = tail call i32 %533(ptr noundef %9, i32 noundef 1304) #7
  br label %rtl_write_dword.exit775.i

rtl_write_dword.exit775.i:                        ; preds = %if.then.i774.i, %rtl_write_dword.exit767.i.rtl_write_dword.exit775.i_crit_edge
  %dma140.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 11
  %534 = ptrtoint ptr %dma140.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %dma140.i, align 4
  %536 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %537(ptr noundef %9, i32 noundef 1300, i32 noundef %535) #7
  %538 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i778.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %539, i32 0, i32 1
  %540 = ptrtoint ptr %write_readback.i778.i to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %write_readback.i778.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %541)
  %tobool.not.i779.i = icmp eq i8 %541, 0
  br i1 %tobool.not.i779.i, label %rtl_write_dword.exit775.i.rtl_write_dword.exit783.i_crit_edge, label %if.then.i782.i

rtl_write_dword.exit775.i.rtl_write_dword.exit783.i_crit_edge: ; preds = %rtl_write_dword.exit775.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit783.i

if.then.i782.i:                                   ; preds = %rtl_write_dword.exit775.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i780.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %542 = ptrtoint ptr %read32_sync.i780.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %read32_sync.i780.i, align 4
  %call.i781.i = tail call i32 %543(ptr noundef %9, i32 noundef 1300) #7
  br label %rtl_write_dword.exit783.i

rtl_write_dword.exit783.i:                        ; preds = %if.then.i782.i, %rtl_write_dword.exit775.i.rtl_write_dword.exit783.i_crit_edge
  %dma143.i = getelementptr %struct.rtl_priv, ptr %9, i32 1, i32 7, i32 12, i32 0, i32 0, i32 4, i32 7
  %544 = ptrtoint ptr %dma143.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %dma143.i, align 4
  %546 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %547(ptr noundef %9, i32 noundef 1312, i32 noundef %545) #7
  %548 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i786.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %549, i32 0, i32 1
  %550 = ptrtoint ptr %write_readback.i786.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %write_readback.i786.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %551)
  %tobool.not.i787.i = icmp eq i8 %551, 0
  br i1 %tobool.not.i787.i, label %rtl_write_dword.exit783.i.rtl_write_dword.exit791.i_crit_edge, label %if.then.i790.i

rtl_write_dword.exit783.i.rtl_write_dword.exit791.i_crit_edge: ; preds = %rtl_write_dword.exit783.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit791.i

if.then.i790.i:                                   ; preds = %rtl_write_dword.exit783.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i788.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 13, i32 11
  %552 = ptrtoint ptr %read32_sync.i788.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %read32_sync.i788.i, align 4
  %call.i789.i = tail call i32 %553(ptr noundef %9, i32 noundef 1312) #7
  br label %rtl_write_dword.exit791.i

rtl_write_dword.exit791.i:                        ; preds = %if.then.i790.i, %rtl_write_dword.exit783.i.rtl_write_dword.exit791.i_crit_edge
  %554 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %555(ptr noundef %9, i32 noundef 64, i16 noundef zeroext 14332) #7
  %556 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i794.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %557, i32 0, i32 1
  %558 = ptrtoint ptr %write_readback.i794.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %write_readback.i794.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %559)
  %tobool.not.i795.i = icmp eq i8 %559, 0
  br i1 %tobool.not.i795.i, label %rtl_write_dword.exit791.i.do.body.i.preheader_crit_edge, label %if.then.i798.i

rtl_write_dword.exit791.i.do.body.i.preheader_crit_edge: ; preds = %rtl_write_dword.exit791.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.preheader

if.then.i798.i:                                   ; preds = %rtl_write_dword.exit791.i
  call void @__sanitizer_cov_trace_pc() #9
  %560 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i797.i = tail call zeroext i16 %561(ptr noundef %9, i32 noundef 64) #7
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then.i798.i, %rtl_write_dword.exit791.i.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %if.end150.i.do.body.i_crit_edge, %do.body.i.preheader
  %pollingcnt.0.i = phi i8 [ %dec.i, %if.end150.i.do.body.i_crit_edge ], [ 20, %do.body.i.preheader ]
  %562 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i801.i = tail call zeroext i8 %563(ptr noundef %9, i32 noundef 68) #7
  %conv145.i = zext i8 %call.i801.i to i32
  %and146.i = and i32 %conv145.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and146.i)
  %cmp147.i = icmp eq i32 %and146.i, 10
  br i1 %cmp147.i, label %do.end.i, label %if.end150.i

if.end150.i:                                      ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %564 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %564(i32 noundef 1073740) #7
  %dec.i = add nsw i8 %pollingcnt.0.i, -1
  %tobool151.not.i = icmp eq i8 %pollingcnt.0.i, 0
  br i1 %tobool151.not.i, label %if.end150.i.if.end168.i_crit_edge, label %if.end150.i.do.body.i_crit_edge

if.end150.i.do.body.i_crit_edge:                  ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end150.i.if.end168.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pollingcnt.0.i)
  %cmp153.i = icmp eq i8 %pollingcnt.0.i, 0
  br i1 %cmp153.i, label %do.end158.i, label %do.end.i.if.end168.i_crit_edge

do.end.i.if.end168.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168.i

do.end158.i:                                      ; preds = %do.end.i
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv145.i) #10
  %565 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i803.i = tail call zeroext i8 %566(ptr noundef %9, i32 noundef 64) #7
  %and163.i = and i8 %call.i803.i, -17
  %567 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %568(ptr noundef %9, i32 noundef 64, i8 noundef zeroext %and163.i) #7
  %569 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i806.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 1
  %571 = ptrtoint ptr %write_readback.i806.i to i32
  call void @__asan_load1_noabort(i32 %571)
  %572 = load i8, ptr %write_readback.i806.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %572)
  %tobool.not.i807.i = icmp eq i8 %572, 0
  br i1 %tobool.not.i807.i, label %do.end158.i.rtl_write_byte.exit811.i_crit_edge, label %if.then.i810.i

do.end158.i.rtl_write_byte.exit811.i_crit_edge:   ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit811.i

if.then.i810.i:                                   ; preds = %do.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  %573 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i809.i = tail call zeroext i8 %574(ptr noundef %9, i32 noundef 64) #7
  br label %rtl_write_byte.exit811.i

rtl_write_byte.exit811.i:                         ; preds = %if.then.i810.i, %do.end158.i.rtl_write_byte.exit811.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %575 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %575(i32 noundef 429496) #7
  %576 = or i8 %call.i803.i, 16
  %577 = ptrtoint ptr %write8_async.i334.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %write8_async.i334.i, align 4
  tail call void %578(ptr noundef %9, i32 noundef 64, i8 noundef zeroext %576) #7
  %579 = ptrtoint ptr %cfg.i335.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cfg.i335.i, align 8
  %write_readback.i814.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %580, i32 0, i32 1
  %581 = ptrtoint ptr %write_readback.i814.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %write_readback.i814.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %582)
  %tobool.not.i815.i = icmp eq i8 %582, 0
  br i1 %tobool.not.i815.i, label %rtl_write_byte.exit811.i.if.end168.i_crit_edge, label %if.then.i818.i

rtl_write_byte.exit811.i.if.end168.i_crit_edge:   ; preds = %rtl_write_byte.exit811.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168.i

if.then.i818.i:                                   ; preds = %rtl_write_byte.exit811.i
  call void @__sanitizer_cov_trace_pc() #9
  %583 = ptrtoint ptr %read8_sync.i332.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %read8_sync.i332.i, align 4
  %call.i817.i = tail call zeroext i8 %584(ptr noundef %9, i32 noundef 64) #7
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.then.i818.i, %rtl_write_byte.exit811.i.if.end168.i_crit_edge, %do.end.i.if.end168.i_crit_edge, %if.end150.i.if.end168.i_crit_edge
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 21, i32 18
  %585 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %rfoff_reason.i, align 4
  %587 = zext i32 %586 to i64
  call void @__sanitizer_cov_trace_switch(i64 %587, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %586, label %if.end168.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge [
    i32 268435456, label %if.end168.i.if.then174.i_crit_edge
    i32 0, label %if.end168.i.if.then174.i_crit_edge461
  ]

if.end168.i.if.then174.i_crit_edge461:            ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174.i

if.end168.i.if.then174.i_crit_edge:               ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then174.i

if.end168.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge: ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_macconfig_before_fwdownload.exit

if.then174.i:                                     ; preds = %if.end168.i.if.then174.i_crit_edge, %if.end168.i.if.then174.i_crit_edge461
  %call175.i = tail call fastcc zeroext i8 @_rtl92se_rf_onoff_detect(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call175.i)
  %cmp177.i = icmp eq i8 %call175.i, 0
  br i1 %cmp177.i, label %if.then179.i, label %if.then174.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge

if.then174.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge: ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_macconfig_before_fwdownload.exit

if.then179.i:                                     ; preds = %if.then174.i
  call void @__sanitizer_cov_trace_pc() #9
  %sw_led0.i = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 18, i32 1
  tail call void @rtl92se_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i) #7
  br label %_rtl92se_macconfig_before_fwdownload.exit

_rtl92se_macconfig_before_fwdownload.exit:        ; preds = %if.then179.i, %if.then174.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge, %if.end168.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge, %rtl_write_word.exit568.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge, %if.then11.i._rtl92se_macconfig_before_fwdownload.exit_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %588 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %589(ptr noundef %1, i32 noundef 4) #7
  %shr = lshr i32 %call.i, 16
  %and = and i32 %shr, 15
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %590 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 %and, ptr %version, align 4
  %591 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %priv, align 8
  %write8_async.i.i234 = getelementptr inbounds %struct.rtl_priv, ptr %592, i32 0, i32 13, i32 5
  %593 = ptrtoint ptr %write8_async.i.i234 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %write8_async.i.i234, align 4
  tail call void %594(ptr noundef %592, i32 noundef 753, i8 noundef zeroext 8) #7
  %cfg.i.i235 = getelementptr inbounds %struct.rtl_priv, ptr %592, i32 0, i32 32
  %595 = ptrtoint ptr %cfg.i.i235 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %cfg.i.i235, align 8
  %write_readback.i.i236 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %596, i32 0, i32 1
  %597 = ptrtoint ptr %write_readback.i.i236 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %write_readback.i.i236, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %598)
  %tobool.not.i.i237 = icmp eq i8 %598, 0
  br i1 %tobool.not.i.i237, label %_rtl92se_macconfig_before_fwdownload.exit.rtl_write_byte.exit.i241_crit_edge, label %if.then.i.i240

_rtl92se_macconfig_before_fwdownload.exit.rtl_write_byte.exit.i241_crit_edge: ; preds = %_rtl92se_macconfig_before_fwdownload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i241

if.then.i.i240:                                   ; preds = %_rtl92se_macconfig_before_fwdownload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i238 = getelementptr inbounds %struct.rtl_priv, ptr %592, i32 0, i32 13, i32 9
  %599 = ptrtoint ptr %read8_sync.i.i238 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %read8_sync.i.i238, align 4
  %call.i.i239 = tail call zeroext i8 %600(ptr noundef %592, i32 noundef 753) #7
  br label %rtl_write_byte.exit.i241

rtl_write_byte.exit.i241:                         ; preds = %if.then.i.i240, %_rtl92se_macconfig_before_fwdownload.exit.rtl_write_byte.exit.i241_crit_edge
  %read8_sync.i5.i = getelementptr inbounds %struct.rtl_priv, ptr %592, i32 0, i32 13, i32 9
  %601 = ptrtoint ptr %read8_sync.i5.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %read8_sync.i5.i, align 4
  %call.i6.i = tail call zeroext i8 %602(ptr noundef %592, i32 noundef 750) #7
  %603 = and i8 %call.i6.i, -9
  %604 = ptrtoint ptr %write8_async.i.i234 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %write8_async.i.i234, align 4
  tail call void %605(ptr noundef %592, i32 noundef 750, i8 noundef zeroext %603) #7
  %606 = ptrtoint ptr %cfg.i.i235 to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %cfg.i.i235, align 8
  %write_readback.i9.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %write_readback.i9.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %write_readback.i9.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %609)
  %tobool.not.i10.i = icmp eq i8 %609, 0
  br i1 %tobool.not.i10.i, label %rtl_write_byte.exit.i241.rtl8192se_gpiobit3_cfg_inputmode.exit_crit_edge, label %if.then.i13.i

rtl_write_byte.exit.i241.rtl8192se_gpiobit3_cfg_inputmode.exit_crit_edge: ; preds = %rtl_write_byte.exit.i241
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl8192se_gpiobit3_cfg_inputmode.exit

if.then.i13.i:                                    ; preds = %rtl_write_byte.exit.i241
  call void @__sanitizer_cov_trace_pc() #9
  %610 = ptrtoint ptr %read8_sync.i5.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %read8_sync.i5.i, align 4
  %call.i12.i = tail call zeroext i8 %611(ptr noundef %592, i32 noundef 750) #7
  br label %rtl8192se_gpiobit3_cfg_inputmode.exit

rtl8192se_gpiobit3_cfg_inputmode.exit:            ; preds = %if.then.i13.i, %rtl_write_byte.exit.i241.rtl8192se_gpiobit3_cfg_inputmode.exit_crit_edge
  %call10 = tail call i32 @rtl92s_download_fw(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rtl8192se_gpiobit3_cfg_inputmode.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.15) #7
  br label %do.body118

if.end:                                           ; preds = %rtl8192se_gpiobit3_cfg_inputmode.exit
  %612 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %priv, align 8
  %write16_async.i.i243 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 6
  %614 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %615(ptr noundef %613, i32 noundef 64, i16 noundef zeroext 14332) #7
  %cfg.i.i244 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 32
  %616 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i.i245 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %617, i32 0, i32 1
  %618 = ptrtoint ptr %write_readback.i.i245 to i32
  call void @__asan_load1_noabort(i32 %618)
  %619 = load i8, ptr %write_readback.i.i245, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %619)
  %tobool.not.i.i246 = icmp eq i8 %619, 0
  br i1 %tobool.not.i.i246, label %if.end.rtl_write_word.exit.i252_crit_edge, label %if.then.i.i249

if.end.rtl_write_word.exit.i252_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit.i252

if.then.i.i249:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i247 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %620 = ptrtoint ptr %read16_sync.i.i247 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %read16_sync.i.i247, align 4
  %call.i.i248 = tail call zeroext i16 %621(ptr noundef %613, i32 noundef 64) #7
  br label %rtl_write_word.exit.i252

rtl_write_word.exit.i252:                         ; preds = %if.then.i.i249, %if.end.rtl_write_word.exit.i252_crit_edge
  %read32_sync.i.i250 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 11
  %622 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i90.i = tail call i32 %623(ptr noundef %613, i32 noundef 68) #7
  %or.i = or i32 %call.i90.i, 8388608
  %write32_async.i.i251 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 7
  %624 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %625(ptr noundef %613, i32 noundef 68, i32 noundef %or.i) #7
  %626 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 1
  %628 = ptrtoint ptr %write_readback.i92.i to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %write_readback.i92.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %629)
  %tobool.not.i93.i = icmp eq i8 %629, 0
  br i1 %tobool.not.i93.i, label %rtl_write_word.exit.i252.rtl_write_dword.exit.i253_crit_edge, label %if.then.i96.i

rtl_write_word.exit.i252.rtl_write_dword.exit.i253_crit_edge: ; preds = %rtl_write_word.exit.i252
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i253

if.then.i96.i:                                    ; preds = %rtl_write_word.exit.i252
  call void @__sanitizer_cov_trace_pc() #9
  %630 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i95.i = tail call i32 %631(ptr noundef %613, i32 noundef 68) #7
  br label %rtl_write_dword.exit.i253

rtl_write_dword.exit.i253:                        ; preds = %if.then.i96.i, %rtl_write_word.exit.i252.rtl_write_dword.exit.i253_crit_edge
  %receive_config.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %632 = ptrtoint ptr %receive_config.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %receive_config.i, align 4
  %634 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %635(ptr noundef %613, i32 noundef 72, i32 noundef %633) #7
  %636 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i99.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %637, i32 0, i32 1
  %638 = ptrtoint ptr %write_readback.i99.i to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %write_readback.i99.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %639)
  %tobool.not.i100.i = icmp eq i8 %639, 0
  br i1 %tobool.not.i100.i, label %rtl_write_dword.exit.i253.rtl_write_dword.exit104.i_crit_edge, label %if.then.i103.i

rtl_write_dword.exit.i253.rtl_write_dword.exit104.i_crit_edge: ; preds = %rtl_write_dword.exit.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit104.i

if.then.i103.i:                                   ; preds = %rtl_write_dword.exit.i253
  call void @__sanitizer_cov_trace_pc() #9
  %640 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i102.i = tail call i32 %641(ptr noundef %613, i32 noundef 72) #7
  br label %rtl_write_dword.exit104.i

rtl_write_dword.exit104.i:                        ; preds = %if.then.i103.i, %rtl_write_dword.exit.i253.rtl_write_dword.exit104.i_crit_edge
  %642 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %643(ptr noundef %613, i32 noundef 140, i16 noundef zeroext 2570) #7
  %644 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i107.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %645, i32 0, i32 1
  %646 = ptrtoint ptr %write_readback.i107.i to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %write_readback.i107.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %647)
  %tobool.not.i108.i = icmp eq i8 %647, 0
  br i1 %tobool.not.i108.i, label %rtl_write_dword.exit104.i.rtl_write_word.exit112.i_crit_edge, label %if.then.i111.i

rtl_write_dword.exit104.i.rtl_write_word.exit112.i_crit_edge: ; preds = %rtl_write_dword.exit104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit112.i

if.then.i111.i:                                   ; preds = %rtl_write_dword.exit104.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i109.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %648 = ptrtoint ptr %read16_sync.i109.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %read16_sync.i109.i, align 4
  %call.i110.i = tail call zeroext i16 %649(ptr noundef %613, i32 noundef 140) #7
  br label %rtl_write_word.exit112.i

rtl_write_word.exit112.i:                         ; preds = %if.then.i111.i, %rtl_write_dword.exit104.i.rtl_write_word.exit112.i_crit_edge
  %650 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %651(ptr noundef %613, i32 noundef 142, i16 noundef zeroext 4112) #7
  %652 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i115.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %653, i32 0, i32 1
  %654 = ptrtoint ptr %write_readback.i115.i to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %write_readback.i115.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %655)
  %tobool.not.i116.i = icmp eq i8 %655, 0
  br i1 %tobool.not.i116.i, label %rtl_write_word.exit112.i.rtl_write_word.exit120.i_crit_edge, label %if.then.i119.i

rtl_write_word.exit112.i.rtl_write_word.exit120.i_crit_edge: ; preds = %rtl_write_word.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit120.i

if.then.i119.i:                                   ; preds = %rtl_write_word.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i117.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %656 = ptrtoint ptr %read16_sync.i117.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %read16_sync.i117.i, align 4
  %call.i118.i = tail call zeroext i16 %657(ptr noundef %613, i32 noundef 142) #7
  br label %rtl_write_word.exit120.i

rtl_write_word.exit120.i:                         ; preds = %if.then.i119.i, %rtl_write_word.exit112.i.rtl_write_word.exit120.i_crit_edge
  %write8_async.i.i254 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 5
  %658 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %659(ptr noundef %613, i32 noundef 145, i8 noundef zeroext 64) #7
  %660 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i122.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %661, i32 0, i32 1
  %662 = ptrtoint ptr %write_readback.i122.i to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %write_readback.i122.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %663)
  %tobool.not.i123.i = icmp eq i8 %663, 0
  br i1 %tobool.not.i123.i, label %rtl_write_word.exit120.i.rtl_write_byte.exit.i256_crit_edge, label %if.then.i125.i

rtl_write_word.exit120.i.rtl_write_byte.exit.i256_crit_edge: ; preds = %rtl_write_word.exit120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i256

if.then.i125.i:                                   ; preds = %rtl_write_word.exit120.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i255 = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 9
  %664 = ptrtoint ptr %read8_sync.i.i255 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %read8_sync.i.i255, align 4
  %call.i124.i = tail call zeroext i8 %665(ptr noundef %613, i32 noundef 145) #7
  br label %rtl_write_byte.exit.i256

rtl_write_byte.exit.i256:                         ; preds = %if.then.i125.i, %rtl_write_word.exit120.i.rtl_write_byte.exit.i256_crit_edge
  %666 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %667(ptr noundef %613, i32 noundef 148, i16 noundef zeroext 100) #7
  %668 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i128.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %669, i32 0, i32 1
  %670 = ptrtoint ptr %write_readback.i128.i to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %write_readback.i128.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %671)
  %tobool.not.i129.i = icmp eq i8 %671, 0
  br i1 %tobool.not.i129.i, label %rtl_write_byte.exit.i256.rtl_write_word.exit133.i_crit_edge, label %if.then.i132.i

rtl_write_byte.exit.i256.rtl_write_word.exit133.i_crit_edge: ; preds = %rtl_write_byte.exit.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit133.i

if.then.i132.i:                                   ; preds = %rtl_write_byte.exit.i256
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %672 = ptrtoint ptr %read16_sync.i130.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %read16_sync.i130.i, align 4
  %call.i131.i = tail call zeroext i16 %673(ptr noundef %613, i32 noundef 148) #7
  br label %rtl_write_word.exit133.i

rtl_write_word.exit133.i:                         ; preds = %if.then.i132.i, %rtl_write_byte.exit.i256.rtl_write_word.exit133.i_crit_edge
  %674 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %675(ptr noundef %613, i32 noundef 150, i16 noundef zeroext 2) #7
  %676 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i136.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %677, i32 0, i32 1
  %678 = ptrtoint ptr %write_readback.i136.i to i32
  call void @__asan_load1_noabort(i32 %678)
  %679 = load i8, ptr %write_readback.i136.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %679)
  %tobool.not.i137.i = icmp eq i8 %679, 0
  br i1 %tobool.not.i137.i, label %rtl_write_word.exit133.i.rtl_write_word.exit141.i_crit_edge, label %if.then.i140.i

rtl_write_word.exit133.i.rtl_write_word.exit141.i_crit_edge: ; preds = %rtl_write_word.exit133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit141.i

if.then.i140.i:                                   ; preds = %rtl_write_word.exit133.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i138.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %680 = ptrtoint ptr %read16_sync.i138.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %read16_sync.i138.i, align 4
  %call.i139.i = tail call zeroext i16 %681(ptr noundef %613, i32 noundef 150) #7
  br label %rtl_write_word.exit141.i

rtl_write_word.exit141.i:                         ; preds = %if.then.i140.i, %rtl_write_word.exit133.i.rtl_write_word.exit141.i_crit_edge
  %read8_sync.i142.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 9
  %682 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i143.i = tail call zeroext i8 %683(ptr noundef %613, i32 noundef 189) #7
  %684 = or i8 %call.i143.i, 64
  %685 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %686(ptr noundef %613, i32 noundef 189, i8 noundef zeroext %684) #7
  %687 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %688, i32 0, i32 1
  %689 = ptrtoint ptr %write_readback.i146.i to i32
  call void @__asan_load1_noabort(i32 %689)
  %690 = load i8, ptr %write_readback.i146.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %690)
  %tobool.not.i147.i = icmp eq i8 %690, 0
  br i1 %tobool.not.i147.i, label %rtl_write_word.exit141.i.rtl_write_byte.exit151.i_crit_edge, label %if.then.i150.i

rtl_write_word.exit141.i.rtl_write_byte.exit151.i_crit_edge: ; preds = %rtl_write_word.exit141.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit151.i

if.then.i150.i:                                   ; preds = %rtl_write_word.exit141.i
  call void @__sanitizer_cov_trace_pc() #9
  %691 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i149.i = tail call zeroext i8 %692(ptr noundef %613, i32 noundef 189) #7
  br label %rtl_write_byte.exit151.i

rtl_write_byte.exit151.i:                         ; preds = %if.then.i150.i, %rtl_write_word.exit141.i.rtl_write_byte.exit151.i_crit_edge
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 10, i32 13
  %693 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %version.i, align 4
  %695 = zext i32 %694 to i64
  call void @__sanitizer_cov_trace_switch(i64 %695, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %694, label %rtl_write_byte.exit151.i.if.end14.i_crit_edge [
    i32 0, label %if.then.i257
    i32 1, label %if.then13.i
  ]

rtl_write_byte.exit151.i.if.end14.i_crit_edge:    ; preds = %rtl_write_byte.exit151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then.i257:                                     ; preds = %rtl_write_byte.exit151.i
  %696 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %697(ptr noundef %613, i32 noundef 385, i8 noundef zeroext -16) #7
  %698 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i154.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %699, i32 0, i32 1
  %700 = ptrtoint ptr %write_readback.i154.i to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %write_readback.i154.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %701)
  %tobool.not.i155.i = icmp eq i8 %701, 0
  br i1 %tobool.not.i155.i, label %if.then.i257.if.end14.i_crit_edge, label %if.then.i257.if.end14.sink.split.i_crit_edge

if.then.i257.if.end14.sink.split.i_crit_edge:     ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.then.i257.if.end14.i_crit_edge:                ; preds = %if.then.i257
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then13.i:                                      ; preds = %rtl_write_byte.exit151.i
  %702 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %703(ptr noundef %613, i32 noundef 385, i8 noundef zeroext -1) #7
  %704 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i162.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %705, i32 0, i32 1
  %706 = ptrtoint ptr %write_readback.i162.i to i32
  call void @__asan_load1_noabort(i32 %706)
  %707 = load i8, ptr %write_readback.i162.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %707)
  %tobool.not.i163.i = icmp eq i8 %707, 0
  br i1 %tobool.not.i163.i, label %if.then13.i.if.end14.i_crit_edge, label %if.then13.i.if.end14.sink.split.i_crit_edge

if.then13.i.if.end14.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.sink.split.i

if.then13.i.if.end14.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end14.sink.split.i:                            ; preds = %if.then13.i.if.end14.sink.split.i_crit_edge, %if.then.i257.if.end14.sink.split.i_crit_edge
  %708 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i165.i = tail call zeroext i8 %709(ptr noundef %613, i32 noundef 385) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %if.then13.i.if.end14.i_crit_edge, %if.then.i257.if.end14.i_crit_edge, %rtl_write_byte.exit151.i.if.end14.i_crit_edge
  %710 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %711(ptr noundef %613, i32 noundef 386, i8 noundef zeroext 1) #7
  %712 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i170.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %713, i32 0, i32 1
  %714 = ptrtoint ptr %write_readback.i170.i to i32
  call void @__asan_load1_noabort(i32 %714)
  %715 = load i8, ptr %write_readback.i170.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %715)
  %tobool.not.i171.i = icmp eq i8 %715, 0
  br i1 %tobool.not.i171.i, label %if.end14.i.rtl_write_byte.exit175.i_crit_edge, label %if.then.i174.i

if.end14.i.rtl_write_byte.exit175.i_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit175.i

if.then.i174.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %716 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i173.i = tail call zeroext i8 %717(ptr noundef %613, i32 noundef 386) #7
  br label %rtl_write_byte.exit175.i

rtl_write_byte.exit175.i:                         ; preds = %if.then.i174.i, %if.end14.i.rtl_write_byte.exit175.i_crit_edge
  %718 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %719(ptr noundef %613, i32 noundef 387, i8 noundef zeroext 0) #7
  %720 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %721, i32 0, i32 1
  %722 = ptrtoint ptr %write_readback.i178.i to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %write_readback.i178.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %723)
  %tobool.not.i179.i = icmp eq i8 %723, 0
  br i1 %tobool.not.i179.i, label %rtl_write_byte.exit175.i.for.body.i259.preheader_crit_edge, label %if.then.i182.i

rtl_write_byte.exit175.i.for.body.i259.preheader_crit_edge: ; preds = %rtl_write_byte.exit175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i259.preheader

if.then.i182.i:                                   ; preds = %rtl_write_byte.exit175.i
  call void @__sanitizer_cov_trace_pc() #9
  %724 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i181.i = tail call zeroext i8 %725(ptr noundef %613, i32 noundef 387) #7
  br label %for.body.i259.preheader

for.body.i259.preheader:                          ; preds = %if.then.i182.i, %rtl_write_byte.exit175.i.for.body.i259.preheader_crit_edge
  br label %for.body.i259

for.body.i259:                                    ; preds = %for.inc.i.for.body.i259_crit_edge, %for.body.i259.preheader
  %indvars.iv.i258 = phi i32 [ %indvars.iv.next.i261, %for.inc.i.for.body.i259_crit_edge ], [ 0, %for.body.i259.preheader ]
  %726 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %727)
  %cmp19.i = icmp eq i32 %727, 0
  br i1 %cmp19.i, label %if.then21.i, label %for.body.i259.for.inc.i_crit_edge

for.body.i259.for.inc.i_crit_edge:                ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then21.i:                                      ; preds = %for.body.i259
  %mul.i = shl nuw nsw i32 %indvars.iv.i258, 2
  %add.i260 = add nuw nsw i32 %mul.i, 388
  %728 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %729(ptr noundef %613, i32 noundef %add.i260, i32 noundef 521138416) #7
  %730 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i186.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %731, i32 0, i32 1
  %732 = ptrtoint ptr %write_readback.i186.i to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %write_readback.i186.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %733)
  %tobool.not.i187.i = icmp eq i8 %733, 0
  br i1 %tobool.not.i187.i, label %if.then21.i.for.inc.i_crit_edge, label %if.then.i190.i

if.then21.i.for.inc.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i190.i:                                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %734 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i189.i = tail call i32 %735(ptr noundef %613, i32 noundef %add.i260) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i190.i, %if.then21.i.for.inc.i_crit_edge, %for.body.i259.for.inc.i_crit_edge
  %indvars.iv.next.i261 = add nuw nsw i32 %indvars.iv.i258, 1
  %exitcond.not.i262 = icmp eq i32 %indvars.iv.next.i261, 8
  br i1 %exitcond.not.i262, label %for.end.i263, label %for.inc.i.for.body.i259_crit_edge

for.inc.i.for.body.i259_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i259

for.end.i263:                                     ; preds = %for.inc.i
  %736 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %737(ptr noundef %613, i32 noundef 423, i8 noundef zeroext 15) #7
  %738 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i194.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %739, i32 0, i32 1
  %740 = ptrtoint ptr %write_readback.i194.i to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %write_readback.i194.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %741)
  %tobool.not.i195.i = icmp eq i8 %741, 0
  br i1 %tobool.not.i195.i, label %for.end.i263.rtl_write_byte.exit199.i_crit_edge, label %if.then.i198.i

for.end.i263.rtl_write_byte.exit199.i_crit_edge:  ; preds = %for.end.i263
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit199.i

if.then.i198.i:                                   ; preds = %for.end.i263
  call void @__sanitizer_cov_trace_pc() #9
  %742 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i197.i = tail call zeroext i8 %743(ptr noundef %613, i32 noundef 423) #7
  br label %rtl_write_byte.exit199.i

rtl_write_byte.exit199.i:                         ; preds = %if.then.i198.i, %for.end.i263.rtl_write_byte.exit199.i_crit_edge
  %744 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %745(ptr noundef %613, i32 noundef 424, i16 noundef zeroext 29762) #7
  %746 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i202.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %747, i32 0, i32 1
  %748 = ptrtoint ptr %write_readback.i202.i to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %write_readback.i202.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %749)
  %tobool.not.i203.i = icmp eq i8 %749, 0
  br i1 %tobool.not.i203.i, label %rtl_write_byte.exit199.i.rtl_write_word.exit207.i_crit_edge, label %if.then.i206.i

rtl_write_byte.exit199.i.rtl_write_word.exit207.i_crit_edge: ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit207.i

if.then.i206.i:                                   ; preds = %rtl_write_byte.exit199.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i204.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %750 = ptrtoint ptr %read16_sync.i204.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %read16_sync.i204.i, align 4
  %call.i205.i = tail call zeroext i16 %751(ptr noundef %613, i32 noundef 424) #7
  br label %rtl_write_word.exit207.i

rtl_write_word.exit207.i:                         ; preds = %if.then.i206.i, %rtl_write_byte.exit199.i.rtl_write_word.exit207.i_crit_edge
  %752 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %753(ptr noundef %613, i32 noundef 426, i16 noundef zeroext -8745) #7
  %754 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i210.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %755, i32 0, i32 1
  %756 = ptrtoint ptr %write_readback.i210.i to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %write_readback.i210.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %757)
  %tobool.not.i211.i = icmp eq i8 %757, 0
  br i1 %tobool.not.i211.i, label %rtl_write_word.exit207.i.rtl_write_word.exit215.i_crit_edge, label %if.then.i214.i

rtl_write_word.exit207.i.rtl_write_word.exit215.i_crit_edge: ; preds = %rtl_write_word.exit207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit215.i

if.then.i214.i:                                   ; preds = %rtl_write_word.exit207.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %758 = ptrtoint ptr %read16_sync.i212.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %read16_sync.i212.i, align 4
  %call.i213.i = tail call zeroext i16 %759(ptr noundef %613, i32 noundef 426) #7
  br label %rtl_write_word.exit215.i

rtl_write_word.exit215.i:                         ; preds = %if.then.i214.i, %rtl_write_word.exit207.i.rtl_write_word.exit215.i_crit_edge
  %760 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %761(ptr noundef %613, i32 noundef 428, i16 noundef zeroext -10382) #7
  %762 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i218.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %763, i32 0, i32 1
  %764 = ptrtoint ptr %write_readback.i218.i to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %write_readback.i218.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %765)
  %tobool.not.i219.i = icmp eq i8 %765, 0
  br i1 %tobool.not.i219.i, label %rtl_write_word.exit215.i.rtl_write_word.exit223.i_crit_edge, label %if.then.i222.i

rtl_write_word.exit215.i.rtl_write_word.exit223.i_crit_edge: ; preds = %rtl_write_word.exit215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit223.i

if.then.i222.i:                                   ; preds = %rtl_write_word.exit215.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %766 = ptrtoint ptr %read16_sync.i220.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %read16_sync.i220.i, align 4
  %call.i221.i = tail call zeroext i16 %767(ptr noundef %613, i32 noundef 428) #7
  br label %rtl_write_word.exit223.i

rtl_write_word.exit223.i:                         ; preds = %if.then.i222.i, %rtl_write_word.exit215.i.rtl_write_word.exit223.i_crit_edge
  %768 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %769(ptr noundef %613, i32 noundef 430, i16 noundef zeroext -3) #7
  %770 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i226.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %771, i32 0, i32 1
  %772 = ptrtoint ptr %write_readback.i226.i to i32
  call void @__asan_load1_noabort(i32 %772)
  %773 = load i8, ptr %write_readback.i226.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %773)
  %tobool.not.i227.i = icmp eq i8 %773, 0
  br i1 %tobool.not.i227.i, label %rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge, label %if.then.i230.i

rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge: ; preds = %rtl_write_word.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit231.i

if.then.i230.i:                                   ; preds = %rtl_write_word.exit223.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i228.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %774 = ptrtoint ptr %read16_sync.i228.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %read16_sync.i228.i, align 4
  %call.i229.i = tail call zeroext i16 %775(ptr noundef %613, i32 noundef 430) #7
  br label %rtl_write_word.exit231.i

rtl_write_word.exit231.i:                         ; preds = %if.then.i230.i, %rtl_write_word.exit223.i.rtl_write_word.exit231.i_crit_edge
  %776 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %777(ptr noundef %613, i32 noundef 432, i32 noundef 67174400) #7
  %778 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i234.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %779, i32 0, i32 1
  %780 = ptrtoint ptr %write_readback.i234.i to i32
  call void @__asan_load1_noabort(i32 %780)
  %781 = load i8, ptr %write_readback.i234.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %781)
  %tobool.not.i235.i = icmp eq i8 %781, 0
  br i1 %tobool.not.i235.i, label %rtl_write_word.exit231.i.rtl_write_dword.exit239.i_crit_edge, label %if.then.i238.i

rtl_write_word.exit231.i.rtl_write_dword.exit239.i_crit_edge: ; preds = %rtl_write_word.exit231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit239.i

if.then.i238.i:                                   ; preds = %rtl_write_word.exit231.i
  call void @__sanitizer_cov_trace_pc() #9
  %782 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i237.i = tail call i32 %783(ptr noundef %613, i32 noundef 432) #7
  br label %rtl_write_dword.exit239.i

rtl_write_dword.exit239.i:                        ; preds = %if.then.i238.i, %rtl_write_word.exit231.i.rtl_write_dword.exit239.i_crit_edge
  %784 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %785(ptr noundef %613, i32 noundef 436, i32 noundef 151455237) #7
  %786 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i242.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %787, i32 0, i32 1
  %788 = ptrtoint ptr %write_readback.i242.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %write_readback.i242.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %789)
  %tobool.not.i243.i = icmp eq i8 %789, 0
  br i1 %tobool.not.i243.i, label %rtl_write_dword.exit239.i.rtl_write_dword.exit247.i_crit_edge, label %if.then.i246.i

rtl_write_dword.exit239.i.rtl_write_dword.exit247.i_crit_edge: ; preds = %rtl_write_dword.exit239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit247.i

if.then.i246.i:                                   ; preds = %rtl_write_dword.exit239.i
  call void @__sanitizer_cov_trace_pc() #9
  %790 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i245.i = tail call i32 %791(ptr noundef %613, i32 noundef 436) #7
  br label %rtl_write_dword.exit247.i

rtl_write_dword.exit247.i:                        ; preds = %if.then.i246.i, %rtl_write_dword.exit239.i.rtl_write_dword.exit247.i_crit_edge
  %792 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %793(ptr noundef %613, i32 noundef 440, i32 noundef 67174400) #7
  %794 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %795, i32 0, i32 1
  %796 = ptrtoint ptr %write_readback.i250.i to i32
  call void @__asan_load1_noabort(i32 %796)
  %797 = load i8, ptr %write_readback.i250.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %797)
  %tobool.not.i251.i = icmp eq i8 %797, 0
  br i1 %tobool.not.i251.i, label %rtl_write_dword.exit247.i.rtl_write_dword.exit255.i_crit_edge, label %if.then.i254.i

rtl_write_dword.exit247.i.rtl_write_dword.exit255.i_crit_edge: ; preds = %rtl_write_dword.exit247.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit255.i

if.then.i254.i:                                   ; preds = %rtl_write_dword.exit247.i
  call void @__sanitizer_cov_trace_pc() #9
  %798 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i253.i = tail call i32 %799(ptr noundef %613, i32 noundef 440) #7
  br label %rtl_write_dword.exit255.i

rtl_write_dword.exit255.i:                        ; preds = %if.then.i254.i, %rtl_write_dword.exit247.i.rtl_write_dword.exit255.i_crit_edge
  %800 = ptrtoint ptr %write32_async.i.i251 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %write32_async.i.i251, align 4
  tail call void %801(ptr noundef %613, i32 noundef 444, i32 noundef 151455237) #7
  %802 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i258.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %803, i32 0, i32 1
  %804 = ptrtoint ptr %write_readback.i258.i to i32
  call void @__asan_load1_noabort(i32 %804)
  %805 = load i8, ptr %write_readback.i258.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %805)
  %tobool.not.i259.i = icmp eq i8 %805, 0
  br i1 %tobool.not.i259.i, label %rtl_write_dword.exit255.i.rtl_write_dword.exit263.i_crit_edge, label %if.then.i262.i

rtl_write_dword.exit255.i.rtl_write_dword.exit263.i_crit_edge: ; preds = %rtl_write_dword.exit255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit263.i

if.then.i262.i:                                   ; preds = %rtl_write_dword.exit255.i
  call void @__sanitizer_cov_trace_pc() #9
  %806 = ptrtoint ptr %read32_sync.i.i250 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %read32_sync.i.i250, align 4
  %call.i261.i = tail call i32 %807(ptr noundef %613, i32 noundef 444) #7
  br label %rtl_write_dword.exit263.i

rtl_write_dword.exit263.i:                        ; preds = %if.then.i262.i, %rtl_write_dword.exit255.i.rtl_write_dword.exit263.i_crit_edge
  %808 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %809(ptr noundef %613, i32 noundef 502, i16 noundef zeroext -1) #7
  %810 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i266.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %811, i32 0, i32 1
  %812 = ptrtoint ptr %write_readback.i266.i to i32
  call void @__asan_load1_noabort(i32 %812)
  %813 = load i8, ptr %write_readback.i266.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %813)
  %tobool.not.i267.i = icmp eq i8 %813, 0
  br i1 %tobool.not.i267.i, label %rtl_write_dword.exit263.i.rtl_write_word.exit271.i_crit_edge, label %if.then.i270.i

rtl_write_dword.exit263.i.rtl_write_word.exit271.i_crit_edge: ; preds = %rtl_write_dword.exit263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit271.i

if.then.i270.i:                                   ; preds = %rtl_write_dword.exit263.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i268.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %814 = ptrtoint ptr %read16_sync.i268.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %read16_sync.i268.i, align 4
  %call.i269.i = tail call zeroext i16 %815(ptr noundef %613, i32 noundef 502) #7
  br label %rtl_write_word.exit271.i

rtl_write_word.exit271.i:                         ; preds = %if.then.i270.i, %rtl_write_dword.exit263.i.rtl_write_word.exit271.i_crit_edge
  %816 = ptrtoint ptr %write16_async.i.i243 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %write16_async.i.i243, align 4
  tail call void %817(ptr noundef %613, i32 noundef 564, i16 noundef zeroext 128) #7
  %818 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i274.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %819, i32 0, i32 1
  %820 = ptrtoint ptr %write_readback.i274.i to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %write_readback.i274.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %821)
  %tobool.not.i275.i = icmp eq i8 %821, 0
  br i1 %tobool.not.i275.i, label %rtl_write_word.exit271.i.rtl_write_word.exit279.i_crit_edge, label %if.then.i278.i

rtl_write_word.exit271.i.rtl_write_word.exit279.i_crit_edge: ; preds = %rtl_write_word.exit271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit279.i

if.then.i278.i:                                   ; preds = %rtl_write_word.exit271.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i276.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 13, i32 10
  %822 = ptrtoint ptr %read16_sync.i276.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %read16_sync.i276.i, align 4
  %call.i277.i = tail call zeroext i16 %823(ptr noundef %613, i32 noundef 564) #7
  br label %rtl_write_word.exit279.i

rtl_write_word.exit279.i:                         ; preds = %if.then.i278.i, %rtl_write_word.exit271.i.rtl_write_word.exit279.i_crit_edge
  %824 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %825(ptr noundef %613, i32 noundef 566, i8 noundef zeroext -1) #7
  %826 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i282.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %827, i32 0, i32 1
  %828 = ptrtoint ptr %write_readback.i282.i to i32
  call void @__asan_load1_noabort(i32 %828)
  %829 = load i8, ptr %write_readback.i282.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %829)
  %tobool.not.i283.i = icmp eq i8 %829, 0
  br i1 %tobool.not.i283.i, label %rtl_write_word.exit279.i.rtl_write_byte.exit287.i_crit_edge, label %if.then.i286.i

rtl_write_word.exit279.i.rtl_write_byte.exit287.i_crit_edge: ; preds = %rtl_write_word.exit279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit287.i

if.then.i286.i:                                   ; preds = %rtl_write_word.exit279.i
  call void @__sanitizer_cov_trace_pc() #9
  %830 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i285.i = tail call zeroext i8 %831(ptr noundef %613, i32 noundef 566) #7
  br label %rtl_write_byte.exit287.i

rtl_write_byte.exit287.i:                         ; preds = %if.then.i286.i, %rtl_write_word.exit279.i.rtl_write_byte.exit287.i_crit_edge
  %832 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %833(ptr noundef %613, i32 noundef 567, i8 noundef zeroext 7) #7
  %834 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i290.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %835, i32 0, i32 1
  %836 = ptrtoint ptr %write_readback.i290.i to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %write_readback.i290.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %837)
  %tobool.not.i291.i = icmp eq i8 %837, 0
  br i1 %tobool.not.i291.i, label %rtl_write_byte.exit287.i.rtl_write_byte.exit295.i_crit_edge, label %if.then.i294.i

rtl_write_byte.exit287.i.rtl_write_byte.exit295.i_crit_edge: ; preds = %rtl_write_byte.exit287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit295.i

if.then.i294.i:                                   ; preds = %rtl_write_byte.exit287.i
  call void @__sanitizer_cov_trace_pc() #9
  %838 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i293.i = tail call zeroext i8 %839(ptr noundef %613, i32 noundef 567) #7
  br label %rtl_write_byte.exit295.i

rtl_write_byte.exit295.i:                         ; preds = %if.then.i294.i, %rtl_write_byte.exit287.i.rtl_write_byte.exit295.i_crit_edge
  %840 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %841(ptr noundef %613, i32 noundef 568, i8 noundef zeroext 0) #7
  %842 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i298.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %843, i32 0, i32 1
  %844 = ptrtoint ptr %write_readback.i298.i to i32
  call void @__asan_load1_noabort(i32 %844)
  %845 = load i8, ptr %write_readback.i298.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %845)
  %tobool.not.i299.i = icmp eq i8 %845, 0
  br i1 %tobool.not.i299.i, label %rtl_write_byte.exit295.i.rtl_write_byte.exit303.i_crit_edge, label %if.then.i302.i

rtl_write_byte.exit295.i.rtl_write_byte.exit303.i_crit_edge: ; preds = %rtl_write_byte.exit295.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit303.i

if.then.i302.i:                                   ; preds = %rtl_write_byte.exit295.i
  call void @__sanitizer_cov_trace_pc() #9
  %846 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i301.i = tail call zeroext i8 %847(ptr noundef %613, i32 noundef 568) #7
  br label %rtl_write_byte.exit303.i

rtl_write_byte.exit303.i:                         ; preds = %if.then.i302.i, %rtl_write_byte.exit295.i.rtl_write_byte.exit303.i_crit_edge
  %848 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %849(ptr noundef %613, i32 noundef 182, i8 noundef zeroext 4) #7
  %850 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i306.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %851, i32 0, i32 1
  %852 = ptrtoint ptr %write_readback.i306.i to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %write_readback.i306.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %853)
  %tobool.not.i307.i = icmp eq i8 %853, 0
  br i1 %tobool.not.i307.i, label %rtl_write_byte.exit303.i.rtl_write_byte.exit311.i_crit_edge, label %if.then.i310.i

rtl_write_byte.exit303.i.rtl_write_byte.exit311.i_crit_edge: ; preds = %rtl_write_byte.exit303.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit311.i

if.then.i310.i:                                   ; preds = %rtl_write_byte.exit303.i
  call void @__sanitizer_cov_trace_pc() #9
  %854 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i309.i = tail call zeroext i8 %855(ptr noundef %613, i32 noundef 182) #7
  br label %rtl_write_byte.exit311.i

rtl_write_byte.exit311.i:                         ; preds = %if.then.i310.i, %rtl_write_byte.exit303.i.rtl_write_byte.exit311.i_crit_edge
  %856 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i313.i = tail call zeroext i8 %857(ptr noundef %613, i32 noundef 2) #7
  %858 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %859(ptr noundef %613, i32 noundef 2, i8 noundef zeroext %call.i313.i) #7
  %860 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %861, i32 0, i32 1
  %862 = ptrtoint ptr %write_readback.i316.i to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %write_readback.i316.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %863)
  %tobool.not.i317.i = icmp eq i8 %863, 0
  br i1 %tobool.not.i317.i, label %rtl_write_byte.exit311.i.rtl_write_byte.exit321.i_crit_edge, label %if.then.i320.i

rtl_write_byte.exit311.i.rtl_write_byte.exit321.i_crit_edge: ; preds = %rtl_write_byte.exit311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit321.i

if.then.i320.i:                                   ; preds = %rtl_write_byte.exit311.i
  call void @__sanitizer_cov_trace_pc() #9
  %864 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i319.i = tail call zeroext i8 %865(ptr noundef %613, i32 noundef 2) #7
  br label %rtl_write_byte.exit321.i

rtl_write_byte.exit321.i:                         ; preds = %if.then.i320.i, %rtl_write_byte.exit311.i.rtl_write_byte.exit321.i_crit_edge
  %866 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i323.i264 = tail call zeroext i8 %867(ptr noundef %613, i32 noundef 0) #7
  %868 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %869(ptr noundef %613, i32 noundef 0, i8 noundef zeroext %call.i323.i264) #7
  %870 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i326.i265 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %871, i32 0, i32 1
  %872 = ptrtoint ptr %write_readback.i326.i265 to i32
  call void @__asan_load1_noabort(i32 %872)
  %873 = load i8, ptr %write_readback.i326.i265, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %873)
  %tobool.not.i327.i266 = icmp eq i8 %873, 0
  br i1 %tobool.not.i327.i266, label %rtl_write_byte.exit321.i.rtl_write_byte.exit331.i_crit_edge, label %if.then.i330.i268

rtl_write_byte.exit321.i.rtl_write_byte.exit331.i_crit_edge: ; preds = %rtl_write_byte.exit321.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit331.i

if.then.i330.i268:                                ; preds = %rtl_write_byte.exit321.i
  call void @__sanitizer_cov_trace_pc() #9
  %874 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i329.i267 = tail call zeroext i8 %875(ptr noundef %613, i32 noundef 0) #7
  br label %rtl_write_byte.exit331.i

rtl_write_byte.exit331.i:                         ; preds = %if.then.i330.i268, %rtl_write_byte.exit321.i.rtl_write_byte.exit331.i_crit_edge
  %epromtype.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 17, i32 9
  %876 = ptrtoint ptr %epromtype.i to i32
  call void @__asan_load2_noabort(i32 %876)
  %877 = load i16, ptr %epromtype.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %877)
  %cmp34.i = icmp eq i16 %877, 2
  br i1 %cmp34.i, label %if.then36.i, label %rtl_write_byte.exit331.i._rtl92se_macconfig_after_fwdownload.exit_crit_edge

rtl_write_byte.exit331.i._rtl92se_macconfig_after_fwdownload.exit_crit_edge: ; preds = %rtl_write_byte.exit331.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_macconfig_after_fwdownload.exit

if.then36.i:                                      ; preds = %rtl_write_byte.exit331.i
  %878 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i333.i269 = tail call zeroext i8 %879(ptr noundef %613, i32 noundef 1) #7
  %880 = and i8 %call.i333.i269, -2
  %881 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %882(ptr noundef %613, i32 noundef 1, i8 noundef zeroext %880) #7
  %883 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i336.i270 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %884, i32 0, i32 1
  %885 = ptrtoint ptr %write_readback.i336.i270 to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %write_readback.i336.i270, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %886)
  %tobool.not.i337.i271 = icmp eq i8 %886, 0
  br i1 %tobool.not.i337.i271, label %if.then36.i.rtl_write_byte.exit341.i276_crit_edge, label %if.then.i340.i273

if.then36.i.rtl_write_byte.exit341.i276_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit341.i276

if.then.i340.i273:                                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  %887 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i339.i272 = tail call zeroext i8 %888(ptr noundef %613, i32 noundef 1) #7
  br label %rtl_write_byte.exit341.i276

rtl_write_byte.exit341.i276:                      ; preds = %if.then.i340.i273, %if.then36.i.rtl_write_byte.exit341.i276_crit_edge
  %889 = ptrtoint ptr %write8_async.i.i254 to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %write8_async.i.i254, align 4
  tail call void %890(ptr noundef %613, i32 noundef 51, i8 noundef zeroext 114) #7
  %891 = ptrtoint ptr %cfg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %cfg.i.i244, align 8
  %write_readback.i344.i274 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %892, i32 0, i32 1
  %893 = ptrtoint ptr %write_readback.i344.i274 to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %write_readback.i344.i274, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %894)
  %tobool.not.i345.i275 = icmp eq i8 %894, 0
  br i1 %tobool.not.i345.i275, label %rtl_write_byte.exit341.i276.rtl_write_byte.exit349.i279_crit_edge, label %if.then.i348.i278

rtl_write_byte.exit341.i276.rtl_write_byte.exit349.i279_crit_edge: ; preds = %rtl_write_byte.exit341.i276
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit349.i279

if.then.i348.i278:                                ; preds = %rtl_write_byte.exit341.i276
  call void @__sanitizer_cov_trace_pc() #9
  %895 = ptrtoint ptr %read8_sync.i142.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %read8_sync.i142.i, align 4
  %call.i347.i277 = tail call zeroext i8 %896(ptr noundef %613, i32 noundef 51) #7
  br label %rtl_write_byte.exit349.i279

rtl_write_byte.exit349.i279:                      ; preds = %if.then.i348.i278, %rtl_write_byte.exit341.i276.rtl_write_byte.exit349.i279_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %613, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.44) #7
  br label %_rtl92se_macconfig_after_fwdownload.exit

_rtl92se_macconfig_after_fwdownload.exit:         ; preds = %rtl_write_byte.exit349.i279, %rtl_write_byte.exit331.i._rtl92se_macconfig_after_fwdownload.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %613, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.45) #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %897 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %read16_sync.i, align 4
  %call.i280 = tail call zeroext i16 %898(ptr noundef %1, i32 noundef 868) #7
  %fwcmd_iomap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 42
  %899 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %899)
  store i16 %call.i280, ptr %fwcmd_iomap, align 2
  %900 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %read32_sync.i, align 4
  %call.i282 = tail call i32 %901(ptr noundef %1, i32 noundef 872) #7
  %fwcmd_ioparam = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 43
  %902 = ptrtoint ptr %fwcmd_ioparam to i32
  call void @__asan_store4_noabort(i32 %902)
  store i32 %call.i282, ptr %fwcmd_ioparam, align 8
  %call14 = tail call zeroext i1 @rtl92s_phy_mac_config(ptr noundef %hw) #7
  br i1 %call14, label %if.end23, label %do.end18

do.end18:                                         ; preds = %_rtl92se_macconfig_after_fwdownload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %do.body118

if.end23:                                         ; preds = %_rtl92se_macconfig_after_fwdownload.exit
  %903 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %read32_sync.i, align 4
  %call.i284 = tail call i32 %904(ptr noundef %1, i32 noundef 72) #7
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %and26 = and i32 %call.i284, -4129
  %905 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %905)
  store i32 %and26, ptr %receive_config, align 4
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %906 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %write32_async.i, align 4
  tail call void %907(ptr noundef %1, i32 noundef 72, i32 noundef %and26) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %908 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %909, i32 0, i32 1
  %910 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %910)
  %911 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %911)
  %tobool.not.i285 = icmp eq i8 %911, 0
  br i1 %tobool.not.i285, label %if.end23.rtl_write_dword.exit_crit_edge, label %if.then.i288

if.end23.rtl_write_dword.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i288:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %912 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %read32_sync.i, align 4
  %call.i287 = tail call i32 %913(ptr noundef %1, i32 noundef 72) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i288, %if.end23.rtl_write_dword.exit_crit_edge
  %914 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %write32_async.i, align 4
  tail call void %915(ptr noundef %1, i32 noundef 64, i32 noundef 14332) #7
  %916 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %cfg.i, align 8
  %write_readback.i292 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %917, i32 0, i32 1
  %918 = ptrtoint ptr %write_readback.i292 to i32
  call void @__asan_load1_noabort(i32 %918)
  %919 = load i8, ptr %write_readback.i292, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %919)
  %tobool.not.i293 = icmp eq i8 %919, 0
  br i1 %tobool.not.i293, label %rtl_write_dword.exit.rtl_write_dword.exit298_crit_edge, label %if.then.i296

rtl_write_dword.exit.rtl_write_dword.exit298_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit298

if.then.i296:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %920 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %read32_sync.i, align 4
  %call.i295 = tail call i32 %921(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_dword.exit298

rtl_write_dword.exit298:                          ; preds = %if.then.i296, %rtl_write_dword.exit.rtl_write_dword.exit298_crit_edge
  %call28 = tail call zeroext i1 @rtl92s_phy_bb_config(ptr noundef %hw) #7
  br i1 %call28, label %if.end37, label %do.end32

do.end32:                                         ; preds = %rtl_write_dword.exit298
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %do.body118

if.end37:                                         ; preds = %rtl_write_dword.exit298
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %922 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 0, ptr %rf_mode, align 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %923 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %write8_async.i, align 4
  tail call void %924(ptr noundef %1, i32 noundef 39, i8 noundef zeroext -37) #7
  %925 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %cfg.i, align 8
  %write_readback.i300 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %926, i32 0, i32 1
  %927 = ptrtoint ptr %write_readback.i300 to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %write_readback.i300, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %928)
  %tobool.not.i301 = icmp eq i8 %928, 0
  br i1 %tobool.not.i301, label %if.end37.rtl_write_byte.exit_crit_edge, label %if.then.i303

if.end37.rtl_write_byte.exit_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i303:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %929 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %read8_sync.i, align 4
  %call.i302 = tail call zeroext i8 %930(ptr noundef %1, i32 noundef 39) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i303, %if.end37.rtl_write_byte.exit_crit_edge
  %931 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %932)
  %cmp39 = icmp eq i32 %932, 0
  %933 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %write8_async.i, align 4
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %rtl_write_byte.exit
  tail call void %934(ptr noundef %1, i32 noundef 27, i8 noundef zeroext 7) #7
  %935 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %cfg.i, align 8
  %write_readback.i307 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %936, i32 0, i32 1
  %937 = ptrtoint ptr %write_readback.i307 to i32
  call void @__asan_load1_noabort(i32 %937)
  %938 = load i8, ptr %write_readback.i307, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %938)
  %tobool.not.i308 = icmp eq i8 %938, 0
  br i1 %tobool.not.i308, label %if.then41.if.end42_crit_edge, label %if.then41.if.end42.sink.split_crit_edge

if.then41.if.end42.sink.split_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split

if.then41.if.end42_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else:                                          ; preds = %rtl_write_byte.exit
  tail call void %934(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #7
  %939 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %cfg.i, align 8
  %write_readback.i316 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %940, i32 0, i32 1
  %941 = ptrtoint ptr %write_readback.i316 to i32
  call void @__asan_load1_noabort(i32 %941)
  %942 = load i8, ptr %write_readback.i316, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %942)
  %tobool.not.i317 = icmp eq i8 %942, 0
  br i1 %tobool.not.i317, label %if.else.if.end42_crit_edge, label %if.else.if.end42.sink.split_crit_edge

if.else.if.end42.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.sink.split

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end42.sink.split:                              ; preds = %if.else.if.end42.sink.split_crit_edge, %if.then41.if.end42.sink.split_crit_edge
  %.sink = phi i32 [ 27, %if.then41.if.end42.sink.split_crit_edge ], [ 31, %if.else.if.end42.sink.split_crit_edge ]
  %read8_sync.i318 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %943 = ptrtoint ptr %read8_sync.i318 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %read8_sync.i318, align 4
  %call.i319 = tail call zeroext i8 %944(ptr noundef %1, i32 noundef %.sink) #7
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.else.if.end42_crit_edge, %if.then41.if.end42_crit_edge
  %call43 = tail call zeroext i1 @rtl92s_phy_rf_config(ptr noundef %hw) #7
  br i1 %call43, label %if.end47, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.21) #7
  br label %do.body118

if.end47:                                         ; preds = %if.end42
  %call48 = tail call i32 @rtl92s_phy_query_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 1048575) #7
  %rfreg_chnlval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52
  %945 = ptrtoint ptr %rfreg_chnlval to i32
  call void @__asan_store4_noabort(i32 %945)
  store i32 %call48, ptr %rfreg_chnlval, align 4
  %call49 = tail call i32 @rtl92s_phy_query_rf_reg(ptr noundef %hw, i32 noundef 1, i32 noundef 24, i32 noundef 1048575) #7
  %arrayidx51 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 52, i32 1
  %946 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 %call49, ptr %arrayidx51, align 4
  %947 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %priv, align 8
  %cfg.i324 = getelementptr inbounds %struct.rtl_priv, ptr %948, i32 0, i32 32
  %949 = ptrtoint ptr %cfg.i324 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %cfg.i324, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %950, i32 0, i32 4
  %951 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %952, i32 0, i32 46
  %953 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %954(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #7
  %955 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %priv, align 8
  %cfg.i326 = getelementptr inbounds %struct.rtl_priv, ptr %956, i32 0, i32 32
  %957 = ptrtoint ptr %cfg.i326 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %cfg.i326, align 8
  %ops.i327 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %958, i32 0, i32 4
  %959 = ptrtoint ptr %ops.i327 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %ops.i327, align 4
  %set_bbreg.i328 = getelementptr inbounds %struct.rtl_hal_ops, ptr %960, i32 0, i32 46
  %961 = ptrtoint ptr %set_bbreg.i328 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %set_bbreg.i328, align 4
  tail call void %962(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #7
  %963 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load ptr, ptr %priv, align 8
  %read8_sync.i.i330 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 13, i32 9
  %965 = ptrtoint ptr %read8_sync.i.i330 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %read8_sync.i.i330, align 4
  %call.i.i331 = tail call zeroext i8 %966(ptr noundef %964, i32 noundef 384) #7
  %conv.i = zext i8 %call.i.i331 to i32
  %or.i332 = or i32 %conv.i, 1048320
  %write32_async.i.i333 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 13, i32 7
  %967 = ptrtoint ptr %write32_async.i.i333 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %write32_async.i.i333, align 4
  tail call void %968(ptr noundef %964, i32 noundef 384, i32 noundef %or.i332) #7
  %cfg.i.i334 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 32
  %969 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i.i335 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %970, i32 0, i32 1
  %971 = ptrtoint ptr %write_readback.i.i335 to i32
  call void @__asan_load1_noabort(i32 %971)
  %972 = load i8, ptr %write_readback.i.i335, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %972)
  %tobool.not.i.i336 = icmp eq i8 %972, 0
  br i1 %tobool.not.i.i336, label %if.end47.rtl_write_dword.exit.i340_crit_edge, label %if.then.i.i338

if.end47.rtl_write_dword.exit.i340_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i340

if.then.i.i338:                                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i337 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 13, i32 11
  %973 = ptrtoint ptr %read32_sync.i.i337 to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %read32_sync.i.i337, align 4
  %call.i21.i = tail call i32 %974(ptr noundef %964, i32 noundef 384) #7
  br label %rtl_write_dword.exit.i340

rtl_write_dword.exit.i340:                        ; preds = %if.then.i.i338, %if.end47.rtl_write_dword.exit.i340_crit_edge
  %write8_async.i.i339 = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 13, i32 5
  %975 = ptrtoint ptr %write8_async.i.i339 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %write8_async.i.i339, align 4
  tail call void %976(ptr noundef %964, i32 noundef 515, i8 noundef zeroext 4) #7
  %977 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %978, i32 0, i32 1
  %979 = ptrtoint ptr %write_readback.i23.i to i32
  call void @__asan_load1_noabort(i32 %979)
  %980 = load i8, ptr %write_readback.i23.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %980)
  %tobool.not.i24.i = icmp eq i8 %980, 0
  br i1 %tobool.not.i24.i, label %rtl_write_dword.exit.i340.rtl_write_byte.exit.i342_crit_edge, label %if.then.i27.i

rtl_write_dword.exit.i340.rtl_write_byte.exit.i342_crit_edge: ; preds = %rtl_write_dword.exit.i340
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i342

if.then.i27.i:                                    ; preds = %rtl_write_dword.exit.i340
  call void @__sanitizer_cov_trace_pc() #9
  %981 = ptrtoint ptr %read8_sync.i.i330 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %read8_sync.i.i330, align 4
  %call.i26.i = tail call zeroext i8 %982(ptr noundef %964, i32 noundef 515) #7
  br label %rtl_write_byte.exit.i342

rtl_write_byte.exit.i342:                         ; preds = %if.then.i27.i, %rtl_write_dword.exit.i340.rtl_write_byte.exit.i342_crit_edge
  %983 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %cfg.i.i334, align 8
  %ops.i341 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %984, i32 0, i32 4
  %985 = ptrtoint ptr %ops.i341 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %ops.i341, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %986, i32 0, i32 20
  %987 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %set_hw_reg.i, align 4
  %shortretry_limit.i = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 5
  tail call void %988(ptr noundef %hw, i8 noundef zeroext 53, ptr noundef %shortretry_limit.i) #7
  %989 = ptrtoint ptr %write8_async.i.i339 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %write8_async.i.i339, align 4
  tail call void %990(ptr noundef %964, i32 noundef 157, i8 noundef zeroext -113) #7
  %991 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i30.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %992, i32 0, i32 1
  %993 = ptrtoint ptr %write_readback.i30.i to i32
  call void @__asan_load1_noabort(i32 %993)
  %994 = load i8, ptr %write_readback.i30.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %994)
  %tobool.not.i31.i = icmp eq i8 %994, 0
  br i1 %tobool.not.i31.i, label %rtl_write_byte.exit.i342.rtl_write_byte.exit35.i_crit_edge, label %if.then.i34.i

rtl_write_byte.exit.i342.rtl_write_byte.exit35.i_crit_edge: ; preds = %rtl_write_byte.exit.i342
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit35.i

if.then.i34.i:                                    ; preds = %rtl_write_byte.exit.i342
  call void @__sanitizer_cov_trace_pc() #9
  %995 = ptrtoint ptr %read8_sync.i.i330 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %read8_sync.i.i330, align 4
  %call.i33.i = tail call zeroext i8 %996(ptr noundef %964, i32 noundef 157) #7
  br label %rtl_write_byte.exit35.i

rtl_write_byte.exit35.i:                          ; preds = %if.then.i34.i, %rtl_write_byte.exit.i342.rtl_write_byte.exit35.i_crit_edge
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 14, i32 4
  %997 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %997)
  %998 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %998)
  %999 = icmp ult i8 %998, 4
  br i1 %999, label %switch.lookup, label %rtl_write_byte.exit35.i.sw.epilog.i_crit_edge

rtl_write_byte.exit35.i.sw.epilog.i_crit_edge:    ; preds = %rtl_write_byte.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %rtl_write_byte.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i8 %998 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 -1734848432, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %minspace_cfg7.i = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 10, i32 51
  %1000 = ptrtoint ptr %minspace_cfg7.i to i32
  call void @__asan_store1_noabort(i32 %1000)
  store i8 %switch.masked, ptr %minspace_cfg7.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %rtl_write_byte.exit35.i.sw.epilog.i_crit_edge
  %minspace_cfg8.i = getelementptr inbounds %struct.rtl_priv, ptr %964, i32 0, i32 10, i32 51
  %1001 = ptrtoint ptr %minspace_cfg8.i to i32
  call void @__asan_load1_noabort(i32 %1001)
  %1002 = load i8, ptr %minspace_cfg8.i, align 1
  %1003 = ptrtoint ptr %write8_async.i.i339 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %write8_async.i.i339, align 4
  tail call void %1004(ptr noundef %964, i32 noundef 567, i8 noundef zeroext %1002) #7
  %1005 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1006, i32 0, i32 1
  %1007 = ptrtoint ptr %write_readback.i38.i to i32
  call void @__asan_load1_noabort(i32 %1007)
  %1008 = load i8, ptr %write_readback.i38.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1008)
  %tobool.not.i39.i = icmp eq i8 %1008, 0
  br i1 %tobool.not.i39.i, label %sw.epilog.i._rtl92se_hw_configure.exit_crit_edge, label %if.then.i42.i

sw.epilog.i._rtl92se_hw_configure.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl92se_hw_configure.exit

if.then.i42.i:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %1009 = ptrtoint ptr %read8_sync.i.i330 to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %read8_sync.i.i330, align 4
  %call.i41.i = tail call zeroext i8 %1010(ptr noundef %964, i32 noundef 567) #7
  br label %_rtl92se_hw_configure.exit

_rtl92se_hw_configure.exit:                       ; preds = %if.then.i42.i, %sw.epilog.i._rtl92se_hw_configure.exit_crit_edge
  tail call void @rtl92s_phy_get_hw_reg_originalvalue(ptr noundef %hw) #7
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %1011 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %1011)
  %1012 = load i8, ptr %current_channel, align 1
  tail call void @rtl92s_phy_set_txpower(ptr noundef %hw, i8 noundef zeroext %1012) #7
  %read8_sync.i347 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %arrayidx56 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 0
  %1013 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %arrayidx56, align 1
  %1015 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %write8_async.i, align 4
  tail call void %1016(ptr noundef %1, i32 noundef 80, i8 noundef zeroext %1014) #7
  %1017 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1018, i32 0, i32 1
  %1019 = ptrtoint ptr %write_readback.i345 to i32
  call void @__asan_load1_noabort(i32 %1019)
  %1020 = load i8, ptr %write_readback.i345, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1020)
  %tobool.not.i346 = icmp eq i8 %1020, 0
  br i1 %tobool.not.i346, label %_rtl92se_hw_configure.exit.rtl_write_byte.exit351_crit_edge, label %if.then.i349

_rtl92se_hw_configure.exit.rtl_write_byte.exit351_crit_edge: ; preds = %_rtl92se_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351

if.then.i349:                                     ; preds = %_rtl92se_hw_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  %1021 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348 = tail call zeroext i8 %1022(ptr noundef %1, i32 noundef 80) #7
  br label %rtl_write_byte.exit351

rtl_write_byte.exit351:                           ; preds = %if.then.i349, %_rtl92se_hw_configure.exit.rtl_write_byte.exit351_crit_edge
  %arrayidx56.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 1
  %1023 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_load1_noabort(i32 %1023)
  %1024 = load i8, ptr %arrayidx56.1, align 1
  %1025 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %write8_async.i, align 4
  tail call void %1026(ptr noundef %1, i32 noundef 81, i8 noundef zeroext %1024) #7
  %1027 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1028, i32 0, i32 1
  %1029 = ptrtoint ptr %write_readback.i345.1 to i32
  call void @__asan_load1_noabort(i32 %1029)
  %1030 = load i8, ptr %write_readback.i345.1, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1030)
  %tobool.not.i346.1 = icmp eq i8 %1030, 0
  br i1 %tobool.not.i346.1, label %rtl_write_byte.exit351.rtl_write_byte.exit351.1_crit_edge, label %if.then.i349.1

rtl_write_byte.exit351.rtl_write_byte.exit351.1_crit_edge: ; preds = %rtl_write_byte.exit351
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351.1

if.then.i349.1:                                   ; preds = %rtl_write_byte.exit351
  call void @__sanitizer_cov_trace_pc() #9
  %1031 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348.1 = tail call zeroext i8 %1032(ptr noundef %1, i32 noundef 81) #7
  br label %rtl_write_byte.exit351.1

rtl_write_byte.exit351.1:                         ; preds = %if.then.i349.1, %rtl_write_byte.exit351.rtl_write_byte.exit351.1_crit_edge
  %arrayidx56.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 2
  %1033 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_load1_noabort(i32 %1033)
  %1034 = load i8, ptr %arrayidx56.2, align 1
  %1035 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %write8_async.i, align 4
  tail call void %1036(ptr noundef %1, i32 noundef 82, i8 noundef zeroext %1034) #7
  %1037 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1038, i32 0, i32 1
  %1039 = ptrtoint ptr %write_readback.i345.2 to i32
  call void @__asan_load1_noabort(i32 %1039)
  %1040 = load i8, ptr %write_readback.i345.2, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1040)
  %tobool.not.i346.2 = icmp eq i8 %1040, 0
  br i1 %tobool.not.i346.2, label %rtl_write_byte.exit351.1.rtl_write_byte.exit351.2_crit_edge, label %if.then.i349.2

rtl_write_byte.exit351.1.rtl_write_byte.exit351.2_crit_edge: ; preds = %rtl_write_byte.exit351.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351.2

if.then.i349.2:                                   ; preds = %rtl_write_byte.exit351.1
  call void @__sanitizer_cov_trace_pc() #9
  %1041 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348.2 = tail call zeroext i8 %1042(ptr noundef %1, i32 noundef 82) #7
  br label %rtl_write_byte.exit351.2

rtl_write_byte.exit351.2:                         ; preds = %if.then.i349.2, %rtl_write_byte.exit351.1.rtl_write_byte.exit351.2_crit_edge
  %arrayidx56.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 3
  %1043 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_load1_noabort(i32 %1043)
  %1044 = load i8, ptr %arrayidx56.3, align 1
  %1045 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %write8_async.i, align 4
  tail call void %1046(ptr noundef %1, i32 noundef 83, i8 noundef zeroext %1044) #7
  %1047 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1048, i32 0, i32 1
  %1049 = ptrtoint ptr %write_readback.i345.3 to i32
  call void @__asan_load1_noabort(i32 %1049)
  %1050 = load i8, ptr %write_readback.i345.3, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1050)
  %tobool.not.i346.3 = icmp eq i8 %1050, 0
  br i1 %tobool.not.i346.3, label %rtl_write_byte.exit351.2.rtl_write_byte.exit351.3_crit_edge, label %if.then.i349.3

rtl_write_byte.exit351.2.rtl_write_byte.exit351.3_crit_edge: ; preds = %rtl_write_byte.exit351.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351.3

if.then.i349.3:                                   ; preds = %rtl_write_byte.exit351.2
  call void @__sanitizer_cov_trace_pc() #9
  %1051 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348.3 = tail call zeroext i8 %1052(ptr noundef %1, i32 noundef 83) #7
  br label %rtl_write_byte.exit351.3

rtl_write_byte.exit351.3:                         ; preds = %if.then.i349.3, %rtl_write_byte.exit351.2.rtl_write_byte.exit351.3_crit_edge
  %arrayidx56.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 4
  %1053 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_load1_noabort(i32 %1053)
  %1054 = load i8, ptr %arrayidx56.4, align 1
  %1055 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %write8_async.i, align 4
  tail call void %1056(ptr noundef %1, i32 noundef 84, i8 noundef zeroext %1054) #7
  %1057 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1058, i32 0, i32 1
  %1059 = ptrtoint ptr %write_readback.i345.4 to i32
  call void @__asan_load1_noabort(i32 %1059)
  %1060 = load i8, ptr %write_readback.i345.4, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1060)
  %tobool.not.i346.4 = icmp eq i8 %1060, 0
  br i1 %tobool.not.i346.4, label %rtl_write_byte.exit351.3.rtl_write_byte.exit351.4_crit_edge, label %if.then.i349.4

rtl_write_byte.exit351.3.rtl_write_byte.exit351.4_crit_edge: ; preds = %rtl_write_byte.exit351.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351.4

if.then.i349.4:                                   ; preds = %rtl_write_byte.exit351.3
  call void @__sanitizer_cov_trace_pc() #9
  %1061 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348.4 = tail call zeroext i8 %1062(ptr noundef %1, i32 noundef 84) #7
  br label %rtl_write_byte.exit351.4

rtl_write_byte.exit351.4:                         ; preds = %if.then.i349.4, %rtl_write_byte.exit351.3.rtl_write_byte.exit351.4_crit_edge
  %arrayidx56.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19, i32 5
  %1063 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_load1_noabort(i32 %1063)
  %1064 = load i8, ptr %arrayidx56.5, align 1
  %1065 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %write8_async.i, align 4
  tail call void %1066(ptr noundef %1, i32 noundef 85, i8 noundef zeroext %1064) #7
  %1067 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1068, i32 0, i32 1
  %1069 = ptrtoint ptr %write_readback.i345.5 to i32
  call void @__asan_load1_noabort(i32 %1069)
  %1070 = load i8, ptr %write_readback.i345.5, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1070)
  %tobool.not.i346.5 = icmp eq i8 %1070, 0
  br i1 %tobool.not.i346.5, label %rtl_write_byte.exit351.4.rtl_write_byte.exit351.5_crit_edge, label %if.then.i349.5

rtl_write_byte.exit351.4.rtl_write_byte.exit351.5_crit_edge: ; preds = %rtl_write_byte.exit351.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit351.5

if.then.i349.5:                                   ; preds = %rtl_write_byte.exit351.4
  call void @__sanitizer_cov_trace_pc() #9
  %1071 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %read8_sync.i347, align 4
  %call.i348.5 = tail call zeroext i8 %1072(ptr noundef %1, i32 noundef 85) #7
  br label %rtl_write_byte.exit351.5

rtl_write_byte.exit351.5:                         ; preds = %if.then.i349.5, %rtl_write_byte.exit351.4.rtl_write_byte.exit351.5_crit_edge
  %1073 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %read8_sync.i347, align 4
  %call.i353 = tail call zeroext i8 %1074(ptr noundef %1, i32 noundef 753) #7
  %1075 = and i8 %call.i353, -9
  %1076 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %write8_async.i, align 4
  tail call void %1077(ptr noundef %1, i32 noundef 753, i8 noundef zeroext %1075) #7
  %1078 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %cfg.i, align 8
  %write_readback.i356 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1079, i32 0, i32 1
  %1080 = ptrtoint ptr %write_readback.i356 to i32
  call void @__asan_load1_noabort(i32 %1080)
  %1081 = load i8, ptr %write_readback.i356, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1081)
  %tobool.not.i357 = icmp eq i8 %1081, 0
  br i1 %tobool.not.i357, label %rtl_write_byte.exit351.5.rtl_write_byte.exit362_crit_edge, label %if.then.i360

rtl_write_byte.exit351.5.rtl_write_byte.exit362_crit_edge: ; preds = %rtl_write_byte.exit351.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit362

if.then.i360:                                     ; preds = %rtl_write_byte.exit351.5
  call void @__sanitizer_cov_trace_pc() #9
  %1082 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %read8_sync.i347, align 4
  %call.i359 = tail call zeroext i8 %1083(ptr noundef %1, i32 noundef 753) #7
  br label %rtl_write_byte.exit362

rtl_write_byte.exit362:                           ; preds = %if.then.i360, %rtl_write_byte.exit351.5.rtl_write_byte.exit362_crit_edge
  %1084 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %write8_async.i, align 4
  tail call void %1085(ptr noundef %1, i32 noundef 77, i8 noundef zeroext 0) #7
  %1086 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %cfg.i, align 8
  %write_readback.i365 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1087, i32 0, i32 1
  %1088 = ptrtoint ptr %write_readback.i365 to i32
  call void @__asan_load1_noabort(i32 %1088)
  %1089 = load i8, ptr %write_readback.i365, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1089)
  %tobool.not.i366 = icmp eq i8 %1089, 0
  br i1 %tobool.not.i366, label %rtl_write_byte.exit362.rtl_write_byte.exit371_crit_edge, label %if.then.i369

rtl_write_byte.exit362.rtl_write_byte.exit371_crit_edge: ; preds = %rtl_write_byte.exit362
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit371

if.then.i369:                                     ; preds = %rtl_write_byte.exit362
  call void @__sanitizer_cov_trace_pc() #9
  %1090 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %read8_sync.i347, align 4
  %call.i368 = tail call zeroext i8 %1091(ptr noundef %1, i32 noundef 77) #7
  br label %rtl_write_byte.exit371

rtl_write_byte.exit371:                           ; preds = %if.then.i369, %rtl_write_byte.exit362.rtl_write_byte.exit371_crit_edge
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %1092 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load ptr, ptr %pfirmware, align 8
  %firmwareversion = getelementptr inbounds %struct.rt_firmware, ptr %1093, i32 0, i32 2
  %1094 = ptrtoint ptr %firmwareversion to i32
  call void @__asan_load2_noabort(i32 %1094)
  %1095 = load i16, ptr %firmwareversion, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %1095)
  %cmp63 = icmp ugt i16 %1095, 72
  br i1 %cmp63, label %if.then65, label %rtl_write_byte.exit371.if.end72_crit_edge

rtl_write_byte.exit371.if.end72_crit_edge:        ; preds = %rtl_write_byte.exit371
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then65:                                        ; preds = %rtl_write_byte.exit371
  %1096 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %read8_sync.i347, align 4
  %call.i373 = tail call zeroext i8 %1097(ptr noundef %1, i32 noundef 216) #7
  %1098 = and i8 %call.i373, -49
  %1099 = or i8 %1098, 32
  %1100 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %write8_async.i, align 4
  tail call void %1101(ptr noundef %1, i32 noundef 216, i8 noundef zeroext %1099) #7
  %1102 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %cfg.i, align 8
  %write_readback.i376 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1103, i32 0, i32 1
  %1104 = ptrtoint ptr %write_readback.i376 to i32
  call void @__asan_load1_noabort(i32 %1104)
  %1105 = load i8, ptr %write_readback.i376, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1105)
  %tobool.not.i377 = icmp eq i8 %1105, 0
  br i1 %tobool.not.i377, label %if.then65.rtl_write_byte.exit382_crit_edge, label %if.then.i380

if.then65.rtl_write_byte.exit382_crit_edge:       ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit382

if.then.i380:                                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  %1106 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %read8_sync.i347, align 4
  %call.i379 = tail call zeroext i8 %1107(ptr noundef %1, i32 noundef 216) #7
  br label %rtl_write_byte.exit382

rtl_write_byte.exit382:                           ; preds = %if.then.i380, %if.then65.rtl_write_byte.exit382_crit_edge
  %1108 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %write32_async.i, align 4
  tail call void %1109(ptr noundef %1, i32 noundef 220, i32 noundef -12289) #7
  %1110 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %cfg.i, align 8
  %write_readback.i385 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1111, i32 0, i32 1
  %1112 = ptrtoint ptr %write_readback.i385 to i32
  call void @__asan_load1_noabort(i32 %1112)
  %1113 = load i8, ptr %write_readback.i385, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1113)
  %tobool.not.i386 = icmp eq i8 %1113, 0
  br i1 %tobool.not.i386, label %rtl_write_byte.exit382.if.end72_crit_edge, label %if.then.i389

rtl_write_byte.exit382.if.end72_crit_edge:        ; preds = %rtl_write_byte.exit382
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then.i389:                                     ; preds = %rtl_write_byte.exit382
  call void @__sanitizer_cov_trace_pc() #9
  %1114 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %read32_sync.i, align 4
  %call.i388 = tail call i32 %1115(ptr noundef %1, i32 noundef 220) #7
  br label %if.end72

if.end72:                                         ; preds = %if.then.i389, %rtl_write_byte.exit382.if.end72_crit_edge, %rtl_write_byte.exit371.if.end72_crit_edge
  %1116 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %pfirmware, align 8
  %firmwareversion75 = getelementptr inbounds %struct.rt_firmware, ptr %1117, i32 0, i32 2
  %1118 = ptrtoint ptr %firmwareversion75 to i32
  call void @__asan_load2_noabort(i32 %1118)
  %1119 = load i16, ptr %firmwareversion75, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %1119)
  %cmp77 = icmp ugt i16 %1119, 52
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call80 = tail call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 10) #7
  br label %if.end91

if.else81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %1119)
  %cmp86 = icmp eq i16 %1119, 52
  %1120 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %write32_async.i, align 4
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else81
  tail call void %1121(ptr noundef %1, i32 noundef 704, i32 noundef -50331610) #7
  %1122 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %cfg.i, align 8
  %write_readback.i394 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1123, i32 0, i32 1
  %1124 = ptrtoint ptr %write_readback.i394 to i32
  call void @__asan_load1_noabort(i32 %1124)
  %1125 = load i8, ptr %write_readback.i394, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1125)
  %tobool.not.i395 = icmp eq i8 %1125, 0
  br i1 %tobool.not.i395, label %if.then88.rtl_write_dword.exit400_crit_edge, label %if.then.i398

if.then88.rtl_write_dword.exit400_crit_edge:      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit400

if.then.i398:                                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %1126 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %read32_sync.i, align 4
  %call.i397 = tail call i32 %1127(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit400

rtl_write_dword.exit400:                          ; preds = %if.then.i398, %if.then88.rtl_write_dword.exit400_crit_edge
  tail call void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef %hw) #7
  br label %if.end91

if.else89:                                        ; preds = %if.else81
  tail call void %1121(ptr noundef %1, i32 noundef 704, i32 noundef -50331473) #7
  %1128 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %cfg.i, align 8
  %write_readback.i403 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1129, i32 0, i32 1
  %1130 = ptrtoint ptr %write_readback.i403 to i32
  call void @__asan_load1_noabort(i32 %1130)
  %1131 = load i8, ptr %write_readback.i403, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1131)
  %tobool.not.i404 = icmp eq i8 %1131, 0
  br i1 %tobool.not.i404, label %if.else89.rtl_write_dword.exit409_crit_edge, label %if.then.i407

if.else89.rtl_write_dword.exit409_crit_edge:      ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit409

if.then.i407:                                     ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #9
  %1132 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %read32_sync.i, align 4
  %call.i406 = tail call i32 %1133(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit409

rtl_write_dword.exit409:                          ; preds = %if.then.i407, %if.else89.rtl_write_dword.exit409_crit_edge
  tail call void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef %hw) #7
  %1134 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %write32_async.i, align 4
  tail call void %1135(ptr noundef %1, i32 noundef 704, i32 noundef -50331482) #7
  %1136 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %cfg.i, align 8
  %write_readback.i412 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1137, i32 0, i32 1
  %1138 = ptrtoint ptr %write_readback.i412 to i32
  call void @__asan_load1_noabort(i32 %1138)
  %1139 = load i8, ptr %write_readback.i412, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1139)
  %tobool.not.i413 = icmp eq i8 %1139, 0
  br i1 %tobool.not.i413, label %rtl_write_dword.exit409.rtl_write_dword.exit418_crit_edge, label %if.then.i416

rtl_write_dword.exit409.rtl_write_dword.exit418_crit_edge: ; preds = %rtl_write_dword.exit409
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit418

if.then.i416:                                     ; preds = %rtl_write_dword.exit409
  call void @__sanitizer_cov_trace_pc() #9
  %1140 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %read32_sync.i, align 4
  %call.i415 = tail call i32 %1141(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit418

rtl_write_dword.exit418:                          ; preds = %if.then.i416, %rtl_write_dword.exit409.rtl_write_dword.exit418_crit_edge
  tail call void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef %hw) #7
  %1142 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %write32_async.i, align 4
  tail call void %1143(ptr noundef %1, i32 noundef 704, i32 noundef -50331488) #7
  %1144 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %cfg.i, align 8
  %write_readback.i421 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1145, i32 0, i32 1
  %1146 = ptrtoint ptr %write_readback.i421 to i32
  call void @__asan_load1_noabort(i32 %1146)
  %1147 = load i8, ptr %write_readback.i421, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1147)
  %tobool.not.i422 = icmp eq i8 %1147, 0
  br i1 %tobool.not.i422, label %rtl_write_dword.exit418.rtl_write_dword.exit427_crit_edge, label %if.then.i425

rtl_write_dword.exit418.rtl_write_dword.exit427_crit_edge: ; preds = %rtl_write_dword.exit418
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit427

if.then.i425:                                     ; preds = %rtl_write_dword.exit418
  call void @__sanitizer_cov_trace_pc() #9
  %1148 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %read32_sync.i, align 4
  %call.i424 = tail call i32 %1149(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit427

rtl_write_dword.exit427:                          ; preds = %if.then.i425, %rtl_write_dword.exit418.rtl_write_dword.exit427_crit_edge
  tail call void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef %hw) #7
  br label %if.end91

if.end91:                                         ; preds = %rtl_write_dword.exit427, %rtl_write_dword.exit400, %if.then79
  tail call void @rtl92s_phy_switch_ephy_parameter(ptr noundef %hw) #7
  tail call void @rtl_cam_reset_all_entry(ptr noundef %hw) #7
  %1150 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %write8_async.i, align 4
  tail call void %1151(ptr noundef %1, i32 noundef 592, i8 noundef zeroext 44) #7
  %1152 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %cfg.i, align 8
  %write_readback.i430 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1153, i32 0, i32 1
  %1154 = ptrtoint ptr %write_readback.i430 to i32
  call void @__asan_load1_noabort(i32 %1154)
  %1155 = load i8, ptr %write_readback.i430, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1155)
  %tobool.not.i431 = icmp eq i8 %1155, 0
  br i1 %tobool.not.i431, label %if.end91.rtl_write_byte.exit436_crit_edge, label %if.then.i434

if.end91.rtl_write_byte.exit436_crit_edge:        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit436

if.then.i434:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %1156 = ptrtoint ptr %read8_sync.i347 to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %read8_sync.i347, align 4
  %call.i433 = tail call zeroext i8 %1157(ptr noundef %1, i32 noundef 592) #7
  br label %rtl_write_byte.exit436

rtl_write_byte.exit436:                           ; preds = %if.then.i434, %if.end91.rtl_write_byte.exit436_crit_edge
  %1158 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %write32_async.i, align 4
  tail call void %1159(ptr noundef %1, i32 noundef 472, i32 noundef 6177570) #7
  %1160 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %cfg.i, align 8
  %write_readback.i439 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1161, i32 0, i32 1
  %1162 = ptrtoint ptr %write_readback.i439 to i32
  call void @__asan_load1_noabort(i32 %1162)
  %1163 = load i8, ptr %write_readback.i439, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1163)
  %tobool.not.i440 = icmp eq i8 %1163, 0
  br i1 %tobool.not.i440, label %rtl_write_byte.exit436.rtl_write_dword.exit445_crit_edge, label %if.then.i443

rtl_write_byte.exit436.rtl_write_dword.exit445_crit_edge: ; preds = %rtl_write_byte.exit436
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit445

if.then.i443:                                     ; preds = %rtl_write_byte.exit436
  call void @__sanitizer_cov_trace_pc() #9
  %1164 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %read32_sync.i, align 4
  %call.i442 = tail call i32 %1165(ptr noundef %1, i32 noundef 472) #7
  br label %rtl_write_dword.exit445

rtl_write_dword.exit445:                          ; preds = %if.then.i443, %rtl_write_byte.exit436.rtl_write_dword.exit445_crit_edge
  %1166 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %write32_async.i, align 4
  tail call void %1167(ptr noundef %1, i32 noundef 476, i32 noundef 6177570) #7
  %1168 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %cfg.i, align 8
  %write_readback.i439.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1169, i32 0, i32 1
  %1170 = ptrtoint ptr %write_readback.i439.1 to i32
  call void @__asan_load1_noabort(i32 %1170)
  %1171 = load i8, ptr %write_readback.i439.1, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1171)
  %tobool.not.i440.1 = icmp eq i8 %1171, 0
  br i1 %tobool.not.i440.1, label %rtl_write_dword.exit445.rtl_write_dword.exit445.1_crit_edge, label %if.then.i443.1

rtl_write_dword.exit445.rtl_write_dword.exit445.1_crit_edge: ; preds = %rtl_write_dword.exit445
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit445.1

if.then.i443.1:                                   ; preds = %rtl_write_dword.exit445
  call void @__sanitizer_cov_trace_pc() #9
  %1172 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %read32_sync.i, align 4
  %call.i442.1 = tail call i32 %1173(ptr noundef %1, i32 noundef 476) #7
  br label %rtl_write_dword.exit445.1

rtl_write_dword.exit445.1:                        ; preds = %if.then.i443.1, %rtl_write_dword.exit445.rtl_write_dword.exit445.1_crit_edge
  %1174 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %write32_async.i, align 4
  tail call void %1175(ptr noundef %1, i32 noundef 468, i32 noundef 6177570) #7
  %1176 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %cfg.i, align 8
  %write_readback.i439.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1177, i32 0, i32 1
  %1178 = ptrtoint ptr %write_readback.i439.2 to i32
  call void @__asan_load1_noabort(i32 %1178)
  %1179 = load i8, ptr %write_readback.i439.2, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1179)
  %tobool.not.i440.2 = icmp eq i8 %1179, 0
  br i1 %tobool.not.i440.2, label %rtl_write_dword.exit445.1.rtl_write_dword.exit445.2_crit_edge, label %if.then.i443.2

rtl_write_dword.exit445.1.rtl_write_dword.exit445.2_crit_edge: ; preds = %rtl_write_dword.exit445.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit445.2

if.then.i443.2:                                   ; preds = %rtl_write_dword.exit445.1
  call void @__sanitizer_cov_trace_pc() #9
  %1180 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %read32_sync.i, align 4
  %call.i442.2 = tail call i32 %1181(ptr noundef %1, i32 noundef 468) #7
  br label %rtl_write_dword.exit445.2

rtl_write_dword.exit445.2:                        ; preds = %if.then.i443.2, %rtl_write_dword.exit445.1.rtl_write_dword.exit445.2_crit_edge
  %1182 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %write32_async.i, align 4
  tail call void %1183(ptr noundef %1, i32 noundef 464, i32 noundef 6177570) #7
  %1184 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %cfg.i, align 8
  %write_readback.i439.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1185, i32 0, i32 1
  %1186 = ptrtoint ptr %write_readback.i439.3 to i32
  call void @__asan_load1_noabort(i32 %1186)
  %1187 = load i8, ptr %write_readback.i439.3, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1187)
  %tobool.not.i440.3 = icmp eq i8 %1187, 0
  br i1 %tobool.not.i440.3, label %rtl_write_dword.exit445.2.rtl_write_dword.exit445.3_crit_edge, label %if.then.i443.3

rtl_write_dword.exit445.2.rtl_write_dword.exit445.3_crit_edge: ; preds = %rtl_write_dword.exit445.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit445.3

if.then.i443.3:                                   ; preds = %rtl_write_dword.exit445.2
  call void @__sanitizer_cov_trace_pc() #9
  %1188 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %read32_sync.i, align 4
  %call.i442.3 = tail call i32 %1189(ptr noundef %1, i32 noundef 464) #7
  br label %rtl_write_dword.exit445.3

rtl_write_dword.exit445.3:                        ; preds = %if.then.i443.3, %rtl_write_dword.exit445.2.rtl_write_dword.exit445.3_crit_edge
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %1190 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %1190)
  %1191 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1191)
  %cmp112 = icmp eq i8 %1191, 1
  br i1 %cmp112, label %if.then114, label %rtl_write_dword.exit445.3.if.end115_crit_edge

rtl_write_dword.exit445.3.if.end115_crit_edge:    ; preds = %rtl_write_dword.exit445.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then114:                                       ; preds = %rtl_write_dword.exit445.3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mrc2set) #7
  %1192 = ptrtoint ptr %mrc2set to i32
  call void @__asan_store1_noabort(i32 %1192)
  store i8 1, ptr %mrc2set, align 1
  %1193 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1193)
  %1194 = load ptr, ptr %cfg.i, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1194, i32 0, i32 4
  %1195 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1195)
  %1196 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %1196, i32 0, i32 20
  %1197 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %1197)
  %1198 = load ptr, ptr %set_hw_reg, align 4
  call void %1198(ptr noundef %hw, i8 noundef zeroext 93, ptr noundef nonnull %mrc2set) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mrc2set) #7
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %rtl_write_dword.exit445.3.if.end115_crit_edge
  %1199 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %cfg.i, align 8
  %ops117 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1200, i32 0, i32 4
  %1201 = ptrtoint ptr %ops117 to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load ptr, ptr %ops117, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %1202, i32 0, i32 36
  %1203 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %led_control, align 4
  call void %1204(ptr noundef %hw, i32 noundef 1) #7
  call void @rtl92s_dm_init(ptr noundef %hw) #7
  br label %do.body118

do.body118:                                       ; preds = %if.end115, %if.then44, %do.end32, %do.end18, %if.then
  %err.0 = phi i32 [ 0, %if.end115 ], [ 1, %if.then44 ], [ 1, %do.end32 ], [ 1, %do.end18 ], [ 1, %if.then ]
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool126.not = icmp eq i32 %and.i, 0
  br i1 %tobool126.not, label %if.then127, label %do.body118.do.body129_crit_edge

do.body118.do.body129_crit_edge:                  ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body129

if.then127:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_on() #7
  br label %do.body129

do.body129:                                       ; preds = %if.then127, %do.body118.do.body129_crit_edge
  %1205 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !199
  %and.i.i = and i32 %1205, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool137.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool137.not, label %if.then141, label %do.body129.do.end144_crit_edge, !prof !201

do.body129.do.end144_crit_edge:                   ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end144

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end144

do.end144:                                        ; preds = %if.then141, %do.body129.do.end144_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #7, !srcloc !202
  %1206 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_store1_noabort(i32 %1206)
  store i8 0, ptr %being_init_adapter, align 4
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92s_download_fw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_mac_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_bb_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_rf_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92s_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_get_hw_reg_originalvalue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_txpower(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_chk_fwcmd_iodone(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_switch_ephy_parameter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_cam_reset_all_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_dm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92se_set_mac_addr(ptr nocapture noundef %io, ptr nocapture noundef %addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_check_bssid(ptr noundef %hw, i1 noundef zeroext %check_bssid) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr) #7
  %2 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_rcr, align 4, !annotation !203
  %rfpwr_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %3 = ptrtoint ptr %rfpwr_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rfpwr_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %get_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %get_hw_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_hw_reg, align 4
  call void %10(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  %11 = ptrtoint ptr %reg_rcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_rcr, align 4
  %and = and i32 %12, -8388609
  %masksel = select i1 %check_bssid, i32 8388608, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %reg_rcr, align 4
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops3, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_hw_reg, align 4
  call void %18(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92se_set_network_type(ptr noundef %hw, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %reg_rcr.i10 = alloca i32, align 4
  %reg_rcr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @_rtl92se_set_media_status(ptr noundef %hw, i32 noundef %type)
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
  %6 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_rcr.i, align 4, !annotation !203
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 21, i32 24
  %7 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then3.rtl92se_set_check_bssid.exit_crit_edge

if.then3.rtl92se_set_check_bssid.exit_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_set_check_bssid.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %get_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %get_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_hw_reg.i, align 4
  call void %14(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  %15 = ptrtoint ptr %reg_rcr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_rcr.i, align 4
  %or.i = or i32 %16, 8388608
  store i32 %or.i, ptr %reg_rcr.i, align 4
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %ops3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops3.i, align 4
  %set_hw_reg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %set_hw_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_hw_reg.i, align 4
  call void %22(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i) #7
  br label %rtl92se_set_check_bssid.exit

rtl92se_set_check_bssid.exit:                     ; preds = %if.end.i, %if.then3.rtl92se_set_check_bssid.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  %25 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %reg_rcr.i10, align 4, !annotation !203
  %rfpwr_state.i12 = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 21, i32 24
  %26 = ptrtoint ptr %rfpwr_state.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rfpwr_state.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i13 = icmp eq i32 %27, 0
  br i1 %cmp.not.i13, label %if.end.i17, label %if.else.rtl92se_set_check_bssid.exit20_crit_edge

if.else.rtl92se_set_check_bssid.exit20_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_set_check_bssid.exit20

if.end.i17:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i14 = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i14, align 8
  %ops.i15 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i15, align 4
  %get_hw_reg.i16 = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %get_hw_reg.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_hw_reg.i16, align 4
  call void %33(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #7
  %34 = ptrtoint ptr %reg_rcr.i10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg_rcr.i10, align 4
  %and.i = and i32 %35, -8388609
  store i32 %and.i, ptr %reg_rcr.i10, align 4
  %36 = ptrtoint ptr %cfg.i14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i14, align 8
  %ops3.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops3.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops3.i18, align 4
  %set_hw_reg.i19 = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %set_hw_reg.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_hw_reg.i19, align 4
  call void %41(ptr noundef %hw, i8 noundef zeroext 44, ptr noundef nonnull %reg_rcr.i10) #7
  br label %rtl92se_set_check_bssid.exit20

rtl92se_set_check_bssid.exit20:                   ; preds = %if.end.i17, %if.else.rtl92se_set_check_bssid.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_rcr.i10) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl92se_set_check_bssid.exit20, %rtl92se_set_check_bssid.exit, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %rtl92se_set_check_bssid.exit ], [ 0, %rtl92se_set_check_bssid.exit20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92se_set_media_status(ptr nocapture noundef readonly %hw, i32 noundef %type) unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 76) #7
  %4 = and i8 %call.i, -4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %type, label %do.end [
    i32 0, label %entry.land.lhs.true_crit_edge
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
    i32 3, label %sw.epilog
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = or i8 %4, 1
  br label %land.lhs.true

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i8 %4, 2
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %type) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i8 %call.i, 3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.49) #7
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb8, %sw.bb4, %entry.land.lhs.true_crit_edge
  %.str.48.sink = phi ptr [ @.str.48, %sw.bb8 ], [ @.str.47, %sw.bb4 ], [ @.str.46, %entry.land.lhs.true_crit_edge ]
  %bt_msr.0.ph = phi i8 [ %7, %sw.bb8 ], [ %6, %sw.bb4 ], [ %4, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.48.sink) #7
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %9 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp18 = icmp ult i32 %10, 2
  br i1 %cmp18, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i48 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 76) #7
  %13 = and i8 %call.i48, -4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.epilog
  %bt_msr.1 = phi i8 [ %13, %if.then ], [ %bt_msr.0.ph, %land.lhs.true.if.end_crit_edge ], [ %8, %sw.epilog ]
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %14 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 76, i8 noundef zeroext %bt_msr.1) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end.rtl_write_byte.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i50 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 76) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end.rtl_write_byte.exit_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %22 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read32_sync.i, align 4
  %call.i51 = tail call i32 %23(ptr noundef %1, i32 noundef 68) #7
  %and25 = and i32 %call.i51, -257
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %24 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write32_async.i, align 4
  tail call void %25(ptr noundef %1, i32 noundef 68, i32 noundef %and25) #7
  %26 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i, align 8
  %write_readback.i53 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i53 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i53, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i54 = icmp eq i8 %29, 0
  br i1 %tobool.not.i54, label %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge, label %if.then.i57

rtl_write_byte.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i57:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read32_sync.i, align 4
  %call.i56 = tail call i32 %31(ptr noundef %1, i32 noundef 68) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i57, %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge
  %or26 = or i32 %call.i51, 256
  %32 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 68, i32 noundef %or26) #7
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i60 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i60, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i61 = icmp eq i8 %37, 0
  br i1 %tobool.not.i61, label %rtl_write_dword.exit.cleanup_crit_edge, label %if.then.i64

rtl_write_dword.exit.cleanup_crit_edge:           ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i64:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i, align 4
  %call.i63 = tail call i32 %39(ptr noundef %1, i32 noundef 68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i64, %rtl_write_dword.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %rtl_write_dword.exit.cleanup_crit_edge ], [ 0, %if.then.i64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_qos(ptr noundef %hw, i32 noundef %aci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl92s_dm_init_edca_turbo(ptr noundef %hw) #7
  %2 = zext i32 %aci to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.96)
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
  tail call void %4(ptr noundef %1, i32 noundef 476, i32 noundef 42063) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !198
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
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 476) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %write32_async.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %11 = ptrtoint ptr %write32_async.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32_async.i42, align 4
  tail call void %12(ptr noundef %1, i32 noundef 468, i32 noundef 6177570) #7
  %cfg.i43 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i43, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i44, align 1, !range !198
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
  %call.i47 = tail call i32 %18(ptr noundef %1, i32 noundef 468) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %write32_async.i50 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %19 = ptrtoint ptr %write32_async.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32_async.i50, align 4
  tail call void %20(ptr noundef %1, i32 noundef 464, i32 noundef 3093026) #7
  %cfg.i51 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i51, align 8
  %write_readback.i52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i52 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i52, align 1, !range !198
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
  %call.i55 = tail call i32 %26(ptr noundef %1, i32 noundef 464) #7
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b41 = load i1, ptr @rtl92se_set_qos.__already_done, align 1
  br i1 %.b41, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !204

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl92se_set_qos.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1224, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %aci) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then.i56, %sw.bb2.sw.epilog_crit_edge, %if.then.i48, %sw.bb1.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_enable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  tail call void %5(ptr noundef %1, i32 noundef 768, i32 noundef %3) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !198
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
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 768) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %13, 63
  %14 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32_async.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 772, i32 noundef %and) #7
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %write_readback.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i11, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i12 = icmp eq i8 %19, 0
  br i1 %tobool.not.i12, label %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge, label %if.then.i15

rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit16

if.then.i15:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %20 = ptrtoint ptr %read32_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32_sync.i13, align 4
  %call.i14 = tail call i32 %21(ptr noundef %1, i32 noundef 772) #7
  br label %rtl_write_dword.exit16

rtl_write_dword.exit16:                           ; preds = %if.then.i15, %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %22 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_disable_interrupt(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_fw_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %4 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write32_async.i, align 4
  tail call void %5(ptr noundef nonnull %1, i32 noundef 768, i32 noundef 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_dword.exit_crit_edge, label %if.then.i

if.end.rtl_write_dword.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %10 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %11(ptr noundef nonnull %1, i32 noundef 768) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.end.rtl_write_dword.exit_crit_edge
  %12 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i, align 4
  tail call void %13(ptr noundef nonnull %1, i32 noundef 772, i32 noundef 0) #7
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i11, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i12 = icmp eq i8 %17, 0
  br i1 %tobool.not.i12, label %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge, label %if.then.i15

rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit16

if.then.i15:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i13, align 4
  %call.i14 = tail call i32 %19(ptr noundef nonnull %1, i32 noundef 772) #7
  br label %rtl_write_dword.exit16

rtl_write_dword.exit16:                           ; preds = %if.then.i15, %rtl_write_dword.exit.rtl_write_dword.exit16_crit_edge
  %irq_enabled = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %irq_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_dword.exit16, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_card_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %psc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21
  %intf_ops = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %intf_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf_ops, align 4
  %enable_aspm = getelementptr inbounds %struct.rtl_intf_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %enable_aspm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_aspm, align 4
  tail call void %5(ptr noundef %hw) #7
  %driver_is_goingto_unload = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %driver_is_goingto_unload to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %driver_is_goingto_unload, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %8 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %9)
  %cmp = icmp ugt i32 %9, 536870912
  br i1 %cmp, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %led_control, align 4
  tail call void %15(ptr noundef %hw, i32 noundef 7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 13, i32 5
  %18 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %19(ptr noundef %17, i32 noundef 753, i8 noundef zeroext 8) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %if.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end.rtl_write_byte.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %25(ptr noundef %17, i32 noundef 753) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i5.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %read8_sync.i5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i5.i, align 4
  %call.i6.i = tail call zeroext i8 %27(ptr noundef %17, i32 noundef 750) #7
  %28 = and i8 %call.i6.i, -9
  %29 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %30(ptr noundef %17, i32 noundef 750, i8 noundef zeroext %28) #7
  %31 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i9.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i9.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i9.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i10.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i10.i, label %rtl_write_byte.exit.i.land.rhs.preheader_crit_edge, label %if.then.i13.i

rtl_write_byte.exit.i.land.rhs.preheader_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

if.then.i13.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %read8_sync.i5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i5.i, align 4
  %call.i12.i = tail call zeroext i8 %36(ptr noundef %17, i32 noundef 750) #7
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then.i13.i, %rtl_write_byte.exit.i.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %while.body17.preheader.land.rhs_crit_edge, %land.rhs.preheader
  %dec32 = phi i8 [ %dec, %while.body17.preheader.land.rhs_crit_edge ], [ 29, %land.rhs.preheader ]
  %37 = ptrtoint ptr %psc to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %psc, align 8, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool8.not = icmp eq i8 %38, 0
  br i1 %tobool8.not, label %land.rhs.while.end19_crit_edge, label %while.body17.preheader

land.rhs.while.end19_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body17.preheader:                           ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #7
  %dec = add nsw i8 %dec32, -1
  %cmp5 = icmp ugt i8 %dec32, 9
  br i1 %cmp5, label %while.body17.preheader.land.rhs_crit_edge, label %while.body17.preheader.while.end19_crit_edge

while.body17.preheader.while.end19_crit_edge:     ; preds = %while.body17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end19

while.body17.preheader.land.rhs_crit_edge:        ; preds = %while.body17.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

while.end19:                                      ; preds = %while.body17.preheader.while.end19_crit_edge, %land.rhs.while.end19_crit_edge
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %59 = ptrtoint ptr %link_state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %link_state, align 8
  %call = tail call fastcc i32 @_rtl92se_set_media_status(ptr noundef %hw, i32 noundef 0)
  tail call fastcc void @_rtl92s_phy_set_rfhalt(ptr noundef %hw)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 21474800) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92s_phy_set_rfhalt(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %driver_going2unload = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 50
  %2 = ptrtoint ptr %driver_going2unload to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %driver_going2unload, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1376, i8 noundef zeroext 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 1376) #7
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %read8_sync.i68 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i68, align 4
  %call.i69 = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 33) #7
  %14 = or i8 %call.i69, 1
  %write8_async.i70 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i70, align 4
  tail call void %16(ptr noundef %1, i32 noundef 33, i8 noundef zeroext %14) #7
  %cfg.i71 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i72 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i72 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i72, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i73 = icmp eq i8 %20, 0
  br i1 %tobool.not.i73, label %if.end.rtl_write_byte.exit77_crit_edge, label %if.then.i76

if.end.rtl_write_byte.exit77_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit77

if.then.i76:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i68, align 4
  %call.i75 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 33) #7
  br label %rtl_write_byte.exit77

rtl_write_byte.exit77:                            ; preds = %if.then.i76, %if.end.rtl_write_byte.exit77_crit_edge
  %23 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i70, align 4
  tail call void %24(ptr noundef %1, i32 noundef 24, i8 noundef zeroext 0) #7
  %25 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i80 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i80 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i80, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i81 = icmp eq i8 %28, 0
  br i1 %tobool.not.i81, label %rtl_write_byte.exit77.rtl_write_byte.exit85_crit_edge, label %if.then.i84

rtl_write_byte.exit77.rtl_write_byte.exit85_crit_edge: ; preds = %rtl_write_byte.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit85

if.then.i84:                                      ; preds = %rtl_write_byte.exit77
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i68, align 4
  %call.i83 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 24) #7
  br label %rtl_write_byte.exit85

rtl_write_byte.exit85:                            ; preds = %if.then.i84, %rtl_write_byte.exit77.rtl_write_byte.exit85_crit_edge
  %31 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8_async.i70, align 4
  tail call void %32(ptr noundef %1, i32 noundef 66, i8 noundef zeroext -1) #7
  %33 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i88 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i88 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i88, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i89 = icmp eq i8 %36, 0
  br i1 %tobool.not.i89, label %rtl_write_byte.exit85.rtl_write_byte.exit93_crit_edge, label %if.then.i92

rtl_write_byte.exit85.rtl_write_byte.exit93_crit_edge: ; preds = %rtl_write_byte.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit93

if.then.i92:                                      ; preds = %rtl_write_byte.exit85
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i68, align 4
  %call.i91 = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 66) #7
  br label %rtl_write_byte.exit93

rtl_write_byte.exit93:                            ; preds = %if.then.i92, %rtl_write_byte.exit85.rtl_write_byte.exit93_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %39 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write16_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 22524) #7
  %41 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i95 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i95 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i95, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i96 = icmp eq i8 %44, 0
  br i1 %tobool.not.i96, label %rtl_write_byte.exit93.rtl_write_word.exit_crit_edge, label %if.then.i98

rtl_write_byte.exit93.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i98:                                      ; preds = %rtl_write_byte.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %45 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read16_sync.i, align 4
  %call.i97 = tail call zeroext i16 %46(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i98, %rtl_write_byte.exit93.rtl_write_word.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 21474800) #7
  %48 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write16_async.i, align 4
  tail call void %49(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 30716) #7
  %50 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i101 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i101 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i101, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i102 = icmp eq i8 %53, 0
  br i1 %tobool.not.i102, label %rtl_write_word.exit.rtl_write_word.exit106_crit_edge, label %if.then.i105

rtl_write_word.exit.rtl_write_word.exit106_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit106

if.then.i105:                                     ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i103 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %54 = ptrtoint ptr %read16_sync.i103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read16_sync.i103, align 4
  %call.i104 = tail call zeroext i16 %55(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit106

rtl_write_word.exit106:                           ; preds = %if.then.i105, %rtl_write_word.exit.rtl_write_word.exit106_crit_edge
  %56 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write8_async.i70, align 4
  tail call void %57(ptr noundef %1, i32 noundef 2051, i8 noundef zeroext 0) #7
  %58 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i109 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i109 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i109, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i110 = icmp eq i8 %61, 0
  br i1 %tobool.not.i110, label %rtl_write_word.exit106.rtl_write_byte.exit114_crit_edge, label %if.then.i113

rtl_write_word.exit106.rtl_write_byte.exit114_crit_edge: ; preds = %rtl_write_word.exit106
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit114

if.then.i113:                                     ; preds = %rtl_write_word.exit106
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8_sync.i68, align 4
  %call.i112 = tail call zeroext i8 %63(ptr noundef %1, i32 noundef 2051) #7
  br label %rtl_write_byte.exit114

rtl_write_byte.exit114:                           ; preds = %if.then.i113, %rtl_write_word.exit106.rtl_write_byte.exit114_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 2147480) #7
  %65 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write16_async.i, align 4
  tail call void %66(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 14332) #7
  %67 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i117 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_readback.i117 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_readback.i117, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i118 = icmp eq i8 %70, 0
  br i1 %tobool.not.i118, label %rtl_write_byte.exit114.rtl_write_word.exit122_crit_edge, label %if.then.i121

rtl_write_byte.exit114.rtl_write_word.exit122_crit_edge: ; preds = %rtl_write_byte.exit114
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit122

if.then.i121:                                     ; preds = %rtl_write_byte.exit114
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i119 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %71 = ptrtoint ptr %read16_sync.i119 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read16_sync.i119, align 4
  %call.i120 = tail call zeroext i16 %72(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit122

rtl_write_word.exit122:                           ; preds = %if.then.i121, %rtl_write_byte.exit114.rtl_write_word.exit122_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 2147480) #7
  %74 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write16_async.i, align 4
  tail call void %75(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 30716) #7
  %76 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i125 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_readback.i125 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_readback.i125, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i126 = icmp eq i8 %79, 0
  br i1 %tobool.not.i126, label %rtl_write_word.exit122.rtl_write_word.exit130_crit_edge, label %if.then.i129

rtl_write_word.exit122.rtl_write_word.exit130_crit_edge: ; preds = %rtl_write_word.exit122
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit130

if.then.i129:                                     ; preds = %rtl_write_word.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i127 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %80 = ptrtoint ptr %read16_sync.i127 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read16_sync.i127, align 4
  %call.i128 = tail call zeroext i16 %81(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit130

rtl_write_word.exit130:                           ; preds = %if.then.i129, %rtl_write_word.exit122.rtl_write_word.exit130_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 2147480) #7
  %83 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write16_async.i, align 4
  tail call void %84(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 22524) #7
  %85 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i133 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %write_readback.i133 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %write_readback.i133, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i134 = icmp eq i8 %88, 0
  br i1 %tobool.not.i134, label %rtl_write_word.exit130.rtl_write_word.exit138_crit_edge, label %if.then.i137

rtl_write_word.exit130.rtl_write_word.exit138_crit_edge: ; preds = %rtl_write_word.exit130
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit138

if.then.i137:                                     ; preds = %rtl_write_word.exit130
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i135 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %89 = ptrtoint ptr %read16_sync.i135 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read16_sync.i135, align 4
  %call.i136 = tail call zeroext i16 %90(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit138

rtl_write_word.exit138:                           ; preds = %if.then.i137, %rtl_write_word.exit130.rtl_write_word.exit138_crit_edge
  %91 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write16_async.i, align 4
  tail call void %92(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 0) #7
  %93 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i141 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %write_readback.i141 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %write_readback.i141, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i142 = icmp eq i8 %96, 0
  br i1 %tobool.not.i142, label %rtl_write_word.exit138.rtl_write_word.exit146_crit_edge, label %if.then.i145

rtl_write_word.exit138.rtl_write_word.exit146_crit_edge: ; preds = %rtl_write_word.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit146

if.then.i145:                                     ; preds = %rtl_write_word.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i143 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %97 = ptrtoint ptr %read16_sync.i143 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read16_sync.i143, align 4
  %call.i144 = tail call zeroext i16 %98(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit146

rtl_write_word.exit146:                           ; preds = %if.then.i145, %rtl_write_word.exit138.rtl_write_word.exit146_crit_edge
  %99 = ptrtoint ptr %driver_going2unload to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %driver_going2unload, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool6.not = icmp eq i8 %100, 0
  br i1 %tobool6.not, label %rtl_write_word.exit146.if.end11_crit_edge, label %if.then7

rtl_write_word.exit146.if.end11_crit_edge:        ; preds = %rtl_write_word.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %rtl_write_word.exit146
  %101 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i68, align 4
  %call.i148 = tail call zeroext i8 %102(ptr noundef %1, i32 noundef 3) #7
  %103 = and i8 %call.i148, -2
  %104 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8_async.i70, align 4
  tail call void %105(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %103) #7
  %106 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i151 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i151 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i151, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i152 = icmp eq i8 %109, 0
  br i1 %tobool.not.i152, label %if.then7.if.end11_crit_edge, label %if.then.i155

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then.i155:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8_sync.i68, align 4
  %call.i154 = tail call zeroext i8 %111(ptr noundef %1, i32 noundef 3) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then.i155, %if.then7.if.end11_crit_edge, %rtl_write_word.exit146.if.end11_crit_edge
  %112 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i68, align 4
  %call.i158 = tail call zeroext i8 %113(ptr noundef %1, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i158)
  %tobool15.not = icmp sgt i8 %call.i158, -1
  br i1 %tobool15.not, label %if.end11.if.end25_crit_edge, label %if.then16

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then16:                                        ; preds = %if.end11
  %and18 = and i8 %call.i158, 63
  %call20 = tail call fastcc zeroext i8 @_rtl92s_set_sysclk(ptr noundef %hw, i8 noundef zeroext %and18)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call20)
  %tobool21.not = icmp eq i8 %call20, 0
  br i1 %tobool21.not, label %do.end, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  br label %cleanup

if.end25:                                         ; preds = %if.then16.if.end25_crit_edge, %if.end11.if.end25_crit_edge
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %114 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %115)
  %cmp = icmp eq i32 %115, 268435456
  br i1 %cmp, label %land.lhs.true, label %if.end25.if.else_crit_edge

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end25
  %116 = ptrtoint ptr %driver_going2unload to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %driver_going2unload, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool28.not = icmp eq i8 %117, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then29:                                        ; preds = %land.lhs.true
  %118 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write8_async.i70, align 4
  tail call void %119(ptr noundef %1, i32 noundef 3, i8 noundef zeroext -7) #7
  %120 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i161 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %write_readback.i161 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %write_readback.i161, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i162 = icmp eq i8 %123, 0
  br i1 %tobool.not.i162, label %if.then29.if.end30_crit_edge, label %if.then29.if.end30.sink.split_crit_edge

if.then29.if.end30.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.then29.if.end30_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end25.if.else_crit_edge
  %124 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write8_async.i70, align 4
  tail call void %125(ptr noundef %1, i32 noundef 3, i8 noundef zeroext -7) #7
  %126 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i169 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %write_readback.i169 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %write_readback.i169, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i170 = icmp eq i8 %129, 0
  br i1 %tobool.not.i170, label %if.else.if.end30_crit_edge, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.then29.if.end30.sink.split_crit_edge
  %130 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %read8_sync.i68, align 4
  %call.i172 = tail call zeroext i8 %131(ptr noundef %1, i32 noundef 3) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge, %if.then29.if.end30_crit_edge
  %132 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write8_async.i70, align 4
  tail call void %133(ptr noundef %1, i32 noundef 9, i8 noundef zeroext 112) #7
  %134 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i177 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %write_readback.i177 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %write_readback.i177, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i178 = icmp eq i8 %137, 0
  br i1 %tobool.not.i178, label %if.end30.rtl_write_byte.exit182_crit_edge, label %if.then.i181

if.end30.rtl_write_byte.exit182_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit182

if.then.i181:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %read8_sync.i68, align 4
  %call.i180 = tail call zeroext i8 %139(ptr noundef %1, i32 noundef 9) #7
  br label %rtl_write_byte.exit182

rtl_write_byte.exit182:                           ; preds = %if.then.i181, %if.end30.rtl_write_byte.exit182_crit_edge
  %140 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write8_async.i70, align 4
  tail call void %141(ptr noundef %1, i32 noundef 41, i8 noundef zeroext 104) #7
  %142 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i185 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_readback.i185 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %write_readback.i185, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i186 = icmp eq i8 %145, 0
  br i1 %tobool.not.i186, label %rtl_write_byte.exit182.rtl_write_byte.exit190_crit_edge, label %if.then.i189

rtl_write_byte.exit182.rtl_write_byte.exit190_crit_edge: ; preds = %rtl_write_byte.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit190

if.then.i189:                                     ; preds = %rtl_write_byte.exit182
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8_sync.i68, align 4
  %call.i188 = tail call zeroext i8 %147(ptr noundef %1, i32 noundef 41) #7
  br label %rtl_write_byte.exit190

rtl_write_byte.exit190:                           ; preds = %if.then.i189, %rtl_write_byte.exit182.rtl_write_byte.exit190_crit_edge
  %148 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write8_async.i70, align 4
  tail call void %149(ptr noundef %1, i32 noundef 40, i8 noundef zeroext 0) #7
  %150 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i193 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %write_readback.i193 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %write_readback.i193, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i194 = icmp eq i8 %153, 0
  br i1 %tobool.not.i194, label %rtl_write_byte.exit190.rtl_write_byte.exit198_crit_edge, label %if.then.i197

rtl_write_byte.exit190.rtl_write_byte.exit198_crit_edge: ; preds = %rtl_write_byte.exit190
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit198

if.then.i197:                                     ; preds = %rtl_write_byte.exit190
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read8_sync.i68, align 4
  %call.i196 = tail call zeroext i8 %155(ptr noundef %1, i32 noundef 40) #7
  br label %rtl_write_byte.exit198

rtl_write_byte.exit198:                           ; preds = %if.then.i197, %rtl_write_byte.exit190.rtl_write_byte.exit198_crit_edge
  %156 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write8_async.i70, align 4
  tail call void %157(ptr noundef %1, i32 noundef 32, i8 noundef zeroext 52) #7
  %158 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i201 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %write_readback.i201 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_readback.i201, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i202 = icmp eq i8 %161, 0
  br i1 %tobool.not.i202, label %rtl_write_byte.exit198.rtl_write_byte.exit206_crit_edge, label %if.then.i205

rtl_write_byte.exit198.rtl_write_byte.exit206_crit_edge: ; preds = %rtl_write_byte.exit198
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit206

if.then.i205:                                     ; preds = %rtl_write_byte.exit198
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i68, align 4
  %call.i204 = tail call zeroext i8 %163(ptr noundef %1, i32 noundef 32) #7
  br label %rtl_write_byte.exit206

rtl_write_byte.exit206:                           ; preds = %if.then.i205, %rtl_write_byte.exit198.rtl_write_byte.exit206_crit_edge
  %164 = ptrtoint ptr %write8_async.i70 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write8_async.i70, align 4
  tail call void %165(ptr noundef %1, i32 noundef 38, i8 noundef zeroext 14) #7
  %166 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i71, align 8
  %write_readback.i209 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write_readback.i209 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %write_readback.i209, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i210 = icmp eq i8 %169, 0
  br i1 %tobool.not.i210, label %rtl_write_byte.exit206.rtl_write_byte.exit214_crit_edge, label %if.then.i213

rtl_write_byte.exit206.rtl_write_byte.exit214_crit_edge: ; preds = %rtl_write_byte.exit206
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit214

if.then.i213:                                     ; preds = %rtl_write_byte.exit206
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %read8_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read8_sync.i68, align 4
  %call.i212 = tail call zeroext i8 %171(ptr noundef %1, i32 noundef 38) #7
  br label %rtl_write_byte.exit214

rtl_write_byte.exit214:                           ; preds = %if.then.i213, %rtl_write_byte.exit206.rtl_write_byte.exit214_crit_edge
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %172 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %cur_ps_level, align 4
  %or31 = or i32 %173, 8
  store i32 %or31, ptr %cur_ps_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %rtl_write_byte.exit214, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_interrupt_recognized(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %intvec) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef 776) #7
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
  tail call void %8(ptr noundef %1, i32 noundef 776, i32 noundef %and) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !198
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
  %call.i18 = tail call i32 %14(ptr noundef %1, i32 noundef 776) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %15 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read32_sync.i, align 4
  %call.i20 = tail call i32 %16(ptr noundef %1, i32 noundef 780) #7
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
  tail call void %21(ptr noundef %1, i32 noundef 780, i32 noundef %and7) #7
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i23 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i23, align 1, !range !198
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
  %call.i26 = tail call i32 %27(ptr noundef %1, i32 noundef 780) #7
  br label %rtl_write_dword.exit28

rtl_write_dword.exit28:                           ; preds = %if.then.i27, %rtl_write_dword.exit.rtl_write_dword.exit28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_beacon_related_registers(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %2 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write16_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 150, i16 noundef zeroext 2) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %8 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %9(ptr noundef %1, i32 noundef 150) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %beacon_interval = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 54
  %10 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %beacon_interval, align 8
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write16_async.i, align 4
  tail call void %13(ptr noundef %1, i32 noundef 148, i16 noundef zeroext %conv) #7
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  %write_readback.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i24, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i25 = icmp eq i8 %17, 0
  br i1 %tobool.not.i25, label %rtl_write_word.exit.rtl_write_word.exit29_crit_edge, label %if.then.i28

rtl_write_word.exit.rtl_write_word.exit29_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit29

if.then.i28:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %18 = ptrtoint ptr %read16_sync.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16_sync.i26, align 4
  %call.i27 = tail call zeroext i16 %19(ptr noundef %1, i32 noundef 148) #7
  br label %rtl_write_word.exit29

rtl_write_word.exit29:                            ; preds = %if.then.i28, %rtl_write_word.exit.rtl_write_word.exit29_crit_edge
  %20 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write16_async.i, align 4
  tail call void %21(ptr noundef %1, i32 noundef 152, i16 noundef zeroext 160) #7
  %22 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i, align 8
  %write_readback.i32 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i32, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i33 = icmp eq i8 %25, 0
  br i1 %tobool.not.i33, label %rtl_write_word.exit29.rtl_write_word.exit37_crit_edge, label %if.then.i36

rtl_write_word.exit29.rtl_write_word.exit37_crit_edge: ; preds = %rtl_write_word.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit37

if.then.i36:                                      ; preds = %rtl_write_word.exit29
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %26 = ptrtoint ptr %read16_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16_sync.i34, align 4
  %call.i35 = tail call zeroext i16 %27(ptr noundef %1, i32 noundef 152) #7
  br label %rtl_write_word.exit37

rtl_write_word.exit37:                            ; preds = %if.then.i36, %rtl_write_word.exit29.rtl_write_word.exit37_crit_edge
  %28 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16_async.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef 154, i16 noundef zeroext 256) #7
  %30 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i, align 8
  %write_readback.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i40, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i41 = icmp eq i8 %33, 0
  br i1 %tobool.not.i41, label %rtl_write_word.exit37.rtl_write_word.exit45_crit_edge, label %if.then.i44

rtl_write_word.exit37.rtl_write_word.exit45_crit_edge: ; preds = %rtl_write_word.exit37
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit45

if.then.i44:                                      ; preds = %rtl_write_word.exit37
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %34 = ptrtoint ptr %read16_sync.i42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read16_sync.i42, align 4
  %call.i43 = tail call zeroext i16 %35(ptr noundef %1, i32 noundef 154) #7
  br label %rtl_write_word.exit45

rtl_write_word.exit45:                            ; preds = %if.then.i44, %rtl_write_word.exit37.rtl_write_word.exit45_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %36 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8_async.i, align 4
  tail call void %37(ptr noundef %1, i32 noundef 156, i8 noundef zeroext 100) #7
  %38 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i, align 8
  %write_readback.i47 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_readback.i47 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_readback.i47, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i48 = icmp eq i8 %41, 0
  br i1 %tobool.not.i48, label %rtl_write_word.exit45.rtl_write_byte.exit_crit_edge, label %if.then.i50

rtl_write_word.exit45.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i50:                                      ; preds = %rtl_write_word.exit45
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %42 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8_sync.i, align 4
  %call.i49 = tail call zeroext i8 %43(ptr noundef %1, i32 noundef 156) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i50, %rtl_write_word.exit45.rtl_write_byte.exit_crit_edge
  %44 = ptrtoint ptr %beacon_interval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %beacon_interval, align 8
  %conv12 = trunc i32 %45 to i16
  tail call void @rtl92s_phy_set_beacon_hwreg(ptr noundef %hw, i16 noundef zeroext %conv12) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_beacon_hwreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_beacon_interval(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %4 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write16_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 148, i16 noundef zeroext %conv) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !198
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
  %call.i = tail call zeroext i16 %11(ptr noundef %1, i32 noundef 148) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  tail call void @rtl92s_phy_set_beacon_hwreg(ptr noundef %hw, i16 noundef zeroext %conv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_update_interrupt_mask(ptr nocapture noundef readonly %hw, i32 noundef %add_msr, i32 noundef %rm_msr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 128, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %add_msr, i32 noundef %rm_msr) #7
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
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end7.rtl92se_disable_interrupt.exit_crit_edge, label %lor.lhs.false.i

if.end7.rtl92se_disable_interrupt.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_disable_interrupt.exit

lor.lhs.false.i:                                  ; preds = %if.end7
  %max_fw_size.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %max_fw_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_fw_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.rtl92se_disable_interrupt.exit_crit_edge, label %if.end.i

lor.lhs.false.i.rtl92se_disable_interrupt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_disable_interrupt.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 7
  %10 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %11(ptr noundef nonnull %7, i32 noundef 768, i32 noundef 0) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %if.end.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

if.end.i.rtl_write_dword.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %17(ptr noundef nonnull %7, i32 noundef 768) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %if.end.i.rtl_write_dword.exit.i_crit_edge
  %18 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %19(ptr noundef nonnull %7, i32 noundef 772, i32 noundef 0) #7
  %20 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i11.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i12.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i12.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit16.i_crit_edge, label %if.then.i15.i

rtl_write_dword.exit.i.rtl_write_dword.exit16.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit16.i

if.then.i15.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i13.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i13.i, align 4
  %call.i14.i = tail call i32 %25(ptr noundef nonnull %7, i32 noundef 772) #7
  br label %rtl_write_dword.exit16.i

rtl_write_dword.exit16.i:                         ; preds = %if.then.i15.i, %rtl_write_dword.exit.i.rtl_write_dword.exit16.i_crit_edge
  %irq_enabled.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %irq_enabled.i, align 4
  br label %rtl92se_disable_interrupt.exit

rtl92se_disable_interrupt.exit:                   ; preds = %rtl_write_dword.exit16.i, %lor.lhs.false.i.rtl92se_disable_interrupt.exit_crit_edge, %if.end7.rtl92se_disable_interrupt.exit_crit_edge
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %irq_mask.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %29 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_mask.i, align 4
  %write32_async.i.i17 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 7
  %31 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %32(ptr noundef %28, i32 noundef 768, i32 noundef %30) #7
  %cfg.i.i18 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %33 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i.i19 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i.i19, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i20 = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i20, label %rtl92se_disable_interrupt.exit.rtl_write_dword.exit.i26_crit_edge, label %if.then.i.i23

rtl92se_disable_interrupt.exit.rtl_write_dword.exit.i26_crit_edge: ; preds = %rtl92se_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i26

if.then.i.i23:                                    ; preds = %rtl92se_disable_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i21 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 11
  %37 = ptrtoint ptr %read32_sync.i.i21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32_sync.i.i21, align 4
  %call.i.i22 = tail call i32 %38(ptr noundef %28, i32 noundef 768) #7
  br label %rtl_write_dword.exit.i26

rtl_write_dword.exit.i26:                         ; preds = %if.then.i.i23, %rtl92se_disable_interrupt.exit.rtl_write_dword.exit.i26_crit_edge
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %28, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i, align 4
  %and.i = and i32 %40, 63
  %41 = ptrtoint ptr %write32_async.i.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write32_async.i.i17, align 4
  tail call void %42(ptr noundef %28, i32 noundef 772, i32 noundef %and.i) #7
  %43 = ptrtoint ptr %cfg.i.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i.i18, align 8
  %write_readback.i11.i24 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i11.i24 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i11.i24, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i12.i25 = icmp eq i8 %46, 0
  br i1 %tobool.not.i12.i25, label %rtl_write_dword.exit.i26.rtl92se_enable_interrupt.exit_crit_edge, label %if.then.i15.i29

rtl_write_dword.exit.i26.rtl92se_enable_interrupt.exit_crit_edge: ; preds = %rtl_write_dword.exit.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_enable_interrupt.exit

if.then.i15.i29:                                  ; preds = %rtl_write_dword.exit.i26
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i13.i27 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 11
  %47 = ptrtoint ptr %read32_sync.i13.i27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read32_sync.i13.i27, align 4
  %call.i14.i28 = tail call i32 %48(ptr noundef %28, i32 noundef 772) #7
  br label %rtl92se_enable_interrupt.exit

rtl92se_enable_interrupt.exit:                    ; preds = %if.then.i15.i29, %rtl_write_dword.exit.i26.rtl92se_enable_interrupt.exit_crit_edge
  %irq_enabled.i30 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1, i32 1
  %49 = ptrtoint ptr %irq_enabled.i30 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %irq_enabled.i30, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_read_eeprom_info(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %hwinfo.i = alloca [128 x i8], align 2
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 10) #7
  %conv = zext i8 %call.i to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.25..str.24 = select i1 %tobool.not, ptr @.str.25, ptr @.str.24
  %4 = lshr exact i32 %and, 3
  %5 = trunc i32 %4 to i16
  %6 = xor i16 %5, 2
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 3, ptr noundef nonnull %.str.25..str.24) #7
  %7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %6, ptr %7, align 2
  %and4 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end, label %if.then6

if.then6:                                         ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.26) #7
  %autoload_failflag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %9 = ptrtoint ptr %autoload_failflag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %autoload_failflag, align 1
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %dev4.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %12 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %hwinfo.i) #7
  %epromtype.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 9
  %14 = ptrtoint ptr %epromtype.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %epromtype.i, align 2
  %conv.i = sext i16 %15 to i32
  %16 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %conv.i, label %do.end9.i [
    i32 2, label %sw.bb.i
    i32 0, label %do.end.i
  ]

sw.bb.i:                                          ; preds = %if.then6
  tail call void @rtl_efuse_shadow_map_update(ptr noundef %hw) #7
  %efuse_map.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 4
  %17 = call ptr @memcpy(ptr %hwinfo.i, ptr %efuse_map.i, i32 128)
  call void @_rtl_dbg_print_data(ptr noundef %11, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.62, ptr noundef nonnull %hwinfo.i, i32 noundef 128) #7
  %18 = ptrtoint ptr %hwinfo.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hwinfo.i, align 2
  %conv14.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32471, i16 %19)
  %cmp.not.i = icmp eq i16 %19, -32471
  br i1 %cmp.not.i, label %if.end20.i, label %if.end.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #10
  br label %_rtl92se_read_adapter_info.exit

do.end9.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev5.i, ptr noundef nonnull @.str.58) #10
  br label %_rtl92se_read_adapter_info.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.63, i32 noundef %conv14.i) #7
  %20 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %20, align 1
  br label %_rtl92se_read_adapter_info.exit

if.end20.i:                                       ; preds = %sw.bb.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.26) #7
  %22 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %22, align 1
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %ic_class.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 10, i32 11
  %26 = ptrtoint ptr %ic_class.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ic_class.i.i, align 2
  %epromtype.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 17, i32 9
  %27 = ptrtoint ptr %epromtype.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %epromtype.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %28)
  %cmp.i.i = icmp eq i16 %28, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end20.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge

if.end20.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8192se_get_ic_inferiority.exit.i

land.lhs.true.i.i:                                ; preds = %if.end20.i
  %autoload_failflag.i.i = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 17, i32 7
  %29 = ptrtoint ptr %autoload_failflag.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %autoload_failflag.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge

land.lhs.true.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8192se_get_ic_inferiority.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %call.i.i = call zeroext i8 @efuse_read_1byte(ptr noundef %hw, i16 noundef zeroext 506) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call.i.i)
  %cmp5.i.i = icmp eq i8 %call.i.i, -2
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.then.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge

if.then.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8192se_get_ic_inferiority.exit.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ic_class.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %ic_class.i.i, align 2
  br label %_rtl8192se_get_ic_inferiority.exit.i

_rtl8192se_get_ic_inferiority.exit.i:             ; preds = %if.then7.i.i, %if.then.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge, %land.lhs.true.i.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge, %if.end20.i._rtl8192se_get_ic_inferiority.exit.i_crit_edge
  %arrayidx21.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 10
  %32 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx21.i, align 2
  %eeprom_vid.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 10
  %34 = ptrtoint ptr %eeprom_vid.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %eeprom_vid.i, align 4
  %arrayidx22.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx22.i, align 2
  %eeprom_did.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 11
  %37 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %eeprom_did.i, align 2
  %arrayidx23.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 14
  %38 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx23.i, align 2
  %eeprom_svid.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 12
  %40 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %eeprom_svid.i, align 4
  %arrayidx24.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 16
  %41 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx24.i, align 2
  %eeprom_smid.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 13
  %43 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %eeprom_smid.i, align 2
  %arrayidx25.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 124
  %44 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx25.i, align 2
  %conv26.i = trunc i16 %45 to i8
  %eeprom_version.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 16
  %46 = ptrtoint ptr %eeprom_version.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv26.i, ptr %eeprom_version.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef %conv14.i) #7
  %47 = ptrtoint ptr %eeprom_vid.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %eeprom_vid.i, align 4
  %conv29.i = zext i16 %48 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.65, i32 noundef %conv29.i) #7
  %49 = ptrtoint ptr %eeprom_did.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %eeprom_did.i, align 2
  %conv31.i = zext i16 %50 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef %conv31.i) #7
  %51 = ptrtoint ptr %eeprom_svid.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %eeprom_svid.i, align 4
  %conv33.i = zext i16 %52 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.67, i32 noundef %conv33.i) #7
  %53 = ptrtoint ptr %eeprom_smid.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %eeprom_smid.i, align 2
  %conv35.i = zext i16 %54 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.68, i32 noundef %conv35.i) #7
  %arrayidx40.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 18
  %55 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx40.i, align 2
  %arrayidx41.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 0
  %57 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %arrayidx41.i, align 1
  %arrayidx40.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 20
  %58 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx40.1.i, align 2
  %arrayidx41.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 2
  %60 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 2)
  store i16 %59, ptr %arrayidx41.1.i, align 1
  %arrayidx40.2.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 22
  %61 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx40.2.i, align 2
  %arrayidx41.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 4
  %63 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 2)
  store i16 %62, ptr %arrayidx41.2.i, align 1
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 9
  %64 = lshr i16 %56, 8
  %65 = trunc i16 %64 to i8
  %66 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i.i, align 4
  call void %67(ptr noundef %11, i32 noundef 80, i8 noundef zeroext %65) #7
  %68 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i884.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i884.i, label %_rtl8192se_get_ic_inferiority.exit.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i886.i

_rtl8192se_get_ic_inferiority.exit.i.rtl_write_byte.exit.i_crit_edge: ; preds = %_rtl8192se_get_ic_inferiority.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i886.i:                                   ; preds = %_rtl8192se_get_ic_inferiority.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.i = call zeroext i8 %73(ptr noundef %11, i32 noundef 80) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i886.i, %_rtl8192se_get_ic_inferiority.exit.i.rtl_write_byte.exit.i_crit_edge
  %arrayidx54.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 1
  %74 = ptrtoint ptr %arrayidx54.1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx54.1.i, align 1
  %76 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8_async.i.i, align 4
  call void %77(ptr noundef %11, i32 noundef 81, i8 noundef zeroext %75) #7
  %78 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i.1.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i884.1.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i884.1.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i886.1.i

rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.1.i

if.then.i886.1.i:                                 ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.1.i = call zeroext i8 %83(ptr noundef %11, i32 noundef 81) #7
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i886.1.i, %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge
  %84 = ptrtoint ptr %arrayidx41.1.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx41.1.i, align 1
  %86 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i.i, align 4
  call void %87(ptr noundef %11, i32 noundef 82, i8 noundef zeroext %85) #7
  %88 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i.2.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i884.2.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i884.2.i, label %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge, label %if.then.i886.2.i

rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.2.i

if.then.i886.2.i:                                 ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.2.i = call zeroext i8 %93(ptr noundef %11, i32 noundef 82) #7
  br label %rtl_write_byte.exit.2.i

rtl_write_byte.exit.2.i:                          ; preds = %if.then.i886.2.i, %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge
  %arrayidx54.3.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 3
  %94 = ptrtoint ptr %arrayidx54.3.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx54.3.i, align 1
  %96 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write8_async.i.i, align 4
  call void %97(ptr noundef %11, i32 noundef 83, i8 noundef zeroext %95) #7
  %98 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i.3.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i.3.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i884.3.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i884.3.i, label %rtl_write_byte.exit.2.i.rtl_write_byte.exit.3.i_crit_edge, label %if.then.i886.3.i

rtl_write_byte.exit.2.i.rtl_write_byte.exit.3.i_crit_edge: ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.3.i

if.then.i886.3.i:                                 ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.3.i = call zeroext i8 %103(ptr noundef %11, i32 noundef 83) #7
  br label %rtl_write_byte.exit.3.i

rtl_write_byte.exit.3.i:                          ; preds = %if.then.i886.3.i, %rtl_write_byte.exit.2.i.rtl_write_byte.exit.3.i_crit_edge
  %104 = ptrtoint ptr %arrayidx41.2.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx41.2.i, align 1
  %106 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i.i, align 4
  call void %107(ptr noundef %11, i32 noundef 84, i8 noundef zeroext %105) #7
  %108 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.4.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i.4.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i.4.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i884.4.i = icmp eq i8 %111, 0
  br i1 %tobool.not.i884.4.i, label %rtl_write_byte.exit.3.i.rtl_write_byte.exit.4.i_crit_edge, label %if.then.i886.4.i

rtl_write_byte.exit.3.i.rtl_write_byte.exit.4.i_crit_edge: ; preds = %rtl_write_byte.exit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.4.i

if.then.i886.4.i:                                 ; preds = %rtl_write_byte.exit.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.4.i = call zeroext i8 %113(ptr noundef %11, i32 noundef 84) #7
  br label %rtl_write_byte.exit.4.i

rtl_write_byte.exit.4.i:                          ; preds = %if.then.i886.4.i, %rtl_write_byte.exit.3.i.rtl_write_byte.exit.4.i_crit_edge
  %arrayidx54.5.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 19, i32 5
  %114 = ptrtoint ptr %arrayidx54.5.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx54.5.i, align 1
  %116 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write8_async.i.i, align 4
  call void %117(ptr noundef %11, i32 noundef 85, i8 noundef zeroext %115) #7
  %118 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %write_readback.i.5.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %write_readback.i.5.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not.i884.5.i = icmp eq i8 %121, 0
  br i1 %tobool.not.i884.5.i, label %rtl_write_byte.exit.4.i.rtl_write_byte.exit.5.i_crit_edge, label %if.then.i886.5.i

rtl_write_byte.exit.4.i.rtl_write_byte.exit.5.i_crit_edge: ; preds = %rtl_write_byte.exit.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.5.i

if.then.i886.5.i:                                 ; preds = %rtl_write_byte.exit.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %122 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i885.5.i = call zeroext i8 %123(ptr noundef %11, i32 noundef 85) #7
  br label %rtl_write_byte.exit.5.i

rtl_write_byte.exit.5.i:                          ; preds = %if.then.i886.5.i, %rtl_write_byte.exit.4.i.rtl_write_byte.exit.5.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 3, ptr noundef nonnull @.str.69, ptr noundef %arrayidx41.i) #7
  %arrayidx73.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 80
  %124 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx73.i, align 2
  %arrayidx77.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 0, i32 0
  %126 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx77.i, align 1
  %arrayidx83.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 86
  %127 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx83.i, align 2
  %arrayidx87.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 0, i32 0
  %129 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx87.i, align 1
  %arrayidx93.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 92
  %130 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx93.i, align 2
  %arrayidx97.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 0, i32 0
  %132 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx97.i, align 1
  %arrayidx73.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 81
  %133 = ptrtoint ptr %arrayidx73.1.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx73.1.i, align 1
  %arrayidx77.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx77.1.i, align 1
  %arrayidx83.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 87
  %136 = ptrtoint ptr %arrayidx83.1.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx83.1.i, align 1
  %arrayidx87.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx87.1.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx87.1.i, align 1
  %arrayidx93.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 93
  %139 = ptrtoint ptr %arrayidx93.1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx93.1.i, align 1
  %arrayidx97.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 0, i32 1
  %141 = ptrtoint ptr %arrayidx97.1.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx97.1.i, align 1
  %arrayidx73.2.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 82
  %142 = ptrtoint ptr %arrayidx73.2.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx73.2.i, align 2
  %arrayidx77.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 0, i32 2
  %144 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx77.2.i, align 1
  %arrayidx83.2.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 88
  %145 = ptrtoint ptr %arrayidx83.2.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx83.2.i, align 2
  %arrayidx87.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 0, i32 2
  %147 = ptrtoint ptr %arrayidx87.2.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx87.2.i, align 1
  %arrayidx93.2.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 94
  %148 = ptrtoint ptr %arrayidx93.2.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx93.2.i, align 2
  %arrayidx97.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 0, i32 2
  %150 = ptrtoint ptr %arrayidx97.2.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx97.2.i, align 1
  %arrayidx73.1919.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 83
  %151 = ptrtoint ptr %arrayidx73.1919.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx73.1919.i, align 1
  %arrayidx77.1920.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 1, i32 0
  %153 = ptrtoint ptr %arrayidx77.1920.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %arrayidx77.1920.i, align 1
  %arrayidx83.1922.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 89
  %154 = ptrtoint ptr %arrayidx83.1922.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx83.1922.i, align 1
  %arrayidx87.1923.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 1, i32 0
  %156 = ptrtoint ptr %arrayidx87.1923.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %arrayidx87.1923.i, align 1
  %arrayidx93.1925.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 95
  %157 = ptrtoint ptr %arrayidx93.1925.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx93.1925.i, align 1
  %arrayidx97.1926.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 1, i32 0
  %159 = ptrtoint ptr %arrayidx97.1926.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %158, ptr %arrayidx97.1926.i, align 1
  %arrayidx73.1.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 84
  %160 = ptrtoint ptr %arrayidx73.1.1.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx73.1.1.i, align 2
  %arrayidx77.1.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 1, i32 1
  %162 = ptrtoint ptr %arrayidx77.1.1.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %161, ptr %arrayidx77.1.1.i, align 1
  %arrayidx83.1.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 90
  %163 = ptrtoint ptr %arrayidx83.1.1.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %arrayidx83.1.1.i, align 2
  %arrayidx87.1.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx87.1.1.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %arrayidx87.1.1.i, align 1
  %arrayidx93.1.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 96
  %166 = ptrtoint ptr %arrayidx93.1.1.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx93.1.1.i, align 2
  %arrayidx97.1.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 1, i32 1
  %168 = ptrtoint ptr %arrayidx97.1.1.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %arrayidx97.1.1.i, align 1
  %arrayidx73.2.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 85
  %169 = ptrtoint ptr %arrayidx73.2.1.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx73.2.1.i, align 1
  %arrayidx77.2.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 1, i32 2
  %171 = ptrtoint ptr %arrayidx77.2.1.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %170, ptr %arrayidx77.2.1.i, align 1
  %arrayidx83.2.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 91
  %172 = ptrtoint ptr %arrayidx83.2.1.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx83.2.1.i, align 1
  %arrayidx87.2.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 1, i32 2
  %174 = ptrtoint ptr %arrayidx87.2.1.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %173, ptr %arrayidx87.2.1.i, align 1
  %arrayidx93.2.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 97
  %175 = ptrtoint ptr %arrayidx93.2.1.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx93.2.1.i, align 1
  %arrayidx97.2.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 1, i32 2
  %177 = ptrtoint ptr %arrayidx97.2.1.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %arrayidx97.2.1.i, align 1
  %conv121.i = zext i8 %125 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 0, i32 noundef %conv121.i) #7
  %178 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx77.1.i, align 1
  %conv121.1.i = zext i8 %179 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 1, i32 noundef %conv121.1.i) #7
  %180 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx77.2.i, align 1
  %conv121.2.i = zext i8 %181 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 2, i32 noundef %conv121.2.i) #7
  %182 = ptrtoint ptr %arrayidx77.1920.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx77.1920.i, align 1
  %conv121.1928.i = zext i8 %183 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef 0, i32 noundef %conv121.1928.i) #7
  %184 = ptrtoint ptr %arrayidx77.1.1.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx77.1.1.i, align 1
  %conv121.1.1.i = zext i8 %185 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef 1, i32 noundef %conv121.1.1.i) #7
  %186 = ptrtoint ptr %arrayidx77.2.1.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %arrayidx77.2.1.i, align 1
  %conv121.2.1.i = zext i8 %187 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.70, i32 noundef 1, i32 noundef 2, i32 noundef %conv121.2.1.i) #7
  %188 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx87.i, align 1
  %conv145.i = zext i8 %189 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 0, i32 noundef %conv145.i) #7
  %190 = ptrtoint ptr %arrayidx87.1.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx87.1.i, align 1
  %conv145.1.i = zext i8 %191 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 1, i32 noundef %conv145.1.i) #7
  %192 = ptrtoint ptr %arrayidx87.2.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %arrayidx87.2.i, align 1
  %conv145.2.i = zext i8 %193 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 0, i32 noundef 2, i32 noundef %conv145.2.i) #7
  %194 = ptrtoint ptr %arrayidx87.1923.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx87.1923.i, align 1
  %conv145.1930.i = zext i8 %195 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef 0, i32 noundef %conv145.1930.i) #7
  %196 = ptrtoint ptr %arrayidx87.1.1.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx87.1.1.i, align 1
  %conv145.1.1.i = zext i8 %197 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef 1, i32 noundef %conv145.1.1.i) #7
  %198 = ptrtoint ptr %arrayidx87.2.1.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx87.2.1.i, align 1
  %conv145.2.1.i = zext i8 %199 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef 1, i32 noundef 2, i32 noundef %conv145.2.1.i) #7
  %200 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx97.i, align 1
  %conv169.i = zext i8 %201 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 0, i32 noundef %conv169.i) #7
  %202 = ptrtoint ptr %arrayidx97.1.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx97.1.i, align 1
  %conv169.1.i = zext i8 %203 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 1, i32 noundef %conv169.1.i) #7
  %204 = ptrtoint ptr %arrayidx97.2.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx97.2.i, align 1
  %conv169.2.i = zext i8 %205 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 0, i32 noundef 2, i32 noundef %conv169.2.i) #7
  %206 = ptrtoint ptr %arrayidx97.1926.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx97.1926.i, align 1
  %conv169.1932.i = zext i8 %207 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 0, i32 noundef %conv169.1932.i) #7
  %208 = ptrtoint ptr %arrayidx97.1.1.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx97.1.1.i, align 1
  %conv169.1.1.i = zext i8 %209 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 1, i32 noundef %conv169.1.1.i) #7
  %210 = ptrtoint ptr %arrayidx97.2.1.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx97.2.1.i, align 1
  %conv169.2.1.i = zext i8 %211 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 1, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef 2, i32 noundef %conv169.2.1.i) #7
  br label %for.body185.i

for.body185.i:                                    ; preds = %for.body185.i.for.body185.i_crit_edge, %rtl_write_byte.exit.5.i
  %indvars.iv.i = phi i32 [ 0, %rtl_write_byte.exit.5.i ], [ %indvars.iv.next.i, %for.body185.i.for.body185.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.i)
  %cmp187.i = icmp ult i32 %indvars.iv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv.i)
  %cmp192.i = icmp ult i32 %indvars.iv.i, 8
  %..i = select i1 %cmp192.i, i32 1, i32 2
  %index.0.i = select i1 %cmp187.i, i32 0, i32 %..i
  %arrayidx202.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 0, i32 %index.0.i
  %212 = ptrtoint ptr %arrayidx202.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx202.i, align 1
  %arrayidx206.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv.i
  %214 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %213, ptr %arrayidx206.i, align 1
  %arrayidx211.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 0, i32 %index.0.i
  %215 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx211.i, align 1
  %arrayidx215.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv.i
  %217 = ptrtoint ptr %arrayidx215.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %216, ptr %arrayidx215.i, align 1
  %arrayidx220.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 0, i32 %index.0.i
  %218 = ptrtoint ptr %arrayidx220.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %arrayidx220.i, align 1
  %arrayidx224.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv.i
  %220 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %arrayidx224.i, align 1
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 14
  br i1 %exitcond.not.i, label %for.body185.i.for.body232.i_crit_edge, label %for.body185.i.for.body185.i_crit_edge

for.body185.i.for.body185.i_crit_edge:            ; preds = %for.body185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body185.i

for.body185.i.for.body232.i_crit_edge:            ; preds = %for.body185.i
  br label %for.body232.i

for.body232.i:                                    ; preds = %for.body232.i.for.body232.i_crit_edge, %for.body185.i.for.body232.i_crit_edge
  %indvars.iv933.i = phi i32 [ %indvars.iv.next934.i, %for.body232.i.for.body232.i_crit_edge ], [ 0, %for.body185.i.for.body232.i_crit_edge ]
  %arrayidx239.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 38, i32 0, i32 %indvars.iv933.i
  %221 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx239.i, align 1
  %conv240.i = zext i8 %222 to i32
  %arrayidx245.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 39, i32 0, i32 %indvars.iv933.i
  %223 = ptrtoint ptr %arrayidx245.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx245.i, align 1
  %conv246.i = zext i8 %224 to i32
  %arrayidx251.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 40, i32 0, i32 %indvars.iv933.i
  %225 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx251.i, align 1
  %conv252.i = zext i8 %226 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef 0, i32 noundef %indvars.iv933.i, i32 noundef %conv240.i, i32 noundef %conv246.i, i32 noundef %conv252.i) #7
  %indvars.iv.next934.i = add nuw nsw i32 %indvars.iv933.i, 1
  %exitcond935.not.i = icmp eq i32 %indvars.iv.next934.i, 14
  br i1 %exitcond935.not.i, label %for.body232.i.for.body185.1.i_crit_edge, label %for.body232.i.for.body232.i_crit_edge

for.body232.i.for.body232.i_crit_edge:            ; preds = %for.body232.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body232.i

for.body232.i.for.body185.1.i_crit_edge:          ; preds = %for.body232.i
  br label %for.body185.1.i

for.body185.1.i:                                  ; preds = %for.body185.1.i.for.body185.1.i_crit_edge, %for.body232.i.for.body185.1.i_crit_edge
  %indvars.iv.1.i = phi i32 [ %indvars.iv.next.1.i, %for.body185.1.i.for.body185.1.i_crit_edge ], [ 0, %for.body232.i.for.body185.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv.1.i)
  %cmp187.1.i = icmp ult i32 %indvars.iv.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv.1.i)
  %cmp192.1.i = icmp ult i32 %indvars.iv.1.i, 8
  %..1.i = select i1 %cmp192.1.i, i32 1, i32 2
  %index.0.1.i = select i1 %cmp187.1.i, i32 0, i32 %..1.i
  %arrayidx202.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 29, i32 1, i32 %index.0.1.i
  %227 = ptrtoint ptr %arrayidx202.1.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx202.1.i, align 1
  %arrayidx206.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv.1.i
  %229 = ptrtoint ptr %arrayidx206.1.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %arrayidx206.1.i, align 1
  %arrayidx211.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 30, i32 1, i32 %index.0.1.i
  %230 = ptrtoint ptr %arrayidx211.1.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx211.1.i, align 1
  %arrayidx215.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv.1.i
  %232 = ptrtoint ptr %arrayidx215.1.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %231, ptr %arrayidx215.1.i, align 1
  %arrayidx220.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 31, i32 1, i32 %index.0.1.i
  %233 = ptrtoint ptr %arrayidx220.1.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %arrayidx220.1.i, align 1
  %arrayidx224.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv.1.i
  %235 = ptrtoint ptr %arrayidx224.1.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %arrayidx224.1.i, align 1
  %indvars.iv.next.1.i = add nuw nsw i32 %indvars.iv.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %indvars.iv.next.1.i, 14
  br i1 %exitcond.1.not.i, label %for.body185.1.i.for.body232.1.i_crit_edge, label %for.body185.1.i.for.body185.1.i_crit_edge

for.body185.1.i.for.body185.1.i_crit_edge:        ; preds = %for.body185.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body185.1.i

for.body185.1.i.for.body232.1.i_crit_edge:        ; preds = %for.body185.1.i
  br label %for.body232.1.i

for.body232.1.i:                                  ; preds = %for.body232.1.i.for.body232.1.i_crit_edge, %for.body185.1.i.for.body232.1.i_crit_edge
  %indvars.iv933.1.i = phi i32 [ %indvars.iv.next934.1.i, %for.body232.1.i.for.body232.1.i_crit_edge ], [ 0, %for.body185.1.i.for.body232.1.i_crit_edge ]
  %arrayidx239.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 38, i32 1, i32 %indvars.iv933.1.i
  %236 = ptrtoint ptr %arrayidx239.1.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %arrayidx239.1.i, align 1
  %conv240.1.i = zext i8 %237 to i32
  %arrayidx245.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 39, i32 1, i32 %indvars.iv933.1.i
  %238 = ptrtoint ptr %arrayidx245.1.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx245.1.i, align 1
  %conv246.1.i = zext i8 %239 to i32
  %arrayidx251.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 40, i32 1, i32 %indvars.iv933.1.i
  %240 = ptrtoint ptr %arrayidx251.1.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx251.1.i, align 1
  %conv252.1.i = zext i8 %241 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef 1, i32 noundef %indvars.iv933.1.i, i32 noundef %conv240.1.i, i32 noundef %conv246.1.i, i32 noundef %conv252.1.i) #7
  %indvars.iv.next934.1.i = add nuw nsw i32 %indvars.iv933.1.i, 1
  %exitcond935.1.not.i = icmp eq i32 %indvars.iv.next934.1.i, 14
  br i1 %exitcond935.1.not.i, label %for.inc256.1.i, label %for.body232.1.i.for.body232.1.i_crit_edge

for.body232.1.i.for.body232.1.i_crit_edge:        ; preds = %for.body232.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body232.1.i

for.inc256.1.i:                                   ; preds = %for.body232.1.i
  %arrayidx274.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 103
  %242 = ptrtoint ptr %arrayidx274.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx274.i, align 1
  %arrayidx278.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 0, i32 0
  %244 = ptrtoint ptr %arrayidx278.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %arrayidx278.i, align 1
  %arrayidx274.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 104
  %245 = ptrtoint ptr %arrayidx274.1.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx274.1.i, align 2
  %arrayidx278.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 0, i32 1
  %247 = ptrtoint ptr %arrayidx278.1.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %246, ptr %arrayidx278.1.i, align 1
  %arrayidx274.2.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 105
  %248 = ptrtoint ptr %arrayidx274.2.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx274.2.i, align 1
  %arrayidx278.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 0, i32 2
  %250 = ptrtoint ptr %arrayidx278.2.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %arrayidx278.2.i, align 1
  %arrayidx274.1946.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 106
  %251 = ptrtoint ptr %arrayidx274.1946.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %arrayidx274.1946.i, align 2
  %arrayidx278.1947.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 1, i32 0
  %253 = ptrtoint ptr %arrayidx278.1947.i to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 %252, ptr %arrayidx278.1947.i, align 1
  %arrayidx274.1.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 107
  %254 = ptrtoint ptr %arrayidx274.1.1.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx274.1.1.i, align 1
  %arrayidx278.1.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 1, i32 1
  %256 = ptrtoint ptr %arrayidx278.1.1.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %255, ptr %arrayidx278.1.1.i, align 1
  %arrayidx274.2.1.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 108
  %257 = ptrtoint ptr %arrayidx274.2.1.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx274.2.1.i, align 2
  %arrayidx278.2.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 1, i32 2
  %259 = ptrtoint ptr %arrayidx278.2.1.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %arrayidx278.2.1.i, align 1
  br label %for.body294.i

for.body294.i:                                    ; preds = %for.body294.i.for.body294.i_crit_edge, %for.inc256.1.i
  %indvars.iv948.i = phi i32 [ 0, %for.inc256.1.i ], [ %indvars.iv.next949.i, %for.body294.i.for.body294.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv948.i)
  %cmp296.i = icmp ult i32 %indvars.iv948.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv948.i)
  %cmp301.i = icmp ult i32 %indvars.iv948.i, 8
  %.881.i = select i1 %cmp301.i, i32 1, i32 2
  %index.1.i = select i1 %cmp296.i, i32 0, i32 %.881.i
  %arrayidx311.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 0, i32 %index.1.i
  %260 = ptrtoint ptr %arrayidx311.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %arrayidx311.i, align 1
  %262 = and i8 %261, 15
  %arrayidx317.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 36, i32 0, i32 %indvars.iv948.i
  %263 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %arrayidx317.i, align 1
  %264 = lshr i8 %261, 4
  %arrayidx329.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 37, i32 0, i32 %indvars.iv948.i
  %265 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %264, ptr %arrayidx329.i, align 1
  %conv337.i = zext i8 %262 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef 0, i32 noundef %indvars.iv948.i, i32 noundef %conv337.i) #7
  %266 = ptrtoint ptr %arrayidx329.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx329.i, align 1
  %conv345.i = zext i8 %267 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef %indvars.iv948.i, i32 noundef %conv345.i) #7
  %indvars.iv.next949.i = add nuw nsw i32 %indvars.iv948.i, 1
  %exitcond950.not.i = icmp eq i32 %indvars.iv.next949.i, 14
  br i1 %exitcond950.not.i, label %for.body294.i.for.body294.1.i_crit_edge, label %for.body294.i.for.body294.i_crit_edge

for.body294.i.for.body294.i_crit_edge:            ; preds = %for.body294.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body294.i

for.body294.i.for.body294.1.i_crit_edge:          ; preds = %for.body294.i
  br label %for.body294.1.i

for.body294.1.i:                                  ; preds = %for.body294.1.i.for.body294.1.i_crit_edge, %for.body294.i.for.body294.1.i_crit_edge
  %indvars.iv948.1.i = phi i32 [ %indvars.iv.next949.1.i, %for.body294.1.i.for.body294.1.i_crit_edge ], [ 0, %for.body294.i.for.body294.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv948.1.i)
  %cmp296.1.i = icmp ult i32 %indvars.iv948.1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv948.1.i)
  %cmp301.1.i = icmp ult i32 %indvars.iv948.1.i, 8
  %.881.1.i = select i1 %cmp301.1.i, i32 1, i32 2
  %index.1.1.i = select i1 %cmp296.1.i, i32 0, i32 %.881.1.i
  %arrayidx311.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 35, i32 1, i32 %index.1.1.i
  %268 = ptrtoint ptr %arrayidx311.1.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx311.1.i, align 1
  %270 = and i8 %269, 15
  %arrayidx317.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 36, i32 1, i32 %indvars.iv948.1.i
  %271 = ptrtoint ptr %arrayidx317.1.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %270, ptr %arrayidx317.1.i, align 1
  %272 = lshr i8 %269, 4
  %arrayidx329.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 37, i32 1, i32 %indvars.iv948.1.i
  %273 = ptrtoint ptr %arrayidx329.1.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %272, ptr %arrayidx329.1.i, align 1
  %conv337.1.i = zext i8 %270 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef 1, i32 noundef %indvars.iv948.1.i, i32 noundef %conv337.1.i) #7
  %274 = ptrtoint ptr %arrayidx329.1.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %arrayidx329.1.i, align 1
  %conv345.1.i = zext i8 %275 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 1, i32 noundef %indvars.iv948.1.i, i32 noundef %conv345.1.i) #7
  %indvars.iv.next949.1.i = add nuw nsw i32 %indvars.iv948.1.i, 1
  %exitcond950.1.not.i = icmp eq i32 %indvars.iv.next949.1.i, 14
  br i1 %exitcond950.1.not.i, label %for.inc349.1.i, label %for.body294.1.i.for.body294.1.i_crit_edge

for.body294.1.i.for.body294.1.i_crit_edge:        ; preds = %for.body294.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body294.1.i

for.inc349.1.i:                                   ; preds = %for.body294.1.i
  %txpwr_ht20diff.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42
  %txpwr_legacyhtdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44
  %arrayidx421.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 109
  %txpwr_safetyflag.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 51
  br label %for.body356.i

for.body356.i:                                    ; preds = %for.body356.i.for.body356.i_crit_edge, %for.inc349.1.i
  %indvars.iv954.i = phi i32 [ 0, %for.inc349.1.i ], [ %indvars.iv.next955.i, %for.body356.i.for.body356.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv954.i)
  %cmp358.i = icmp ult i32 %indvars.iv954.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv954.i)
  %cmp363.i = icmp ult i32 %indvars.iv954.i, 8
  %.882.i = select i1 %cmp363.i, i32 99, i32 100
  %index.2.i = select i1 %cmp358.i, i32 98, i32 %.882.i
  %arrayidx371.i = getelementptr [128 x i8], ptr %hwinfo.i, i32 0, i32 %index.2.i
  %276 = ptrtoint ptr %arrayidx371.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %arrayidx371.i, align 1
  %and376.i = and i8 %277, 15
  %arrayidx380.i = getelementptr [59 x i8], ptr %txpwr_ht20diff.i, i32 0, i32 %indvars.iv954.i
  %278 = ptrtoint ptr %arrayidx380.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %and376.i, ptr %arrayidx380.i, align 1
  %279 = lshr i8 %277, 4
  %arrayidx388.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 %indvars.iv954.i
  %280 = ptrtoint ptr %arrayidx388.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %arrayidx388.i, align 1
  %.883.i = select i1 %cmp363.i, i32 118, i32 102
  %index.3.i = select i1 %cmp358.i, i32 101, i32 %.883.i
  %arrayidx403.i = getelementptr [128 x i8], ptr %hwinfo.i, i32 0, i32 %index.3.i
  %281 = ptrtoint ptr %arrayidx403.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %arrayidx403.i, align 1
  %and408.i = and i8 %282, 15
  %arrayidx412.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i, i32 0, i32 %indvars.iv954.i
  %283 = ptrtoint ptr %arrayidx412.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %and408.i, ptr %arrayidx412.i, align 1
  %284 = lshr i8 %282, 4
  %arrayidx420.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 %indvars.iv954.i
  %285 = ptrtoint ptr %arrayidx420.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %arrayidx420.i, align 1
  %286 = ptrtoint ptr %arrayidx421.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx421.i, align 1
  %288 = and i8 %287, 1
  %289 = ptrtoint ptr %txpwr_safetyflag.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %288, ptr %txpwr_safetyflag.i, align 4
  %indvars.iv.next955.i = add nuw nsw i32 %indvars.iv954.i, 1
  %exitcond956.not.i = icmp eq i32 %indvars.iv.next955.i, 14
  br i1 %exitcond956.not.i, label %for.end427.i, label %for.body356.i.for.body356.i_crit_edge

for.body356.i.for.body356.i_crit_edge:            ; preds = %for.body356.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body356.i

for.end427.i:                                     ; preds = %for.body356.i
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 54
  %290 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %eeprom_regulatory.i, align 1
  %291 = ptrtoint ptr %eeprom_version.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %eeprom_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %292)
  %cmp430.i = icmp ugt i8 %292, 1
  br i1 %cmp430.i, label %if.then432.i, label %for.end427.i.if.end450.i_crit_edge

for.end427.i.if.end450.i_crit_edge:               ; preds = %for.end427.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end450.i

if.then432.i:                                     ; preds = %for.end427.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %292)
  %cmp435.i = icmp ugt i8 %292, 3
  %.971.i = select i1 %cmp435.i, i8 7, i8 1
  %293 = and i8 %.971.i, %287
  %294 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %293, ptr %eeprom_regulatory.i, align 1
  br label %if.end450.i

if.end450.i:                                      ; preds = %if.then432.i, %for.end427.i.if.end450.i_crit_edge
  %295 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %eeprom_regulatory.i, align 1
  %conv452.i = zext i8 %296 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef %conv452.i) #7
  %297 = ptrtoint ptr %txpwr_ht20diff.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %txpwr_ht20diff.i, align 1
  %conv463.i = sext i8 %298 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef %conv463.i) #7
  %arrayidx462.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 1
  %299 = ptrtoint ptr %arrayidx462.1.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %arrayidx462.1.i, align 1
  %conv463.1.i = sext i8 %300 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 1, i32 noundef %conv463.1.i) #7
  %arrayidx462.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 2
  %301 = ptrtoint ptr %arrayidx462.2.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx462.2.i, align 1
  %conv463.2.i = sext i8 %302 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 2, i32 noundef %conv463.2.i) #7
  %arrayidx462.3.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 3
  %303 = ptrtoint ptr %arrayidx462.3.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx462.3.i, align 1
  %conv463.3.i = sext i8 %304 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 3, i32 noundef %conv463.3.i) #7
  %arrayidx462.4.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 4
  %305 = ptrtoint ptr %arrayidx462.4.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %arrayidx462.4.i, align 1
  %conv463.4.i = sext i8 %306 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef %conv463.4.i) #7
  %arrayidx462.5.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 5
  %307 = ptrtoint ptr %arrayidx462.5.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx462.5.i, align 1
  %conv463.5.i = sext i8 %308 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 5, i32 noundef %conv463.5.i) #7
  %arrayidx462.6.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 6
  %309 = ptrtoint ptr %arrayidx462.6.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx462.6.i, align 1
  %conv463.6.i = sext i8 %310 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 6, i32 noundef %conv463.6.i) #7
  %arrayidx462.7.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 7
  %311 = ptrtoint ptr %arrayidx462.7.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx462.7.i, align 1
  %conv463.7.i = sext i8 %312 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 7, i32 noundef %conv463.7.i) #7
  %arrayidx462.8.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 8
  %313 = ptrtoint ptr %arrayidx462.8.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx462.8.i, align 1
  %conv463.8.i = sext i8 %314 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 8, i32 noundef %conv463.8.i) #7
  %arrayidx462.9.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 9
  %315 = ptrtoint ptr %arrayidx462.9.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx462.9.i, align 1
  %conv463.9.i = sext i8 %316 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 9, i32 noundef %conv463.9.i) #7
  %arrayidx462.10.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 10
  %317 = ptrtoint ptr %arrayidx462.10.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %arrayidx462.10.i, align 1
  %conv463.10.i = sext i8 %318 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 10, i32 noundef %conv463.10.i) #7
  %arrayidx462.11.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 11
  %319 = ptrtoint ptr %arrayidx462.11.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx462.11.i, align 1
  %conv463.11.i = sext i8 %320 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 11, i32 noundef %conv463.11.i) #7
  %arrayidx462.12.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 12
  %321 = ptrtoint ptr %arrayidx462.12.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %arrayidx462.12.i, align 1
  %conv463.12.i = sext i8 %322 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 12, i32 noundef %conv463.12.i) #7
  %arrayidx462.13.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 0, i32 13
  %323 = ptrtoint ptr %arrayidx462.13.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx462.13.i, align 1
  %conv463.13.i = sext i8 %324 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 13, i32 noundef %conv463.13.i) #7
  %325 = ptrtoint ptr %txpwr_legacyhtdiff.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %txpwr_legacyhtdiff.i, align 1
  %conv477.i = sext i8 %326 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 0, i32 noundef %conv477.i) #7
  %arrayidx476.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 1
  %327 = ptrtoint ptr %arrayidx476.1.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %arrayidx476.1.i, align 1
  %conv477.1.i = sext i8 %328 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef %conv477.1.i) #7
  %arrayidx476.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 2
  %329 = ptrtoint ptr %arrayidx476.2.i to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %arrayidx476.2.i, align 1
  %conv477.2.i = sext i8 %330 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 2, i32 noundef %conv477.2.i) #7
  %arrayidx476.3.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 3
  %331 = ptrtoint ptr %arrayidx476.3.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx476.3.i, align 1
  %conv477.3.i = sext i8 %332 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 3, i32 noundef %conv477.3.i) #7
  %arrayidx476.4.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 4
  %333 = ptrtoint ptr %arrayidx476.4.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %arrayidx476.4.i, align 1
  %conv477.4.i = sext i8 %334 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 4, i32 noundef %conv477.4.i) #7
  %arrayidx476.5.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 5
  %335 = ptrtoint ptr %arrayidx476.5.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %arrayidx476.5.i, align 1
  %conv477.5.i = sext i8 %336 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 5, i32 noundef %conv477.5.i) #7
  %arrayidx476.6.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 6
  %337 = ptrtoint ptr %arrayidx476.6.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx476.6.i, align 1
  %conv477.6.i = sext i8 %338 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 6, i32 noundef %conv477.6.i) #7
  %arrayidx476.7.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 7
  %339 = ptrtoint ptr %arrayidx476.7.i to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %arrayidx476.7.i, align 1
  %conv477.7.i = sext i8 %340 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 7, i32 noundef %conv477.7.i) #7
  %arrayidx476.8.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 8
  %341 = ptrtoint ptr %arrayidx476.8.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx476.8.i, align 1
  %conv477.8.i = sext i8 %342 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 8, i32 noundef %conv477.8.i) #7
  %arrayidx476.9.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 9
  %343 = ptrtoint ptr %arrayidx476.9.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx476.9.i, align 1
  %conv477.9.i = sext i8 %344 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 9, i32 noundef %conv477.9.i) #7
  %arrayidx476.10.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 10
  %345 = ptrtoint ptr %arrayidx476.10.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %arrayidx476.10.i, align 1
  %conv477.10.i = sext i8 %346 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 10, i32 noundef %conv477.10.i) #7
  %arrayidx476.11.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 11
  %347 = ptrtoint ptr %arrayidx476.11.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %arrayidx476.11.i, align 1
  %conv477.11.i = sext i8 %348 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 11, i32 noundef %conv477.11.i) #7
  %arrayidx476.12.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 12
  %349 = ptrtoint ptr %arrayidx476.12.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx476.12.i, align 1
  %conv477.12.i = sext i8 %350 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 12, i32 noundef %conv477.12.i) #7
  %arrayidx476.13.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 0, i32 13
  %351 = ptrtoint ptr %arrayidx476.13.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %arrayidx476.13.i, align 1
  %conv477.13.i = sext i8 %352 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 13, i32 noundef %conv477.13.i) #7
  %arrayidx490.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 0
  %353 = ptrtoint ptr %arrayidx490.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx490.i, align 1
  %conv491.i = sext i8 %354 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 0, i32 noundef %conv491.i) #7
  %arrayidx490.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 1
  %355 = ptrtoint ptr %arrayidx490.1.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx490.1.i, align 1
  %conv491.1.i = sext i8 %356 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 1, i32 noundef %conv491.1.i) #7
  %arrayidx490.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 2
  %357 = ptrtoint ptr %arrayidx490.2.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx490.2.i, align 1
  %conv491.2.i = sext i8 %358 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 2, i32 noundef %conv491.2.i) #7
  %arrayidx490.3.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 3
  %359 = ptrtoint ptr %arrayidx490.3.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %arrayidx490.3.i, align 1
  %conv491.3.i = sext i8 %360 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 3, i32 noundef %conv491.3.i) #7
  %arrayidx490.4.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 4
  %361 = ptrtoint ptr %arrayidx490.4.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx490.4.i, align 1
  %conv491.4.i = sext i8 %362 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 4, i32 noundef %conv491.4.i) #7
  %arrayidx490.5.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 5
  %363 = ptrtoint ptr %arrayidx490.5.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx490.5.i, align 1
  %conv491.5.i = sext i8 %364 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 5, i32 noundef %conv491.5.i) #7
  %arrayidx490.6.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 6
  %365 = ptrtoint ptr %arrayidx490.6.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx490.6.i, align 1
  %conv491.6.i = sext i8 %366 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 6, i32 noundef %conv491.6.i) #7
  %arrayidx490.7.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 7
  %367 = ptrtoint ptr %arrayidx490.7.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx490.7.i, align 1
  %conv491.7.i = sext i8 %368 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 7, i32 noundef %conv491.7.i) #7
  %arrayidx490.8.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 8
  %369 = ptrtoint ptr %arrayidx490.8.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx490.8.i, align 1
  %conv491.8.i = sext i8 %370 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 8, i32 noundef %conv491.8.i) #7
  %arrayidx490.9.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 9
  %371 = ptrtoint ptr %arrayidx490.9.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %arrayidx490.9.i, align 1
  %conv491.9.i = sext i8 %372 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 9, i32 noundef %conv491.9.i) #7
  %arrayidx490.10.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 10
  %373 = ptrtoint ptr %arrayidx490.10.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx490.10.i, align 1
  %conv491.10.i = sext i8 %374 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 10, i32 noundef %conv491.10.i) #7
  %arrayidx490.11.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 11
  %375 = ptrtoint ptr %arrayidx490.11.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %arrayidx490.11.i, align 1
  %conv491.11.i = sext i8 %376 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 11, i32 noundef %conv491.11.i) #7
  %arrayidx490.12.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 12
  %377 = ptrtoint ptr %arrayidx490.12.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx490.12.i, align 1
  %conv491.12.i = sext i8 %378 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 12, i32 noundef %conv491.12.i) #7
  %arrayidx490.13.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 42, i32 1, i32 13
  %379 = ptrtoint ptr %arrayidx490.13.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %arrayidx490.13.i, align 1
  %conv491.13.i = sext i8 %380 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.79, i32 noundef 13, i32 noundef %conv491.13.i) #7
  %arrayidx504.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 0
  %381 = ptrtoint ptr %arrayidx504.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx504.i, align 1
  %conv505.i = sext i8 %382 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 0, i32 noundef %conv505.i) #7
  %arrayidx504.1.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 1
  %383 = ptrtoint ptr %arrayidx504.1.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %arrayidx504.1.i, align 1
  %conv505.1.i = sext i8 %384 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 1, i32 noundef %conv505.1.i) #7
  %arrayidx504.2.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 2
  %385 = ptrtoint ptr %arrayidx504.2.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx504.2.i, align 1
  %conv505.2.i = sext i8 %386 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 2, i32 noundef %conv505.2.i) #7
  %arrayidx504.3.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 3
  %387 = ptrtoint ptr %arrayidx504.3.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %arrayidx504.3.i, align 1
  %conv505.3.i = sext i8 %388 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 3, i32 noundef %conv505.3.i) #7
  %arrayidx504.4.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 4
  %389 = ptrtoint ptr %arrayidx504.4.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx504.4.i, align 1
  %conv505.4.i = sext i8 %390 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 4, i32 noundef %conv505.4.i) #7
  %arrayidx504.5.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 5
  %391 = ptrtoint ptr %arrayidx504.5.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx504.5.i, align 1
  %conv505.5.i = sext i8 %392 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 5, i32 noundef %conv505.5.i) #7
  %arrayidx504.6.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 6
  %393 = ptrtoint ptr %arrayidx504.6.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx504.6.i, align 1
  %conv505.6.i = sext i8 %394 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 6, i32 noundef %conv505.6.i) #7
  %arrayidx504.7.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 7
  %395 = ptrtoint ptr %arrayidx504.7.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx504.7.i, align 1
  %conv505.7.i = sext i8 %396 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 7, i32 noundef %conv505.7.i) #7
  %arrayidx504.8.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 8
  %397 = ptrtoint ptr %arrayidx504.8.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %arrayidx504.8.i, align 1
  %conv505.8.i = sext i8 %398 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 8, i32 noundef %conv505.8.i) #7
  %arrayidx504.9.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 9
  %399 = ptrtoint ptr %arrayidx504.9.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %arrayidx504.9.i, align 1
  %conv505.9.i = sext i8 %400 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 9, i32 noundef %conv505.9.i) #7
  %arrayidx504.10.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 10
  %401 = ptrtoint ptr %arrayidx504.10.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %arrayidx504.10.i, align 1
  %conv505.10.i = sext i8 %402 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 10, i32 noundef %conv505.10.i) #7
  %arrayidx504.11.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 11
  %403 = ptrtoint ptr %arrayidx504.11.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx504.11.i, align 1
  %conv505.11.i = sext i8 %404 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 11, i32 noundef %conv505.11.i) #7
  %arrayidx504.12.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 12
  %405 = ptrtoint ptr %arrayidx504.12.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %arrayidx504.12.i, align 1
  %conv505.12.i = sext i8 %406 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 12, i32 noundef %conv505.12.i) #7
  %arrayidx504.13.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 44, i32 1, i32 13
  %407 = ptrtoint ptr %arrayidx504.13.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx504.13.i, align 1
  %conv505.13.i = sext i8 %408 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef 13, i32 noundef %conv505.13.i) #7
  %409 = ptrtoint ptr %txpwr_safetyflag.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %txpwr_safetyflag.i, align 4
  %conv510.i = zext i8 %410 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef %conv510.i) #7
  %arrayidx511.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 118
  %411 = ptrtoint ptr %arrayidx511.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %arrayidx511.i, align 2
  %conv515.i = zext i8 %412 to i16
  %eeprom_txpowerdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 52
  %413 = ptrtoint ptr %eeprom_txpowerdiff.i to i32
  call void @__asan_store2_noabort(i32 %413)
  store i16 %conv515.i, ptr %eeprom_txpowerdiff.i, align 2
  %414 = ptrtoint ptr %txpwr_legacyhtdiff.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %txpwr_legacyhtdiff.i, align 4
  %legacy_ht_txpowerdiff.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 61
  %416 = ptrtoint ptr %legacy_ht_txpowerdiff.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %415, ptr %legacy_ht_txpowerdiff.i, align 1
  %conv520.i = zext i8 %412 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef %conv520.i) #7
  %arrayidx521.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 116
  %417 = ptrtoint ptr %arrayidx521.i to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %arrayidx521.i, align 2
  %419 = lshr i16 %418, 8
  %conv525.i = trunc i16 %419 to i8
  %eeprom_tssi.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 25
  %420 = ptrtoint ptr %eeprom_tssi.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %conv525.i, ptr %eeprom_tssi.i, align 2
  %421 = trunc i16 %418 to i8
  %arrayidx533.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 25, i32 1
  %422 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %421, ptr %arrayidx533.i, align 1
  %conv536.i = zext i16 %419 to i32
  %.mask.i = and i16 %418, 255
  %conv539.i = zext i16 %.mask.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.83, i32 noundef %conv536.i, i32 noundef %conv539.i) #7
  %arrayidx540.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 119
  %423 = ptrtoint ptr %arrayidx540.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx540.i, align 1
  %eeprom_thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 55
  %425 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 %424, ptr %eeprom_thermalmeter.i, align 4
  %conv542.i = zext i8 %424 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.84, i32 noundef %conv542.i) #7
  %426 = ptrtoint ptr %eeprom_thermalmeter.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %eeprom_thermalmeter.i, align 4
  %428 = and i8 %427, 31
  %thermalmeter.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 56
  %429 = ptrtoint ptr %thermalmeter.i to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 %428, ptr %thermalmeter.i, align 1
  %conv549.i = zext i8 %427 to i16
  %mul550.i = mul nuw nsw i16 %conv549.i, 100
  %tssi_13dbm.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 57
  %430 = ptrtoint ptr %tssi_13dbm.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %mul550.i, ptr %tssi_13dbm.i, align 4
  %arrayidx552.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 121
  %431 = ptrtoint ptr %arrayidx552.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx552.i, align 1
  %433 = lshr i8 %432, 4
  %eeprom_crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 24
  %434 = ptrtoint ptr %eeprom_crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %eeprom_crystalcap.i, align 1
  %crystalcap.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 58
  %435 = ptrtoint ptr %crystalcap.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 %433, ptr %crystalcap.i, align 2
  %arrayidx557.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 123
  %436 = ptrtoint ptr %arrayidx557.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %arrayidx557.i, align 1
  %conv558.i = zext i8 %437 to i16
  %eeprom_channelplan.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 15
  %438 = ptrtoint ptr %eeprom_channelplan.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %conv558.i, ptr %eeprom_channelplan.i, align 2
  %txpwr_fromeprom.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 23
  %439 = ptrtoint ptr %txpwr_fromeprom.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 1, ptr %txpwr_fromeprom.i, align 4
  %conv560.i = zext i8 %437 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 17, i32 noundef 2, ptr noundef nonnull @.str.85, i32 noundef %conv560.i) #7
  %arrayidx561.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 126
  %440 = ptrtoint ptr %arrayidx561.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %arrayidx561.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %441)
  %442 = icmp ult i8 %441, 4
  br i1 %442, label %switch.lookup, label %if.end450.i.if.end587.i_crit_edge

if.end450.i.if.end587.i_crit_edge:                ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end587.i

switch.lookup:                                    ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = zext i8 %441 to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 65794, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %rf_type571.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 14, i32 4
  %443 = ptrtoint ptr %rf_type571.i to i32
  call void @__asan_store1_noabort(i32 %443)
  store i8 %switch.masked, ptr %rf_type571.i, align 1
  br label %if.end587.i

if.end587.i:                                      ; preds = %switch.lookup, %if.end450.i.if.end587.i_crit_edge
  %b1x1_recvcombine.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 63
  %444 = ptrtoint ptr %b1x1_recvcombine.i to i32
  call void @__asan_store1_noabort(i32 %444)
  store i8 0, ptr %b1x1_recvcombine.i, align 1
  %rf_type588.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 14, i32 4
  %445 = ptrtoint ptr %rf_type588.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %rf_type588.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %446)
  %cmp590.i = icmp eq i8 %446, 1
  br i1 %cmp590.i, label %if.then592.i, label %if.end587.i.if.end600.i_crit_edge

if.end587.i.if.end600.i_crit_edge:                ; preds = %if.end587.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end600.i

if.then592.i:                                     ; preds = %if.end587.i
  %447 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i888.i = call zeroext i8 %448(ptr noundef %11, i32 noundef 7) #7
  %449 = and i8 %call.i888.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %449)
  %tobool596.not.i = icmp eq i8 %449, 0
  br i1 %tobool596.not.i, label %if.then597.i, label %if.then592.i.if.end600.i_crit_edge

if.then592.i.if.end600.i_crit_edge:               ; preds = %if.then592.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end600.i

if.then597.i:                                     ; preds = %if.then592.i
  call void @__sanitizer_cov_trace_pc() #9
  %450 = ptrtoint ptr %b1x1_recvcombine.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 1, ptr %b1x1_recvcombine.i, align 1
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.86) #7
  br label %if.end600.i

if.end600.i:                                      ; preds = %if.then597.i, %if.then592.i.if.end600.i_crit_edge, %if.end587.i.if.end600.i_crit_edge
  %451 = ptrtoint ptr %b1x1_recvcombine.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %b1x1_recvcombine.i, align 1, !range !198
  %b1ss_support.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 64
  %453 = ptrtoint ptr %b1ss_support.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %452, ptr %b1ss_support.i, align 4
  %arrayidx603.i = getelementptr inbounds [128 x i8], ptr %hwinfo.i, i32 0, i32 122
  %454 = ptrtoint ptr %arrayidx603.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx603.i, align 2
  %eeprom_oemid.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 14
  %456 = ptrtoint ptr %eeprom_oemid.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %455, ptr %eeprom_oemid.i, align 4
  %conv605.i = zext i8 %455 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.87, i32 noundef %conv605.i) #7
  %channel_plan.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 17, i32 65
  %457 = ptrtoint ptr %channel_plan.i to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 11, ptr %channel_plan.i, align 1
  br label %_rtl92se_read_adapter_info.exit

_rtl92se_read_adapter_info.exit:                  ; preds = %if.end600.i, %if.end.i, %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %hwinfo.i) #7
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  %autoload_failflag9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 7
  %458 = ptrtoint ptr %autoload_failflag9 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 1, ptr %autoload_failflag9, align 1
  br label %if.end10

if.end10:                                         ; preds = %do.end, %_rtl92se_read_adapter_info.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_update_hal_rate_tbl(ptr noundef %hw, ptr nocapture noundef %sta, i8 noundef zeroext %rssi_level, i1 noundef zeroext %update_bw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %2 = ptrtoint ptr %useramask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %useramask, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bandwidth.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 14
  %4 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp ne i32 %5, 0
  %conv.i = zext i1 %cmp.not.i to i8
  %ht_cap.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %6 = ptrtoint ptr %ht_cap.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ht_cap.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 29
  %wireless_mode.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 4
  %8 = ptrtoint ptr %wireless_mode.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wireless_mode.i, align 1
  %opmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %10 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opmode.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %11, label %if.then.if.end26.i_crit_edge [
    i32 2, label %if.then.i
    i32 3, label %if.then.if.then23.i_crit_edge
    i32 1, label %if.then.if.then23.i_crit_edge49
  ]

if.then.if.then23.i_crit_edge49:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.then.if.then23.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.then.if.end26.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %bw_40.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %13 = ptrtoint ptr %bw_40.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bw_40.i, align 1
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.then.if.then23.i_crit_edge, %if.then.if.then23.i_crit_edge49
  %aid.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 2
  %15 = ptrtoint ptr %aid.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %aid.i, align 2
  %17 = add i16 %16, 1
  %18 = and i16 %17, 255
  %phi.cast.i = zext i16 %18 to i32
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.then.i, %if.then.if.end26.i_crit_edge
  %curtxbw_40mhz.0.i = phi i8 [ %14, %if.then.i ], [ %conv.i, %if.then23.i ], [ %conv.i, %if.then.if.end26.i_crit_edge ]
  %macid.0.i = phi i32 [ 0, %if.then.i ], [ %phi.cast.i, %if.then23.i ], [ 0, %if.then.if.end26.i_crit_edge ]
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %19 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp27.i = icmp eq i32 %20, 1
  br i1 %cmp27.i, label %if.then29.i, label %if.else30.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %22, 4
  br label %if.end33.i

if.else30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sta, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.else30.i, %if.then29.i
  %ratr_bitmap.0.i = phi i32 [ %shl.i, %if.then29.i ], [ %24, %if.else30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp35.i = icmp eq i32 %11, 1
  %spec.select.i = select i1 %cmp35.i, i32 4095, i32 %ratr_bitmap.0.i
  %mcs.i = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx40.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %26 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 20
  %27 = ptrtoint ptr %mcs.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mcs.i, align 1
  %conv47.i = zext i8 %28 to i32
  %shl48.i = shl nuw nsw i32 %conv47.i, 12
  %or.i = or i32 %shl42.i, %spec.select.i
  %or49.i = or i32 %or.i, %shl48.i
  %29 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %9, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 4, label %sw.bb58.i
    i16 1, label %sw.bb75.i
    i16 16, label %if.end33.i.if.else99.i_crit_edge
    i16 32, label %if.end33.i.if.else99.i_crit_edge50
  ]

if.end33.i.if.else99.i_crit_edge50:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else99.i

if.end33.i.if.else99.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else99.i

sw.bb.i:                                          ; preds = %if.end33.i
  %and51.i = and i32 %spec.select.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.else55.i, label %if.then53.i

if.then53.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and54.i = and i32 %spec.select.i, 13
  br label %sw.epilog.thread.i

if.else55.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %and56.i = and i32 %spec.select.i, 15
  br label %sw.epilog.thread.i

sw.bb58.i:                                        ; preds = %if.end33.i
  %30 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %rssi_level, label %if.else71.i [
    i8 1, label %if.then63.i
    i8 2, label %if.then69.i
  ]

if.then63.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %and64.i = and i32 %spec.select.i, 3840
  br label %sw.epilog.thread.i

if.then69.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %and70.i = and i32 %spec.select.i, 4080
  br label %sw.epilog.thread.i

if.else71.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %and72.i = and i32 %spec.select.i, 4085
  br label %sw.epilog.thread.i

sw.bb75.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %and77.i = and i32 %spec.select.i, 4080
  br label %sw.epilog.thread.i

if.else99.i:                                      ; preds = %if.end33.i.if.else99.i_crit_edge, %if.end33.i.if.else99.i_crit_edge50
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %31 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %switch.i = icmp ult i8 %32, 2
  br i1 %switch.i, label %if.then108.i, label %if.else136.i

if.then108.i:                                     ; preds = %if.else99.i
  %33 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %rssi_level, label %if.else126.i [
    i8 1, label %if.then108.i.if.end165.i_crit_edge
    i8 3, label %if.then118.i
    i8 5, label %if.then124.i
  ]

if.then108.i.if.end165.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.then118.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.then124.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.else126.i:                                     ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool127.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  br i1 %tobool127.not.i, label %if.else130.i, label %if.else126.i.if.end165.i_crit_edge

if.else126.i.if.end165.i_crit_edge:               ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.else130.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #9
  %and131.i = and i32 %or49.i, 1044485
  br label %lor.lhs.false170.i

if.else136.i:                                     ; preds = %if.else99.i
  %34 = zext i8 %rssi_level to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %rssi_level, label %if.else154.i [
    i8 1, label %if.else136.i.if.end165.i_crit_edge
    i8 3, label %if.then146.i
    i8 5, label %if.then152.i
  ]

if.else136.i.if.end165.i_crit_edge:               ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.then146.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.then152.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.else154.i:                                     ; preds = %if.else136.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool155.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  br i1 %tobool155.not.i, label %if.else158.i, label %if.else154.i.if.end165.i_crit_edge

if.else154.i.if.end165.i_crit_edge:               ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165.i

if.else158.i:                                     ; preds = %if.else154.i
  call void @__sanitizer_cov_trace_pc() #9
  %and159.i = and i32 %or49.i, 261091333
  br label %lor.lhs.false170.i

if.end165.i:                                      ; preds = %if.else154.i.if.end165.i_crit_edge, %if.then152.i, %if.then146.i, %if.else136.i.if.end165.i_crit_edge, %if.else126.i.if.end165.i_crit_edge, %if.then124.i, %if.then118.i, %if.then108.i.if.end165.i_crit_edge
  %.sink.i = phi i32 [ 1032192, %if.then118.i ], [ 1044480, %if.then124.i ], [ 261079040, %if.then146.i ], [ 261091328, %if.then152.i ], [ 983040, %if.then108.i.if.end165.i_crit_edge ], [ 1044501, %if.else126.i.if.end165.i_crit_edge ], [ 261029888, %if.else136.i.if.end165.i_crit_edge ], [ 261091349, %if.else154.i.if.end165.i_crit_edge ]
  %and119.i = and i32 %.sink.i, %or49.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool167.not.i = icmp eq i8 %curtxbw_40mhz.0.i, 0
  %35 = and i16 %7, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool169.not.i = icmp eq i16 %35, 0
  %or.cond.i = select i1 %tobool167.not.i, i1 true, i1 %tobool169.not.i
  br i1 %or.cond.i, label %if.end165.i.lor.lhs.false170.i_crit_edge, label %if.end165.i.if.then175.i_crit_edge

if.end165.i.if.then175.i_crit_edge:               ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then175.i

if.end165.i.lor.lhs.false170.i_crit_edge:         ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false170.i

lor.lhs.false170.i:                               ; preds = %if.end165.i.lor.lhs.false170.i_crit_edge, %if.else158.i, %if.else130.i
  %ratr_bitmap.220.i = phi i32 [ %and119.i, %if.end165.i.lor.lhs.false170.i_crit_edge ], [ %and159.i, %if.else158.i ], [ %and131.i, %if.else130.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %curtxbw_40mhz.0.i)
  %tobool171.not.i = icmp ne i8 %curtxbw_40mhz.0.i, 0
  %36 = and i16 %7, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool174.not.i = icmp eq i16 %36, 0
  %or.cond1.i = select i1 %tobool171.not.i, i1 true, i1 %tobool174.not.i
  br i1 %or.cond1.i, label %lor.lhs.false170.i.sw.epilog.thread.i_crit_edge, label %lor.lhs.false170.i.if.then175.i_crit_edge

lor.lhs.false170.i.if.then175.i_crit_edge:        ; preds = %lor.lhs.false170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then175.i

lor.lhs.false170.i.sw.epilog.thread.i_crit_edge:  ; preds = %lor.lhs.false170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

if.then175.i:                                     ; preds = %lor.lhs.false170.i.if.then175.i_crit_edge, %if.end165.i.if.then175.i_crit_edge
  %ratr_bitmap.219.i = phi i32 [ %ratr_bitmap.220.i, %lor.lhs.false170.i.if.then175.i_crit_edge ], [ %and119.i, %if.end165.i.if.then175.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %macid.0.i)
  %cond.i = icmp eq i32 %macid.0.i, 0
  br i1 %cond.i, label %if.then214.i, label %if.then175.i.sw.epilog.thread.i_crit_edge

if.then175.i.sw.epilog.thread.i_crit_edge:        ; preds = %if.then175.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread.i

sw.default.i:                                     ; preds = %if.end33.i
  %rf_type189.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %rf_type189.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_type189.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp191.i = icmp eq i8 %38, 1
  br i1 %cmp191.i, label %if.then193.i, label %if.else195.i

if.then193.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and194.i = and i32 %or49.i, 1044735
  br label %sw.epilog.thread.i

if.else195.i:                                     ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #9
  %and196.i = and i32 %or49.i, 261091583
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %if.else195.i, %if.then193.i, %if.then175.i.sw.epilog.thread.i_crit_edge, %lor.lhs.false170.i.sw.epilog.thread.i_crit_edge, %sw.bb75.i, %if.else71.i, %if.then69.i, %if.then63.i, %if.else55.i, %if.then53.i
  %ratr_bitmap.3.ph.i = phi i32 [ %and56.i, %if.else55.i ], [ %and54.i, %if.then53.i ], [ %and72.i, %if.else71.i ], [ %and70.i, %if.then69.i ], [ %and64.i, %if.then63.i ], [ %and77.i, %sw.bb75.i ], [ %ratr_bitmap.220.i, %lor.lhs.false170.i.sw.epilog.thread.i_crit_edge ], [ %and196.i, %if.else195.i ], [ %and194.i, %if.then193.i ], [ %ratr_bitmap.219.i, %if.then175.i.sw.epilog.thread.i_crit_edge ]
  %ratr_index.0.ph.i = phi i8 [ 6, %if.else55.i ], [ 6, %if.then53.i ], [ 4, %if.else71.i ], [ 4, %if.then69.i ], [ 4, %if.then63.i ], [ 8, %sw.bb75.i ], [ 0, %lor.lhs.false170.i.sw.epilog.thread.i_crit_edge ], [ 0, %if.else195.i ], [ 0, %if.then193.i ], [ 0, %if.then175.i.sw.epilog.thread.i_crit_edge ]
  %band.0.ph.i = phi i32 [ 1, %if.else55.i ], [ 1, %if.then53.i ], [ 3, %if.else71.i ], [ 3, %if.then69.i ], [ 3, %if.then63.i ], [ 4, %sw.bb75.i ], [ 11, %lor.lhs.false170.i.sw.epilog.thread.i_crit_edge ], [ 11, %if.else195.i ], [ 11, %if.then193.i ], [ 11, %if.then175.i.sw.epilog.thread.i_crit_edge ]
  %ratr_index19825.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %39 = ptrtoint ptr %ratr_index19825.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %ratr_index.0.ph.i, ptr %ratr_index19825.i, align 1
  %version26.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %40 = ptrtoint ptr %version26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp200.not27.i = icmp eq i32 %41, 0
  %and21029.i = and i32 %ratr_bitmap.3.ph.i, 268435440
  %ratr_bitmap.430.i = select i1 %cmp200.not27.i, i32 %and21029.i, i32 %ratr_bitmap.3.ph.i
  br label %if.end236.i

if.then214.i:                                     ; preds = %if.then175.i
  %ratr_index198.i = getelementptr inbounds %struct.rtl_sta_info, ptr %drv_priv.i, i32 0, i32 5
  %42 = ptrtoint ptr %ratr_index198.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ratr_index198.i, align 1
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %43 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp200.not.i = icmp eq i32 %44, 0
  %and210.i = and i32 %ratr_bitmap.219.i, 268435440
  %ratr_bitmap.4.i = select i1 %cmp200.not.i, i32 %and210.i, i32 %ratr_bitmap.219.i
  %or215.i = or i32 %ratr_bitmap.4.i, 268435456
  %45 = and i32 %ratr_bitmap.4.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool222.not.i = icmp eq i32 %45, 0
  br i1 %tobool222.not.i, label %for.inc.i, label %if.then214.i.for.end.i_crit_edge

if.then214.i.for.end.i_crit_edge:                 ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i:                                        ; preds = %if.then214.i
  %46 = and i32 %ratr_bitmap.4.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool222.not.1.i = icmp eq i32 %46, 0
  br i1 %tobool222.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %47 = and i32 %ratr_bitmap.4.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool222.not.2.i = icmp eq i32 %47, 0
  br i1 %tobool222.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %48 = and i32 %ratr_bitmap.4.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool222.not.3.i = icmp eq i32 %48, 0
  br i1 %tobool222.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %49 = and i32 %ratr_bitmap.4.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool222.not.4.i = icmp eq i32 %49, 0
  br i1 %tobool222.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %50 = and i32 %ratr_bitmap.4.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool222.not.5.i = icmp eq i32 %50, 0
  br i1 %tobool222.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %51 = and i32 %ratr_bitmap.4.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool222.not.6.i = icmp eq i32 %51, 0
  br i1 %tobool222.not.6.i, label %for.inc.6.i, label %for.inc.5.i.for.end.i_crit_edge

for.inc.5.i.for.end.i_crit_edge:                  ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %52 = and i32 %ratr_bitmap.4.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool222.not.7.i = icmp eq i32 %52, 0
  br i1 %tobool222.not.7.i, label %for.inc.7.i, label %for.inc.6.i.for.end.i_crit_edge

for.inc.6.i.for.end.i_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %53 = and i32 %ratr_bitmap.4.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool222.not.8.i = icmp eq i32 %53, 0
  br i1 %tobool222.not.8.i, label %for.inc.8.i, label %for.inc.7.i.for.end.i_crit_edge

for.inc.7.i.for.end.i_crit_edge:                  ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %54 = and i32 %ratr_bitmap.4.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool222.not.9.i = icmp eq i32 %54, 0
  br i1 %tobool222.not.9.i, label %for.inc.9.i, label %for.inc.8.i.for.end.i_crit_edge

for.inc.8.i.for.end.i_crit_edge:                  ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %55 = and i32 %ratr_bitmap.4.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool222.not.10.i = icmp eq i32 %55, 0
  br i1 %tobool222.not.10.i, label %for.inc.10.i, label %for.inc.9.i.for.end.i_crit_edge

for.inc.9.i.for.end.i_crit_edge:                  ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %56 = and i32 %ratr_bitmap.4.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool222.not.11.i = icmp eq i32 %56, 0
  br i1 %tobool222.not.11.i, label %for.inc.11.i, label %for.inc.10.i.for.end.i_crit_edge

for.inc.10.i.for.end.i_crit_edge:                 ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  %57 = and i32 %ratr_bitmap.4.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool222.not.12.i = icmp eq i32 %57, 0
  br i1 %tobool222.not.12.i, label %for.inc.12.i, label %for.inc.11.i.for.end.i_crit_edge

for.inc.11.i.for.end.i_crit_edge:                 ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  %58 = and i32 %ratr_bitmap.4.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool222.not.13.i = icmp eq i32 %58, 0
  br i1 %tobool222.not.13.i, label %for.inc.13.i, label %for.inc.12.i.for.end.i_crit_edge

for.inc.12.i.for.end.i_crit_edge:                 ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.13.i:                                     ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = lshr i32 %ratr_bitmap.4.i, 13
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %phi.bo = mul nuw nsw i8 %61, 17
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.13.i, %for.inc.12.i.for.end.i_crit_edge, %for.inc.11.i.for.end.i_crit_edge, %for.inc.10.i.for.end.i_crit_edge, %for.inc.9.i.for.end.i_crit_edge, %for.inc.8.i.for.end.i_crit_edge, %for.inc.7.i.for.end.i_crit_edge, %for.inc.6.i.for.end.i_crit_edge, %for.inc.5.i.for.end.i_crit_edge, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.then214.i.for.end.i_crit_edge
  %shortgi_rate.0.lcssa.i = phi i8 [ -1, %if.then214.i.for.end.i_crit_edge ], [ -18, %for.inc.i.for.end.i_crit_edge ], [ -35, %for.inc.1.i.for.end.i_crit_edge ], [ -52, %for.inc.2.i.for.end.i_crit_edge ], [ -69, %for.inc.3.i.for.end.i_crit_edge ], [ -86, %for.inc.4.i.for.end.i_crit_edge ], [ -103, %for.inc.5.i.for.end.i_crit_edge ], [ -120, %for.inc.6.i.for.end.i_crit_edge ], [ 119, %for.inc.7.i.for.end.i_crit_edge ], [ 102, %for.inc.8.i.for.end.i_crit_edge ], [ 85, %for.inc.9.i.for.end.i_crit_edge ], [ 68, %for.inc.10.i.for.end.i_crit_edge ], [ 51, %for.inc.11.i.for.end.i_crit_edge ], [ 34, %for.inc.12.i.for.end.i_crit_edge ], [ %phi.bo, %for.inc.13.i ]
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %62 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 502, i8 noundef zeroext %shortgi_rate.0.lcssa.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i.i, label %for.end.i.if.end236.i_crit_edge, label %if.then.i.i

for.end.i.if.end236.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end236.i

if.then.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %68 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %69(ptr noundef %1, i32 noundef 502) #7
  br label %if.end236.i

if.end236.i:                                      ; preds = %if.then.i.i, %for.end.i.if.end236.i_crit_edge, %sw.epilog.thread.i
  %ratr_index19833.i = phi ptr [ %ratr_index19825.i, %sw.epilog.thread.i ], [ %ratr_index198.i, %for.end.i.if.end236.i_crit_edge ], [ %ratr_index198.i, %if.then.i.i ]
  %band.032.i = phi i32 [ %band.0.ph.i, %sw.epilog.thread.i ], [ 11, %for.end.i.if.end236.i_crit_edge ], [ 11, %if.then.i.i ]
  %ratr_index.031.i = phi i8 [ %ratr_index.0.ph.i, %sw.epilog.thread.i ], [ 0, %for.end.i.if.end236.i_crit_edge ], [ 0, %if.then.i.i ]
  %ratr_bitmap.5.i = phi i32 [ %ratr_bitmap.430.i, %sw.epilog.thread.i ], [ %or215.i, %for.end.i.if.end236.i_crit_edge ], [ %or215.i, %if.then.i.i ]
  %and242.i = shl nuw nsw i32 %macid.0.i, 4
  %shl243.i = and i32 %and242.i, 496
  %or246.i = or i32 %band.032.i, %shl243.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 5, ptr noundef nonnull @.str.88, i32 noundef %or246.i, i32 noundef %ratr_bitmap.5.i) #7
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %70 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %71(ptr noundef %1, i32 noundef 708, i32 noundef %ratr_bitmap.5.i) #7
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i2.i, align 8
  %write_readback.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write_readback.i3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %write_readback.i3.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i4.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i4.i, label %if.end236.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i6.i

if.end236.i.rtl_write_dword.exit.i_crit_edge:     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit.i

if.then.i6.i:                                     ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %76 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i5.i = tail call i32 %77(ptr noundef %1, i32 noundef 708) #7
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i6.i, %if.end236.i.rtl_write_dword.exit.i_crit_edge
  %shl248.i = shl nuw nsw i32 %or246.i, 8
  %or249.i = or i32 %shl248.i, -50331486
  %78 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %79(ptr noundef %1, i32 noundef 704, i32 noundef %or249.i) #7
  %80 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i2.i, align 8
  %write_readback.i9.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i9.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i9.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i10.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i10.i, label %rtl_write_dword.exit.i.rtl_write_dword.exit14.i_crit_edge, label %if.then.i13.i

rtl_write_dword.exit.i.rtl_write_dword.exit14.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit14.i

if.then.i13.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i11.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %84 = ptrtoint ptr %read32_sync.i11.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32_sync.i11.i, align 4
  %call.i12.i = tail call i32 %85(ptr noundef %1, i32 noundef 704) #7
  br label %rtl_write_dword.exit14.i

rtl_write_dword.exit14.i:                         ; preds = %if.then.i13.i, %rtl_write_dword.exit.i.rtl_write_dword.exit14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %macid.0.i)
  %cmp251.not.i = icmp eq i32 %macid.0.i, 0
  br i1 %cmp251.not.i, label %rtl_write_dword.exit14.i.if.end_crit_edge, label %if.then253.i

rtl_write_dword.exit14.i.if.end_crit_edge:        ; preds = %rtl_write_dword.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then253.i:                                     ; preds = %rtl_write_dword.exit14.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %ratr_index19833.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %ratr_index.031.i, ptr %ratr_index19833.i, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %ht_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 38
  %87 = ptrtoint ptr %ht_enable.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ht_enable.i, align 8
  %bw_40.i6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 41
  %89 = ptrtoint ptr %bw_40.i6 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bw_40.i6, align 1
  %ht_cap.i7 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3
  %91 = ptrtoint ptr %ht_cap.i7 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ht_cap.i7, align 4
  %mode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 42
  %93 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %mode.i, align 4
  %current_bandtype.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %95 = ptrtoint ptr %current_bandtype.i8 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %current_bandtype.i8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp.i = icmp eq i32 %96, 1
  br i1 %cmp.i, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i9 = getelementptr [6 x i32], ptr %sta, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i9, align 4
  %shl.i10 = shl i32 %98, 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %sta to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sta, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i11
  %ratr_value.0.i = phi i32 [ %shl.i10, %if.then.i11 ], [ %100, %if.else.i ]
  %opmode.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %101 = ptrtoint ptr %opmode.i12 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %opmode.i12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %cmp16.i = icmp eq i32 %102, 1
  %spec.select.i13 = select i1 %cmp16.i, i32 4095, i32 %ratr_value.0.i
  %mcs.i14 = getelementptr inbounds %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4
  %arrayidx21.i = getelementptr %struct.ieee80211_sta, ptr %sta, i32 0, i32 3, i32 4, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %104 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 20
  %105 = ptrtoint ptr %mcs.i14 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %mcs.i14, align 1
  %conv28.i = zext i8 %106 to i32
  %shl29.i = shl nuw nsw i32 %conv28.i, 12
  %or.i15 = or i32 %shl23.i, %spec.select.i13
  %or30.i = or i32 %or.i15, %shl29.i
  %107 = zext i16 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %94, label %sw.default.i19 [
    i16 2, label %sw.bb.i16
    i16 4, label %sw.bb32.i
    i16 16, label %if.end.i.if.else40.i_crit_edge
    i16 32, label %if.end.i.if.else40.i_crit_edge51
  ]

if.end.i.if.else40.i_crit_edge51:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40.i

if.end.i.if.else40.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else40.i

sw.bb.i16:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and31.i = and i32 %spec.select.i13, 13
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and33.i = and i32 %spec.select.i13, 4085
  br label %sw.epilog.i

if.else40.i:                                      ; preds = %if.end.i.if.else40.i_crit_edge, %if.end.i.if.else40.i_crit_edge51
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %108 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rf_type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %109)
  %switch.i17 = icmp ult i8 %109, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool49.not.i = icmp eq i8 %90, 0
  %..i = select i1 %tobool49.not.i, i32 1044485, i32 1044501
  %.170.i = select i1 %tobool49.not.i, i32 252702725, i32 252702741
  %ratr_mask.0.i = select i1 %switch.i17, i32 %..i, i32 %.170.i
  %and59.i = and i32 %ratr_mask.0.i, %or30.i
  %version182.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %110 = ptrtoint ptr %version182.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %version182.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp70.not183.i = icmp eq i32 %111, 0
  %and80185.i = and i32 %and59.i, 252702736
  %ratr_value.3186.i = select i1 %cmp70.not183.i, i32 %and80185.i, i32 %and59.i
  br label %land.lhs.true.i

sw.default.i19:                                   ; preds = %if.end.i
  %rf_type.i18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %112 = ptrtoint ptr %rf_type.i18 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rf_type.i18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %113)
  %cmp62.i = icmp eq i8 %113, 1
  br i1 %cmp62.i, label %if.then64.i, label %if.else66.i

if.then64.i:                                      ; preds = %sw.default.i19
  call void @__sanitizer_cov_trace_pc() #9
  %and65.i = and i32 %or30.i, 1044735
  br label %sw.epilog.i

if.else66.i:                                      ; preds = %sw.default.i19
  call void @__sanitizer_cov_trace_pc() #9
  %and67.i = and i32 %or30.i, 252702975
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else66.i, %if.then64.i, %sw.bb32.i, %sw.bb.i16
  %ratr_value.2.i = phi i32 [ %and65.i, %if.then64.i ], [ %and67.i, %if.else66.i ], [ %and33.i, %sw.bb32.i ], [ %and31.i, %sw.bb.i16 ]
  %version.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %114 = ptrtoint ptr %version.i20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %version.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp70.not.i = icmp eq i32 %115, 0
  %and80.i = and i32 %ratr_value.2.i, 252706800
  %ratr_value.3.i = select i1 %cmp70.not.i, i32 %and80.i, i32 %ratr_value.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool84.not.i = icmp eq i8 %88, 0
  br i1 %tobool84.not.i, label %sw.epilog.i.if.end118.i_crit_edge, label %sw.epilog.i.land.lhs.true.i_crit_edge

sw.epilog.i.land.lhs.true.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

sw.epilog.i.if.end118.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true.i:                                  ; preds = %sw.epilog.i.land.lhs.true.i_crit_edge, %if.else40.i
  %ratr_value.3188.i = phi i32 [ %ratr_value.3186.i, %if.else40.i ], [ %ratr_value.3.i, %sw.epilog.i.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool86.not.i = icmp eq i8 %90, 0
  %116 = and i16 %92, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool89.not.i = icmp eq i16 %116, 0
  %or.cond.i21 = select i1 %tobool86.not.i, i1 true, i1 %tobool89.not.i
  br i1 %or.cond.i21, label %lor.lhs.false90.i, label %land.lhs.true.i.if.then95.i_crit_edge

land.lhs.true.i.if.then95.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95.i

lor.lhs.false90.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool91.not.i = icmp ne i8 %90, 0
  %117 = and i16 %92, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %117)
  %tobool94.not.i = icmp eq i16 %117, 0
  %or.cond171.i = select i1 %tobool91.not.i, i1 true, i1 %tobool94.not.i
  br i1 %or.cond171.i, label %lor.lhs.false90.i.if.end118.i_crit_edge, label %lor.lhs.false90.i.if.then95.i_crit_edge

lor.lhs.false90.i.if.then95.i_crit_edge:          ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95.i

lor.lhs.false90.i.if.end118.i_crit_edge:          ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then95.i:                                      ; preds = %lor.lhs.false90.i.if.then95.i_crit_edge, %land.lhs.true.i.if.then95.i_crit_edge
  %or96.i = or i32 %ratr_value.3188.i, 268435456
  %118 = and i32 %ratr_value.3188.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool103.not.i = icmp eq i32 %118, 0
  br i1 %tobool103.not.i, label %for.inc.i22, label %if.then95.i.for.end.i41_crit_edge

if.then95.i.for.end.i41_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.i22:                                      ; preds = %if.then95.i
  %119 = and i32 %ratr_value.3188.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool103.not.1.i = icmp eq i32 %119, 0
  br i1 %tobool103.not.1.i, label %for.inc.1.i23, label %for.inc.i22.for.end.i41_crit_edge

for.inc.i22.for.end.i41_crit_edge:                ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.1.i23:                                    ; preds = %for.inc.i22
  %120 = and i32 %ratr_value.3188.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool103.not.2.i = icmp eq i32 %120, 0
  br i1 %tobool103.not.2.i, label %for.inc.2.i24, label %for.inc.1.i23.for.end.i41_crit_edge

for.inc.1.i23.for.end.i41_crit_edge:              ; preds = %for.inc.1.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.2.i24:                                    ; preds = %for.inc.1.i23
  %121 = and i32 %ratr_value.3188.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool103.not.3.i = icmp eq i32 %121, 0
  br i1 %tobool103.not.3.i, label %for.inc.3.i25, label %for.inc.2.i24.for.end.i41_crit_edge

for.inc.2.i24.for.end.i41_crit_edge:              ; preds = %for.inc.2.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.3.i25:                                    ; preds = %for.inc.2.i24
  %122 = and i32 %ratr_value.3188.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool103.not.4.i = icmp eq i32 %122, 0
  br i1 %tobool103.not.4.i, label %for.inc.4.i26, label %for.inc.3.i25.for.end.i41_crit_edge

for.inc.3.i25.for.end.i41_crit_edge:              ; preds = %for.inc.3.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.4.i26:                                    ; preds = %for.inc.3.i25
  %123 = and i32 %ratr_value.3188.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool103.not.5.i = icmp eq i32 %123, 0
  br i1 %tobool103.not.5.i, label %for.inc.5.i27, label %for.inc.4.i26.for.end.i41_crit_edge

for.inc.4.i26.for.end.i41_crit_edge:              ; preds = %for.inc.4.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.5.i27:                                    ; preds = %for.inc.4.i26
  %124 = and i32 %ratr_value.3188.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool103.not.6.i = icmp eq i32 %124, 0
  br i1 %tobool103.not.6.i, label %for.inc.6.i28, label %for.inc.5.i27.for.end.i41_crit_edge

for.inc.5.i27.for.end.i41_crit_edge:              ; preds = %for.inc.5.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.6.i28:                                    ; preds = %for.inc.5.i27
  %125 = and i32 %ratr_value.3188.i, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool103.not.7.i = icmp eq i32 %125, 0
  br i1 %tobool103.not.7.i, label %for.inc.7.i29, label %for.inc.6.i28.for.end.i41_crit_edge

for.inc.6.i28.for.end.i41_crit_edge:              ; preds = %for.inc.6.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.7.i29:                                    ; preds = %for.inc.6.i28
  %126 = and i32 %ratr_value.3188.i, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool103.not.8.i = icmp eq i32 %126, 0
  br i1 %tobool103.not.8.i, label %for.inc.8.i30, label %for.inc.7.i29.for.end.i41_crit_edge

for.inc.7.i29.for.end.i41_crit_edge:              ; preds = %for.inc.7.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.8.i30:                                    ; preds = %for.inc.7.i29
  %127 = and i32 %ratr_value.3188.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool103.not.9.i = icmp eq i32 %127, 0
  br i1 %tobool103.not.9.i, label %for.inc.9.i31, label %for.inc.8.i30.for.end.i41_crit_edge

for.inc.8.i30.for.end.i41_crit_edge:              ; preds = %for.inc.8.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.9.i31:                                    ; preds = %for.inc.8.i30
  %128 = and i32 %ratr_value.3188.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool103.not.10.i = icmp eq i32 %128, 0
  br i1 %tobool103.not.10.i, label %for.inc.10.i32, label %for.inc.9.i31.for.end.i41_crit_edge

for.inc.9.i31.for.end.i41_crit_edge:              ; preds = %for.inc.9.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.10.i32:                                   ; preds = %for.inc.9.i31
  %129 = and i32 %ratr_value.3188.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool103.not.11.i = icmp eq i32 %129, 0
  br i1 %tobool103.not.11.i, label %for.inc.11.i33, label %for.inc.10.i32.for.end.i41_crit_edge

for.inc.10.i32.for.end.i41_crit_edge:             ; preds = %for.inc.10.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.11.i33:                                   ; preds = %for.inc.10.i32
  %130 = and i32 %ratr_value.3188.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool103.not.12.i = icmp eq i32 %130, 0
  br i1 %tobool103.not.12.i, label %for.inc.12.i34, label %for.inc.11.i33.for.end.i41_crit_edge

for.inc.11.i33.for.end.i41_crit_edge:             ; preds = %for.inc.11.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.12.i34:                                   ; preds = %for.inc.11.i33
  %131 = and i32 %ratr_value.3188.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool103.not.13.i = icmp eq i32 %131, 0
  br i1 %tobool103.not.13.i, label %for.inc.13.i35, label %for.inc.12.i34.for.end.i41_crit_edge

for.inc.12.i34.for.end.i41_crit_edge:             ; preds = %for.inc.12.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i41

for.inc.13.i35:                                   ; preds = %for.inc.12.i34
  call void @__sanitizer_cov_trace_pc() #9
  %132 = trunc i32 %ratr_value.3188.i to i16
  %133 = lshr i16 %132, 13
  %134 = trunc i16 %133 to i8
  %135 = and i8 %134, 1
  %extract.t = mul nuw nsw i8 %135, 17
  br label %for.end.i41

for.end.i41:                                      ; preds = %for.inc.13.i35, %for.inc.12.i34.for.end.i41_crit_edge, %for.inc.11.i33.for.end.i41_crit_edge, %for.inc.10.i32.for.end.i41_crit_edge, %for.inc.9.i31.for.end.i41_crit_edge, %for.inc.8.i30.for.end.i41_crit_edge, %for.inc.7.i29.for.end.i41_crit_edge, %for.inc.6.i28.for.end.i41_crit_edge, %for.inc.5.i27.for.end.i41_crit_edge, %for.inc.4.i26.for.end.i41_crit_edge, %for.inc.3.i25.for.end.i41_crit_edge, %for.inc.2.i24.for.end.i41_crit_edge, %for.inc.1.i23.for.end.i41_crit_edge, %for.inc.i22.for.end.i41_crit_edge, %if.then95.i.for.end.i41_crit_edge
  %shortgi_rate.0.lcssa.i36.off0 = phi i8 [ -1, %if.then95.i.for.end.i41_crit_edge ], [ -18, %for.inc.i22.for.end.i41_crit_edge ], [ -35, %for.inc.1.i23.for.end.i41_crit_edge ], [ -52, %for.inc.2.i24.for.end.i41_crit_edge ], [ -69, %for.inc.3.i25.for.end.i41_crit_edge ], [ -86, %for.inc.4.i26.for.end.i41_crit_edge ], [ -103, %for.inc.5.i27.for.end.i41_crit_edge ], [ -120, %for.inc.6.i28.for.end.i41_crit_edge ], [ 119, %for.inc.7.i29.for.end.i41_crit_edge ], [ 102, %for.inc.8.i30.for.end.i41_crit_edge ], [ 85, %for.inc.9.i31.for.end.i41_crit_edge ], [ 68, %for.inc.10.i32.for.end.i41_crit_edge ], [ 51, %for.inc.11.i33.for.end.i41_crit_edge ], [ 34, %for.inc.12.i34.for.end.i41_crit_edge ], [ %extract.t, %for.inc.13.i35 ]
  %write8_async.i.i37 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %136 = ptrtoint ptr %write8_async.i.i37 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8_async.i.i37, align 4
  tail call void %137(ptr noundef %1, i32 noundef 502, i8 noundef zeroext %shortgi_rate.0.lcssa.i36.off0) #7
  %cfg.i.i38 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %138 = ptrtoint ptr %cfg.i.i38 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg.i.i38, align 8
  %write_readback.i.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %write_readback.i.i39 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %write_readback.i.i39, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i.i40 = icmp eq i8 %141, 0
  br i1 %tobool.not.i.i40, label %for.end.i41.if.end118.i_crit_edge, label %if.then.i.i44

for.end.i41.if.end118.i_crit_edge:                ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then.i.i44:                                    ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %142 = ptrtoint ptr %read8_sync.i.i42 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read8_sync.i.i42, align 4
  %call.i.i43 = tail call zeroext i8 %143(ptr noundef %1, i32 noundef 502) #7
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then.i.i44, %for.end.i41.if.end118.i_crit_edge, %lor.lhs.false90.i.if.end118.i_crit_edge, %sw.epilog.i.if.end118.i_crit_edge
  %ratr_value.4.i = phi i32 [ %ratr_value.3188.i, %lor.lhs.false90.i.if.end118.i_crit_edge ], [ %ratr_value.3.i, %sw.epilog.i.if.end118.i_crit_edge ], [ %or96.i, %for.end.i41.if.end118.i_crit_edge ], [ %or96.i, %if.then.i.i44 ]
  %write32_async.i.i45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %144 = ptrtoint ptr %write32_async.i.i45 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write32_async.i.i45, align 4
  tail call void %145(ptr noundef %1, i32 noundef 388, i32 noundef %ratr_value.4.i) #7
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %146 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cfg.i173.i, align 8
  %write_readback.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %write_readback.i174.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %write_readback.i174.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i175.i = icmp eq i8 %149, 0
  br i1 %tobool.not.i175.i, label %if.end118.i.rtl92se_update_hal_rate_table.exit_crit_edge, label %if.then.i177.i

if.end118.i.rtl92se_update_hal_rate_table.exit_crit_edge: ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl92se_update_hal_rate_table.exit

if.then.i177.i:                                   ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %150 = ptrtoint ptr %read32_sync.i.i46 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read32_sync.i.i46, align 4
  %call.i176.i = tail call i32 %151(ptr noundef %1, i32 noundef 388) #7
  br label %rtl92se_update_hal_rate_table.exit

rtl92se_update_hal_rate_table.exit:               ; preds = %if.then.i177.i, %if.end118.i.rtl92se_update_hal_rate_table.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %ratr_value.4.i)
  %tobool121.not.i = icmp ult i32 %ratr_value.4.i, 4096
  %.192.i = select i1 %tobool121.not.i, i32 9, i32 8
  %call125.i = tail call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef %.192.i) #7
  %read32_sync.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %152 = ptrtoint ptr %read32_sync.i178.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read32_sync.i178.i, align 4
  %call.i179.i = tail call i32 %153(ptr noundef %1, i32 noundef 388) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4194304, i32 noundef 3, ptr noundef nonnull @.str.89, i32 noundef %call.i179.i) #7
  br label %if.end

if.end:                                           ; preds = %rtl92se_update_hal_rate_table.exit, %if.then253.i, %rtl_write_dword.exit14.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_update_channel_access_setting(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %8 = ptrtoint ptr %sifs_timer to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3598, ptr %sifs_timer, align 2
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg, align 8
  %ops3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops3, align 4
  %set_hw_reg4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %set_hw_reg4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_hw_reg4, align 4
  call void %14(ptr noundef %hw, i8 noundef zeroext 14, ptr noundef nonnull %sifs_timer) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sifs_timer) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92se_gpio_radio_on_off_checking(ptr noundef %hw, ptr nocapture noundef writeonly %valid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %up_first_time = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %up_first_time to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %up_first_time, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %being_init_adapter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 2
  %4 = ptrtoint ptr %being_init_adapter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %being_init_adapter, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %swrf_processing = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 3
  %6 = ptrtoint ptr %swrf_processing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %swrf_processing, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %do.body8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %rf_ps_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 5
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %rfchange_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rfchange_inprogress, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call9) #7
  br label %cleanup

if.else:                                          ; preds = %do.body8
  %10 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call9) #7
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %11 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_ps_level, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else.if.end22_crit_edge, label %if.then21

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl92se_power_domain_init(ptr noundef %hw)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else.if.end22_crit_edge
  %call23 = tail call fastcc zeroext i8 @_rtl92se_rf_onoff_detect(ptr noundef %hw)
  %hwradiooff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 4
  %13 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hwradiooff, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp ne i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call23)
  %cmp27 = icmp eq i8 %call23, 0
  %or.cond = select i1 %tobool25.not, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.end22.do.body44_crit_edge, label %if.else31

if.end22.do.body44_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

if.else31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool33.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call23)
  %cmp35 = icmp eq i8 %call23, 2
  %or.cond127 = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %or.cond127, label %if.else31.do.body44_crit_edge, label %if.else61

if.else31.do.body44_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.body44:                                        ; preds = %if.else31.do.body44_crit_edge, %if.end22.do.body44_crit_edge
  %.str.30.sink = phi ptr [ @.str.29, %if.end22.do.body44_crit_edge ], [ @.str.30, %if.else31.do.body44_crit_edge ]
  %storemerge = phi i8 [ 0, %if.end22.do.body44_crit_edge ], [ 1, %if.else31.do.body44_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull %.str.30.sink) #7
  %15 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %hwradiooff, align 4
  br label %if.end88

if.else61:                                        ; preds = %if.else31
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %16 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_rfps_level, align 4
  %and62 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %brmerge = select i1 %tobool63.not, i1 true, i1 %tobool20.not
  br i1 %brmerge, label %if.else61.if.end88_crit_edge, label %if.then67

if.else61.if.end88_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then67:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_rtl92s_phy_set_rfhalt(ptr noundef %hw)
  %18 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_ps_level, align 4
  %or = or i32 %19, 8
  store i32 %or, ptr %cur_ps_level, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then67, %if.else61.if.end88_crit_edge, %do.body44
  %call80 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rf_ps_lock) #7
  %20 = ptrtoint ptr %rfchange_inprogress to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %rfchange_inprogress, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rf_ps_lock, i32 noundef %call80) #7
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %valid, align 1
  %22 = ptrtoint ptr %hwradiooff to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hwradiooff, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool90.not = icmp eq i8 %23, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then13, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then13 ], [ %tobool90.not, %if.end88 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92se_power_domain_init(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %psc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %psc, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %3 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %1, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool.not = icmp sgt i8 %call.i, -1
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %and2 = and i8 %call.i, 63
  %call4 = tail call fastcc zeroext i8 @_rtl92s_set_sysclk(ptr noundef %hw, i8 noundef zeroext %and2)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool5.not = icmp eq i8 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 40, i8 noundef zeroext 0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end9.rtl_write_byte.exit_crit_edge, label %if.then.i

if.end9.rtl_write_byte.exit_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i167 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 40) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.end9.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 32, i8 noundef zeroext 52) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i170 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i170 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i170, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i171 = icmp eq i8 %18, 0
  br i1 %tobool.not.i171, label %rtl_write_byte.exit.rtl_write_byte.exit175_crit_edge, label %if.then.i174

rtl_write_byte.exit.rtl_write_byte.exit175_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit175

if.then.i174:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i173 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 32) #7
  br label %rtl_write_byte.exit175

rtl_write_byte.exit175:                           ; preds = %if.then.i174, %rtl_write_byte.exit.rtl_write_byte.exit175_crit_edge
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i177 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 3) #7
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %23 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rfoff_reason, align 8
  %and12 = and i32 %24, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %tmpu1b.0.v = select i1 %tobool13.not, i8 115, i8 -5
  %tmpu1b.0 = and i8 %tmpu1b.0.v, %call.i177
  %25 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8_async.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %tmpu1b.0) #7
  %27 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i, align 8
  %write_readback.i180 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i180 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i180, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i181 = icmp eq i8 %30, 0
  br i1 %tobool.not.i181, label %rtl_write_byte.exit175.rtl_write_byte.exit185_crit_edge, label %if.then.i184

rtl_write_byte.exit175.rtl_write_byte.exit185_crit_edge: ; preds = %rtl_write_byte.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit185

if.then.i184:                                     ; preds = %rtl_write_byte.exit175
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i, align 4
  %call.i183 = tail call zeroext i8 %32(ptr noundef %1, i32 noundef 3) #7
  br label %rtl_write_byte.exit185

rtl_write_byte.exit185:                           ; preds = %if.then.i184, %rtl_write_byte.exit175.rtl_write_byte.exit185_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  %34 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i, align 4
  tail call void %35(ptr noundef %1, i32 noundef 64, i8 noundef zeroext 0) #7
  %36 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i, align 8
  %write_readback.i188 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i188 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i188, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i189 = icmp eq i8 %39, 0
  br i1 %tobool.not.i189, label %rtl_write_byte.exit185.rtl_write_byte.exit193_crit_edge, label %if.then.i192

rtl_write_byte.exit185.rtl_write_byte.exit193_crit_edge: ; preds = %rtl_write_byte.exit185
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit193

if.then.i192:                                     ; preds = %rtl_write_byte.exit185
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i, align 4
  %call.i191 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_byte.exit193

rtl_write_byte.exit193:                           ; preds = %if.then.i192, %rtl_write_byte.exit185.rtl_write_byte.exit193_crit_edge
  %42 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i, align 4
  tail call void %43(ptr noundef %1, i32 noundef 68, i8 noundef zeroext 0) #7
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i, align 8
  %write_readback.i196 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i196 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i196, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i197 = icmp eq i8 %47, 0
  br i1 %tobool.not.i197, label %rtl_write_byte.exit193.rtl_write_byte.exit201_crit_edge, label %if.then.i200

rtl_write_byte.exit193.rtl_write_byte.exit201_crit_edge: ; preds = %rtl_write_byte.exit193
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit201

if.then.i200:                                     ; preds = %rtl_write_byte.exit193
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i, align 4
  %call.i199 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 68) #7
  br label %rtl_write_byte.exit201

rtl_write_byte.exit201:                           ; preds = %if.then.i200, %rtl_write_byte.exit193.rtl_write_byte.exit201_crit_edge
  %50 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read8_sync.i, align 4
  %call.i203 = tail call zeroext i8 %51(ptr noundef %1, i32 noundef 1378) #7
  %52 = or i8 %call.i203, 8
  %53 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write8_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1378, i8 noundef zeroext %52) #7
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i206 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i206 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i206, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i207 = icmp eq i8 %58, 0
  br i1 %tobool.not.i207, label %rtl_write_byte.exit201.rtl_write_byte.exit211_crit_edge, label %if.then.i210

rtl_write_byte.exit201.rtl_write_byte.exit211_crit_edge: ; preds = %rtl_write_byte.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit211

if.then.i210:                                     ; preds = %rtl_write_byte.exit201
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i209 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 1378) #7
  br label %rtl_write_byte.exit211

rtl_write_byte.exit211:                           ; preds = %if.then.i210, %rtl_write_byte.exit201.rtl_write_byte.exit211_crit_edge
  %61 = and i8 %call.i203, -9
  %62 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1378, i8 noundef zeroext %61) #7
  %64 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i, align 8
  %write_readback.i214 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i214 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i214, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i215 = icmp eq i8 %67, 0
  br i1 %tobool.not.i215, label %rtl_write_byte.exit211.rtl_write_byte.exit219_crit_edge, label %if.then.i218

rtl_write_byte.exit211.rtl_write_byte.exit219_crit_edge: ; preds = %rtl_write_byte.exit211
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit219

if.then.i218:                                     ; preds = %rtl_write_byte.exit211
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i, align 4
  %call.i217 = tail call zeroext i8 %69(ptr noundef %1, i32 noundef 1378) #7
  br label %rtl_write_byte.exit219

rtl_write_byte.exit219:                           ; preds = %if.then.i218, %rtl_write_byte.exit211.rtl_write_byte.exit219_crit_edge
  %70 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i, align 4
  %call.i221 = tail call zeroext i8 %71(ptr noundef %1, i32 noundef 38) #7
  %72 = or i8 %call.i221, 1
  %73 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write8_async.i, align 4
  tail call void %74(ptr noundef %1, i32 noundef 38, i8 noundef zeroext %72) #7
  %75 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i, align 8
  %write_readback.i224 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i224 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i224, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i225 = icmp eq i8 %78, 0
  br i1 %tobool.not.i225, label %rtl_write_byte.exit219.rtl_write_byte.exit229_crit_edge, label %if.then.i228

rtl_write_byte.exit219.rtl_write_byte.exit229_crit_edge: ; preds = %rtl_write_byte.exit219
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit229

if.then.i228:                                     ; preds = %rtl_write_byte.exit219
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8_sync.i, align 4
  %call.i227 = tail call zeroext i8 %80(ptr noundef %1, i32 noundef 38) #7
  br label %rtl_write_byte.exit229

rtl_write_byte.exit229:                           ; preds = %if.then.i228, %rtl_write_byte.exit219.rtl_write_byte.exit229_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 322122000) #7
  %82 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i, align 4
  %call.i231 = tail call zeroext i8 %83(ptr noundef %1, i32 noundef 39) #7
  %84 = and i8 %call.i231, -5
  %85 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write8_async.i, align 4
  tail call void %86(ptr noundef %1, i32 noundef 39, i8 noundef zeroext %84) #7
  %87 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i, align 8
  %write_readback.i234 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write_readback.i234 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %write_readback.i234, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i235 = icmp eq i8 %90, 0
  br i1 %tobool.not.i235, label %rtl_write_byte.exit229.rtl_write_byte.exit239_crit_edge, label %if.then.i238

rtl_write_byte.exit229.rtl_write_byte.exit239_crit_edge: ; preds = %rtl_write_byte.exit229
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit239

if.then.i238:                                     ; preds = %rtl_write_byte.exit229
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read8_sync.i, align 4
  %call.i237 = tail call zeroext i8 %92(ptr noundef %1, i32 noundef 39) #7
  br label %rtl_write_byte.exit239

rtl_write_byte.exit239:                           ; preds = %if.then.i238, %rtl_write_byte.exit229.rtl_write_byte.exit239_crit_edge
  %93 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8_sync.i, align 4
  %call.i241 = tail call zeroext i8 %94(ptr noundef %1, i32 noundef 16) #7
  %95 = or i8 %call.i241, 1
  %96 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write8_async.i, align 4
  tail call void %97(ptr noundef %1, i32 noundef 16, i8 noundef zeroext %95) #7
  %98 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i, align 8
  %write_readback.i244 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i244 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i244, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i245 = icmp eq i8 %101, 0
  br i1 %tobool.not.i245, label %rtl_write_byte.exit239.rtl_write_byte.exit249_crit_edge, label %if.then.i248

rtl_write_byte.exit239.rtl_write_byte.exit249_crit_edge: ; preds = %rtl_write_byte.exit239
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit249

if.then.i248:                                     ; preds = %rtl_write_byte.exit239
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8_sync.i, align 4
  %call.i247 = tail call zeroext i8 %103(ptr noundef %1, i32 noundef 16) #7
  br label %rtl_write_byte.exit249

rtl_write_byte.exit249:                           ; preds = %if.then.i248, %rtl_write_byte.exit239.rtl_write_byte.exit249_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #7
  %105 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read8_sync.i, align 4
  %call.i251 = tail call zeroext i8 %106(ptr noundef %1, i32 noundef 16) #7
  %107 = or i8 %call.i251, 2
  %108 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write8_async.i, align 4
  tail call void %109(ptr noundef %1, i32 noundef 16, i8 noundef zeroext %107) #7
  %110 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i, align 8
  %write_readback.i254 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %write_readback.i254 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %write_readback.i254, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i255 = icmp eq i8 %113, 0
  br i1 %tobool.not.i255, label %rtl_write_byte.exit249.rtl_write_byte.exit259_crit_edge, label %if.then.i258

rtl_write_byte.exit249.rtl_write_byte.exit259_crit_edge: ; preds = %rtl_write_byte.exit249
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit259

if.then.i258:                                     ; preds = %rtl_write_byte.exit249
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read8_sync.i, align 4
  %call.i257 = tail call zeroext i8 %115(ptr noundef %1, i32 noundef 16) #7
  br label %rtl_write_byte.exit259

rtl_write_byte.exit259:                           ; preds = %if.then.i258, %rtl_write_byte.exit249.rtl_write_byte.exit259_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 214748000) #7
  %117 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read8_sync.i, align 4
  %call.i261 = tail call zeroext i8 %118(ptr noundef %1, i32 noundef 32) #7
  %119 = or i8 %call.i261, 1
  %120 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write8_async.i, align 4
  tail call void %121(ptr noundef %1, i32 noundef 32, i8 noundef zeroext %119) #7
  %122 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i, align 8
  %write_readback.i264 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %write_readback.i264 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %write_readback.i264, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i265 = icmp eq i8 %125, 0
  br i1 %tobool.not.i265, label %rtl_write_byte.exit259.rtl_write_byte.exit269_crit_edge, label %if.then.i268

rtl_write_byte.exit259.rtl_write_byte.exit269_crit_edge: ; preds = %rtl_write_byte.exit259
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit269

if.then.i268:                                     ; preds = %rtl_write_byte.exit259
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read8_sync.i, align 4
  %call.i267 = tail call zeroext i8 %127(ptr noundef %1, i32 noundef 32) #7
  br label %rtl_write_byte.exit269

rtl_write_byte.exit269:                           ; preds = %if.then.i268, %rtl_write_byte.exit259.rtl_write_byte.exit269_crit_edge
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %128 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %read16_sync.i, align 4
  %call.i270 = tail call zeroext i16 %129(ptr noundef %1, i32 noundef 0) #7
  %130 = or i16 %call.i270, 2048
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %131 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write16_async.i, align 4
  tail call void %132(ptr noundef %1, i32 noundef 0, i16 noundef zeroext %130) #7
  %133 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cfg.i, align 8
  %write_readback.i272 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %write_readback.i272 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %write_readback.i272, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i273 = icmp eq i8 %136, 0
  br i1 %tobool.not.i273, label %rtl_write_byte.exit269.rtl_write_word.exit_crit_edge, label %if.then.i276

rtl_write_byte.exit269.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_byte.exit269
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i276:                                     ; preds = %rtl_write_byte.exit269
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read16_sync.i, align 4
  %call.i275 = tail call zeroext i16 %138(ptr noundef %1, i32 noundef 0) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i276, %rtl_write_byte.exit269.rtl_write_word.exit_crit_edge
  %139 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read16_sync.i, align 4
  %call.i278 = tail call zeroext i16 %140(ptr noundef %1, i32 noundef 2) #7
  %141 = or i16 %call.i278, 8192
  %142 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write16_async.i, align 4
  tail call void %143(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %141) #7
  %144 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cfg.i, align 8
  %write_readback.i281 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %write_readback.i281 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %write_readback.i281, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i282 = icmp eq i8 %147, 0
  br i1 %tobool.not.i282, label %rtl_write_word.exit.rtl_write_word.exit286_crit_edge, label %if.then.i285

rtl_write_word.exit.rtl_write_word.exit286_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit286

if.then.i285:                                     ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read16_sync.i, align 4
  %call.i284 = tail call zeroext i16 %149(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit286

rtl_write_word.exit286:                           ; preds = %if.then.i285, %rtl_write_word.exit.rtl_write_word.exit286_crit_edge
  %150 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %write8_async.i, align 4
  tail call void %151(ptr noundef %1, i32 noundef 1, i8 noundef zeroext 104) #7
  %152 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cfg.i, align 8
  %write_readback.i289 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %write_readback.i289 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %write_readback.i289, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i290 = icmp eq i8 %155, 0
  br i1 %tobool.not.i290, label %rtl_write_word.exit286.rtl_write_byte.exit294_crit_edge, label %if.then.i293

rtl_write_word.exit286.rtl_write_byte.exit294_crit_edge: ; preds = %rtl_write_word.exit286
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit294

if.then.i293:                                     ; preds = %rtl_write_word.exit286
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read8_sync.i, align 4
  %call.i292 = tail call zeroext i8 %157(ptr noundef %1, i32 noundef 1) #7
  br label %rtl_write_byte.exit294

rtl_write_byte.exit294:                           ; preds = %if.then.i293, %rtl_write_word.exit286.rtl_write_byte.exit294_crit_edge
  %158 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read8_sync.i, align 4
  %call.i296 = tail call zeroext i8 %159(ptr noundef %1, i32 noundef 40) #7
  %160 = or i8 %call.i296, 17
  %161 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write8_async.i, align 4
  tail call void %162(ptr noundef %1, i32 noundef 40, i8 noundef zeroext %160) #7
  %163 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i, align 8
  %write_readback.i299 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %write_readback.i299 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %write_readback.i299, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i300 = icmp eq i8 %166, 0
  br i1 %tobool.not.i300, label %rtl_write_byte.exit294.rtl_write_byte.exit304_crit_edge, label %if.then.i303

rtl_write_byte.exit294.rtl_write_byte.exit304_crit_edge: ; preds = %rtl_write_byte.exit294
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit304

if.then.i303:                                     ; preds = %rtl_write_byte.exit294
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %read8_sync.i, align 4
  %call.i302 = tail call zeroext i8 %168(ptr noundef %1, i32 noundef 40) #7
  br label %rtl_write_byte.exit304

rtl_write_byte.exit304:                           ; preds = %if.then.i303, %rtl_write_byte.exit294.rtl_write_byte.exit304_crit_edge
  %169 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %read8_sync.i, align 4
  %call.i306 = tail call zeroext i8 %170(ptr noundef %1, i32 noundef 41) #7
  %171 = or i8 %call.i306, 1
  %172 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write8_async.i, align 4
  tail call void %173(ptr noundef %1, i32 noundef 41, i8 noundef zeroext %171) #7
  %174 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg.i, align 8
  %write_readback.i309 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write_readback.i309 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %write_readback.i309, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i310 = icmp eq i8 %177, 0
  br i1 %tobool.not.i310, label %rtl_write_byte.exit304.rtl_write_byte.exit314_crit_edge, label %if.then.i313

rtl_write_byte.exit304.rtl_write_byte.exit314_crit_edge: ; preds = %rtl_write_byte.exit304
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit314

if.then.i313:                                     ; preds = %rtl_write_byte.exit304
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read8_sync.i, align 4
  %call.i312 = tail call zeroext i8 %179(ptr noundef %1, i32 noundef 41) #7
  br label %rtl_write_byte.exit314

rtl_write_byte.exit314:                           ; preds = %if.then.i313, %rtl_write_byte.exit304.rtl_write_byte.exit314_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 214748000) #7
  %181 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %write8_async.i, align 4
  tail call void %182(ptr noundef %1, i32 noundef 0, i8 noundef zeroext -90) #7
  %183 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %cfg.i, align 8
  %write_readback.i317 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %write_readback.i317 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %write_readback.i317, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i318 = icmp eq i8 %186, 0
  br i1 %tobool.not.i318, label %rtl_write_byte.exit314.rtl_write_byte.exit322_crit_edge, label %if.then.i321

rtl_write_byte.exit314.rtl_write_byte.exit322_crit_edge: ; preds = %rtl_write_byte.exit314
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit322

if.then.i321:                                     ; preds = %rtl_write_byte.exit314
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %read8_sync.i, align 4
  %call.i320 = tail call zeroext i8 %188(ptr noundef %1, i32 noundef 0) #7
  br label %rtl_write_byte.exit322

rtl_write_byte.exit322:                           ; preds = %if.then.i321, %rtl_write_byte.exit314.rtl_write_byte.exit322_crit_edge
  %189 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %read16_sync.i, align 4
  %call.i324 = tail call zeroext i16 %190(ptr noundef %1, i32 noundef 8) #7
  %191 = or i16 %call.i324, 6144
  %192 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write16_async.i, align 4
  tail call void %193(ptr noundef %1, i32 noundef 8, i16 noundef zeroext %191) #7
  %194 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfg.i, align 8
  %write_readback.i327 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %write_readback.i327 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %write_readback.i327, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i328 = icmp eq i8 %197, 0
  br i1 %tobool.not.i328, label %rtl_write_byte.exit322.rtl_write_word.exit332_crit_edge, label %if.then.i331

rtl_write_byte.exit322.rtl_write_word.exit332_crit_edge: ; preds = %rtl_write_byte.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit332

if.then.i331:                                     ; preds = %rtl_write_byte.exit322
  call void @__sanitizer_cov_trace_pc() #9
  %198 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read16_sync.i, align 4
  %call.i330 = tail call zeroext i16 %199(ptr noundef %1, i32 noundef 8) #7
  br label %rtl_write_word.exit332

rtl_write_word.exit332:                           ; preds = %if.then.i331, %rtl_write_byte.exit322.rtl_write_word.exit332_crit_edge
  %200 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read16_sync.i, align 4
  %call.i334 = tail call zeroext i16 %201(ptr noundef %1, i32 noundef 2) #7
  %202 = or i16 %call.i334, 2048
  %203 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write16_async.i, align 4
  tail call void %204(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %202) #7
  %205 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cfg.i, align 8
  %write_readback.i337 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %write_readback.i337 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %write_readback.i337, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i338 = icmp eq i8 %208, 0
  br i1 %tobool.not.i338, label %rtl_write_word.exit332.rtl_write_word.exit342_crit_edge, label %if.then.i341

rtl_write_word.exit332.rtl_write_word.exit342_crit_edge: ; preds = %rtl_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit342

if.then.i341:                                     ; preds = %rtl_write_word.exit332
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %read16_sync.i, align 4
  %call.i340 = tail call zeroext i16 %210(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit342

rtl_write_word.exit342:                           ; preds = %if.then.i341, %rtl_write_word.exit332.rtl_write_word.exit342_crit_edge
  %211 = or i16 %call.i334, -30720
  %212 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %write16_async.i, align 4
  tail call void %213(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %211) #7
  %214 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cfg.i, align 8
  %write_readback.i345 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %write_readback.i345 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %write_readback.i345, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i346 = icmp eq i8 %217, 0
  br i1 %tobool.not.i346, label %rtl_write_word.exit342.rtl_write_word.exit350_crit_edge, label %if.then.i349

rtl_write_word.exit342.rtl_write_word.exit350_crit_edge: ; preds = %rtl_write_word.exit342
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit350

if.then.i349:                                     ; preds = %rtl_write_word.exit342
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %read16_sync.i, align 4
  %call.i348 = tail call zeroext i16 %219(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit350

rtl_write_word.exit350:                           ; preds = %if.then.i349, %rtl_write_word.exit342.rtl_write_word.exit350_crit_edge
  %220 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %read16_sync.i, align 4
  %call.i352 = tail call zeroext i16 %221(ptr noundef %1, i32 noundef 8) #7
  %222 = and i16 %call.i352, -5
  %223 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %write16_async.i, align 4
  tail call void %224(ptr noundef %1, i32 noundef 8, i16 noundef zeroext %222) #7
  %225 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cfg.i, align 8
  %write_readback.i355 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %write_readback.i355 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %write_readback.i355, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i356 = icmp eq i8 %228, 0
  br i1 %tobool.not.i356, label %rtl_write_word.exit350.rtl_write_word.exit360_crit_edge, label %if.then.i359

rtl_write_word.exit350.rtl_write_word.exit360_crit_edge: ; preds = %rtl_write_word.exit350
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit360

if.then.i359:                                     ; preds = %rtl_write_word.exit350
  call void @__sanitizer_cov_trace_pc() #9
  %229 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %read16_sync.i, align 4
  %call.i358 = tail call zeroext i16 %230(ptr noundef %1, i32 noundef 8) #7
  br label %rtl_write_word.exit360

rtl_write_word.exit360:                           ; preds = %if.then.i359, %rtl_write_word.exit350.rtl_write_word.exit360_crit_edge
  %231 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %read8_sync.i, align 4
  %call.i362 = tail call zeroext i8 %232(ptr noundef %1, i32 noundef 9) #7
  %233 = and i8 %call.i362, 63
  %234 = or i8 %233, -128
  %call87 = tail call fastcc zeroext i8 @_rtl92s_set_sysclk(ptr noundef %hw, i8 noundef zeroext %234)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call87)
  %tobool88.not = icmp eq i8 %call87, 0
  br i1 %tobool88.not, label %rtl_write_word.exit360.cleanup_crit_edge, label %if.end92

rtl_write_word.exit360.cleanup_crit_edge:         ; preds = %rtl_write_word.exit360
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %rtl_write_word.exit360
  %235 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write16_async.i, align 4
  tail call void %236(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 14332) #7
  %237 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cfg.i, align 8
  %write_readback.i365 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %write_readback.i365 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %write_readback.i365, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i366 = icmp eq i8 %240, 0
  br i1 %tobool.not.i366, label %if.end92.rtl_write_word.exit370_crit_edge, label %if.then.i369

if.end92.rtl_write_word.exit370_crit_edge:        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit370

if.then.i369:                                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %241 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %read16_sync.i, align 4
  %call.i368 = tail call zeroext i16 %242(ptr noundef %1, i32 noundef 64) #7
  br label %rtl_write_word.exit370

rtl_write_word.exit370:                           ; preds = %if.then.i369, %if.end92.rtl_write_word.exit370_crit_edge
  %243 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %sw_led0.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 18, i32 1
  %up_first_time.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 3
  %245 = ptrtoint ptr %up_first_time.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %up_first_time.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i371 = icmp eq i8 %246, 0
  br i1 %tobool.not.i371, label %if.end.i, label %rtl_write_word.exit370.cleanup_crit_edge

rtl_write_word.exit370.cleanup_crit_edge:         ; preds = %rtl_write_word.exit370
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %rtl_write_word.exit370
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %244, i32 0, i32 21, i32 18
  %247 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %rfoff_reason.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %248)
  %cmp.i = icmp eq i32 %248, 268435456
  br i1 %cmp.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92se_sw_led_on(ptr noundef %hw, ptr noundef %sw_led0.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl92se_sw_led_off(ptr noundef %hw, ptr noundef %sw_led0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then3.i, %rtl_write_word.exit370.cleanup_crit_edge, %rtl_write_word.exit360.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %249 = ptrtoint ptr %psc to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 0, ptr %psc, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_rtl92se_rf_onoff_detect(ptr nocapture noundef readonly %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 753, i8 noundef zeroext 8) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 753) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %read8_sync.i13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i13, align 4
  %call.i14 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 750) #7
  %12 = and i8 %call.i14, -9
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 750, i8 noundef zeroext %12) #7
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i17 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i17, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i18 = icmp eq i8 %18, 0
  br i1 %tobool.not.i18, label %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge, label %if.then.i21

rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit22

if.then.i21:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %read8_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i13, align 4
  %call.i20 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 750) #7
  br label %rtl_write_byte.exit22

rtl_write_byte.exit22:                            ; preds = %if.then.i21, %rtl_write_byte.exit.rtl_write_byte.exit22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  %31 = ptrtoint ptr %read8_sync.i13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i13, align 4
  %call.i24 = tail call zeroext i8 %32(ptr noundef %1, i32 noundef 748) #7
  %33 = lshr i8 %call.i24, 2
  %34 = and i8 %33, 2
  %35 = xor i8 %34, 2
  ret i8 %35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_set_key(ptr noundef %hw, i32 noundef %key_index, ptr noundef %p_macaddr, i1 noundef zeroext %is_group, i8 noundef zeroext %enc_algo, i1 noundef zeroext %is_wepkey, i1 noundef zeroext %clear_all) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.31) #7
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
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.rtl92se_set_key, i32 0, i32 %14
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
  %17 = load i8, ptr %use_defaultkey, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool29.not = icmp eq i8 %17, 0
  br i1 %tobool29.not, label %if.else34, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %lor.lhs.false.if.then31_crit_edge, %sw.epilog.if.then31_crit_edge
  %arrayidx32 = getelementptr [4 x [6 x i8]], ptr @rtl92se_set_key.cam_const_addr, i32 0, i32 %key_index
  br label %if.end55

if.else34:                                        ; preds = %lor.lhs.false
  br i1 %is_group, label %if.else34.if.end55_crit_edge, label %if.else37

if.else34.if.end55_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else37:                                        ; preds = %if.else34
  %opmode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opmode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp38 = icmp eq i32 %19, 3
  br i1 %cmp38, label %if.then40, label %if.else37.if.end55_crit_edge

if.else37.if.end55_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then40:                                        ; preds = %if.else37
  %call41 = tail call zeroext i8 @rtl_cam_get_free_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  %conv42 = zext i8 %call41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call41)
  %cmp43 = icmp ugt i8 %call41, 31
  br i1 %cmp43, label %do.end48, label %if.then40.if.end55_crit_edge

if.then40.if.end55_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end48:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end55:                                         ; preds = %if.then40.if.end55_crit_edge, %if.else37.if.end55_crit_edge, %if.else34.if.end55_crit_edge, %if.then31
  %macaddr.0 = phi ptr [ %arrayidx32, %if.then31 ], [ @rtl92se_set_key.cam_const_broad, %if.else34.if.end55_crit_edge ], [ %p_macaddr, %if.else37.if.end55_crit_edge ], [ %p_macaddr, %if.then40.if.end55_crit_edge ]
  %entry_id.1 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end55_crit_edge ], [ 4, %if.else37.if.end55_crit_edge ], [ %conv42, %if.then40.if.end55_crit_edge ]
  %is_pairwise.0.off0 = phi i1 [ false, %if.then31 ], [ false, %if.else34.if.end55_crit_edge ], [ true, %if.else37.if.end55_crit_edge ], [ true, %if.then40.if.end55_crit_edge ]
  %key_index.addr.0 = phi i32 [ %key_index, %if.then31 ], [ %key_index, %if.else34.if.end55_crit_edge ], [ 0, %if.else37.if.end55_crit_edge ], [ 0, %if.then40.if.end55_crit_edge ]
  %arrayidx58 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 8, i32 %key_index.addr.0
  %20 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp60 = icmp eq i8 %21, 0
  br i1 %cmp60, label %if.then62, label %if.else69

if.then62:                                        ; preds = %if.end55
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.36, i32 noundef %entry_id.1) #7
  %opmode63 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %22 = ptrtoint ptr %opmode63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %opmode63, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp64 = icmp eq i32 %23, 3
  br i1 %cmp64, label %if.then66, label %if.then62.if.end67_crit_edge

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl_cam_del_entry(ptr noundef %hw, ptr noundef %p_macaddr) #7
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then62.if.end67_crit_edge
  %call68 = tail call i32 @rtl_cam_delete_one_entry(ptr noundef %hw, ptr noundef %p_macaddr, i32 noundef %entry_id.1) #7
  br label %cleanup

if.else69:                                        ; preds = %if.end55
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.37) #7
  br i1 %is_pairwise.0.off0, label %if.then71, label %if.else78

if.then71:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.38) #7
  %arrayidx75 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %key_index.addr.0
  %call77 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx75) #7
  br label %cleanup

if.else78:                                        ; preds = %if.else69
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 512, i32 noundef 3, ptr noundef nonnull @.str.39) #7
  %opmode79 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %opmode79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %opmode79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp80 = icmp eq i32 %25, 1
  br i1 %cmp80, label %if.then82, label %if.else78.if.end90_crit_edge

if.else78.if.end90_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then82:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %dev_addr = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 19
  %arrayidx87 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call89 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %dev_addr, i32 noundef 0, i32 noundef 4, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx87) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then82, %if.else78.if.end90_crit_edge
  %arrayidx94 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 16, i32 7, i32 %entry_id.1
  %call96 = tail call zeroext i8 @rtl_cam_add_one_entry(ptr noundef %hw, ptr noundef %macaddr.0, i32 noundef %key_index.addr.0, i32 noundef %entry_id.1, i32 noundef %enc_algo.addr.0, i32 noundef 0, ptr noundef %arrayidx94) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then71, %if.end67, %do.end48, %if.then
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
define dso_local void @rtl92se_suspend(ptr nocapture noundef readonly %hw) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %up_first_time = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %up_first_time to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %up_first_time, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92se_resume(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !203
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 64, ptr noundef nonnull %val) #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %and3 = and i32 %6, -65281
  %call4 = call i32 @pci_write_config_dword(ptr noundef %8, i32 noundef 64, i32 noundef %and3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_rtl92se_halset_sysclk(ptr nocapture noundef readonly %hw, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 9, i8 noundef zeroext %data) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 9) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 85899200) #7
  %read8_sync.i34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i34, align 4
  %call.i35 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 9) #7
  %13 = and i8 %call.i35, -128
  %and = zext i8 %13 to i32
  %conv1 = zext i8 %data to i32
  %and2 = and i32 %conv1, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %and)
  %cmp = icmp eq i32 %and2, %and
  %and5 = and i32 %conv1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %while.cond.preheader, label %rtl_write_byte.exit.if.end23_crit_edge

rtl_write_byte.exit.if.end23_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

while.cond.preheader:                             ; preds = %rtl_write_byte.exit
  %14 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i34, align 4
  %call.i3739 = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 9) #7
  %conv740 = zext i8 %call.i3739 to i32
  %and841 = and i32 %conv740, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and841)
  %tobool9.not42 = icmp eq i32 %and841, 0
  br i1 %tobool9.not42, label %while.cond.preheader.do.end_crit_edge, label %while.cond.preheader.if.end23_crit_edge

while.cond.preheader.if.end23_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  %conv744 = phi i32 [ %conv7, %if.end17.do.end_crit_edge ], [ %conv740, %while.cond.preheader.do.end_crit_edge ]
  %dec43 = phi i8 [ %dec, %if.end17.do.end_crit_edge ], [ 99, %while.cond.preheader.do.end_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv744) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec43)
  %cond = icmp eq i8 %dec43, 0
  br i1 %cond, label %do.end.if.end23_crit_edge, label %if.end17

do.end.if.end23_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end17:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %dec = add nsw i8 %dec43, -1
  %17 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i34, align 4
  %call.i37 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 9) #7
  %conv7 = zext i8 %call.i37 to i32
  %and8 = and i32 %conv7, 64
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end17.do.end_crit_edge, label %while.end.loopexit

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.end.loopexit:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %phi.cmp = icmp ne i8 %dec, 0
  br label %if.end23

if.end23:                                         ; preds = %while.end.loopexit, %do.end.if.end23_crit_edge, %while.cond.preheader.if.end23_crit_edge, %rtl_write_byte.exit.if.end23_crit_edge
  %bresult.0.off0 = phi i1 [ %cmp, %rtl_write_byte.exit.if.end23_crit_edge ], [ true, %while.cond.preheader.if.end23_crit_edge ], [ %phi.cmp, %while.end.loopexit ], [ false, %do.end.if.end23_crit_edge ]
  %conv25 = zext i1 %bresult.0.off0 to i8
  ret i8 %conv25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_sw_led_on(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_rtl92s_set_sysclk(ptr nocapture noundef readonly %hw, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 9, i8 noundef zeroext %data) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 9) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 85899200) #7
  %read8_sync.i35 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %11 = ptrtoint ptr %read8_sync.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i35, align 4
  %call.i36 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 9) #7
  %13 = and i8 %call.i36, -128
  %and = zext i8 %13 to i32
  %conv1 = zext i8 %data to i32
  %and2 = and i32 %conv1, 128
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %and)
  %cmp = icmp eq i32 %and2, %and
  %and5 = and i32 %conv1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %while.cond.preheader, label %rtl_write_byte.exit.if.end24_crit_edge

rtl_write_byte.exit.if.end24_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

while.cond.preheader:                             ; preds = %rtl_write_byte.exit
  %14 = ptrtoint ptr %read8_sync.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i35, align 4
  %call.i3840 = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 9) #7
  %conv741 = zext i8 %call.i3840 to i32
  %and842 = and i32 %conv741, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and842)
  %tobool9.not43 = icmp eq i32 %and842, 0
  br i1 %tobool9.not43, label %while.cond.preheader.do.end_crit_edge, label %while.cond.preheader.if.end24_crit_edge

while.cond.preheader.if.end24_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

do.end:                                           ; preds = %if.end18.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  %conv745 = phi i32 [ %conv7, %if.end18.do.end_crit_edge ], [ %conv741, %while.cond.preheader.do.end_crit_edge ]
  %dec44 = phi i8 [ %dec, %if.end18.do.end_crit_edge ], [ 99, %while.cond.preheader.do.end_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv745) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec44)
  %cond = icmp eq i8 %dec44, 0
  br i1 %cond, label %do.end.if.end24_crit_edge, label %if.end18

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end18:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %dec = add nsw i8 %dec44, -1
  %17 = ptrtoint ptr %read8_sync.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i35, align 4
  %call.i38 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 9) #7
  %conv7 = zext i8 %call.i38 to i32
  %and8 = and i32 %conv7, 64
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end18.do.end_crit_edge, label %while.end.loopexit

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.end.loopexit:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %phi.cmp = icmp ne i8 %dec, 0
  br label %if.end24

if.end24:                                         ; preds = %while.end.loopexit, %do.end.if.end24_crit_edge, %while.cond.preheader.if.end24_crit_edge, %rtl_write_byte.exit.if.end24_crit_edge
  %result.0.off0 = phi i1 [ %cmp, %rtl_write_byte.exit.if.end24_crit_edge ], [ true, %while.cond.preheader.if.end24_crit_edge ], [ %phi.cmp, %while.end.loopexit ], [ false, %do.end.if.end24_crit_edge ]
  %conv26 = zext i1 %result.0.off0 to i8
  ret i8 %conv26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_efuse_shadow_map_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @efuse_read_1byte(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_sw_led_off(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rtl92se_get_hw_reg._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rtl92se_get_hw_reg._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 114, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 159, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 175, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 218, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 256, i32 6}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 273, i32 6}
!18 = !{ptr @rtl92se_set_hw_reg._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl92se_set_hw_reg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 279, i32 4}
!22 = !{ptr @rtl92se_set_hw_reg._entry.10, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 409, i32 3}
!24 = !{ptr @rtl92se_set_hw_reg._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 420, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 426, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 438, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 963, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 978, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rtl92se_hw_init._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rtl92se_hw_init._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 998, i32 3}
!40 = !{ptr @rtl92se_hw_init._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rtl92se_hw_init._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1016, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1224, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1608, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1989, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1992, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1997, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2001, i32 3}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtl92se_read_eeprom_info._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtl92se_read_eeprom_info._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2334, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2341, i32 3}
!64 = !{ptr @rtl92se_set_key.cam_const_addr, !65, !"cam_const_addr", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2391, i32 12}
!66 = !{ptr @rtl92se_set_key.cam_const_broad, !67, !"cam_const_broad", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2397, i32 12}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2406, i32 3}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2434, i32 4}
!72 = !{ptr @rtl92se_set_key._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @rtl92se_set_key._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2452, i32 7}
!76 = !{ptr @rtl92se_set_key._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @rtl92se_set_key._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2465, i32 4}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2472, i32 4}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2475, i32 5}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2483, i32 5}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 722, i32 3}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @_rtl92se_macconfig_before_fwdownload._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @_rtl92se_macconfig_before_fwdownload._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 472, i32 4}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @_rtl92se_halset_sysclk._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @_rtl92se_halset_sysclk._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 873, i32 3}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 876, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1149, i32 3}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1154, i32 3}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1159, i32 3}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1164, i32 3}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1168, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @_rtl92se_set_media_status._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @_rtl92se_set_media_status._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1341, i32 4}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @_rtl92s_phy_set_rfhalt._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @_rtl92s_phy_set_rfhalt._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1282, i32 4}
!120 = !{ptr @_rtl92s_set_sysclk._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @_rtl92s_set_sysclk._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1657, i32 3}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @_rtl92se_read_adapter_info._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @_rtl92se_read_adapter_info._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1661, i32 3}
!129 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @_rtl92se_read_adapter_info._entry.57, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @_rtl92se_read_adapter_info._entry_ptr.61, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1668, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1673, i32 3}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1694, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1696, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1698, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1700, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1702, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1713, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1737, i32 4}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1744, i32 4}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1751, i32 4}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1785, i32 4}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1822, i32 4}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1826, i32 4}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1881, i32 2}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1885, i32 3}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1889, i32 3}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1893, i32 3}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1897, i32 3}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1901, i32 2}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1911, i32 2}
!175 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1920, i32 2}
!177 = !{ptr @.str.84, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1928, i32 2}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1945, i32 2}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1966, i32 4}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 1973, i32 2}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2258, i32 2}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/hw.c", i32 2103, i32 2}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i8 0, i8 2}
!199 = !{i64 959340}
!200 = !{i64 956853}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 959625}
!203 = !{!"auto-init"}
!204 = !{!"branch_weights", i32 2000, i32 1}
