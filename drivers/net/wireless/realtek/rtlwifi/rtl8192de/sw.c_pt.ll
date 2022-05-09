; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.129, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.129 = type { i32, i16 }
%struct.rtl_priv = type { ptr, %struct.completion, %struct.list_head, ptr, ptr, %struct.rtl_dualmac_easy_concurrent_ctl, %struct.rtl_dmsp_ctl, %struct.rtl_locks, %struct.rtl_works, %struct.rtl_mac, %struct.rtl_hal, %struct.rtl_regulatory, %struct.rtl_rfkill, %struct.rtl_io, %struct.rtl_phy, %struct.rtl_dm, %struct.rtl_security, %struct.rtl_efuse, %struct.rtl_led_ctl, %struct.rtl_tx_report, %struct.rtl_scan_list, %struct.rtl_ps_ctl, %struct.rate_adaptive, %struct.dynamic_primary_cca, %struct.wireless_stats, %struct.rt_link_detect, %struct.false_alarm_statistics, ptr, %struct.list_head, %struct.sk_buff_head, %struct.rtl_debug, i32, ptr, ptr, i32, %struct.dig_t, %struct.ps_t, i32, i32, i32, i32, i8, i8, ptr, i32, i8, i8, [5 x i8], %struct.proxim, %struct.bt_coexist_info, i8, %struct.wiphy_wowlan_support, [0 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtl_dualmac_easy_concurrent_ctl = type { i32, i8, i8, i8, i8 }
%struct.rtl_dmsp_ctl = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i32 }
%struct.rtl_locks = type { %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rtl_works = type { ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.tasklet_struct, %struct.tasklet_struct, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.140, i32 }
%union.anon.140 = type { ptr }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.rtl_debug = type { ptr, [20 x i8] }
%struct.dig_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.ps_t = type { i8, i8, i8, i8, i8, i32 }
%struct.proxim = type { i8, ptr, ptr, ptr }
%struct.bt_coexist_info = type { ptr, %struct.rtl_btc_info, ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl_btc_info = type { i8, i8, i8, i8, i8, i8, i32 }
%struct.wiphy_wowlan_support = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.rtl_pci = type { ptr, i8, i8, i8, i8, i8, i8, [9 x %struct.rtl8192_tx_ring], [9 x i32], i32, [2 x %struct.rtl8192_rx_ring], i32, i16, i32, i8, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, i8, i8, i8 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }
%struct.rtl8192_rx_ring = type { ptr, i32, i32, [512 x ptr], ptr, i16 }

@__UNIQUE_ID_author358 = internal constant [57 x i8] c"rtl8192de.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [55 x i8] c"rtl8192de.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [58 x i8] c"rtl8192de.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [72 x i8] c"rtl8192de.file=drivers/net/wireless/realtek/rtlwifi/rtl8192de/rtl8192de\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [22 x i8] c"rtl8192de.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [67 x i8] c"rtl8192de.description=Realtek 8192DE 802.11n Dual Mac PCI wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [43 x i8] c"rtl8192de.firmware=rtlwifi/rtl8192defw.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8192de.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl92de_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } { %struct.rtl_mod_params { i64 0, i8 0, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0, i32 1, i8 0, i8 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype365 = internal constant [30 x i8] c"rtl8192de.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8192de.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype366 = internal constant [35 x i8] c"rtl8192de.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_ips = internal constant [14 x i8] c"rtl8192de.ips\00", align 1
@__param_ips = internal constant %struct.kernel_param { ptr @__param_str_ips, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_ipstype367 = internal constant [28 x i8] c"rtl8192de.parmtype=ips:bool\00", section ".modinfo", align 1
@__param_str_swlps = internal constant [16 x i8] c"rtl8192de.swlps\00", align 1
@__param_swlps = internal constant %struct.kernel_param { ptr @__param_str_swlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 17) } }, section "__param", align 4
@__UNIQUE_ID_swlpstype368 = internal constant [30 x i8] c"rtl8192de.parmtype=swlps:bool\00", section ".modinfo", align 1
@__param_str_fwlps = internal constant [16 x i8] c"rtl8192de.fwlps\00", align 1
@__param_fwlps = internal constant %struct.kernel_param { ptr @__param_str_fwlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 18) } }, section "__param", align 4
@__UNIQUE_ID_fwlpstype369 = internal constant [30 x i8] c"rtl8192de.parmtype=fwlps:bool\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [15 x i8] c"rtl8192de.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92de_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_aspmtype370 = internal constant [28 x i8] c"rtl8192de.parmtype=aspm:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8192de.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl92de_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype371 = internal constant [37 x i8] c"rtl8192de.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc372 = internal constant [63 x i8] c"rtl8192de.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_ips373 = internal constant [68 x i8] c"rtl8192de.parm=ips:Set to 0 to not use link power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_swlps374 = internal constant [72 x i8] c"rtl8192de.parm=swlps:Set to 1 to use SW control power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_fwlps375 = internal constant [72 x i8] c"rtl8192de.parm=fwlps:Set to 1 to use FW control power save (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm376 = internal constant [57 x i8] c"rtl8192de.parm=aspm:Set to 1 to enable ASPM (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level377 = internal constant [61 x i8] c"rtl8192de.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask378 = internal constant [53 x i8] c"rtl8192de.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"globalmutex_power\00", [46 x i8] zeroinitializer }, align 32
@globalmutex_power = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"globalmutex_for_fwdownload\00", [37 x i8] zeroinitializer }, align 32
@globalmutex_for_fwdownload = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"globalmutex_for_power_and_efuse\00", [32 x i8] zeroinitializer }, align 32
@globalmutex_for_power_and_efuse = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rtl92de_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @rtl92de_pci_ids, ptr @rtl_pci_probe, ptr @rtl_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtlwifi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_rtl8192de__379_394_rtl92de_module_init6 = internal global ptr @rtl92de_module_init, section ".initcall6.init", align 4
@__exitcall_rtl92de_module_exit = internal global ptr @rtl92de_module_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8192de\00", [22 x i8] zeroinitializer }, align 32
@rtl92de_pci_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33171, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92de_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 43, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92de_hal_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtlwifi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl92de_hal_cfg = internal constant { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 2, i8 1, ptr @.str.3, ptr null, ptr @rtl8192de_hal_ops, ptr @rtl92de_mod_params, ptr null, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 256, i32 4096, i32 1, i32 0, i32 0, i32 0, i32 52, i32 48, i32 0, i32 48, i32 32768, i32 4096, i32 32, i32 0, i32 256, i32 32, i32 512, i32 0, i32 0, i32 1648, i32 1652, i32 1656, i32 1660, i32 1664, i32 0, i32 1, i32 2, i32 4, i32 5, i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 0, i32 512, i32 256, i32 0, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 0, i32 8352, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@rtl8192de_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl92d_init_sw_vars, ptr @rtl92d_deinit_sw_vars, ptr null, ptr @rtl92de_read_eeprom_info, ptr @rtl92de_interrupt_recognized, ptr @rtl92de_hw_init, ptr @rtl92de_card_disable, ptr @rtl92de_suspend, ptr @rtl92de_resume, ptr @rtl92de_enable_interrupt, ptr @rtl92de_disable_interrupt, ptr @rtl92de_set_network_type, ptr @rtl92de_set_check_bssid, ptr @rtl92d_phy_set_bw_mode, ptr @rtl92d_phy_sw_chnl, ptr @rtl92de_set_qos, ptr @rtl92de_set_beacon_related_registers, ptr @rtl92de_set_beacon_interval, ptr @rtl92de_update_interrupt_mask, ptr @rtl92de_get_hw_reg, ptr @rtl92de_set_hw_reg, ptr @rtl92de_update_hal_rate_tbl, ptr null, ptr null, ptr null, ptr null, ptr @rtl92de_tx_fill_desc, ptr null, ptr @rtl92de_tx_fill_cmddesc, ptr null, ptr @rtl92de_rx_query_desc, ptr @rtl92de_update_channel_access_setting, ptr @rtl92de_gpio_radio_on_off_checking, ptr @rtl92d_dm_watchdog, ptr @rtl_phy_scan_operation_backup, ptr @rtl92d_phy_set_rf_power_state, ptr @rtl92de_led_control, ptr @rtl92de_set_desc, ptr @rtl92de_get_desc, ptr @rtl92de_is_tx_desc_closed, ptr @rtl92de_tx_polling, ptr @rtl92de_enable_hw_security_config, ptr @rtl92de_set_key, ptr @rtl92de_init_sw_leds, ptr null, ptr @rtl92d_phy_query_bb_reg, ptr @rtl92d_phy_set_bb_reg, ptr @rtl92d_phy_query_rf_reg, ptr @rtl92d_phy_set_rf_reg, ptr @rtl92d_linked_set_reg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl_btc_status_false, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8192defw.bin\00", [40 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016rtl8192de: Power Save off (module option)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92d_init_sw_vars\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr = internal global ptr @rtl92d_init_sw_vars._entry, section ".printk_index", align 4
@rtl92d_init_sw_vars._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016rtl8192de: FW Power Save off (module option)\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr.10 = internal global ptr @rtl92d_init_sw_vars._entry.8, section ".printk_index", align 4
@rtl92d_init_sw_vars._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192de: Can't alloc buffer for fw\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr.13 = internal global ptr @rtl92d_init_sw_vars._entry.11, section ".printk_index", align 4
@rtl92d_init_sw_vars._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016rtl8192de: Driver for Realtek RTL8192DE WLAN interface\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr.16 = internal global ptr @rtl92d_init_sw_vars._entry.14, section ".printk_index", align 4
@rtl92d_init_sw_vars._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.7, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016rtl8192de: Loading firmware file %s\0A\00", [57 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr.19 = internal global ptr @rtl92d_init_sw_vars._entry.17, section ".printk_index", align 4
@rtl92d_init_sw_vars._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.7, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl8192de: Failed to request firmware!\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92d_init_sw_vars._entry_ptr.22 = internal global ptr @rtl92d_init_sw_vars._entry.20, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@rtl92de_module_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl8192de: No device found\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"rtl92de_mod_params\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 232, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"globalmutex_power\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 375, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"globalmutex_for_fwdownload\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 376, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [32 x i8] c"globalmutex_for_power_and_efuse\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 377, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"rtl92de_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 365, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 366, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"rtl92de_pci_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 333, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"rtlwifi_pm_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 363, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"rtl92de_hal_cfg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 242, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"rtl8192de_hal_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 186, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 70, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 127, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 129, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 151, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 157, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 164, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1984, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 385, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_aspm376, ptr @__UNIQUE_ID_aspmtype370, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_debug_level377, ptr @__UNIQUE_ID_debug_leveltype366, ptr @__UNIQUE_ID_debug_mask378, ptr @__UNIQUE_ID_debug_masktype371, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_fwlps375, ptr @__UNIQUE_ID_fwlpstype369, ptr @__UNIQUE_ID_ips373, ptr @__UNIQUE_ID_ipstype367, ptr @__UNIQUE_ID_license362, ptr @__UNIQUE_ID_swenc372, ptr @__UNIQUE_ID_swenctype365, ptr @__UNIQUE_ID_swlps374, ptr @__UNIQUE_ID_swlpstype368, ptr @__exitcall_rtl92de_module_exit, ptr @__initcall__kmod_rtl8192de__379_394_rtl92de_module_init6, ptr @__param_aspm, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_fwlps, ptr @__param_ips, ptr @__param_swenc, ptr @__param_swlps, ptr @rtl92d_init_sw_vars._entry, ptr @rtl92d_init_sw_vars._entry.11, ptr @rtl92d_init_sw_vars._entry.14, ptr @rtl92d_init_sw_vars._entry.17, ptr @rtl92d_init_sw_vars._entry.20, ptr @rtl92d_init_sw_vars._entry.8, ptr @rtl92d_init_sw_vars._entry_ptr, ptr @rtl92d_init_sw_vars._entry_ptr.10, ptr @rtl92d_init_sw_vars._entry_ptr.13, ptr @rtl92d_init_sw_vars._entry_ptr.16, ptr @rtl92d_init_sw_vars._entry_ptr.19, ptr @rtl92d_init_sw_vars._entry_ptr.22, ptr @rtl92de_module_exit, ptr @rtl92de_mod_params, ptr @.str, ptr @globalmutex_power, ptr @.str.1, ptr @globalmutex_for_fwdownload, ptr @.str.2, ptr @globalmutex_for_power_and_efuse, ptr @rtl92de_driver, ptr @.str.3, ptr @rtl92de_pci_ids, ptr @rtlwifi_pm_ops, ptr @rtl92de_hal_cfg, ptr @rtl8192de_hal_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @globalmutex_power to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @globalmutex_for_fwdownload to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @globalmutex_for_power_and_efuse to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtlwifi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92de_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192de_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_init_sw_vars._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl92de_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl92de_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92de_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl92de_driver, ptr noundef null, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %land.end

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

land.end:                                         ; preds = %entry
  %.b39 = load i1, ptr @rtl92de_module_init.__already_done, align 1
  br i1 %.b39, label %land.end.if.end35_crit_edge, label %if.then6, !prof !125

land.end.if.end35_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92de_module_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 385, i32 noundef 9, ptr noundef nonnull @.str.24) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then6, %land.end.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_pci_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92d_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dm_initialgain_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 5
  %2 = ptrtoint ptr %dm_initialgain_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dm_initialgain_enable, align 4
  %dm_flag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 30
  %3 = ptrtoint ptr %dm_flag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dm_flag, align 4
  %disable_framebursting = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 11
  %4 = ptrtoint ptr %disable_framebursting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %disable_framebursting, align 2
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %5 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %thermalvalue, align 2
  %useramask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 14
  %6 = ptrtoint ptr %useramask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %useramask, align 1
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %7 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %current_bandtype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %spec.select = select i1 %cmp, i8 36, i8 1
  %9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 1
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %11 = ptrtoint ptr %macphymode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %macphymode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10.not = icmp eq i32 %12, 0
  br i1 %cmp10.not, label %entry.if.end13_crit_edge, label %if.then11

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %disable_amsdu_8k = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 64
  %13 = ptrtoint ptr %disable_amsdu_8k to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %disable_amsdu_8k, align 1
  %rxbuffersize = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %rxbuffersize to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 4096, ptr %rxbuffersize, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %entry.if.end13_crit_edge
  %transmit_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 3
  %15 = ptrtoint ptr %transmit_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12800, ptr %transmit_config, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -268408050, ptr %receive_config, align 4
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %17 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7007, ptr %irq_mask, align 4
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 768, ptr %arrayidx15, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mod_params, align 4
  %inactiveps = getelementptr inbounds %struct.rtl_mod_params, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %inactiveps, align 8, !range !126
  %inactiveps16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %25 = ptrtoint ptr %inactiveps16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %inactiveps16, align 1
  %26 = load ptr, ptr %mod_params, align 4
  %swctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %swctrl_lps to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %swctrl_lps, align 1, !range !126
  %swctrl_lps21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 8
  %29 = ptrtoint ptr %swctrl_lps21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %swctrl_lps21, align 4
  %30 = load ptr, ptr %mod_params, align 4
  %fwctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fwctrl_lps, align 2, !range !126
  %fwctrl_lps27 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %33 = ptrtoint ptr %fwctrl_lps27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %fwctrl_lps27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool31.not = icmp eq i8 %24, 0
  br i1 %tobool31.not, label %do.end, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %34 = ptrtoint ptr %fwctrl_lps27 to i32
  call void @__asan_load1_noabort(i32 %34)
  %.pr = load i8, ptr %fwctrl_lps27, align 2
  br label %if.end33

if.end33:                                         ; preds = %do.end, %if.end13.if.end33_crit_edge
  %35 = phi i8 [ %.pr, %do.end ], [ %32, %if.end13.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool36.not = icmp eq i8 %35, 0
  br i1 %tobool36.not, label %do.end40, label %if.end33.if.end43_crit_edge

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end33.if.end43_crit_edge
  %reg_fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 12
  %36 = ptrtoint ptr %reg_fwctrl_lps to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %reg_fwctrl_lps, align 8
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %37 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %reg_max_lps_awakeintvl, align 2
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %40 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %const_amdpci_aspm.i, align 1
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %const_pci_aspm.i, align 4
  %const_devicepci_aspm_setting.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 23
  %42 = ptrtoint ptr %const_devicepci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %const_devicepci_aspm_setting.i, align 1
  %const_hostpci_aspm_setting.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %const_hostpci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %const_hostpci_aspm_setting.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %44 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %const_hwsw_rfoff_d3.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mod_params.i, align 4
  %aspm_support.i = getelementptr inbounds %struct.rtl_mod_params, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %aspm_support.i, align 8
  %conv.i = trunc i32 %50 to i8
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %51 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i, ptr %const_support_pciaspm.i, align 1
  %52 = load i8, ptr %reg_fwctrl_lps, align 8
  %.off = add i8 %52, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end72.sink.split, label %if.end43.if.end72_crit_edge

if.end43.if.end72_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end72.sink.split:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %fwctrl_psmode60 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  %53 = ptrtoint ptr %fwctrl_psmode60 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %fwctrl_psmode60, align 1
  br label %if.end72

if.end72:                                         ; preds = %if.end72.sink.split, %if.end43.if.end72_crit_edge
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %54 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %earlymode_enable, align 1
  %arrayidx77 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0
  %lock.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %55 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx77, ptr %arrayidx77, align 4
  %prev.i.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx77, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 1
  %57 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx77.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1
  %lock.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %58 = ptrtoint ptr %arrayidx77.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx77.1, ptr %arrayidx77.1, align 4
  %prev.i.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx77.1, ptr %prev.i.i.1, align 4
  %qlen.i.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 1
  %60 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %qlen.i.i.1, align 4
  %arrayidx77.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2
  %lock.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %61 = ptrtoint ptr %arrayidx77.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx77.2, ptr %arrayidx77.2, align 4
  %prev.i.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx77.2, ptr %prev.i.i.2, align 4
  %qlen.i.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 1
  %63 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %qlen.i.i.2, align 4
  %arrayidx77.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3
  %lock.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %64 = ptrtoint ptr %arrayidx77.3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %arrayidx77.3, ptr %arrayidx77.3, align 4
  %prev.i.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx77.3, ptr %prev.i.i.3, align 4
  %qlen.i.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 1
  %66 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %qlen.i.i.3, align 4
  %arrayidx77.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4
  %lock.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.4, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %67 = ptrtoint ptr %arrayidx77.4 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx77.4, ptr %arrayidx77.4, align 4
  %prev.i.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx77.4, ptr %prev.i.i.4, align 4
  %qlen.i.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 1
  %69 = ptrtoint ptr %qlen.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %qlen.i.i.4, align 4
  %arrayidx77.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5
  %lock.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.5, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %70 = ptrtoint ptr %arrayidx77.5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx77.5, ptr %arrayidx77.5, align 4
  %prev.i.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx77.5, ptr %prev.i.i.5, align 4
  %qlen.i.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 1
  %72 = ptrtoint ptr %qlen.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %qlen.i.i.5, align 4
  %arrayidx77.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6
  %lock.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.6, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %73 = ptrtoint ptr %arrayidx77.6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx77.6, ptr %arrayidx77.6, align 4
  %prev.i.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx77.6, ptr %prev.i.i.6, align 4
  %qlen.i.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 1
  %75 = ptrtoint ptr %qlen.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %qlen.i.i.6, align 4
  %arrayidx77.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7
  %lock.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.7, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %76 = ptrtoint ptr %arrayidx77.7 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx77.7, ptr %arrayidx77.7, align 4
  %prev.i.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx77.7, ptr %prev.i.i.7, align 4
  %qlen.i.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 1
  %78 = ptrtoint ptr %qlen.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %qlen.i.i.7, align 4
  %call78 = tail call noalias ptr @vzalloc(i32 noundef 32768) #9
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %79 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call78, ptr %pfirmware, align 8
  %tobool82.not = icmp eq ptr %call78, null
  br i1 %tobool82.not, label %do.end86, label %if.end89

do.end86:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end89:                                         ; preds = %if.end72
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %80 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 32768, ptr %max_fw_size, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #8
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4) #8
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io, align 4
  %call101 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.4, ptr noundef %82, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl_fw_cb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end89.cleanup_crit_edge, label %do.end106

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end106:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #8
  %83 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %84) #5
  %85 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end106, %if.end89.cleanup_crit_edge, %do.end86
  %retval.0 = phi i32 [ 1, %do.end106 ], [ 1, %do.end86 ], [ 0, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92d_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %2 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfirmware, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vfree(ptr noundef nonnull %3) #5
  %4 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pfirmware, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0
  tail call void @skb_queue_purge(ptr noundef %arrayidx) #5
  %arrayidx.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1
  tail call void @skb_queue_purge(ptr noundef %arrayidx.1) #5
  %arrayidx.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2
  tail call void @skb_queue_purge(ptr noundef %arrayidx.2) #5
  %arrayidx.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3
  tail call void @skb_queue_purge(ptr noundef %arrayidx.3) #5
  %arrayidx.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4
  tail call void @skb_queue_purge(ptr noundef %arrayidx.4) #5
  %arrayidx.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5
  tail call void @skb_queue_purge(ptr noundef %arrayidx.5) #5
  %arrayidx.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6
  tail call void @skb_queue_purge(ptr noundef %arrayidx.6) #5
  %arrayidx.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7
  tail call void @skb_queue_purge(ptr noundef %arrayidx.7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_interrupt_recognized(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92de_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92de_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92d_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92de_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92de_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92d_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtl92de_get_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92de_is_tx_desc_closed(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_tx_polling(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92de_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92d_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92d_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92d_linked_set_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_btc_status_false() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_cb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_author358, !1, !"__UNIQUE_ID_author358", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 341, i32 1}
!2 = !{ptr @__UNIQUE_ID_author359, !3, !"__UNIQUE_ID_author359", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 342, i32 1}
!4 = !{ptr @__UNIQUE_ID_author360, !5, !"__UNIQUE_ID_author360", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 343, i32 1}
!6 = !{ptr @__UNIQUE_ID_file361, !7, !"__UNIQUE_ID_file361", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 344, i32 1}
!8 = !{ptr @__UNIQUE_ID_license362, !7, !"__UNIQUE_ID_license362", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description363, !10, !"__UNIQUE_ID_description363", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 345, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware364, !12, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 346, i32 1}
!13 = !{ptr @__param_swenc, !14, !"__param_swenc", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 348, i32 1}
!15 = !{ptr @__UNIQUE_ID_swenctype365, !14, !"__UNIQUE_ID_swenctype365", i1 false, i1 false}
!16 = !{ptr @__param_debug_level, !17, !"__param_debug_level", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 349, i32 1}
!18 = !{ptr @__UNIQUE_ID_debug_leveltype366, !17, !"__UNIQUE_ID_debug_leveltype366", i1 false, i1 false}
!19 = !{ptr @__param_ips, !20, !"__param_ips", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 350, i32 1}
!21 = !{ptr @__UNIQUE_ID_ipstype367, !20, !"__UNIQUE_ID_ipstype367", i1 false, i1 false}
!22 = !{ptr @__param_swlps, !23, !"__param_swlps", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 351, i32 1}
!24 = !{ptr @__UNIQUE_ID_swlpstype368, !23, !"__UNIQUE_ID_swlpstype368", i1 false, i1 false}
!25 = !{ptr @__param_fwlps, !26, !"__param_fwlps", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 352, i32 1}
!27 = !{ptr @__UNIQUE_ID_fwlpstype369, !26, !"__UNIQUE_ID_fwlpstype369", i1 false, i1 false}
!28 = !{ptr @__param_aspm, !29, !"__param_aspm", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 353, i32 1}
!30 = !{ptr @__UNIQUE_ID_aspmtype370, !29, !"__UNIQUE_ID_aspmtype370", i1 false, i1 false}
!31 = !{ptr @__param_debug_mask, !32, !"__param_debug_mask", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 354, i32 1}
!33 = !{ptr @__UNIQUE_ID_debug_masktype371, !32, !"__UNIQUE_ID_debug_masktype371", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_swenc372, !35, !"__UNIQUE_ID_swenc372", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 355, i32 1}
!36 = !{ptr @__UNIQUE_ID_ips373, !37, !"__UNIQUE_ID_ips373", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 356, i32 1}
!38 = !{ptr @__UNIQUE_ID_swlps374, !39, !"__UNIQUE_ID_swlps374", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 357, i32 1}
!40 = !{ptr @__UNIQUE_ID_fwlps375, !41, !"__UNIQUE_ID_fwlps375", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 358, i32 1}
!42 = !{ptr @__UNIQUE_ID_aspm376, !43, !"__UNIQUE_ID_aspm376", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 359, i32 1}
!44 = !{ptr @__UNIQUE_ID_debug_level377, !45, !"__UNIQUE_ID_debug_level377", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 360, i32 1}
!46 = !{ptr @__UNIQUE_ID_debug_mask378, !47, !"__UNIQUE_ID_debug_mask378", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 361, i32 1}
!48 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 375, i32 1}
!50 = !{ptr @globalmutex_power, !49, !"globalmutex_power", i1 false, i1 false}
!51 = !{ptr @.str.1, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 376, i32 1}
!53 = !{ptr @globalmutex_for_fwdownload, !52, !"globalmutex_for_fwdownload", i1 false, i1 false}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 377, i32 1}
!56 = !{ptr @globalmutex_for_power_and_efuse, !55, !"globalmutex_for_power_and_efuse", i1 false, i1 false}
!57 = !{ptr @__initcall__kmod_rtl8192de__379_394_rtl92de_module_init6, !58, !"__initcall__kmod_rtl8192de__379_394_rtl92de_module_init6", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 394, i32 1}
!59 = !{ptr @__exitcall_rtl92de_module_exit, !60, !"__exitcall_rtl92de_module_exit", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 395, i32 1}
!61 = !{ptr @__param_str_swenc, !14, !"__param_str_swenc", i1 false, i1 false}
!62 = !{ptr @rtl92de_mod_params, !63, !"rtl92de_mod_params", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 232, i32 30}
!64 = !{ptr @__param_str_debug_level, !17, !"__param_str_debug_level", i1 false, i1 false}
!65 = !{ptr @__param_str_ips, !20, !"__param_str_ips", i1 false, i1 false}
!66 = !{ptr @__param_str_swlps, !23, !"__param_str_swlps", i1 false, i1 false}
!67 = !{ptr @__param_str_fwlps, !26, !"__param_str_fwlps", i1 false, i1 false}
!68 = !{ptr @__param_str_aspm, !29, !"__param_str_aspm", i1 false, i1 false}
!69 = !{ptr @__param_str_debug_mask, !32, !"__param_str_debug_mask", i1 false, i1 false}
!70 = !{ptr @.str.3, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 366, i32 10}
!72 = !{ptr @rtl92de_driver, !73, !"rtl92de_driver", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 365, i32 26}
!74 = !{ptr @rtl92de_pci_ids, !75, !"rtl92de_pci_ids", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 333, i32 35}
!76 = !{ptr @rtl92de_hal_cfg, !77, !"rtl92de_hal_cfg", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 242, i32 33}
!78 = !{ptr @rtl8192de_hal_ops, !79, !"rtl8192de_hal_ops", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 186, i32 27}
!80 = !{ptr @.str.4, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 70, i32 18}
!82 = !{ptr @.str.5, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 127, i32 3}
!84 = !{ptr @.str.6, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.7, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rtl92d_init_sw_vars._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @rtl92d_init_sw_vars._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.9, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 129, i32 3}
!90 = !{ptr @rtl92d_init_sw_vars._entry.8, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rtl92d_init_sw_vars._entry_ptr.10, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.12, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 151, i32 3}
!94 = !{ptr @rtl92d_init_sw_vars._entry.11, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rtl92d_init_sw_vars._entry_ptr.13, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.15, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 156, i32 2}
!98 = !{ptr @rtl92d_init_sw_vars._entry.14, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rtl92d_init_sw_vars._entry_ptr.16, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 157, i32 2}
!102 = !{ptr @rtl92d_init_sw_vars._entry.17, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rtl92d_init_sw_vars._entry_ptr.19, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.21, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 164, i32 3}
!106 = !{ptr @rtl92d_init_sw_vars._entry.20, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rtl92d_init_sw_vars._entry_ptr.22, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @skb_queue_head_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!110 = !{ptr @.str.23, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @rtlwifi_pm_ops, !112, !"rtlwifi_pm_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 363, i32 8}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/sw.c", i32 385, i32 3}
!115 = !{ptr @.str.24, !114, !"<string literal>", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i8 0, i8 2}
