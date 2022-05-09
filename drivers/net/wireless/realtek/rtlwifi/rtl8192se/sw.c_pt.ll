; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c"
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
%struct.rtl_tx_desc = type { [16 x i32] }
%struct.rt_firmware = type { ptr, i32, i16, [64000 x i8], [64000 x i8], i32, i32, [90000 x i8], i32, i16 }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_author356 = internal constant [57 x i8] c"rtl8192se.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [55 x i8] c"rtl8192se.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [58 x i8] c"rtl8192se.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [72 x i8] c"rtl8192se.file=drivers/net/wireless/realtek/rtlwifi/rtl8192se/rtl8192se\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [22 x i8] c"rtl8192se.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [63 x i8] c"rtl8192se.description=Realtek 8192S/8191S 802.11n PCI wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [43 x i8] c"rtl8192se.firmware=rtlwifi/rtl8192sefw.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8192se.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl92se_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } { %struct.rtl_mod_params { i64 0, i8 0, i32 0, i8 1, i8 1, i8 0, i8 0, i8 0, i32 2, i8 0, i8 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype363 = internal constant [30 x i8] c"rtl8192se.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8192se.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype364 = internal constant [35 x i8] c"rtl8192se.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8192se.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl92se_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype365 = internal constant [37 x i8] c"rtl8192se.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__param_str_ips = internal constant [14 x i8] c"rtl8192se.ips\00", align 1
@__param_ips = internal constant %struct.kernel_param { ptr @__param_str_ips, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_ipstype366 = internal constant [28 x i8] c"rtl8192se.parmtype=ips:bool\00", section ".modinfo", align 1
@__param_str_swlps = internal constant [16 x i8] c"rtl8192se.swlps\00", align 1
@__param_swlps = internal constant %struct.kernel_param { ptr @__param_str_swlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 17) } }, section "__param", align 4
@__UNIQUE_ID_swlpstype367 = internal constant [30 x i8] c"rtl8192se.parmtype=swlps:bool\00", section ".modinfo", align 1
@__param_str_fwlps = internal constant [16 x i8] c"rtl8192se.fwlps\00", align 1
@__param_fwlps = internal constant %struct.kernel_param { ptr @__param_str_fwlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 18) } }, section "__param", align 4
@__UNIQUE_ID_fwlpstype368 = internal constant [30 x i8] c"rtl8192se.parmtype=fwlps:bool\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [15 x i8] c"rtl8192se.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92se_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_aspmtype369 = internal constant [28 x i8] c"rtl8192se.parmtype=aspm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc370 = internal constant [63 x i8] c"rtl8192se.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_ips371 = internal constant [68 x i8] c"rtl8192se.parm=ips:Set to 0 to not use link power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_swlps372 = internal constant [72 x i8] c"rtl8192se.parm=swlps:Set to 1 to use SW control power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_fwlps373 = internal constant [72 x i8] c"rtl8192se.parm=fwlps:Set to 1 to use FW control power save (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm374 = internal constant [57 x i8] c"rtl8192se.parm=aspm:Set to 1 to enable ASPM (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level375 = internal constant [61 x i8] c"rtl8192se.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask376 = internal constant [53 x i8] c"rtl8192se.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_rtl8192se__377_421_rtl92se_driver_init6 = internal global ptr @rtl92se_driver_init, section ".initcall6.init", align 4
@rtl92se_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtl92se_pci_ids, ptr @rtl_pci_probe, ptr @rtl_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtlwifi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtl92se_driver_exit = internal global ptr @rtl92se_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8192se\00", [22 x i8] zeroinitializer }, align 32
@rtl92se_pci_ids = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33170, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33137, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33138, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33139, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33140, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtlwifi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl92se_hal_cfg = internal constant { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 1, i8 0, ptr @.str.1, ptr null, ptr @rtl8192se_hal_ops, ptr @rtl92se_mod_params, ptr null, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 32, i32 524288, i32 1, i32 768, i32 772, i32 0, i32 52, i32 48, i32 760, i32 48, i32 0, i32 0, i32 0, i32 18, i32 128, i32 16, i32 512, i32 15, i32 0, i32 576, i32 580, i32 584, i32 588, i32 592, i32 0, i32 1, i32 2, i32 4, i32 5, i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 16, i32 0, i32 512, i32 256, i32 128, i32 8, i32 64, i32 4, i32 16, i32 8, i32 4, i32 2, i32 1, i32 0, i32 8204, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl92s_pci\00", [21 x i8] zeroinitializer }, align 32
@rtl8192se_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl92s_init_sw_vars, ptr @rtl92s_deinit_sw_vars, ptr null, ptr @rtl92se_read_eeprom_info, ptr @rtl92se_interrupt_recognized, ptr @rtl92se_hw_init, ptr @rtl92se_card_disable, ptr @rtl92se_suspend, ptr @rtl92se_resume, ptr @rtl92se_enable_interrupt, ptr @rtl92se_disable_interrupt, ptr @rtl92se_set_network_type, ptr @rtl92se_set_check_bssid, ptr @rtl92s_phy_set_bw_mode, ptr @rtl92s_phy_sw_chnl, ptr @rtl92se_set_qos, ptr @rtl92se_set_beacon_related_registers, ptr @rtl92se_set_beacon_interval, ptr @rtl92se_update_interrupt_mask, ptr @rtl92se_get_hw_reg, ptr @rtl92se_set_hw_reg, ptr @rtl92se_update_hal_rate_tbl, ptr null, ptr null, ptr null, ptr null, ptr @rtl92se_tx_fill_desc, ptr null, ptr @rtl92se_tx_fill_cmddesc, ptr null, ptr @rtl92se_rx_query_desc, ptr @rtl92se_update_channel_access_setting, ptr @rtl92se_gpio_radio_on_off_checking, ptr @rtl92s_dm_watchdog, ptr @rtl92s_phy_scan_operation_backup, ptr @rtl92s_phy_set_rf_power_state, ptr @rtl92se_led_control, ptr @rtl92se_set_desc, ptr @rtl92se_get_desc, ptr @rtl92se_is_tx_desc_closed, ptr @rtl92se_tx_polling, ptr @rtl92se_enable_hw_security_config, ptr @rtl92se_set_key, ptr @rtl92se_init_sw_leds, ptr null, ptr @rtl92s_phy_query_bb_reg, ptr @rtl92s_phy_set_bb_reg, ptr @rtl92s_phy_query_rf_reg, ptr @rtl92s_phy_set_rf_reg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl_btc_status_false, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8192sefw.bin\00", [40 x i8] zeroinitializer }, align 32
@rtl92s_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016rtl8192se: Power Save off (module option)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92s_init_sw_vars\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92s_init_sw_vars._entry_ptr = internal global ptr @rtl92s_init_sw_vars._entry, section ".printk_index", align 4
@rtl92s_init_sw_vars._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016rtl8192se: FW Power Save off (module option)\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl92s_init_sw_vars._entry_ptr.8 = internal global ptr @rtl92s_init_sw_vars._entry.6, section ".printk_index", align 4
@rtl92s_init_sw_vars._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016rtl8192se: Driver for Realtek RTL8192SE/RTL8191SE\0ALoading firmware %s\0A\00", [55 x i8] zeroinitializer }, align 32
@rtl92s_init_sw_vars._entry_ptr.11 = internal global ptr @rtl92s_init_sw_vars._entry.9, section ".printk_index", align 4
@rtl92s_init_sw_vars._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl8192se: Failed to request firmware!\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92s_init_sw_vars._entry_ptr.14 = internal global ptr @rtl92s_init_sw_vars._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware callback routine entered!\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl92se_fw_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192se: Firmware %s not available\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl92se_fw_cb\00", [18 x i8] zeroinitializer }, align 32
@rtl92se_fw_cb._entry_ptr = internal global ptr @rtl92se_fw_cb._entry, section ".printk_index", align 4
@rtl92se_fw_cb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013rtl8192se: Firmware is too big!\0A\00", [61 x i8] zeroinitializer }, align 32
@rtl92se_fw_cb._entry_ptr.20 = internal global ptr @rtl92se_fw_cb._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"rtl92se_mod_params\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 271, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"rtl92se_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 413, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 421, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"rtl92se_pci_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 378, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"rtlwifi_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 411, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"rtl92se_hal_cfg\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 283, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 286, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"rtl8192se_hal_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 226, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 94, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 164, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 166, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 187, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 194, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 68, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 72, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 77, i32 3 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_aspm374, ptr @__UNIQUE_ID_aspmtype369, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_debug_level375, ptr @__UNIQUE_ID_debug_leveltype364, ptr @__UNIQUE_ID_debug_mask376, ptr @__UNIQUE_ID_debug_masktype365, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_fwlps373, ptr @__UNIQUE_ID_fwlpstype368, ptr @__UNIQUE_ID_ips371, ptr @__UNIQUE_ID_ipstype366, ptr @__UNIQUE_ID_license360, ptr @__UNIQUE_ID_swenc370, ptr @__UNIQUE_ID_swenctype363, ptr @__UNIQUE_ID_swlps372, ptr @__UNIQUE_ID_swlpstype367, ptr @__exitcall_rtl92se_driver_exit, ptr @__initcall__kmod_rtl8192se__377_421_rtl92se_driver_init6, ptr @__param_aspm, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_fwlps, ptr @__param_ips, ptr @__param_swenc, ptr @__param_swlps, ptr @rtl92s_init_sw_vars._entry, ptr @rtl92s_init_sw_vars._entry.12, ptr @rtl92s_init_sw_vars._entry.6, ptr @rtl92s_init_sw_vars._entry.9, ptr @rtl92s_init_sw_vars._entry_ptr, ptr @rtl92s_init_sw_vars._entry_ptr.11, ptr @rtl92s_init_sw_vars._entry_ptr.14, ptr @rtl92s_init_sw_vars._entry_ptr.8, ptr @rtl92se_driver_exit, ptr @rtl92se_fw_cb._entry, ptr @rtl92se_fw_cb._entry.18, ptr @rtl92se_fw_cb._entry_ptr, ptr @rtl92se_fw_cb._entry_ptr.20, ptr @rtl92se_mod_params, ptr @rtl92se_driver, ptr @.str, ptr @rtl92se_pci_ids, ptr @rtlwifi_pm_ops, ptr @rtl92se_hal_cfg, ptr @.str.1, ptr @rtl8192se_hal_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_pci_ids to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtlwifi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192se_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_init_sw_vars._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_init_sw_vars._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_init_sw_vars._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_fw_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92se_fw_cb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92se_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl92se_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl92se_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl92se_driver) #5
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
define internal i32 @rtl92s_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
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
  %transmit_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 8, i32 2, i32 3
  %10 = ptrtoint ptr %transmit_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %transmit_config, align 4
  %receive_config = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %receive_config to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -2091388882, ptr %receive_config, align 4
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %12 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16383, ptr %irq_mask, align 4
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx10, align 4
  %shortretry_limit = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 5
  %14 = ptrtoint ptr %shortretry_limit to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 48, ptr %shortretry_limit, align 4
  %longretry_limit = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 28
  %15 = ptrtoint ptr %longretry_limit to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 48, ptr %longretry_limit, align 2
  %first_init = getelementptr inbounds %struct.rtl_pci, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %first_init to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %first_init, align 1
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mod_params, align 4
  %inactiveps = getelementptr inbounds %struct.rtl_mod_params, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %inactiveps, align 8, !range !113
  %inactiveps11 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %23 = ptrtoint ptr %inactiveps11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %inactiveps11, align 1
  %24 = load ptr, ptr %mod_params, align 4
  %swctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %swctrl_lps to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %swctrl_lps, align 1, !range !113
  %swctrl_lps16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 8
  %27 = ptrtoint ptr %swctrl_lps16 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %swctrl_lps16, align 4
  %28 = load ptr, ptr %mod_params, align 4
  %fwctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fwctrl_lps, align 2, !range !113
  %fwctrl_lps22 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %31 = ptrtoint ptr %fwctrl_lps22 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fwctrl_lps22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp eq i8 %22, 0
  br i1 %tobool26.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  %32 = ptrtoint ptr %fwctrl_lps22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %.pr = load i8, ptr %fwctrl_lps22, align 2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %33 = phi i8 [ %.pr, %do.end ], [ %30, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool29.not = icmp eq i8 %33, 0
  br i1 %tobool29.not, label %do.end33, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end.if.end36_crit_edge
  %reg_fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 12
  %34 = ptrtoint ptr %reg_fwctrl_lps to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %reg_fwctrl_lps, align 8
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %35 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %reg_max_lps_awakeintvl, align 2
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %38 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %const_amdpci_aspm.i, align 1
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %const_pci_aspm.i, align 4
  %const_devicepci_aspm_setting.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 23
  %40 = ptrtoint ptr %const_devicepci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 3, ptr %const_devicepci_aspm_setting.i, align 1
  %const_hostpci_aspm_setting.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %const_hostpci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %const_hostpci_aspm_setting.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %42 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %const_hwsw_rfoff_d3.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 32
  %43 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mod_params.i, align 4
  %aspm_support.i = getelementptr inbounds %struct.rtl_mod_params, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %aspm_support.i, align 8
  %conv.i = trunc i32 %48 to i8
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %49 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i, ptr %const_support_pciaspm.i, align 1
  %50 = load i8, ptr %reg_fwctrl_lps, align 8
  %.off = add i8 %50, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end64.sink.split, label %if.end36.if.end64_crit_edge

if.end36.if.end64_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.end64.sink.split:                              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %fwctrl_psmode52 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  %51 = ptrtoint ptr %fwctrl_psmode52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %fwctrl_psmode52, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.end36.if.end64_crit_edge
  %call65 = tail call noalias ptr @vzalloc(i32 noundef 218028) #9
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %52 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call65, ptr %pfirmware, align 8
  %tobool69.not = icmp eq ptr %call65, null
  br i1 %tobool69.not, label %if.end64.cleanup_crit_edge, label %if.end71

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %53 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 128080, ptr %max_fw_size, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #8
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io, align 4
  %call78 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %55, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl92se_fw_cb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end71.cleanup_crit_edge, label %do.end83

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end83:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  %56 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %57) #5
  %58 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %if.end71.cleanup_crit_edge, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end83 ], [ 1, %if.end64.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92s_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
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
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_interrupt_recognized(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92se_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92se_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92s_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92se_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92se_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtl92se_get_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rtl92se_is_tx_desc_closed(ptr noundef %hw, i8 noundef zeroext %hw_queue, i16 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = tail call i64 @rtl92se_get_desc(ptr noundef %hw, ptr noundef %arrayidx3, i1 noundef zeroext true, i8 noundef zeroext 0) #5
  %conv = trunc i64 %call to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_tx_polling(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92se_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92s_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92s_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_btc_status_false() #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92se_fw_cb(ptr noundef %firmware, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.15) #5
  %firmware_loading_complete = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %firmware_loading_complete) #5
  %tobool.not = icmp eq ptr %firmware, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #8
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_fw_size, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %firmware, align 4
  %max_fw_size1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %max_fw_size1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_fw_size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %do.end5, label %if.end9

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  %7 = ptrtoint ptr %max_fw_size1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %max_fw_size1, align 4
  tail call void @release_firmware(ptr noundef nonnull %firmware) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pfirmware10 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %8 = ptrtoint ptr %pfirmware10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pfirmware10, align 8
  %sz_fw_tmpbuffer = getelementptr inbounds %struct.rt_firmware, ptr %9, i32 0, i32 7
  %data = getelementptr inbounds %struct.firmware, ptr %firmware, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = call ptr @memcpy(ptr %sz_fw_tmpbuffer, ptr %11, i32 %4)
  %13 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %firmware, align 4
  %sz_fw_tmpbufferlen = getelementptr inbounds %struct.rt_firmware, ptr %9, i32 0, i32 8
  %15 = ptrtoint ptr %sz_fw_tmpbufferlen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sz_fw_tmpbufferlen, align 4
  tail call void @release_firmware(ptr noundef nonnull %firmware) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end5, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !96, !97, !98, !100, !101, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__UNIQUE_ID_author356, !1, !"__UNIQUE_ID_author356", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 389, i32 1}
!2 = !{ptr @__UNIQUE_ID_author357, !3, !"__UNIQUE_ID_author357", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 390, i32 1}
!4 = !{ptr @__UNIQUE_ID_author358, !5, !"__UNIQUE_ID_author358", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 391, i32 1}
!6 = !{ptr @__UNIQUE_ID_file359, !7, !"__UNIQUE_ID_file359", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 392, i32 1}
!8 = !{ptr @__UNIQUE_ID_license360, !7, !"__UNIQUE_ID_license360", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description361, !10, !"__UNIQUE_ID_description361", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 393, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware362, !12, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 394, i32 1}
!13 = !{ptr @__param_swenc, !14, !"__param_swenc", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 396, i32 1}
!15 = !{ptr @__UNIQUE_ID_swenctype363, !14, !"__UNIQUE_ID_swenctype363", i1 false, i1 false}
!16 = !{ptr @__param_debug_level, !17, !"__param_debug_level", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 397, i32 1}
!18 = !{ptr @__UNIQUE_ID_debug_leveltype364, !17, !"__UNIQUE_ID_debug_leveltype364", i1 false, i1 false}
!19 = !{ptr @__param_debug_mask, !20, !"__param_debug_mask", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 398, i32 1}
!21 = !{ptr @__UNIQUE_ID_debug_masktype365, !20, !"__UNIQUE_ID_debug_masktype365", i1 false, i1 false}
!22 = !{ptr @__param_ips, !23, !"__param_ips", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 399, i32 1}
!24 = !{ptr @__UNIQUE_ID_ipstype366, !23, !"__UNIQUE_ID_ipstype366", i1 false, i1 false}
!25 = !{ptr @__param_swlps, !26, !"__param_swlps", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 400, i32 1}
!27 = !{ptr @__UNIQUE_ID_swlpstype367, !26, !"__UNIQUE_ID_swlpstype367", i1 false, i1 false}
!28 = !{ptr @__param_fwlps, !29, !"__param_fwlps", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 401, i32 1}
!30 = !{ptr @__UNIQUE_ID_fwlpstype368, !29, !"__UNIQUE_ID_fwlpstype368", i1 false, i1 false}
!31 = !{ptr @__param_aspm, !32, !"__param_aspm", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 402, i32 1}
!33 = !{ptr @__UNIQUE_ID_aspmtype369, !32, !"__UNIQUE_ID_aspmtype369", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_swenc370, !35, !"__UNIQUE_ID_swenc370", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 403, i32 1}
!36 = !{ptr @__UNIQUE_ID_ips371, !37, !"__UNIQUE_ID_ips371", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 404, i32 1}
!38 = !{ptr @__UNIQUE_ID_swlps372, !39, !"__UNIQUE_ID_swlps372", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 405, i32 1}
!40 = !{ptr @__UNIQUE_ID_fwlps373, !41, !"__UNIQUE_ID_fwlps373", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 406, i32 1}
!42 = !{ptr @__UNIQUE_ID_aspm374, !43, !"__UNIQUE_ID_aspm374", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 407, i32 1}
!44 = !{ptr @__UNIQUE_ID_debug_level375, !45, !"__UNIQUE_ID_debug_level375", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 408, i32 1}
!46 = !{ptr @__UNIQUE_ID_debug_mask376, !47, !"__UNIQUE_ID_debug_mask376", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 409, i32 1}
!48 = !{ptr @__initcall__kmod_rtl8192se__377_421_rtl92se_driver_init6, !49, !"__initcall__kmod_rtl8192se__377_421_rtl92se_driver_init6", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 421, i32 1}
!50 = !{ptr @__exitcall_rtl92se_driver_exit, !49, !"__exitcall_rtl92se_driver_exit", i1 false, i1 false}
!51 = !{ptr @__param_str_swenc, !14, !"__param_str_swenc", i1 false, i1 false}
!52 = !{ptr @rtl92se_mod_params, !53, !"rtl92se_mod_params", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 271, i32 30}
!54 = !{ptr @__param_str_debug_level, !17, !"__param_str_debug_level", i1 false, i1 false}
!55 = !{ptr @__param_str_debug_mask, !20, !"__param_str_debug_mask", i1 false, i1 false}
!56 = !{ptr @__param_str_ips, !23, !"__param_str_ips", i1 false, i1 false}
!57 = !{ptr @__param_str_swlps, !26, !"__param_str_swlps", i1 false, i1 false}
!58 = !{ptr @__param_str_fwlps, !29, !"__param_str_fwlps", i1 false, i1 false}
!59 = !{ptr @__param_str_aspm, !32, !"__param_str_aspm", i1 false, i1 false}
!60 = !{ptr @.str, !49, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rtl92se_driver, !62, !"rtl92se_driver", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 413, i32 26}
!63 = !{ptr @rtl92se_pci_ids, !64, !"rtl92se_pci_ids", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 378, i32 35}
!65 = !{ptr @.str.1, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 286, i32 10}
!67 = !{ptr @rtl92se_hal_cfg, !68, !"rtl92se_hal_cfg", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 283, i32 33}
!69 = !{ptr @rtl8192se_hal_ops, !70, !"rtl8192se_hal_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 226, i32 27}
!71 = !{ptr @.str.2, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 94, i32 18}
!73 = !{ptr @.str.3, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 164, i32 3}
!75 = !{ptr @.str.4, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.5, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rtl92s_init_sw_vars._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @rtl92s_init_sw_vars._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.7, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 166, i32 3}
!81 = !{ptr @rtl92s_init_sw_vars._entry.6, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rtl92s_init_sw_vars._entry_ptr.8, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.10, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 187, i32 2}
!85 = !{ptr @rtl92s_init_sw_vars._entry.9, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rtl92s_init_sw_vars._entry_ptr.11, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 194, i32 3}
!89 = !{ptr @rtl92s_init_sw_vars._entry.12, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtl92s_init_sw_vars._entry_ptr.14, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.15, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 68, i32 2}
!93 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 72, i32 3}
!95 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @rtl92se_fw_cb._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @rtl92se_fw_cb._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.19, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 77, i32 3}
!100 = !{ptr @rtl92se_fw_cb._entry.18, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @rtl92se_fw_cb._entry_ptr.20, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @rtlwifi_pm_ops, !103, !"rtlwifi_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/sw.c", i32 411, i32 8}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i8 0, i8 2}
