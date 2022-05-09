; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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

@__UNIQUE_ID_author356 = internal constant [55 x i8] c"rtl8192ee.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [58 x i8] c"rtl8192ee.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [72 x i8] c"rtl8192ee.file=drivers/net/wireless/realtek/rtlwifi/rtl8192ee/rtl8192ee\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [22 x i8] c"rtl8192ee.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [58 x i8] c"rtl8192ee.description=Realtek 8192EE 802.11n PCI wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [43 x i8] c"rtl8192ee.firmware=rtlwifi/rtl8192eefw.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8192ee.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl92ee_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } { %struct.rtl_mod_params { i64 0, i8 0, i32 0, i8 1, i8 0, i8 1, i8 1, i8 0, i32 1, i8 0, i8 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype362 = internal constant [30 x i8] c"rtl8192ee.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8192ee.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype363 = internal constant [35 x i8] c"rtl8192ee.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8192ee.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl92ee_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype364 = internal constant [37 x i8] c"rtl8192ee.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__param_str_ips = internal constant [14 x i8] c"rtl8192ee.ips\00", align 1
@__param_ips = internal constant %struct.kernel_param { ptr @__param_str_ips, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_ipstype365 = internal constant [28 x i8] c"rtl8192ee.parmtype=ips:bool\00", section ".modinfo", align 1
@__param_str_swlps = internal constant [16 x i8] c"rtl8192ee.swlps\00", align 1
@__param_swlps = internal constant %struct.kernel_param { ptr @__param_str_swlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 17) } }, section "__param", align 4
@__UNIQUE_ID_swlpstype366 = internal constant [30 x i8] c"rtl8192ee.parmtype=swlps:bool\00", section ".modinfo", align 1
@__param_str_fwlps = internal constant [16 x i8] c"rtl8192ee.fwlps\00", align 1
@__param_fwlps = internal constant %struct.kernel_param { ptr @__param_str_fwlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 18) } }, section "__param", align 4
@__UNIQUE_ID_fwlpstype367 = internal constant [30 x i8] c"rtl8192ee.parmtype=fwlps:bool\00", section ".modinfo", align 1
@__param_str_msi = internal constant [14 x i8] c"rtl8192ee.msi\00", align 1
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 19) } }, section "__param", align 4
@__UNIQUE_ID_msitype368 = internal constant [28 x i8] c"rtl8192ee.parmtype=msi:bool\00", section ".modinfo", align 1
@__param_str_dma64 = internal constant [16 x i8] c"rtl8192ee.dma64\00", align 1
@__param_dma64 = internal constant %struct.kernel_param { ptr @__param_str_dma64, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 20) } }, section "__param", align 4
@__UNIQUE_ID_dma64type369 = internal constant [30 x i8] c"rtl8192ee.parmtype=dma64:bool\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [15 x i8] c"rtl8192ee.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_aspmtype370 = internal constant [28 x i8] c"rtl8192ee.parmtype=aspm:int\00", section ".modinfo", align 1
@__param_str_disable_watchdog = internal constant [27 x i8] c"rtl8192ee.disable_watchdog\00", align 1
@__param_disable_watchdog = internal constant %struct.kernel_param { ptr @__param_str_disable_watchdog, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ee_mod_params, i64 28) } }, section "__param", align 4
@__UNIQUE_ID_disable_watchdogtype371 = internal constant [41 x i8] c"rtl8192ee.parmtype=disable_watchdog:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc372 = internal constant [63 x i8] c"rtl8192ee.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_ips373 = internal constant [68 x i8] c"rtl8192ee.parm=ips:Set to 0 to not use link power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_swlps374 = internal constant [72 x i8] c"rtl8192ee.parm=swlps:Set to 1 to use SW control power save (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_fwlps375 = internal constant [72 x i8] c"rtl8192ee.parm=fwlps:Set to 1 to use FW control power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_msi376 = internal constant [68 x i8] c"rtl8192ee.parm=msi:Set to 1 to use MSI interrupts mode (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_dma64377 = internal constant [57 x i8] c"rtl8192ee.parm=dma64:Set to 1 to use DMA 64 (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm378 = internal constant [57 x i8] c"rtl8192ee.parm=aspm:Set to 1 to enable ASPM (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level379 = internal constant [61 x i8] c"rtl8192ee.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask380 = internal constant [53 x i8] c"rtl8192ee.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_watchdog381 = internal constant [78 x i8] c"rtl8192ee.parm=disable_watchdog:Set to 1 to disable the watchdog (default 0)\0A\00", section ".modinfo", align 1
@__initcall__kmod_rtl8192ee__382_383_rtl92ee_driver_init6 = internal global ptr @rtl92ee_driver_init, section ".initcall6.init", align 4
@rtl92ee_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtl92ee_pci_ids, ptr @rtl_pci_probe, ptr @rtl_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtlwifi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtl92ee_driver_exit = internal global ptr @rtl92ee_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8192ee\00", [22 x i8] zeroinitializer }, align 32
@rtl92ee_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33163, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92ee_hal_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtlwifi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl92ee_hal_cfg = internal constant { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 2, i8 1, ptr @.str.1, ptr null, ptr @rtl8192ee_hal_ops, ptr @rtl92ee_mod_params, ptr null, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 256, i32 4096, i32 1, i32 176, i32 184, i32 0, i32 52, i32 48, i32 0, i32 48, i32 32768, i32 4096, i32 32, i32 2, i32 512, i32 64, i32 256, i32 18, i32 207, i32 1648, i32 1652, i32 1656, i32 1660, i32 1664, i32 0, i32 1, i32 2, i32 4, i32 5, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 0, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 0, i32 0, i32 512, i32 536870912, i32 1048576, i32 256, i32 2, i32 4096, i32 0, i32 65536, i32 128, i32 0, i32 33554432, i32 64, i32 67108864, i32 32, i32 16, i32 8, i32 4, i32 1, i32 0, i32 101711872, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtl92ee_pci\00", [20 x i8] zeroinitializer }, align 32
@rtl8192ee_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl92ee_init_sw_vars, ptr @rtl92ee_deinit_sw_vars, ptr null, ptr @rtl92ee_read_eeprom_info, ptr @rtl92ee_interrupt_recognized, ptr @rtl92ee_hw_init, ptr @rtl92ee_card_disable, ptr @rtl92ee_suspend, ptr @rtl92ee_resume, ptr @rtl92ee_enable_interrupt, ptr @rtl92ee_disable_interrupt, ptr @rtl92ee_set_network_type, ptr @rtl92ee_set_check_bssid, ptr @rtl92ee_phy_set_bw_mode, ptr @rtl92ee_phy_sw_chnl, ptr @rtl92ee_set_qos, ptr @rtl92ee_set_beacon_related_registers, ptr @rtl92ee_set_beacon_interval, ptr @rtl92ee_update_interrupt_mask, ptr @rtl92ee_get_hw_reg, ptr @rtl92ee_set_hw_reg, ptr @rtl92ee_update_hal_rate_tbl, ptr @rtl92ee_pre_fill_tx_bd_desc, ptr null, ptr @rtl92ee_rx_desc_buff_remained_cnt, ptr @rtl92ee_rx_check_dma_ok, ptr @rtl92ee_tx_fill_desc, ptr null, ptr @rtl92ee_tx_fill_cmddesc, ptr null, ptr @rtl92ee_rx_query_desc, ptr @rtl92ee_update_channel_access_setting, ptr @rtl92ee_gpio_radio_on_off_checking, ptr @rtl92ee_dm_watchdog, ptr @rtl92ee_phy_scan_operation_backup, ptr @rtl92ee_phy_set_rf_power_state, ptr @rtl92ee_led_control, ptr @rtl92ee_set_desc, ptr @rtl92ee_get_desc, ptr @rtl92ee_is_tx_desc_closed, ptr @rtl92ee_tx_polling, ptr @rtl92ee_enable_hw_security_config, ptr @rtl92ee_set_key, ptr @rtl92ee_init_sw_leds, ptr null, ptr @rtl92ee_phy_query_bb_reg, ptr @rtl92ee_phy_set_bb_reg, ptr @rtl92ee_phy_query_rf_reg, ptr @rtl92ee_phy_set_rf_reg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl92ee_fill_h2c_cmd, ptr null, ptr @rtl92ee_get_btc_status, ptr null, ptr null, ptr @rtl92ee_get_available_desc, ptr @rtl92ee_c2h_ra_report_handler }, [68 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8192ee: watchdog disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl92ee_init_sw_vars\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry_ptr = internal global ptr @rtl92ee_init_sw_vars._entry, section ".printk_index", align 4
@rtl92ee_init_sw_vars._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192ee: Can't alloc buffer for fw\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry_ptr.7 = internal global ptr @rtl92ee_init_sw_vars._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8192eefw.bin\00", [40 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8192ee: Using firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry_ptr.11 = internal global ptr @rtl92ee_init_sw_vars._entry.9, section ".printk_index", align 4
@rtl92ee_init_sw_vars._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl8192ee: Failed to request firmware!\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92ee_init_sw_vars._entry_ptr.14 = internal global ptr @rtl92ee_init_sw_vars._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"rtl92ee_mod_params\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 233, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"rtl92ee_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 375, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 383, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"rtl92ee_pci_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 338, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"rtlwifi_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 373, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"rtl92ee_hal_cfg\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 245, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 248, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"rtl8192ee_hal_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 182, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 120, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 144, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 149, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 152, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 157, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_aspm378, ptr @__UNIQUE_ID_aspmtype370, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_debug_level379, ptr @__UNIQUE_ID_debug_leveltype363, ptr @__UNIQUE_ID_debug_mask380, ptr @__UNIQUE_ID_debug_masktype364, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_disable_watchdog381, ptr @__UNIQUE_ID_disable_watchdogtype371, ptr @__UNIQUE_ID_dma64377, ptr @__UNIQUE_ID_dma64type369, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_fwlps375, ptr @__UNIQUE_ID_fwlpstype367, ptr @__UNIQUE_ID_ips373, ptr @__UNIQUE_ID_ipstype365, ptr @__UNIQUE_ID_license359, ptr @__UNIQUE_ID_msi376, ptr @__UNIQUE_ID_msitype368, ptr @__UNIQUE_ID_swenc372, ptr @__UNIQUE_ID_swenctype362, ptr @__UNIQUE_ID_swlps374, ptr @__UNIQUE_ID_swlpstype366, ptr @__exitcall_rtl92ee_driver_exit, ptr @__initcall__kmod_rtl8192ee__382_383_rtl92ee_driver_init6, ptr @__param_aspm, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_disable_watchdog, ptr @__param_dma64, ptr @__param_fwlps, ptr @__param_ips, ptr @__param_msi, ptr @__param_swenc, ptr @__param_swlps, ptr @rtl92ee_driver_exit, ptr @rtl92ee_init_sw_vars._entry, ptr @rtl92ee_init_sw_vars._entry.12, ptr @rtl92ee_init_sw_vars._entry.5, ptr @rtl92ee_init_sw_vars._entry.9, ptr @rtl92ee_init_sw_vars._entry_ptr, ptr @rtl92ee_init_sw_vars._entry_ptr.11, ptr @rtl92ee_init_sw_vars._entry_ptr.14, ptr @rtl92ee_init_sw_vars._entry_ptr.7, ptr @rtl92ee_mod_params, ptr @rtl92ee_driver, ptr @.str, ptr @rtl92ee_pci_ids, ptr @rtlwifi_pm_ops, ptr @rtl92ee_hal_cfg, ptr @.str.1, ptr @rtl8192ee_hal_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtlwifi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192ee_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_init_sw_vars._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_init_sw_vars._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_init_sw_vars._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92ee_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl92ee_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl92ee_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl92ee_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_pci_disconnect(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92ee_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl92ee_bt_reg_init(ptr noundef %hw) #6
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod_params, align 4
  %msi_support = getelementptr inbounds %struct.rtl_mod_params, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %msi_support to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msi_support, align 1, !range !118
  %msi_support3 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 6
  %8 = ptrtoint ptr %msi_support3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %msi_support3, align 4
  %call = tail call ptr @rtl_btc_get_ops_pointer() #6
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %9 = ptrtoint ptr %btcoexist to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %btcoexist, align 8
  %dm_initialgain_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 5
  %10 = ptrtoint ptr %dm_initialgain_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %dm_initialgain_enable, align 4
  %dm_flag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 30
  %11 = ptrtoint ptr %dm_flag to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dm_flag, align 4
  %disable_framebursting = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 11
  %12 = ptrtoint ptr %disable_framebursting to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %disable_framebursting, align 2
  %transmit_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 3
  %13 = ptrtoint ptr %transmit_config to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33280, ptr %transmit_config, align 4
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %14 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %current_bandtype, align 8
  %bandset = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 55
  %15 = ptrtoint ptr %bandset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bandset, align 8
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %16 = ptrtoint ptr %macphymode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %macphymode, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -268406514, ptr %receive_config, align 4
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %18 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 536872191, ptr %irq_mask, align 4
  %arrayidx9 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 256, ptr %arrayidx9, align 4
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 8
  %mod_params11 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %mod_params11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mod_params11, align 4
  %inactiveps = getelementptr inbounds %struct.rtl_mod_params, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %inactiveps, align 8, !range !118
  %inactiveps13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %26 = ptrtoint ptr %inactiveps13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %inactiveps13, align 1
  %27 = load ptr, ptr %mod_params11, align 4
  %swctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %swctrl_lps to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %swctrl_lps, align 1, !range !118
  %swctrl_lps19 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 8
  %30 = ptrtoint ptr %swctrl_lps19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %swctrl_lps19, align 4
  %31 = load ptr, ptr %mod_params11, align 4
  %fwctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fwctrl_lps, align 2, !range !118
  %fwctrl_lps25 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %34 = ptrtoint ptr %fwctrl_lps25 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %fwctrl_lps25, align 2
  %35 = load ptr, ptr %mod_params11, align 4
  %msi_support29 = getelementptr inbounds %struct.rtl_mod_params, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %msi_support29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %msi_support29, align 1, !range !118
  %38 = ptrtoint ptr %msi_support3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %msi_support3, align 4
  %39 = load ptr, ptr %mod_params11, align 4
  %disable_watchdog = getelementptr inbounds %struct.rtl_mod_params, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %disable_watchdog to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %disable_watchdog, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not = icmp eq i8 %41, 0
  br i1 %tobool35.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %reg_fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 12
  %42 = ptrtoint ptr %reg_fwctrl_lps to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %reg_fwctrl_lps, align 8
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %43 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 5, ptr %reg_max_lps_awakeintvl, align 2
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %46 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %const_amdpci_aspm.i, align 1
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 3, ptr %const_pci_aspm.i, align 4
  %const_devicepci_aspm_setting.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 23
  %48 = ptrtoint ptr %const_devicepci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %const_devicepci_aspm_setting.i, align 1
  %const_hostpci_aspm_setting.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %const_hostpci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %const_hostpci_aspm_setting.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %50 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %const_hwsw_rfoff_d3.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 32
  %51 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mod_params.i, align 4
  %aspm_support.i = getelementptr inbounds %struct.rtl_mod_params, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %aspm_support.i, align 8
  %conv.i = trunc i32 %56 to i8
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %57 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i, ptr %const_support_pciaspm.i, align 1
  %58 = load i8, ptr %reg_fwctrl_lps, align 8
  %.off = add i8 %58, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end63.sink.split, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end63.sink.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fwctrl_psmode51 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  %59 = ptrtoint ptr %fwctrl_psmode51 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %fwctrl_psmode51, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.end.if.end63_crit_edge
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %60 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %earlymode_enable, align 1
  %low_power_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %61 = ptrtoint ptr %low_power_enable to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %low_power_enable, align 4
  %call66 = tail call noalias ptr @vzalloc(i32 noundef 32768) #10
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %62 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call66, ptr %pfirmware, align 8
  %tobool70.not = icmp eq ptr %call66, null
  br i1 %tobool70.not, label %do.end74, label %if.end77

do.end74:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end77:                                         ; preds = %if.end63
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %63 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 32768, ptr %max_fw_size, align 4
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #9
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %64 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io, align 4
  %call84 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.8, ptr noundef %65, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl_fw_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end77.cleanup_crit_edge, label %do.end89

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end89:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  %66 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %67) #6
  %68 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %if.end77.cleanup_crit_edge, %do.end74
  %retval.0 = phi i32 [ 1, %do.end89 ], [ 1, %do.end74 ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92ee_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vfree(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pfirmware, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_interrupt_recognized(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ee_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ee_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92ee_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_pre_fill_tx_bd_desc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl92ee_rx_desc_buff_remained_cnt(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_rx_check_dma_ok(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtl92ee_get_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_is_tx_desc_closed(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_tx_polling(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ee_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ee_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl92ee_get_btc_status() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl92ee_get_available_desc(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_c2h_ra_report_handler(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_bt_reg_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtl_btc_get_ops_pointer() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_cb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__UNIQUE_ID_author356, !1, !"__UNIQUE_ID_author356", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 345, i32 1}
!2 = !{ptr @__UNIQUE_ID_author357, !3, !"__UNIQUE_ID_author357", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 346, i32 1}
!4 = !{ptr @__UNIQUE_ID_file358, !5, !"__UNIQUE_ID_file358", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 347, i32 1}
!6 = !{ptr @__UNIQUE_ID_license359, !5, !"__UNIQUE_ID_license359", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description360, !8, !"__UNIQUE_ID_description360", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 348, i32 1}
!9 = !{ptr @__UNIQUE_ID_firmware361, !10, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 349, i32 1}
!11 = !{ptr @__param_swenc, !12, !"__param_swenc", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 351, i32 1}
!13 = !{ptr @__UNIQUE_ID_swenctype362, !12, !"__UNIQUE_ID_swenctype362", i1 false, i1 false}
!14 = !{ptr @__param_debug_level, !15, !"__param_debug_level", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 352, i32 1}
!16 = !{ptr @__UNIQUE_ID_debug_leveltype363, !15, !"__UNIQUE_ID_debug_leveltype363", i1 false, i1 false}
!17 = !{ptr @__param_debug_mask, !18, !"__param_debug_mask", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 353, i32 1}
!19 = !{ptr @__UNIQUE_ID_debug_masktype364, !18, !"__UNIQUE_ID_debug_masktype364", i1 false, i1 false}
!20 = !{ptr @__param_ips, !21, !"__param_ips", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 354, i32 1}
!22 = !{ptr @__UNIQUE_ID_ipstype365, !21, !"__UNIQUE_ID_ipstype365", i1 false, i1 false}
!23 = !{ptr @__param_swlps, !24, !"__param_swlps", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 355, i32 1}
!25 = !{ptr @__UNIQUE_ID_swlpstype366, !24, !"__UNIQUE_ID_swlpstype366", i1 false, i1 false}
!26 = !{ptr @__param_fwlps, !27, !"__param_fwlps", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 356, i32 1}
!28 = !{ptr @__UNIQUE_ID_fwlpstype367, !27, !"__UNIQUE_ID_fwlpstype367", i1 false, i1 false}
!29 = !{ptr @__param_msi, !30, !"__param_msi", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 357, i32 1}
!31 = !{ptr @__UNIQUE_ID_msitype368, !30, !"__UNIQUE_ID_msitype368", i1 false, i1 false}
!32 = !{ptr @__param_dma64, !33, !"__param_dma64", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 358, i32 1}
!34 = !{ptr @__UNIQUE_ID_dma64type369, !33, !"__UNIQUE_ID_dma64type369", i1 false, i1 false}
!35 = !{ptr @__param_aspm, !36, !"__param_aspm", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 359, i32 1}
!37 = !{ptr @__UNIQUE_ID_aspmtype370, !36, !"__UNIQUE_ID_aspmtype370", i1 false, i1 false}
!38 = !{ptr @__param_disable_watchdog, !39, !"__param_disable_watchdog", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 360, i32 1}
!40 = !{ptr @__UNIQUE_ID_disable_watchdogtype371, !39, !"__UNIQUE_ID_disable_watchdogtype371", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_swenc372, !42, !"__UNIQUE_ID_swenc372", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 362, i32 1}
!43 = !{ptr @__UNIQUE_ID_ips373, !44, !"__UNIQUE_ID_ips373", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 363, i32 1}
!45 = !{ptr @__UNIQUE_ID_swlps374, !46, !"__UNIQUE_ID_swlps374", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 364, i32 1}
!47 = !{ptr @__UNIQUE_ID_fwlps375, !48, !"__UNIQUE_ID_fwlps375", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 365, i32 1}
!49 = !{ptr @__UNIQUE_ID_msi376, !50, !"__UNIQUE_ID_msi376", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 366, i32 1}
!51 = !{ptr @__UNIQUE_ID_dma64377, !52, !"__UNIQUE_ID_dma64377", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 367, i32 1}
!53 = !{ptr @__UNIQUE_ID_aspm378, !54, !"__UNIQUE_ID_aspm378", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 368, i32 1}
!55 = !{ptr @__UNIQUE_ID_debug_level379, !56, !"__UNIQUE_ID_debug_level379", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 369, i32 1}
!57 = !{ptr @__UNIQUE_ID_debug_mask380, !58, !"__UNIQUE_ID_debug_mask380", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 370, i32 1}
!59 = !{ptr @__UNIQUE_ID_disable_watchdog381, !60, !"__UNIQUE_ID_disable_watchdog381", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 371, i32 1}
!61 = !{ptr @__initcall__kmod_rtl8192ee__382_383_rtl92ee_driver_init6, !62, !"__initcall__kmod_rtl8192ee__382_383_rtl92ee_driver_init6", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 383, i32 1}
!63 = !{ptr @__exitcall_rtl92ee_driver_exit, !62, !"__exitcall_rtl92ee_driver_exit", i1 false, i1 false}
!64 = !{ptr @__param_str_swenc, !12, !"__param_str_swenc", i1 false, i1 false}
!65 = !{ptr @rtl92ee_mod_params, !66, !"rtl92ee_mod_params", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 233, i32 30}
!67 = !{ptr @__param_str_debug_level, !15, !"__param_str_debug_level", i1 false, i1 false}
!68 = !{ptr @__param_str_debug_mask, !18, !"__param_str_debug_mask", i1 false, i1 false}
!69 = !{ptr @__param_str_ips, !21, !"__param_str_ips", i1 false, i1 false}
!70 = !{ptr @__param_str_swlps, !24, !"__param_str_swlps", i1 false, i1 false}
!71 = !{ptr @__param_str_fwlps, !27, !"__param_str_fwlps", i1 false, i1 false}
!72 = !{ptr @__param_str_msi, !30, !"__param_str_msi", i1 false, i1 false}
!73 = !{ptr @__param_str_dma64, !33, !"__param_str_dma64", i1 false, i1 false}
!74 = !{ptr @__param_str_aspm, !36, !"__param_str_aspm", i1 false, i1 false}
!75 = !{ptr @__param_str_disable_watchdog, !39, !"__param_str_disable_watchdog", i1 false, i1 false}
!76 = !{ptr @.str, !62, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rtl92ee_driver, !78, !"rtl92ee_driver", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 375, i32 26}
!79 = !{ptr @rtl92ee_pci_ids, !80, !"rtl92ee_pci_ids", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 338, i32 35}
!81 = !{ptr @.str.1, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 248, i32 10}
!83 = !{ptr @rtl92ee_hal_cfg, !84, !"rtl92ee_hal_cfg", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 245, i32 33}
!85 = !{ptr @rtl8192ee_hal_ops, !86, !"rtl8192ee_hal_ops", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 182, i32 27}
!87 = !{ptr @.str.2, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 120, i32 3}
!89 = !{ptr @.str.3, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @rtl92ee_init_sw_vars._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtl92ee_init_sw_vars._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.6, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 144, i32 3}
!95 = !{ptr @rtl92ee_init_sw_vars._entry.5, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rtl92ee_init_sw_vars._entry_ptr.7, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.8, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 149, i32 12}
!99 = !{ptr @.str.10, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 152, i32 2}
!101 = !{ptr @rtl92ee_init_sw_vars._entry.9, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rtl92ee_init_sw_vars._entry_ptr.11, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.13, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 157, i32 3}
!105 = !{ptr @rtl92ee_init_sw_vars._entry.12, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rtl92ee_init_sw_vars._entry_ptr.14, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @rtlwifi_pm_ops, !108, !"rtlwifi_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/sw.c", i32 373, i32 8}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
