; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c"
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

@__UNIQUE_ID_author358 = internal constant [57 x i8] c"rtl8192ce.author=lizhaoming\09<chaoming_li@realsil.com.cn>\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [55 x i8] c"rtl8192ce.author=Realtek WlanFAE\09<wlanfae@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [58 x i8] c"rtl8192ce.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [72 x i8] c"rtl8192ce.file=drivers/net/wireless/realtek/rtlwifi/rtl8192ce/rtl8192ce\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [22 x i8] c"rtl8192ce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [63 x i8] c"rtl8192ce.description=Realtek 8192C/8188C 802.11n PCI wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware364 = internal constant [42 x i8] c"rtl8192ce.firmware=rtlwifi/rtl8192cfw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware365 = internal constant [43 x i8] c"rtl8192ce.firmware=rtlwifi/rtl8192cfwU.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware366 = internal constant [45 x i8] c"rtl8192ce.firmware=rtlwifi/rtl8192cfwU_B.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8192ce.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl92ce_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } { %struct.rtl_mod_params { i64 0, i8 0, i32 0, i8 1, i8 0, i8 1, i8 0, i8 0, i32 1, i8 0, i8 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype367 = internal constant [30 x i8] c"rtl8192ce.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8192ce.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype368 = internal constant [35 x i8] c"rtl8192ce.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8192ce.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl92ce_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype369 = internal constant [37 x i8] c"rtl8192ce.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__param_str_ips = internal constant [14 x i8] c"rtl8192ce.ips\00", align 1
@__param_ips = internal constant %struct.kernel_param { ptr @__param_str_ips, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_ipstype370 = internal constant [28 x i8] c"rtl8192ce.parmtype=ips:bool\00", section ".modinfo", align 1
@__param_str_swlps = internal constant [16 x i8] c"rtl8192ce.swlps\00", align 1
@__param_swlps = internal constant %struct.kernel_param { ptr @__param_str_swlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 17) } }, section "__param", align 4
@__UNIQUE_ID_swlpstype371 = internal constant [30 x i8] c"rtl8192ce.parmtype=swlps:bool\00", section ".modinfo", align 1
@__param_str_fwlps = internal constant [16 x i8] c"rtl8192ce.fwlps\00", align 1
@__param_fwlps = internal constant %struct.kernel_param { ptr @__param_str_fwlps, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 18) } }, section "__param", align 4
@__UNIQUE_ID_fwlpstype372 = internal constant [30 x i8] c"rtl8192ce.parmtype=fwlps:bool\00", section ".modinfo", align 1
@__param_str_aspm = internal constant [15 x i8] c"rtl8192ce.aspm\00", align 1
@__param_aspm = internal constant %struct.kernel_param { ptr @__param_str_aspm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92ce_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_aspmtype373 = internal constant [28 x i8] c"rtl8192ce.parmtype=aspm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc374 = internal constant [63 x i8] c"rtl8192ce.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_ips375 = internal constant [68 x i8] c"rtl8192ce.parm=ips:Set to 0 to not use link power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_swlps376 = internal constant [72 x i8] c"rtl8192ce.parm=swlps:Set to 1 to use SW control power save (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_fwlps377 = internal constant [72 x i8] c"rtl8192ce.parm=fwlps:Set to 1 to use FW control power save (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_aspm378 = internal constant [57 x i8] c"rtl8192ce.parm=aspm:Set to 1 to enable ASPM (default 1)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level379 = internal constant [61 x i8] c"rtl8192ce.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask380 = internal constant [53 x i8] c"rtl8192ce.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_rtl8192ce__381_374_rtl92ce_driver_init6 = internal global ptr @rtl92ce_driver_init, section ".initcall6.init", align 4
@rtl92ce_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rtl92ce_pci_ids, ptr @rtl_pci_probe, ptr @rtl_pci_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtlwifi_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtl92ce_driver_exit = internal global ptr @rtl92ce_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8192ce\00", [22 x i8] zeroinitializer }, align 32
@rtl92ce_pci_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 33169, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92ce_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33144, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92ce_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33143, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92ce_hal_cfg to i32), i32 0 }, %struct.pci_device_id { i32 4332, i32 33142, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtl92ce_hal_cfg to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtlwifi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr @rtl_pci_suspend, ptr @rtl_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtl92ce_hal_cfg = internal constant { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 2, i8 1, ptr @.str.1, ptr null, ptr @rtl8192ce_hal_ops, ptr @rtl92ce_mod_params, ptr null, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 256, i32 4096, i32 1, i32 288, i32 296, i32 0, i32 52, i32 48, i32 0, i32 48, i32 32768, i32 4096, i32 32, i32 18, i32 128, i32 16, i32 512, i32 15, i32 0, i32 1648, i32 1652, i32 1656, i32 1660, i32 1664, i32 0, i32 1, i32 2, i32 4, i32 5, i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 0, i32 512, i32 256, i32 0, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 0, i32 8352, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl92c_pci\00", [21 x i8] zeroinitializer }, align 32
@rtl8192ce_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl92c_init_sw_vars, ptr @rtl92c_deinit_sw_vars, ptr null, ptr @rtl92ce_read_eeprom_info, ptr @rtl92ce_interrupt_recognized, ptr @rtl92ce_hw_init, ptr @rtl92ce_card_disable, ptr @rtl92ce_suspend, ptr @rtl92ce_resume, ptr @rtl92ce_enable_interrupt, ptr @rtl92ce_disable_interrupt, ptr @rtl92ce_set_network_type, ptr @rtl92ce_set_check_bssid, ptr @rtl92c_phy_set_bw_mode, ptr @rtl92c_phy_sw_chnl, ptr @rtl92ce_set_qos, ptr @rtl92ce_set_beacon_related_registers, ptr @rtl92ce_set_beacon_interval, ptr @rtl92ce_update_interrupt_mask, ptr @rtl92ce_get_hw_reg, ptr @rtl92ce_set_hw_reg, ptr @rtl92ce_update_hal_rate_tbl, ptr null, ptr null, ptr null, ptr null, ptr @rtl92ce_tx_fill_desc, ptr null, ptr @rtl92ce_tx_fill_cmddesc, ptr null, ptr @rtl92ce_rx_query_desc, ptr @rtl92ce_update_channel_access_setting, ptr @rtl92ce_gpio_radio_on_off_checking, ptr @rtl92c_dm_watchdog, ptr @rtl_phy_scan_operation_backup, ptr @rtl92c_phy_set_rf_power_state, ptr @rtl92ce_led_control, ptr @rtl92ce_set_desc, ptr @rtl92ce_get_desc, ptr @rtl92ce_is_tx_desc_closed, ptr @rtl92ce_tx_polling, ptr @rtl92ce_enable_hw_security_config, ptr @rtl92ce_set_key, ptr @rtl92ce_init_sw_leds, ptr null, ptr @rtl92c_phy_query_bb_reg, ptr @rtl92c_phy_set_bb_reg, ptr @rtl92c_phy_query_rf_reg, ptr @rtl92ce_phy_set_rf_reg, ptr null, ptr null, ptr null, ptr null, ptr @rtl92ce_phy_rf6052_config, ptr @rtl92ce_phy_rf6052_set_cck_txpower, ptr @rtl92ce_phy_rf6052_set_ofdm_txpower, ptr @_rtl92ce_phy_config_bb_with_headerfile, ptr @_rtl92ce_phy_config_bb_with_pgheaderfile, ptr @_rtl92ce_phy_lc_calibrate, ptr @rtl92ce_phy_set_bw_mode_callback, ptr @rtl92ce_dm_dynamic_txpower, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl_btc_status_false, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016rtl8192ce: rtl8192ce: Power Save off (module option)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl92c_init_sw_vars\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry_ptr = internal global ptr @rtl92c_init_sw_vars._entry, section ".printk_index", align 4
@rtl92c_init_sw_vars._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016rtl8192ce: rtl8192ce: FW Power Save off (module option)\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry_ptr.7 = internal global ptr @rtl92c_init_sw_vars._entry.5, section ".printk_index", align 4
@rtl92c_init_sw_vars._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192ce: Can't alloc buffer for fw\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry_ptr.10 = internal global ptr @rtl92c_init_sw_vars._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8192cfwU.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192cfwU_B.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtlwifi/rtl8192cfw.bin\00", [41 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016rtl8192ce: Using firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry_ptr.16 = internal global ptr @rtl92c_init_sw_vars._entry.14, section ".printk_index", align 4
@rtl92c_init_sw_vars._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013rtl8192ce: Failed to request firmware!\0A\00", [54 x i8] zeroinitializer }, align 32
@rtl92c_init_sw_vars._entry_ptr.19 = internal global ptr @rtl92c_init_sw_vars._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"rtl92ce_mod_params\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 226, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"rtl92ce_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 366, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 374, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"rtl92ce_pci_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 330, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"rtlwifi_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 364, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"rtl92ce_hal_cfg\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 236, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 239, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"rtl8192ce_hal_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 173, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 116, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 118, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 135, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 142, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 144, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 146, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 149, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 154, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_aspm378, ptr @__UNIQUE_ID_aspmtype373, ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_debug_level379, ptr @__UNIQUE_ID_debug_leveltype368, ptr @__UNIQUE_ID_debug_mask380, ptr @__UNIQUE_ID_debug_masktype369, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_firmware364, ptr @__UNIQUE_ID_firmware365, ptr @__UNIQUE_ID_firmware366, ptr @__UNIQUE_ID_fwlps377, ptr @__UNIQUE_ID_fwlpstype372, ptr @__UNIQUE_ID_ips375, ptr @__UNIQUE_ID_ipstype370, ptr @__UNIQUE_ID_license362, ptr @__UNIQUE_ID_swenc374, ptr @__UNIQUE_ID_swenctype367, ptr @__UNIQUE_ID_swlps376, ptr @__UNIQUE_ID_swlpstype371, ptr @__exitcall_rtl92ce_driver_exit, ptr @__initcall__kmod_rtl8192ce__381_374_rtl92ce_driver_init6, ptr @__param_aspm, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_fwlps, ptr @__param_ips, ptr @__param_swenc, ptr @__param_swlps, ptr @rtl92c_init_sw_vars._entry, ptr @rtl92c_init_sw_vars._entry.14, ptr @rtl92c_init_sw_vars._entry.17, ptr @rtl92c_init_sw_vars._entry.5, ptr @rtl92c_init_sw_vars._entry.8, ptr @rtl92c_init_sw_vars._entry_ptr, ptr @rtl92c_init_sw_vars._entry_ptr.10, ptr @rtl92c_init_sw_vars._entry_ptr.16, ptr @rtl92c_init_sw_vars._entry_ptr.19, ptr @rtl92c_init_sw_vars._entry_ptr.7, ptr @rtl92ce_driver_exit, ptr @rtl92ce_mod_params, ptr @rtl92ce_driver, ptr @.str, ptr @rtl92ce_pci_ids, ptr @rtlwifi_pm_ops, ptr @rtl92ce_hal_cfg, ptr @.str.1, ptr @rtl8192ce_hal_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_pci_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtlwifi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192ce_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_sw_vars._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_sw_vars._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_sw_vars._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_init_sw_vars._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92ce_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtl92ce_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl92ce_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtl92ce_driver) #5
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
define internal i32 @rtl92c_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl8192ce_bt_reg_init(ptr noundef %hw) #5
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
  store i32 12800, ptr %transmit_config, align 4
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
  store i32 -268408050, ptr %receive_config, align 4
  %irq_mask = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7007, ptr %irq_mask, align 4
  %arrayidx12 = getelementptr %struct.rtl_priv, ptr %1, i32 1, i32 14, i32 35, i32 22, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 768, ptr %arrayidx12, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 8
  %mod_params = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %mod_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mod_params, align 4
  %inactiveps = getelementptr inbounds %struct.rtl_mod_params, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %inactiveps to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %inactiveps, align 8, !range !114
  %inactiveps13 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 17
  %19 = ptrtoint ptr %inactiveps13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %inactiveps13, align 1
  %20 = load ptr, ptr %mod_params, align 4
  %swctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %swctrl_lps to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %swctrl_lps, align 1, !range !114
  %swctrl_lps18 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 8
  %23 = ptrtoint ptr %swctrl_lps18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %swctrl_lps18, align 4
  %24 = load ptr, ptr %mod_params, align 4
  %fwctrl_lps = getelementptr inbounds %struct.rtl_mod_params, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %fwctrl_lps to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fwctrl_lps, align 2, !range !114
  %fwctrl_lps24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 10
  %27 = ptrtoint ptr %fwctrl_lps24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fwctrl_lps24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool28.not = icmp eq i8 %18, 0
  br i1 %tobool28.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  %28 = ptrtoint ptr %fwctrl_lps24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr = load i8, ptr %fwctrl_lps24, align 2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %29 = phi i8 [ %.pr, %do.end ], [ %26, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool31.not = icmp eq i8 %29, 0
  br i1 %tobool31.not, label %do.end35, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end35:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.end.if.end38_crit_edge
  %reg_fwctrl_lps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 12
  %30 = ptrtoint ptr %reg_fwctrl_lps to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %reg_fwctrl_lps, align 8
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %31 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %reg_max_lps_awakeintvl, align 2
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %dev.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 1, i32 7, i32 0, i32 1, i32 4, i32 1
  %const_amdpci_aspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 19
  %34 = ptrtoint ptr %const_amdpci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %const_amdpci_aspm.i, align 1
  %const_pci_aspm.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %const_pci_aspm.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %const_pci_aspm.i, align 4
  %const_devicepci_aspm_setting.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 23
  %36 = ptrtoint ptr %const_devicepci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %const_devicepci_aspm_setting.i, align 1
  %const_hostpci_aspm_setting.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 1, i32 14, i32 35, i32 23, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %const_hostpci_aspm_setting.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %const_hostpci_aspm_setting.i, align 4
  %const_hwsw_rfoff_d3.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 20
  %38 = ptrtoint ptr %const_hwsw_rfoff_d3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %const_hwsw_rfoff_d3.i, align 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i, align 8
  %mod_params.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %mod_params.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mod_params.i, align 4
  %aspm_support.i = getelementptr inbounds %struct.rtl_mod_params, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %aspm_support.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %aspm_support.i, align 8
  %conv.i = trunc i32 %44 to i8
  %const_support_pciaspm.i = getelementptr inbounds %struct.rtl_pci, ptr %dev.i, i32 0, i32 21
  %45 = ptrtoint ptr %const_support_pciaspm.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i, ptr %const_support_pciaspm.i, align 1
  %46 = load i8, ptr %reg_fwctrl_lps, align 8
  %.off = add i8 %46, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end65.sink.split, label %if.end38.if.end65_crit_edge

if.end38.if.end65_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.end65.sink.split:                              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %fwctrl_psmode53 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 11
  %47 = ptrtoint ptr %fwctrl_psmode53 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %fwctrl_psmode53, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %if.end38.if.end65_crit_edge
  %call66 = tail call noalias ptr @vzalloc(i32 noundef 16384) #9
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %48 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call66, ptr %pfirmware, align 8
  %tobool70.not = icmp eq ptr %call66, null
  br i1 %tobool70.not, label %do.end74, label %if.end77

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %49 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version, align 4
  %51 = and i32 %50, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %51)
  %52 = icmp ne i32 %51, 32
  %and87 = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and87)
  %cmp88 = icmp eq i32 %and87, 1
  %or.cond177 = or i1 %52, %cmp88
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %51)
  %53 = icmp eq i32 %51, 96
  %spec.select = select i1 %53, ptr @.str.12, ptr @.str.13
  %fw_name.0 = select i1 %or.cond177, ptr %spec.select, ptr @.str.11
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %54 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 16384, ptr %max_fw_size, align 4
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %fw_name.0) #8
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %55 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io, align 4
  %call119 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %fw_name.0, ptr noundef %56, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl_fw_cb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end77.cleanup_crit_edge, label %do.end124

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end124:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  %57 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %58) #5
  %59 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end124, %if.end77.cleanup_crit_edge, %do.end74
  %retval.0 = phi i32 [ 1, %do.end124 ], [ 1, %do.end74 ], [ 0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92c_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
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
declare dso_local void @rtl92ce_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_interrupt_recognized(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ce_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92ce_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92c_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ce_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ce_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92c_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtl92ce_get_desc(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ce_is_tx_desc_closed(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_tx_polling(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92c_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92c_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ce_phy_rf6052_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_rf6052_set_cck_txpower(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_rf6052_set_ofdm_txpower(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92ce_phy_config_bb_with_headerfile(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92ce_phy_config_bb_with_pgheaderfile(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92ce_phy_lc_calibrate(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_set_bw_mode_callback(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_dm_dynamic_txpower(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_btc_status_false() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192ce_bt_reg_init(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @rtl_pci_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_pci_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !98, !99, !101, !102, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__UNIQUE_ID_author358, !1, !"__UNIQUE_ID_author358", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 340, i32 1}
!2 = !{ptr @__UNIQUE_ID_author359, !3, !"__UNIQUE_ID_author359", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 341, i32 1}
!4 = !{ptr @__UNIQUE_ID_author360, !5, !"__UNIQUE_ID_author360", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 342, i32 1}
!6 = !{ptr @__UNIQUE_ID_file361, !7, !"__UNIQUE_ID_file361", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 343, i32 1}
!8 = !{ptr @__UNIQUE_ID_license362, !7, !"__UNIQUE_ID_license362", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description363, !10, !"__UNIQUE_ID_description363", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 344, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware364, !12, !"__UNIQUE_ID_firmware364", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 345, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware365, !14, !"__UNIQUE_ID_firmware365", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 346, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware366, !16, !"__UNIQUE_ID_firmware366", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 347, i32 1}
!17 = !{ptr @__param_swenc, !18, !"__param_swenc", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 349, i32 1}
!19 = !{ptr @__UNIQUE_ID_swenctype367, !18, !"__UNIQUE_ID_swenctype367", i1 false, i1 false}
!20 = !{ptr @__param_debug_level, !21, !"__param_debug_level", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 350, i32 1}
!22 = !{ptr @__UNIQUE_ID_debug_leveltype368, !21, !"__UNIQUE_ID_debug_leveltype368", i1 false, i1 false}
!23 = !{ptr @__param_debug_mask, !24, !"__param_debug_mask", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 351, i32 1}
!25 = !{ptr @__UNIQUE_ID_debug_masktype369, !24, !"__UNIQUE_ID_debug_masktype369", i1 false, i1 false}
!26 = !{ptr @__param_ips, !27, !"__param_ips", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 352, i32 1}
!28 = !{ptr @__UNIQUE_ID_ipstype370, !27, !"__UNIQUE_ID_ipstype370", i1 false, i1 false}
!29 = !{ptr @__param_swlps, !30, !"__param_swlps", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 353, i32 1}
!31 = !{ptr @__UNIQUE_ID_swlpstype371, !30, !"__UNIQUE_ID_swlpstype371", i1 false, i1 false}
!32 = !{ptr @__param_fwlps, !33, !"__param_fwlps", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 354, i32 1}
!34 = !{ptr @__UNIQUE_ID_fwlpstype372, !33, !"__UNIQUE_ID_fwlpstype372", i1 false, i1 false}
!35 = !{ptr @__param_aspm, !36, !"__param_aspm", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 355, i32 1}
!37 = !{ptr @__UNIQUE_ID_aspmtype373, !36, !"__UNIQUE_ID_aspmtype373", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_swenc374, !39, !"__UNIQUE_ID_swenc374", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 356, i32 1}
!40 = !{ptr @__UNIQUE_ID_ips375, !41, !"__UNIQUE_ID_ips375", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 357, i32 1}
!42 = !{ptr @__UNIQUE_ID_swlps376, !43, !"__UNIQUE_ID_swlps376", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 358, i32 1}
!44 = !{ptr @__UNIQUE_ID_fwlps377, !45, !"__UNIQUE_ID_fwlps377", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 359, i32 1}
!46 = !{ptr @__UNIQUE_ID_aspm378, !47, !"__UNIQUE_ID_aspm378", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 360, i32 1}
!48 = !{ptr @__UNIQUE_ID_debug_level379, !49, !"__UNIQUE_ID_debug_level379", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 361, i32 1}
!50 = !{ptr @__UNIQUE_ID_debug_mask380, !51, !"__UNIQUE_ID_debug_mask380", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 362, i32 1}
!52 = !{ptr @__initcall__kmod_rtl8192ce__381_374_rtl92ce_driver_init6, !53, !"__initcall__kmod_rtl8192ce__381_374_rtl92ce_driver_init6", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 374, i32 1}
!54 = !{ptr @__exitcall_rtl92ce_driver_exit, !53, !"__exitcall_rtl92ce_driver_exit", i1 false, i1 false}
!55 = !{ptr @__param_str_swenc, !18, !"__param_str_swenc", i1 false, i1 false}
!56 = !{ptr @rtl92ce_mod_params, !57, !"rtl92ce_mod_params", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 226, i32 30}
!58 = !{ptr @__param_str_debug_level, !21, !"__param_str_debug_level", i1 false, i1 false}
!59 = !{ptr @__param_str_debug_mask, !24, !"__param_str_debug_mask", i1 false, i1 false}
!60 = !{ptr @__param_str_ips, !27, !"__param_str_ips", i1 false, i1 false}
!61 = !{ptr @__param_str_swlps, !30, !"__param_str_swlps", i1 false, i1 false}
!62 = !{ptr @__param_str_fwlps, !33, !"__param_str_fwlps", i1 false, i1 false}
!63 = !{ptr @__param_str_aspm, !36, !"__param_str_aspm", i1 false, i1 false}
!64 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rtl92ce_driver, !66, !"rtl92ce_driver", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 366, i32 26}
!67 = !{ptr @rtl92ce_pci_ids, !68, !"rtl92ce_pci_ids", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 330, i32 35}
!69 = !{ptr @.str.1, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 239, i32 10}
!71 = !{ptr @rtl92ce_hal_cfg, !72, !"rtl92ce_hal_cfg", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 236, i32 33}
!73 = !{ptr @rtl8192ce_hal_ops, !74, !"rtl8192ce_hal_ops", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 173, i32 27}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 116, i32 3}
!77 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rtl92c_init_sw_vars._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @rtl92c_init_sw_vars._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.6, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 118, i32 3}
!83 = !{ptr @rtl92c_init_sw_vars._entry.5, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rtl92c_init_sw_vars._entry_ptr.7, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.9, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 135, i32 3}
!87 = !{ptr @rtl92c_init_sw_vars._entry.8, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl92c_init_sw_vars._entry_ptr.10, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.11, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 142, i32 13}
!91 = !{ptr @.str.12, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 144, i32 13}
!93 = !{ptr @.str.13, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 146, i32 13}
!95 = !{ptr @.str.15, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 149, i32 2}
!97 = !{ptr @rtl92c_init_sw_vars._entry.14, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rtl92c_init_sw_vars._entry_ptr.16, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.18, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 154, i32 3}
!101 = !{ptr @rtl92c_init_sw_vars._entry.17, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rtl92c_init_sw_vars._entry_ptr.19, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @rtlwifi_pm_ops, !104, !"rtlwifi_pm_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/sw.c", i32 364, i32 8}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i8 0, i8 2}
