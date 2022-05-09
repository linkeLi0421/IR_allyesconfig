; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.rtl_mod_params = type { i64, i8, i32, i8, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_hal_usbint_cfg = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.128, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.128 = type { i32, i16 }
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

@__UNIQUE_ID_author354 = internal constant [48 x i8] c"rtl8192cu.author=Georgia\09\09<georgia@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [51 x i8] c"rtl8192cu.author=Ziv Huang\09<ziv_huang@realtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [58 x i8] c"rtl8192cu.author=Larry Finger\09<Larry.Finger@lwfinger.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [72 x i8] c"rtl8192cu.file=drivers/net/wireless/realtek/rtlwifi/rtl8192cu/rtl8192cu\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [22 x i8] c"rtl8192cu.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [63 x i8] c"rtl8192cu.description=Realtek 8192C/8188C 802.11n USB wireless\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [43 x i8] c"rtl8192cu.firmware=rtlwifi/rtl8192cufw.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware361 = internal constant [45 x i8] c"rtl8192cu.firmware=rtlwifi/rtl8192cufw_A.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware362 = internal constant [45 x i8] c"rtl8192cu.firmware=rtlwifi/rtl8192cufw_B.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware363 = internal constant [48 x i8] c"rtl8192cu.firmware=rtlwifi/rtl8192cufw_TMSC.bin\00", section ".modinfo", align 1
@__param_str_swenc = internal constant [16 x i8] c"rtl8192cu.swenc\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@rtl92cu_mod_params = internal global { %struct.rtl_mod_params, [56 x i8] } zeroinitializer, align 32
@__param_swenc = internal constant %struct.kernel_param { ptr @__param_str_swenc, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92cu_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_swenctype364 = internal constant [30 x i8] c"rtl8192cu.parmtype=swenc:bool\00", section ".modinfo", align 1
@__param_str_debug_level = internal constant [22 x i8] c"rtl8192cu.debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_level = internal constant %struct.kernel_param { ptr @__param_str_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.97 { ptr getelementptr (i8, ptr @rtl92cu_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_debug_leveltype365 = internal constant [35 x i8] c"rtl8192cu.parmtype=debug_level:int\00", section ".modinfo", align 1
@__param_str_debug_mask = internal constant [21 x i8] c"rtl8192cu.debug_mask\00", align 1
@param_ops_ullong = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_mask = internal constant %struct.kernel_param { ptr @__param_str_debug_mask, ptr null, ptr @param_ops_ullong, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @rtl92cu_mod_params } }, section "__param", align 4
@__UNIQUE_ID_debug_masktype366 = internal constant [37 x i8] c"rtl8192cu.parmtype=debug_mask:ullong\00", section ".modinfo", align 1
@__UNIQUE_ID_swenc367 = internal constant [63 x i8] c"rtl8192cu.parm=swenc:Set to 1 for software crypto (default 0)\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_level368 = internal constant [61 x i8] c"rtl8192cu.parm=debug_level:Set debug level (0-5) (default 0)\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_mask369 = internal constant [53 x i8] c"rtl8192cu.parm=debug_mask:Set debug mask (default 0)\00", section ".modinfo", align 1
@__initcall__kmod_rtl8192cu__370_390_rtl8192cu_driver_init6 = internal global ptr @rtl8192cu_driver_init, section ".initcall6.init", align 4
@rtl8192cu_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @rtl8192cu_probe, ptr @rtl_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8192c_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rtl8192cu_driver_exit = internal global ptr @rtl8192cu_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtl8192cu\00", [22 x i8] zeroinitializer }, align 32
@rtl8192c_usb_ids = internal constant { [73 x %struct.usb_device_id], [424 x i8] } { [73 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3034, i16 -32367, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32400, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32394, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32390, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32387, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32385, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32374, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32358, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -30892, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32388, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 4354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 4594, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1784, i16 -8141, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1976, i16 -32376, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1976, i16 -32375, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 -28605, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2821, i16 6074, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 20616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 82, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 92, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 119, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3760, i16 -28559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 18518, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 4156, i16 5673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 5075, i16 13143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 13064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 18690, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 -21718, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 -21714, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 -4841, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8436, i16 25739, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 29586, i16 30737, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 5075, i16 13144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 5075, i16 13145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 18517, i16 144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 18517, i16 145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 -26554, i16 -28607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 12671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20489, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20487, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20488, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20485, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1266, i16 -20484, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 4609, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 4100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 8450, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1293, i16 8451, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1414, i16 13343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1962, i16 86, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 1976, i16 -32392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 -28639, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2118, i16 -4095, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 2821, i16 6059, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3034, i16 -32378, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 3686, i16 25, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 13063, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 13065, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 13066, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8193, i16 13069, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8217, i16 -21717, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 8436, i16 25165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 9047, i16 256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id { i16 3, i16 29586, i16 30754, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32) }, %struct.usb_device_id zeroinitializer], [424 x i8] zeroinitializer }, align 32
@rtl92cu_hal_cfg = internal global { %struct.rtl_hal_cfg, [120 x i8] } { %struct.rtl_hal_cfg { i8 0, i8 0, ptr @.str.1, ptr null, ptr @rtl8192cu_hal_ops, ptr @rtl92cu_mod_params, ptr @rtl92cu_interface_cfg, i32 0, [91 x i32] [i32 0, i32 2, i32 8, i32 4, i32 8, i32 256, i32 4096, i32 1, i32 0, i32 0, i32 0, i32 52, i32 48, i32 0, i32 48, i32 32768, i32 4096, i32 32, i32 18, i32 128, i32 16, i32 512, i32 0, i32 0, i32 1648, i32 1652, i32 1656, i32 1660, i32 1664, i32 0, i32 1, i32 2, i32 4, i32 5, i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 0, i32 512, i32 256, i32 0, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1, i32 0, i32 8352, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 19, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtl92c_usb\00", [21 x i8] zeroinitializer }, align 32
@rtl8192cu_hal_ops = internal global { %struct.rtl_hal_ops, [68 x i8] } { %struct.rtl_hal_ops { ptr @rtl92cu_init_sw_vars, ptr @rtl92cu_deinit_sw_vars, ptr @rtl92c_read_chip_version, ptr @rtl92cu_read_eeprom_info, ptr null, ptr @rtl92cu_hw_init, ptr @rtl92cu_card_disable, ptr null, ptr null, ptr @rtl92c_enable_interrupt, ptr @rtl92c_disable_interrupt, ptr @rtl92cu_set_network_type, ptr @rtl92cu_set_check_bssid, ptr @rtl92c_phy_set_bw_mode, ptr @rtl92c_phy_sw_chnl, ptr @rtl92c_set_qos, ptr @rtl92cu_set_beacon_related_registers, ptr @rtl92cu_set_beacon_interval, ptr @rtl92cu_update_interrupt_mask, ptr @rtl92cu_get_hw_reg, ptr @rtl92cu_set_hw_reg, ptr @rtl92cu_update_hal_rate_tbl, ptr null, ptr null, ptr null, ptr null, ptr @rtl92cu_tx_fill_desc, ptr @rtl92cu_fill_fake_txdesc, ptr @rtl92cu_tx_fill_cmddesc, ptr null, ptr @rtl92cu_rx_query_desc, ptr @rtl92cu_update_channel_access_setting, ptr @rtl92cu_gpio_radio_on_off_checking, ptr @rtl92c_dm_watchdog, ptr @rtl_phy_scan_operation_backup, ptr @rtl92cu_phy_set_rf_power_state, ptr @rtl92cu_led_control, ptr null, ptr null, ptr null, ptr null, ptr @rtl92cu_enable_hw_security_config, ptr @rtl92c_set_key, ptr @rtl92cu_init_sw_leds, ptr @rtl92cu_deinit_sw_leds, ptr @rtl92c_phy_query_bb_reg, ptr @rtl92c_phy_set_bb_reg, ptr @rtl92cu_phy_query_rf_reg, ptr @rtl92cu_phy_set_rf_reg, ptr null, ptr null, ptr null, ptr null, ptr @rtl92cu_phy_rf6052_config, ptr @rtl92cu_phy_rf6052_set_cck_txpower, ptr @rtl92cu_phy_rf6052_set_ofdm_txpower, ptr @_rtl92cu_phy_config_bb_with_headerfile, ptr @_rtl92cu_phy_config_bb_with_pgheaderfile, ptr @_rtl92cu_phy_lc_calibrate, ptr @rtl92cu_phy_set_bw_mode_callback, ptr @rtl92cu_dm_dynamic_txpower, ptr null, ptr null, ptr null, ptr @rtl92c_fill_h2c_cmd, ptr null, ptr @rtl92cu_get_btc_status, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rtl92cu_interface_cfg = internal global { %struct.rtl_hal_usbint_cfg, [56 x i8] } { %struct.rtl_hal_usbint_cfg { i32 1, i32 8, i32 15360, ptr @rtl8192cu_rx_hdl, ptr null, ptr @rtl8192c_tx_cleanup, ptr @rtl8192c_tx_post_hdl, ptr @rtl8192c_tx_aggregate_hdl, ptr @rtl8192cu_endpoint_mapping, ptr @rtl8192cu_mq_to_hwq }, [56 x i8] zeroinitializer }, align 32
@rtl92cu_init_sw_vars._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013rtl8192cu: Can't alloc buffer for fw\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl92cu_init_sw_vars\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl92cu_init_sw_vars._entry_ptr = internal global ptr @rtl92cu_init_sw_vars._entry, section ".printk_index", align 4
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192cufw_A.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192cufw_B.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtlwifi/rtl8192cufw_TMSC.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtlwifi/rtl8192cufw.bin\00", [40 x i8] zeroinitializer }, align 32
@rtl92cu_init_sw_vars._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016rtl8192cu: Loading firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl92cu_init_sw_vars._entry_ptr.11 = internal global ptr @rtl92cu_init_sw_vars._entry.9, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"rtl92cu_mod_params\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 136, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"rtl8192cu_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 376, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 390, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"rtl8192c_usb_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 257, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"rtl92cu_hal_cfg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 165, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 166, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"rtl8192cu_hal_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 86, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"rtl92cu_interface_cfg\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 149, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 45, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 50, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 52, i32 13 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 54, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 57, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 58, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_debug_level368, ptr @__UNIQUE_ID_debug_leveltype365, ptr @__UNIQUE_ID_debug_mask369, ptr @__UNIQUE_ID_debug_masktype366, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_firmware361, ptr @__UNIQUE_ID_firmware362, ptr @__UNIQUE_ID_firmware363, ptr @__UNIQUE_ID_license358, ptr @__UNIQUE_ID_swenc367, ptr @__UNIQUE_ID_swenctype364, ptr @__exitcall_rtl8192cu_driver_exit, ptr @__initcall__kmod_rtl8192cu__370_390_rtl8192cu_driver_init6, ptr @__param_debug_level, ptr @__param_debug_mask, ptr @__param_swenc, ptr @rtl8192cu_driver_exit, ptr @rtl92cu_init_sw_vars._entry, ptr @rtl92cu_init_sw_vars._entry.9, ptr @rtl92cu_init_sw_vars._entry_ptr, ptr @rtl92cu_init_sw_vars._entry_ptr.11, ptr @rtl92cu_mod_params, ptr @rtl8192cu_driver, ptr @.str, ptr @rtl8192c_usb_ids, ptr @rtl92cu_hal_cfg, ptr @.str.1, ptr @rtl8192cu_hal_ops, ptr @rtl92cu_interface_cfg, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_mod_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192c_usb_ids to i32), i32 1752, i32 2176, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_hal_cfg to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_hal_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_interface_cfg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_init_sw_vars._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_init_sw_vars._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @rtl8192cu_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192cu_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @rtl8192cu_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl_usb_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @rtl92cu_hal_cfg) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_usb_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl_usb_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl92cu_init_sw_vars(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call noalias ptr @vzalloc(i32 noundef 16384) #9
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %6 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %pfirmware, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 4
  %9 = and i32 %8, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %10 = icmp ne i32 %9, 32
  %and19 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and19)
  %cmp = icmp eq i32 %and19, 1
  %or.cond76 = or i1 %10, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %9)
  %11 = icmp eq i32 %9, 96
  %spec.select = select i1 %11, ptr @.str.6, ptr @.str.7
  %fw_name.0 = select i1 %or.cond76, ptr %spec.select, ptr @.str.5
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 8
  %alt_fw_name = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %alt_fw_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.8, ptr %alt_fw_name, align 4
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %fw_name.0) #10
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %15 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16384, ptr %max_fw_size, align 4
  %io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io, align 4
  %call48 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %fw_name.0, ptr noundef %17, i32 noundef 3264, ptr noundef %hw, ptr noundef nonnull @rtl_fw_cb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end.cleanup_crit_edge, label %if.then50

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfirmware, align 8
  tail call void @vfree(ptr noundef %19) #6
  %20 = ptrtoint ptr %pfirmware to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pfirmware, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ %call48, %if.then50 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl92cu_deinit_sw_vars(ptr nocapture noundef readonly %hw) #2 align 64 {
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
declare dso_local void @rtl92c_read_chip_version(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_read_eeprom_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92cu_hw_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_card_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_enable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_disable_interrupt(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92cu_set_network_type(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_set_check_bssid(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_bw_mode(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl92c_phy_sw_chnl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_qos(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_set_beacon_related_registers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_set_beacon_interval(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_update_interrupt_mask(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_get_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_set_hw_reg(ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_update_hal_rate_tbl(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_tx_fill_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_fill_fake_txdesc(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_tx_fill_cmddesc(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_rx_query_desc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_update_channel_access_setting(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_gpio_radio_on_off_checking(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_dm_watchdog(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_phy_scan_operation_backup(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_phy_set_rf_power_state(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_led_control(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_enable_hw_security_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_set_key(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_init_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_deinit_sw_leds(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92c_phy_query_bb_reg(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl92cu_phy_query_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_phy_set_rf_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92cu_phy_rf6052_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_phy_rf6052_set_cck_txpower(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_phy_rf6052_set_ofdm_txpower(ptr noundef, ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92cu_phy_config_bb_with_headerfile(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92cu_phy_config_bb_with_pgheaderfile(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92cu_phy_lc_calibrate(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_phy_set_bw_mode_callback(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_dm_dynamic_txpower(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92c_fill_h2c_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl92cu_get_btc_status() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_cb(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192cu_rx_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192c_tx_cleanup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192c_tx_post_hdl(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtl8192c_tx_aggregate_hdl(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192cu_endpoint_mapping(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8192cu_mq_to_hwq(i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !59, !61, !63, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_author355, !3, !"__UNIQUE_ID_author355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_author356, !5, !"__UNIQUE_ID_author356", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_file357, !7, !"__UNIQUE_ID_file357", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 24, i32 1}
!8 = !{ptr @__UNIQUE_ID_license358, !7, !"__UNIQUE_ID_license358", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description359, !10, !"__UNIQUE_ID_description359", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 25, i32 1}
!11 = !{ptr @__UNIQUE_ID_firmware360, !12, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 26, i32 1}
!13 = !{ptr @__UNIQUE_ID_firmware361, !14, !"__UNIQUE_ID_firmware361", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 27, i32 1}
!15 = !{ptr @__UNIQUE_ID_firmware362, !16, !"__UNIQUE_ID_firmware362", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 28, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware363, !18, !"__UNIQUE_ID_firmware363", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 29, i32 1}
!19 = !{ptr @__param_swenc, !20, !"__param_swenc", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 142, i32 1}
!21 = !{ptr @__UNIQUE_ID_swenctype364, !20, !"__UNIQUE_ID_swenctype364", i1 false, i1 false}
!22 = !{ptr @__param_debug_level, !23, !"__param_debug_level", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 143, i32 1}
!24 = !{ptr @__UNIQUE_ID_debug_leveltype365, !23, !"__UNIQUE_ID_debug_leveltype365", i1 false, i1 false}
!25 = !{ptr @__param_debug_mask, !26, !"__param_debug_mask", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 144, i32 1}
!27 = !{ptr @__UNIQUE_ID_debug_masktype366, !26, !"__UNIQUE_ID_debug_masktype366", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_swenc367, !29, !"__UNIQUE_ID_swenc367", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 145, i32 1}
!30 = !{ptr @__UNIQUE_ID_debug_level368, !31, !"__UNIQUE_ID_debug_level368", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 146, i32 1}
!32 = !{ptr @__UNIQUE_ID_debug_mask369, !33, !"__UNIQUE_ID_debug_mask369", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 147, i32 1}
!34 = !{ptr @__initcall__kmod_rtl8192cu__370_390_rtl8192cu_driver_init6, !35, !"__initcall__kmod_rtl8192cu__370_390_rtl8192cu_driver_init6", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 390, i32 1}
!36 = !{ptr @__exitcall_rtl8192cu_driver_exit, !35, !"__exitcall_rtl8192cu_driver_exit", i1 false, i1 false}
!37 = !{ptr @__param_str_swenc, !20, !"__param_str_swenc", i1 false, i1 false}
!38 = !{ptr @rtl92cu_mod_params, !39, !"rtl92cu_mod_params", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 136, i32 30}
!40 = !{ptr @__param_str_debug_level, !23, !"__param_str_debug_level", i1 false, i1 false}
!41 = !{ptr @__param_str_debug_mask, !26, !"__param_str_debug_mask", i1 false, i1 false}
!42 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rtl8192cu_driver, !44, !"rtl8192cu_driver", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 376, i32 26}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 166, i32 10}
!47 = !{ptr @rtl92cu_hal_cfg, !48, !"rtl92cu_hal_cfg", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 165, i32 27}
!49 = !{ptr @rtl8192cu_hal_ops, !50, !"rtl8192cu_hal_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 86, i32 27}
!51 = !{ptr @.str.2, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 45, i32 3}
!53 = !{ptr @.str.3, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.4, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rtl92cu_init_sw_vars._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @rtl92cu_init_sw_vars._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.5, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 50, i32 13}
!59 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 52, i32 13}
!61 = !{ptr @.str.7, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 54, i32 13}
!63 = !{ptr @.str.8, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 57, i32 30}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 58, i32 2}
!67 = !{ptr @rtl92cu_init_sw_vars._entry.9, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rtl92cu_init_sw_vars._entry_ptr.11, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @rtl92cu_interface_cfg, !70, !"rtl92cu_interface_cfg", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 149, i32 34}
!71 = !{ptr @rtl8192c_usb_ids, !72, !"rtl8192c_usb_ids", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/sw.c", i32 257, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
