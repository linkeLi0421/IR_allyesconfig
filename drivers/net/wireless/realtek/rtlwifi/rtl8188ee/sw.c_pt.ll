; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c"
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

@__UNIQUE_ID_author356 = internal constant [60 x i8] c"rtl8188ee.author=zhiyuan_yang\09<zhiyuan_yang@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [55 x i8] c"rtl8188ee.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [58 x i8] c"rtl8188ee.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [72 x i8] c"rtl8188ee.file=drivers/net/wireless/realtek/rtlwifi/rtl8188ee/rtl8188ee\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [22 x i8] c"rtl8188ee.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [57 x i8] c"rtl8188ee.description=Realtek 8188E 802.11n PCI wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [42 x i8] c"rtl8188ee.firmware=rtlwifi/rtl8188efw.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8188ee.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl88ee_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } { %struct.rtl_mod_params { i64 0, i8 0, i32 0, i8 1, i8 0, i8 0, i8 1, i8 0, i32 1, i8 0, i8 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype363 = internal constant [30 x i8] c"rtl8188ee.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8188ee.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype364 = internal constant [35 x i8] c"rtl8188ee.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8188ee.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl88ee_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype365 = internal constant [37 x i8] c"rtl8188ee.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__param_str_ips = internal constant [14 x i8] c"rtl8188ee.ips\00", align 1
@__param_ips = internal constant %struct.kernel_param { ptr @__param_str_ips, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_ipstype366 = internal constant [28 x i8] c"rtl8188ee.parmtype=ips:bool\00", section ".modinfo", align 1
@__param_str_swlps = internal constant [16 x i8] c"rtl8188ee.swlps\00", align 1
@__param_swlps = internal constant %struct.kernel_param { ptr @__param_str_swlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 17) } }, section "__param", align 4
@__UNIQUE_ID_swlpstype367 = internal constant [30 x i8] c"rtl8188ee.parmtype=swlps:bool\00", section ".modinfo", align 1
@__param_str_fwlps = internal constant [16 x i8] c"rtl8188ee.fwlps\00", align 1
@__param_fwlps = internal constant %struct.kernel_param { ptr @__param_str_fwlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 18) } }, section "__param", align 4
@__UNIQUE_ID_fwlpstype368 = internal constant [30 x i8] c"rtl8188ee.parmtype=fwlps:bool\00", section ".modinfo", align 1
@__param_str_msi = internal constant [14 x i8] c"rtl8188ee.msi\00", align 1
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 19) } }, section "__param", align 4
@__UNIQUE_ID_msitype369 = internal constant [28 x i8] c"rtl8188ee.parmtype=msi:bool\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [15 x i8] c"rtl8188ee.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_aspmtype370 = internal constant [28 x i8] c"rtl8188ee.parmtype=aspm:int\00", section ".modinfo", align 1
@__param_str_disable_watchdog = internal constant [27 x i8] c"rtl8188ee.disable_watchdog\00", align 1
@__param_disable_watchdog = internal constant %struct.kernel_param { ptr @__param_str_disable_watchdog, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl88ee_mod_params, i64 28) } }, section "__param", align 4
@__UNIQUE_ID_disable_watchdogtype371 = internal constant [41 x i8] c"rtl8188ee.parmtype=disable_watchdog:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc372 = internal constant [63 x i8] c"rtl8188ee.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_ips373 = internal constant [68 x i8] c"rtl8188ee.parm=ips:Set to 0 to not use link power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_swlps374 = internal constant [72 x i8] c"rtl8188ee.parm=swlps:Set to 1 to use SW control power save (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_fwlps375 = internal constant [72 x i8] c"rtl8188ee.parm=fwlps:Set to 1 to use FW control power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_msi376 = internal constant [68 x i8] c"rtl8188ee.parm=msi:Set to 1 to use MSI interrupts mode (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm377 = internal constant [57 x i8] c"rtl8188ee.parm=aspm:Set to 1 to enable ASPM (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level378 = internal constant [61 x i8] c"rtl8188ee.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask379 = internal constant [53 x i8] c"rtl8188ee.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_watchdog380 = internal constant [78 x i8] c"rtl8188ee.parm=disable_watchdog:Set to 1 to disable the watchdog (default 0)\0A\00", section ".modinfo", align 1
@__initcall__kmod_rtl8188ee__381_394_rtl88ee_driver_init6 = internal global ptr @rtl88ee_driver_init, section ".initcall6.init", align 4
@rtl88ee_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtl88ee_pci_ids, ptr @rtl_pci_probe, ptr @rtl_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtlwifi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtl88ee_driver_exit = internal global ptr @rtl88ee_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8188ee\00", [22 x i8] zeroinitializer }, align 32
@rtl88ee_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33145, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl88ee_hal_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtlwifi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl88ee_hal_cfg = internal constant { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 2, i8 1, ptr @.str.1, ptr null, ptr @rtl8188ee_hal_ops, ptr @rtl88ee_mod_params, ptr null, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 256, i32 4096, i32 1, i32 176, i32 184, i32 92, i32 52, i32 48, i32 0, i32 48, i32 32768, i32 4096, i32 32, i32 2, i32 512, i32 64, i32 256, i32 18, i32 207, i32 1648, i32 1652, i32 1656, i32 1660, i32 1664, i32 0, i32 1, i32 2, i32 4, i32 5, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 0, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 0, i32 0, i32 512, i32 536870912, i32 1048576, i32 256, i32 2, i32 4096, i32 0, i32 65536, i32 128, i32 0, i32 33554432, i32 64, i32 67108864, i32 32, i32 16, i32 8, i32 4, i32 1, i32 32768, i32 101711872, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl88e_pci\00", [21 x i8] zeroinitializer }, align 32
@rtl8188ee_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl88e_init_sw_vars, ptr @rtl88e_deinit_sw_vars, ptr null, ptr @rtl88ee_read_eeprom_info, ptr @rtl88ee_interrupt_recognized, ptr @rtl88ee_hw_init, ptr @rtl88ee_card_disable, ptr @rtl88ee_suspend, ptr @rtl88ee_resume, ptr @rtl88ee_enable_interrupt, ptr @rtl88ee_disable_interrupt, ptr @rtl88ee_set_network_type, ptr @rtl88ee_set_check_bssid, ptr @rtl88e_phy_set_bw_mode, ptr @rtl88e_phy_sw_chnl, ptr @rtl88ee_set_qos, ptr @rtl88ee_set_beacon_related_registers, ptr @rtl88ee_set_beacon_interval, ptr @rtl88ee_update_interrupt_mask, ptr @rtl88ee_get_hw_reg, ptr @rtl88ee_set_hw_reg, ptr @rtl88ee_update_hal_rate_tbl, ptr null, ptr null, ptr null, ptr null, ptr @rtl88ee_tx_fill_desc, ptr null, ptr @rtl88ee_tx_fill_cmddesc, ptr null, ptr @rtl88ee_rx_query_desc, ptr @rtl88ee_update_channel_access_setting, ptr @rtl88ee_gpio_radio_on_off_checking, ptr @rtl88e_dm_watchdog, ptr @rtl88e_phy_scan_operation_backup, ptr @rtl88e_phy_set_rf_power_state, ptr @rtl88ee_led_control, ptr @rtl88ee_set_desc, ptr @rtl88ee_get_desc, ptr @rtl88ee_is_tx_desc_closed, ptr @rtl88ee_tx_polling, ptr @rtl88ee_enable_hw_security_config, ptr @rtl88ee_set_key, ptr @rtl88ee_init_sw_leds, ptr null, ptr @rtl88e_phy_query_bb_reg, ptr @rtl88e_phy_set_bb_reg, ptr @rtl88e_phy_query_rf_reg, ptr @rtl88e_phy_set_rf_reg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl88e_get_btc_status, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8188ee: watchdog disabled\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl88e_init_sw_vars\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr = internal global ptr @rtl88e_init_sw_vars._entry, section ".printk_index", align 4
@rtl88e_init_sw_vars._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016rtl8188ee: rtl8188ee: Power Save off (module option)\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr.7 = internal global ptr @rtl88e_init_sw_vars._entry.5, section ".printk_index", align 4
@rtl88e_init_sw_vars._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016rtl8188ee: rtl8188ee: FW Power Save off (module option)\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr.10 = internal global ptr @rtl88e_init_sw_vars._entry.8, section ".printk_index", align 4
@rtl88e_init_sw_vars._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016rtl8188ee: Can't alloc buffer for fw.\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr.13 = internal global ptr @rtl88e_init_sw_vars._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtlwifi/rtl8188efw.bin\00", [41 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8188ee: Using firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr.17 = internal global ptr @rtl88e_init_sw_vars._entry.15, section ".printk_index", align 4
@rtl88e_init_sw_vars._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016rtl8188ee: Failed to request firmware!\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl88e_init_sw_vars._entry_ptr.20 = internal global ptr @rtl88e_init_sw_vars._entry.18, section ".printk_index", align 4
@rtl88e_init_sw_vars.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(&rtlpriv->works.fast_antenna_training_timer)\00", [50 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"rtl88ee_mod_params\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 241, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"rtl88ee_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 386, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 394, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"rtl88ee_pci_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 350, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"rtlwifi_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 384, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"rtl88ee_hal_cfg\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 252, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 255, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"rtl8188ee_hal_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 196, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 118, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 120, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 122, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 140, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 144, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 146, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 151, i32 3 }
@___asan_gen_.98 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 170, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 1984, i32 2 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_aspm377, ptr @__UNIQUE_ID_aspmtype370, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_debug_level378, ptr @__UNIQUE_ID_debug_leveltype364, ptr @__UNIQUE_ID_debug_mask379, ptr @__UNIQUE_ID_debug_masktype365, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_disable_watchdog380, ptr @__UNIQUE_ID_disable_watchdogtype371, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_fwlps375, ptr @__UNIQUE_ID_fwlpstype368, ptr @__UNIQUE_ID_ips373, ptr @__UNIQUE_ID_ipstype366, ptr @__UNIQUE_ID_license360, ptr @__UNIQUE_ID_msi376, ptr @__UNIQUE_ID_msitype369, ptr @__UNIQUE_ID_swenc372, ptr @__UNIQUE_ID_swenctype363, ptr @__UNIQUE_ID_swlps374, ptr @__UNIQUE_ID_swlpstype367, ptr @__exitcall_rtl88ee_driver_exit, ptr @__initcall__kmod_rtl8188ee__381_394_rtl88ee_driver_init6, ptr @__param_aspm, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_disable_watchdog, ptr @__param_fwlps, ptr @__param_ips, ptr @__param_msi, ptr @__param_swenc, ptr @__param_swlps, ptr @rtl88e_init_sw_vars._entry, ptr @rtl88e_init_sw_vars._entry.11, ptr @rtl88e_init_sw_vars._entry.15, ptr @rtl88e_init_sw_vars._entry.18, ptr @rtl88e_init_sw_vars._entry.5, ptr @rtl88e_init_sw_vars._entry.8, ptr @rtl88e_init_sw_vars._entry_ptr, ptr @rtl88e_init_sw_vars._entry_ptr.10, ptr @rtl88e_init_sw_vars._entry_ptr.13, ptr @rtl88e_init_sw_vars._entry_ptr.17, ptr @rtl88e_init_sw_vars._entry_ptr.20, ptr @rtl88e_init_sw_vars._entry_ptr.7, ptr @rtl88ee_driver_exit, ptr @rtl88ee_mod_params, ptr @rtl88ee_driver, ptr @.str, ptr @rtl88ee_pci_ids, ptr @rtlwifi_pm_ops, ptr @rtl88ee_hal_cfg, ptr @.str.1, ptr @rtl8188ee_hal_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @rtl88e_init_sw_vars.__key.22, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.24], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtlwifi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88ee_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188ee_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_init_sw_vars.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl88ee_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl88ee_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl88ee_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl88ee_driver) #6
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
define internal i32 @rtl88e_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl8188ee_bt_reg_init(ptr noundef %hw) #6
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
  %transmit_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 3
  %6 = ptrtoint ptr %transmit_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33280, ptr %transmit_config, align 4
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %7 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %current_bandtype, align 8
  %bandset = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 55
  %8 = ptrtoint ptr %bandset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bandset, align 8
  %macphymode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 52
  %9 = ptrtoint ptr %macphymode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %macphymode, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -268403954, ptr %receive_config, align 4
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 536904959, ptr %irq_mask, align 4
  %arrayidx9 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 256, ptr %arrayidx9, align 4
  %sys_irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1
  %13 = ptrtoint ptr %sys_irq_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 192, ptr %sys_irq_mask, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mod_params, align 4
  %inactiveps = getelementptr inbounds %struct.rtl_mod_params, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %inactiveps, align 8, !range !131
  %inactiveps10 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %20 = ptrtoint ptr %inactiveps10 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %inactiveps10, align 1
  %21 = load ptr, ptr %mod_params, align 4
  %swctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %swctrl_lps to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %swctrl_lps, align 1, !range !131
  %swctrl_lps15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 8
  %24 = ptrtoint ptr %swctrl_lps15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %swctrl_lps15, align 4
  %25 = load ptr, ptr %mod_params, align 4
  %fwctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fwctrl_lps, align 2, !range !131
  %fwctrl_lps21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %28 = ptrtoint ptr %fwctrl_lps21 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %fwctrl_lps21, align 2
  %29 = load ptr, ptr %mod_params, align 4
  %msi_support = getelementptr inbounds %struct.rtl_mod_params, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %msi_support to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msi_support, align 1, !range !131
  %msi_support26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 6
  %32 = ptrtoint ptr %msi_support26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %msi_support26, align 4
  %33 = load ptr, ptr %mod_params, align 4
  %disable_watchdog = getelementptr inbounds %struct.rtl_mod_params, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %disable_watchdog to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %disable_watchdog, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool30.not = icmp eq i8 %35, 0
  br i1 %tobool30.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %36 = ptrtoint ptr %inactiveps10 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %inactiveps10, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool33.not = icmp eq i8 %37, 0
  br i1 %tobool33.not, label %do.end37, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end.if.end40_crit_edge
  %38 = ptrtoint ptr %fwctrl_lps21 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fwctrl_lps21, align 2, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool43.not = icmp eq i8 %39, 0
  br i1 %tobool43.not, label %do.end47, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %if.end40.if.end50_crit_edge
  %reg_fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 12
  %40 = ptrtoint ptr %reg_fwctrl_lps to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %reg_fwctrl_lps, align 8
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %41 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %reg_max_lps_awakeintvl, align 2
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %44 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %const_amdpci_aspm.i, align 1
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %const_pci_aspm.i, align 4
  %const_devicepci_aspm_setting.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 23
  %46 = ptrtoint ptr %const_devicepci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %const_devicepci_aspm_setting.i, align 1
  %const_hostpci_aspm_setting.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %const_hostpci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %const_hostpci_aspm_setting.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %48 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %const_hwsw_rfoff_d3.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mod_params.i, align 4
  %aspm_support.i = getelementptr inbounds %struct.rtl_mod_params, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %aspm_support.i, align 8
  %conv.i = trunc i32 %54 to i8
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %55 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i, ptr %const_support_pciaspm.i, align 1
  %56 = load i8, ptr %reg_fwctrl_lps, align 8
  %.off = add i8 %56, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end77.sink.split, label %if.end50.if.end77_crit_edge

if.end50.if.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.end77.sink.split:                              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %fwctrl_psmode65 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  %57 = ptrtoint ptr %fwctrl_psmode65 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %fwctrl_psmode65, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.end50.if.end77_crit_edge
  %call78 = tail call noalias ptr @vzalloc(i32 noundef 32768) #10
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %58 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call78, ptr %pfirmware, align 8
  %tobool82.not = icmp eq ptr %call78, null
  br i1 %tobool82.not, label %do.end86, label %if.end89

do.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end89:                                         ; preds = %if.end77
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %59 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32768, ptr %max_fw_size, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #9
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io, align 4
  %call96 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.14, ptr noundef %61, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl_fw_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end108, label %do.end101

do.end101:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  %62 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %63) #6
  %64 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

if.end108:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %earlymode_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 58
  %65 = ptrtoint ptr %earlymode_enable to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %earlymode_enable, align 1
  %max_earlymode_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 59
  %66 = ptrtoint ptr %max_earlymode_num to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %max_earlymode_num, align 2
  %arrayidx114 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0
  %lock.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %67 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx114, ptr %arrayidx114, align 4
  %prev.i.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx114, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 0, i32 1
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %qlen.i.i, align 4
  %arrayidx114.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1
  %lock.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.1, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %70 = ptrtoint ptr %arrayidx114.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx114.1, ptr %arrayidx114.1, align 4
  %prev.i.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx114.1, ptr %prev.i.i.1, align 4
  %qlen.i.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 1, i32 1
  %72 = ptrtoint ptr %qlen.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %qlen.i.i.1, align 4
  %arrayidx114.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2
  %lock.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.2, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %73 = ptrtoint ptr %arrayidx114.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx114.2, ptr %arrayidx114.2, align 4
  %prev.i.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx114.2, ptr %prev.i.i.2, align 4
  %qlen.i.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 2, i32 1
  %75 = ptrtoint ptr %qlen.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %qlen.i.i.2, align 4
  %arrayidx114.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3
  %lock.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.3, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %76 = ptrtoint ptr %arrayidx114.3 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx114.3, ptr %arrayidx114.3, align 4
  %prev.i.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx114.3, ptr %prev.i.i.3, align 4
  %qlen.i.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 3, i32 1
  %78 = ptrtoint ptr %qlen.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %qlen.i.i.3, align 4
  %arrayidx114.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4
  %lock.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.4, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %79 = ptrtoint ptr %arrayidx114.4 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx114.4, ptr %arrayidx114.4, align 4
  %prev.i.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %arrayidx114.4, ptr %prev.i.i.4, align 4
  %qlen.i.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 4, i32 1
  %81 = ptrtoint ptr %qlen.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %qlen.i.i.4, align 4
  %arrayidx114.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5
  %lock.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.5, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %82 = ptrtoint ptr %arrayidx114.5 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx114.5, ptr %arrayidx114.5, align 4
  %prev.i.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 0, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx114.5, ptr %prev.i.i.5, align 4
  %qlen.i.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 5, i32 1
  %84 = ptrtoint ptr %qlen.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %qlen.i.i.5, align 4
  %arrayidx114.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6
  %lock.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.6, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %85 = ptrtoint ptr %arrayidx114.6 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx114.6, ptr %arrayidx114.6, align 4
  %prev.i.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx114.6, ptr %prev.i.i.6, align 4
  %qlen.i.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 6, i32 1
  %87 = ptrtoint ptr %qlen.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %qlen.i.i.6, align 4
  %arrayidx114.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7
  %lock.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.7, ptr noundef nonnull @.str.24, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %88 = ptrtoint ptr %arrayidx114.7 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %arrayidx114.7, ptr %arrayidx114.7, align 4
  %prev.i.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 0, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx114.7, ptr %prev.i.i.7, align 4
  %qlen.i.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 23, i32 7, i32 1
  %90 = ptrtoint ptr %qlen.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %qlen.i.i.7, align 4
  %low_power_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %91 = ptrtoint ptr %low_power_enable to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %low_power_enable, align 4
  %fast_antenna_training_timer = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 4
  tail call void @init_timer_key(ptr noundef %fast_antenna_training_timer, ptr noundef nonnull @rtl88e_dm_fast_antenna_training_callback, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef nonnull @rtl88e_init_sw_vars.__key.22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %do.end101, %do.end86
  %retval.0 = phi i32 [ 1, %do.end101 ], [ 0, %if.end108 ], [ 1, %do.end86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl88e_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
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
  %low_power_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 16
  %5 = ptrtoint ptr %low_power_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %low_power_enable, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fw_clockoff_timer = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %fw_clockoff_timer) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %fast_antenna_training_timer = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 8, i32 4
  %call9 = tail call i32 @del_timer_sync(ptr noundef %fast_antenna_training_timer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_interrupt_recognized(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl88ee_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl88ee_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl88e_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88ee_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88ee_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtl88ee_get_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88ee_is_tx_desc_closed(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_tx_polling(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88ee_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl88e_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl88e_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl88e_get_btc_status() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8188ee_bt_reg_init(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_dm_fast_antenna_training_callback(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__UNIQUE_ID_author356, !1, !"__UNIQUE_ID_author356", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 357, i32 1}
!2 = !{ptr @__UNIQUE_ID_author357, !3, !"__UNIQUE_ID_author357", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 358, i32 1}
!4 = !{ptr @__UNIQUE_ID_author358, !5, !"__UNIQUE_ID_author358", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 359, i32 1}
!6 = !{ptr @__UNIQUE_ID_file359, !7, !"__UNIQUE_ID_file359", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 360, i32 1}
!8 = !{ptr @__UNIQUE_ID_license360, !7, !"__UNIQUE_ID_license360", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description361, !10, !"__UNIQUE_ID_description361", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 361, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware362, !12, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 362, i32 1}
!13 = !{ptr @__param_swenc, !14, !"__param_swenc", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 364, i32 1}
!15 = !{ptr @__UNIQUE_ID_swenctype363, !14, !"__UNIQUE_ID_swenctype363", i1 false, i1 false}
!16 = !{ptr @__param_debug_level, !17, !"__param_debug_level", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 365, i32 1}
!18 = !{ptr @__UNIQUE_ID_debug_leveltype364, !17, !"__UNIQUE_ID_debug_leveltype364", i1 false, i1 false}
!19 = !{ptr @__param_debug_mask, !20, !"__param_debug_mask", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 366, i32 1}
!21 = !{ptr @__UNIQUE_ID_debug_masktype365, !20, !"__UNIQUE_ID_debug_masktype365", i1 false, i1 false}
!22 = !{ptr @__param_ips, !23, !"__param_ips", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 367, i32 1}
!24 = !{ptr @__UNIQUE_ID_ipstype366, !23, !"__UNIQUE_ID_ipstype366", i1 false, i1 false}
!25 = !{ptr @__param_swlps, !26, !"__param_swlps", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 368, i32 1}
!27 = !{ptr @__UNIQUE_ID_swlpstype367, !26, !"__UNIQUE_ID_swlpstype367", i1 false, i1 false}
!28 = !{ptr @__param_fwlps, !29, !"__param_fwlps", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 369, i32 1}
!30 = !{ptr @__UNIQUE_ID_fwlpstype368, !29, !"__UNIQUE_ID_fwlpstype368", i1 false, i1 false}
!31 = !{ptr @__param_msi, !32, !"__param_msi", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 370, i32 1}
!33 = !{ptr @__UNIQUE_ID_msitype369, !32, !"__UNIQUE_ID_msitype369", i1 false, i1 false}
!34 = !{ptr @__param_aspm, !35, !"__param_aspm", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 371, i32 1}
!36 = !{ptr @__UNIQUE_ID_aspmtype370, !35, !"__UNIQUE_ID_aspmtype370", i1 false, i1 false}
!37 = !{ptr @__param_disable_watchdog, !38, !"__param_disable_watchdog", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 372, i32 1}
!39 = !{ptr @__UNIQUE_ID_disable_watchdogtype371, !38, !"__UNIQUE_ID_disable_watchdogtype371", i1 false, i1 false}
!40 = !{ptr @__UNIQUE_ID_swenc372, !41, !"__UNIQUE_ID_swenc372", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 374, i32 1}
!42 = !{ptr @__UNIQUE_ID_ips373, !43, !"__UNIQUE_ID_ips373", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 375, i32 1}
!44 = !{ptr @__UNIQUE_ID_swlps374, !45, !"__UNIQUE_ID_swlps374", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 376, i32 1}
!46 = !{ptr @__UNIQUE_ID_fwlps375, !47, !"__UNIQUE_ID_fwlps375", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 377, i32 1}
!48 = !{ptr @__UNIQUE_ID_msi376, !49, !"__UNIQUE_ID_msi376", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 378, i32 1}
!50 = !{ptr @__UNIQUE_ID_aspm377, !51, !"__UNIQUE_ID_aspm377", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 379, i32 1}
!52 = !{ptr @__UNIQUE_ID_debug_level378, !53, !"__UNIQUE_ID_debug_level378", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 380, i32 1}
!54 = !{ptr @__UNIQUE_ID_debug_mask379, !55, !"__UNIQUE_ID_debug_mask379", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 381, i32 1}
!56 = !{ptr @__UNIQUE_ID_disable_watchdog380, !57, !"__UNIQUE_ID_disable_watchdog380", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 382, i32 1}
!58 = !{ptr @__initcall__kmod_rtl8188ee__381_394_rtl88ee_driver_init6, !59, !"__initcall__kmod_rtl8188ee__381_394_rtl88ee_driver_init6", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 394, i32 1}
!60 = !{ptr @__exitcall_rtl88ee_driver_exit, !59, !"__exitcall_rtl88ee_driver_exit", i1 false, i1 false}
!61 = !{ptr @__param_str_swenc, !14, !"__param_str_swenc", i1 false, i1 false}
!62 = !{ptr @rtl88ee_mod_params, !63, !"rtl88ee_mod_params", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 241, i32 30}
!64 = !{ptr @__param_str_debug_level, !17, !"__param_str_debug_level", i1 false, i1 false}
!65 = !{ptr @__param_str_debug_mask, !20, !"__param_str_debug_mask", i1 false, i1 false}
!66 = !{ptr @__param_str_ips, !23, !"__param_str_ips", i1 false, i1 false}
!67 = !{ptr @__param_str_swlps, !26, !"__param_str_swlps", i1 false, i1 false}
!68 = !{ptr @__param_str_fwlps, !29, !"__param_str_fwlps", i1 false, i1 false}
!69 = !{ptr @__param_str_msi, !32, !"__param_str_msi", i1 false, i1 false}
!70 = !{ptr @__param_str_aspm, !35, !"__param_str_aspm", i1 false, i1 false}
!71 = !{ptr @__param_str_disable_watchdog, !38, !"__param_str_disable_watchdog", i1 false, i1 false}
!72 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl88ee_driver, !74, !"rtl88ee_driver", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 386, i32 26}
!75 = !{ptr @rtl88ee_pci_ids, !76, !"rtl88ee_pci_ids", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 350, i32 35}
!77 = !{ptr @.str.1, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 255, i32 10}
!79 = !{ptr @rtl88ee_hal_cfg, !80, !"rtl88ee_hal_cfg", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 252, i32 33}
!81 = !{ptr @rtl8188ee_hal_ops, !82, !"rtl8188ee_hal_ops", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 196, i32 27}
!83 = !{ptr @.str.2, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 118, i32 3}
!85 = !{ptr @.str.3, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.4, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtl88e_init_sw_vars._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl88e_init_sw_vars._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.6, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 120, i32 3}
!91 = !{ptr @rtl88e_init_sw_vars._entry.5, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @rtl88e_init_sw_vars._entry_ptr.7, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.9, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 122, i32 3}
!95 = !{ptr @rtl88e_init_sw_vars._entry.8, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @rtl88e_init_sw_vars._entry_ptr.10, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.12, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 140, i32 3}
!99 = !{ptr @rtl88e_init_sw_vars._entry.11, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtl88e_init_sw_vars._entry_ptr.13, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 144, i32 12}
!103 = !{ptr @.str.16, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 146, i32 2}
!105 = !{ptr @rtl88e_init_sw_vars._entry.15, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rtl88e_init_sw_vars._entry_ptr.17, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.19, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 151, i32 3}
!109 = !{ptr @rtl88e_init_sw_vars._entry.18, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rtl88e_init_sw_vars._entry_ptr.20, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"__key", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 166, i32 3}
!113 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rtl88e_init_sw_vars.__key.22, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 170, i32 2}
!116 = !{ptr @.str.23, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @skb_queue_head_init.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!119 = !{ptr @.str.24, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @rtlwifi_pm_ops, !121, !"rtlwifi_pm_ops", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/sw.c", i32 384, i32 8}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i8 0, i8 2}
