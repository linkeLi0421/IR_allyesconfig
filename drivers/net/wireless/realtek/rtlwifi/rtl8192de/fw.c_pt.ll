; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92d_firmware_selfreset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8192de: 8051 reset failed!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"=====> 8051 reset success (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"FirmwareVersion(%d), FirmwareSubVersion(%d), Signature(%#x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Shift 32 bytes for FW header!!\0A\00", [32 x i8] zeroinitializer }, align 32
@globalmutex_for_fwdownload = external dso_local global %struct.spinlock, align 4
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wait for another mac download fw\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl92d_download_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rtl8192de: fw is not ready to run!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl92d_download_fw\00", [45 x i8] zeroinitializer }, align 32
@rtl92d_download_fw._entry_ptr = internal global ptr @rtl92d_download_fw._entry, section ".printk_index", align 4
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rtl92d_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Set RSVD page location to Fw\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"H2C_RSVDPAGE\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Set RSVD page location to Fw FAIL!!!!!!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW size is %d bytes,\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92d_write_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8192de: Page numbers should not greater then 8\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl92d_write_fw\00", [47 x i8] zeroinitializer }, align 32
@_rtl92d_write_fw._entry_ptr = internal global ptr @_rtl92d_write_fw._entry, section ".printk_index", align 4
@_rtl92d_fw_free_to_go._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8192de: chksum report fail! REG_MCUFWDL:0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_rtl92d_fw_free_to_go\00", [42 x i8] zeroinitializer }, align 32
@_rtl92d_fw_free_to_go._entry_ptr = internal global ptr @_rtl92d_fw_free_to_go._entry, section ".printk_index", align 4
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW already have download\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Polling FW ready success!! REG_MCUFWDL: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Polling FW ready fail!! MAC0 FW init not ready: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Polling FW ready fail!! MAC1 FW init not ready: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Polling FW ready fail!! REG_MCUFWDL:0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Return as RF is off!!!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"come in\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"H2C set in progress! Wait to set..element_id(%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wait 100 us (%d times)...\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92d_fill_h2c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rtl8192de: Write H2C fail because no trigger for FW INT!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_rtl92d_fill_h2c_command\00", [39 x i8] zeroinitializer }, align 32
@_rtl92d_fill_h2c_command._entry_ptr = internal global ptr @_rtl92d_fill_h2c_command._entry, section ".printk_index", align 4
@_rtl92d_fill_h2c_command._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192de: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl92d_fill_h2c_command._entry_ptr.30 = internal global ptr @_rtl92d_fill_h2c_command._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x1BF = %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92d_fill_h2c_command._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl92d_fill_h2c_command._entry_ptr.36 = internal global ptr @_rtl92d_fill_h2c_command._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"go out\0A\00", [24 x i8] zeroinitializer }, align 32
@reserved_page_packet = internal global { <{ [626 x i8], [142 x i8] }>, [192 x i8] } { <{ [626 x i8], [142 x i8] }> <{ [626 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0Lv\00B\00@\10\10\00\03P\08\00\00\00\00\00\00\00\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00 \8C\00\12\10\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\01\C0\00@\10\10\00\03\00\E0Lv\00B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00 \8C\00\12\00\00\00\00\00\00\00\00\00\80\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00H\01\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00r\00 \8C\00\12\00\00\00\00\00\00\00\00\00\80\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\9EF\152'\F2-\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p", [142 x i8] zeroinitializer }>, [192 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 35008, i64 37568]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 106, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 107, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 180, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 185, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 217, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 251, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 639, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 656, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 658, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 663, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 50, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 56, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 80, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 117, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 124, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 145, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 149, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 153, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 289, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 293, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 297, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 305, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 326, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 348, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 356, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 364, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 369, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 377, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 425, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 433, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 440, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [21 x i8] c"reserved_page_packet\00", align 1
@___asan_gen_.165 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 485, i32 11 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @_rtl92d_fill_h2c_command._entry, ptr @_rtl92d_fill_h2c_command._entry.28, ptr @_rtl92d_fill_h2c_command._entry.35, ptr @_rtl92d_fill_h2c_command._entry_ptr, ptr @_rtl92d_fill_h2c_command._entry_ptr.30, ptr @_rtl92d_fill_h2c_command._entry_ptr.36, ptr @_rtl92d_fw_free_to_go._entry, ptr @_rtl92d_fw_free_to_go._entry_ptr, ptr @_rtl92d_write_fw._entry, ptr @_rtl92d_write_fw._entry_ptr, ptr @rtl92d_download_fw._entry, ptr @rtl92d_download_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @reserved_page_packet], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92d_download_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_write_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_fw_free_to_go._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_fill_h2c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_fill_h2c_command._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92d_fill_h2c_command._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_firmware_selfreset(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 463, i8 noundef zeroext 32) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef 463) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %read8_sync.i55 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %10 = ptrtoint ptr %read8_sync.i55 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i55, align 4
  %call.i56 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 3) #5
  %12 = and i8 %call.i56, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not64 = icmp eq i8 %12, 0
  br i1 %tobool.not64, label %rtl_write_byte.exit.if.end37_crit_edge, label %rtl_write_byte.exit.while.body_crit_edge

rtl_write_byte.exit.while.body_crit_edge:         ; preds = %rtl_write_byte.exit
  br label %while.body

rtl_write_byte.exit.if.end37_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

while.body:                                       ; preds = %if.end.while.body_crit_edge, %rtl_write_byte.exit.while.body_crit_edge
  %delay.065 = phi i8 [ %dec, %if.end.while.body_crit_edge ], [ 100, %rtl_write_byte.exit.while.body_crit_edge ]
  %dec = add nsw i8 %delay.065, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp = icmp eq i8 %dec, 0
  br i1 %cmp, label %land.rhs, label %if.end

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #5
  %14 = ptrtoint ptr %read8_sync.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i55, align 4
  %call.i58 = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 3) #5
  %16 = and i8 %call.i58, 4
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end37.loopexit, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

land.rhs:                                         ; preds = %while.body
  %.b54 = load i1, ptr @rtl92d_firmware_selfreset.__already_done, align 1
  br i1 %.b54, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !91

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92d_firmware_selfreset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end37

if.end37.loopexit:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = zext i8 %dec to i32
  br label %if.end37

if.end37:                                         ; preds = %if.end37.loopexit, %if.then15, %land.rhs.if.end37_crit_edge, %rtl_write_byte.exit.if.end37_crit_edge
  %delay.161 = phi i32 [ 0, %if.then15 ], [ 0, %land.rhs.if.end37_crit_edge ], [ 100, %rtl_write_byte.exit.if.end37_crit_edge ], [ %phi.cast, %if.end37.loopexit ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %delay.161) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92d_download_fw(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %size.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %max_fw_size = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %max_fw_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_fw_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %4 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfirmware, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %fwsize4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 32
  %6 = ptrtoint ptr %fwsize4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fwsize4, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv = trunc i32 %11 to i16
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %12 = ptrtoint ptr %fw_version to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %fw_version, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = lshr i32 %14, 8
  %div4.i296 = and i32 %15, 255
  %conv9 = trunc i32 %div4.i296 to i16
  %fw_subversion = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 35
  %16 = ptrtoint ptr %fw_subversion to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9, ptr %fw_subversion, align 2
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, -65536
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %div4.i296, i32 noundef %20) #5
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, -65536
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = trunc i32 %24 to i16
  %trunc = and i16 %25, -16
  %26 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %lor.lhs.false23 [
    i16 -27968, label %if.end.if.then43_crit_edge
    i16 -30528, label %if.end.if.then43_crit_edge298
  ]

if.end.if.then43_crit_edge298:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.end.if.then43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

lor.lhs.false23:                                  ; preds = %if.end
  %27 = and i32 %24, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 37584, i32 %27)
  %switch = icmp eq i32 %27, 37584
  br i1 %switch, label %lor.lhs.false23.if.then43_crit_edge, label %lor.lhs.false23.do.body46_crit_edge

lor.lhs.false23.do.body46_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

lor.lhs.false23.if.then43_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false23.if.then43_crit_edge, %if.end.if.then43_crit_edge, %if.end.if.then43_crit_edge298
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.4) #5
  %add.ptr44 = getelementptr i8, ptr %5, i32 32
  %sub = add i32 %7, -32
  br label %do.body46

do.body46:                                        ; preds = %if.then43, %lor.lhs.false23.do.body46_crit_edge
  %fwsize.0 = phi i32 [ %sub, %if.then43 ], [ %7, %lor.lhs.false23.do.body46_crit_edge ]
  %pfwdata.0 = phi ptr [ %add.ptr44, %if.then43 ], [ %5, %lor.lhs.false23.do.body46_crit_edge ]
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_for_fwdownload) #5
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %28 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %29(ptr noundef %1, i32 noundef 128) #5
  %and.i228 = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.i.not = icmp eq i32 %and.i228, 0
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 31) #5
  br i1 %tobool.i.not, label %if.else63, label %if.then62

if.then62:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_fwdownload, i32 noundef %call50) #5
  br label %exit

if.else63:                                        ; preds = %do.body46
  %32 = and i8 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp57.not = icmp eq i8 %32, 0
  br i1 %cmp57.not, label %if.else115, label %if.then65

if.then65:                                        ; preds = %if.else63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_fwdownload, i32 noundef %call50) #5
  br label %for.body

for.body:                                         ; preds = %if.else96.for.body_crit_edge, %if.then65
  %count.0297 = phi i32 [ 0, %if.then65 ], [ %inc, %if.else96.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 107374000) #5
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_for_fwdownload) #5
  %34 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i230 = tail call i32 %35(ptr noundef %1, i32 noundef 128) #5
  %and.i231 = and i32 %call.i.i230, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i231)
  %tobool.i232.not = icmp eq i32 %and.i231, 0
  %36 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i, align 4
  %call.i234 = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 31) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_fwdownload, i32 noundef %call76) #5
  br i1 %tobool.i232.not, label %if.else93, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.else93:                                        ; preds = %for.body
  %38 = and i8 %call.i234, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp86.not = icmp eq i8 %38, 0
  br i1 %cmp86.not, label %if.else93.do.body100_crit_edge, label %if.else96

if.else93.do.body100_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

if.else96:                                        ; preds = %if.else93
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.5) #5
  %inc = add nuw nsw i32 %count.0297, 1
  %exitcond.not = icmp eq i32 %inc, 5000
  br i1 %exitcond.not, label %if.else96.do.body100_crit_edge, label %if.else96.for.body_crit_edge

if.else96.for.body_crit_edge:                     ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else96.do.body100_crit_edge:                   ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body100:                                       ; preds = %if.else96.do.body100_crit_edge, %if.else93.do.body100_crit_edge
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_for_fwdownload) #5
  %39 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i, align 4
  %call.i236 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 31) #5
  %41 = or i8 %call.i236, 32
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %42 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i, align 4
  tail call void %43(ptr noundef %1, i32 noundef 31, i8 noundef zeroext %41) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %do.body100.if.end121_crit_edge, label %do.body100.if.end121.sink.split_crit_edge

do.body100.if.end121.sink.split_crit_edge:        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121.sink.split

do.body100.if.end121_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.else115:                                       ; preds = %if.else63
  %48 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i, align 4
  %call.i240 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 31) #5
  %50 = or i8 %call.i240, 32
  %write8_async.i241 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %51 = ptrtoint ptr %write8_async.i241 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i241, align 4
  tail call void %52(ptr noundef %1, i32 noundef 31, i8 noundef zeroext %50) #5
  %cfg.i242 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i242 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i242, align 8
  %write_readback.i243 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i243 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i243, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i244 = icmp eq i8 %56, 0
  br i1 %tobool.not.i244, label %if.else115.if.end121_crit_edge, label %if.else115.if.end121.sink.split_crit_edge

if.else115.if.end121.sink.split_crit_edge:        ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121.sink.split

if.else115.if.end121_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.end121.sink.split:                             ; preds = %if.else115.if.end121.sink.split_crit_edge, %do.body100.if.end121.sink.split_crit_edge
  %call107.sink.ph = phi i32 [ %call107, %do.body100.if.end121.sink.split_crit_edge ], [ %call50, %if.else115.if.end121.sink.split_crit_edge ]
  %57 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i, align 4
  %call.i246 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 31) #5
  br label %if.end121

if.end121:                                        ; preds = %if.end121.sink.split, %if.else115.if.end121_crit_edge, %do.body100.if.end121_crit_edge
  %call107.sink = phi i32 [ %call107, %do.body100.if.end121_crit_edge ], [ %call50, %if.else115.if.end121_crit_edge ], [ %call107.sink.ph, %if.end121.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_fwdownload, i32 noundef %call107.sink) #5
  %59 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i, align 4
  %call.i250 = tail call zeroext i8 %60(ptr noundef %1, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i250)
  %tobool125.not = icmp sgt i8 %call.i250, -1
  br i1 %tobool125.not, label %if.end121.if.end127_crit_edge, label %if.then126

if.end121.if.end127_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.then126:                                       ; preds = %if.end121
  tail call void @rtl92d_firmware_selfreset(ptr noundef %hw)
  %write8_async.i251 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %61 = ptrtoint ptr %write8_async.i251 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write8_async.i251, align 4
  tail call void %62(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #5
  %cfg.i252 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i252 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i252, align 8
  %write_readback.i253 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i253 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i253, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i254 = icmp eq i8 %66, 0
  br i1 %tobool.not.i254, label %if.then126.if.end127_crit_edge, label %if.then.i257

if.then126.if.end127_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end127

if.then.i257:                                     ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read8_sync.i, align 4
  %call.i256 = tail call zeroext i8 %68(ptr noundef %1, i32 noundef 128) #5
  br label %if.end127

if.end127:                                        ; preds = %if.then.i257, %if.then126.if.end127_crit_edge, %if.end121.if.end127_crit_edge
  tail call fastcc void @_rtl92d_enable_fw_download(ptr noundef %hw, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i)
  %69 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %fwsize.0, ptr %size.addr.i, align 4
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %71, i64 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.12, i32 noundef %fwsize.0) #5
  %hw_type.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 10, i32 10
  %72 = ptrtoint ptr %hw_type.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %hw_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %73)
  %cmp.i = icmp eq i16 %73, 6
  br i1 %cmp.i, label %if.then.i259, label %if.end127.if.end.i_crit_edge

if.end127.if.end.i_crit_edge:                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i259:                                     ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #7
  call void @rtl_fill_dummy(ptr noundef %pfwdata.0, ptr noundef nonnull %size.addr.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i259, %if.end127.if.end.i_crit_edge
  %74 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.addr.i, align 4
  %div1.i = lshr i32 %75, 12
  %rem.i = and i32 %75, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %75)
  %cmp4.i = icmp ugt i32 %75, 36863
  br i1 %cmp4.i, label %if.end7.thread.i, label %if.end7.i

if.end7.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %for.body.preheader.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %75)
  %cmp82.not.i = icmp ult i32 %75, 4096
  br i1 %cmp82.not.i, label %if.end7.i.for.end.i_crit_edge, label %if.end7.i.for.body.preheader.i_crit_edge

if.end7.i.for.body.preheader.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end7.i.for.end.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end7.i.for.body.preheader.i_crit_edge, %if.end7.thread.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div1.i, i32 1) #5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %page.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul.i = shl i32 %page.03.i, 12
  %add.ptr.i = getelementptr i8, ptr %pfwdata.0, i32 %mul.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %page.03.i, ptr noundef %add.ptr.i, i32 noundef 4096) #5
  %inc.i = add nuw nsw i32 %page.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end7.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i261 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i261, label %for.end.i._rtl92d_write_fw.exit_crit_edge, label %if.then10.i

for.end.i._rtl92d_write_fw.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_write_fw.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul11.i = and i32 %75, -4096
  %add.ptr12.i = getelementptr i8, ptr %pfwdata.0, i32 %mul11.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %div1.i, ptr noundef %add.ptr12.i, i32 noundef %rem.i) #5
  br label %_rtl92d_write_fw.exit

_rtl92d_write_fw.exit:                            ; preds = %if.then10.i, %for.end.i._rtl92d_write_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i)
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 13, i32 9
  %78 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i46.i = call zeroext i8 %79(ptr noundef %77, i32 noundef 128) #5
  %80 = and i8 %call.i46.i, -2
  %write8_async.i47.i = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 13, i32 5
  %81 = ptrtoint ptr %write8_async.i47.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write8_async.i47.i, align 4
  call void %82(ptr noundef %77, i32 noundef 128, i8 noundef zeroext %80) #5
  %cfg.i48.i = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 32
  %83 = ptrtoint ptr %cfg.i48.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i48.i, align 8
  %write_readback.i49.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write_readback.i49.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %write_readback.i49.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i50.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i50.i, label %_rtl92d_write_fw.exit._rtl92d_enable_fw_download.exit_crit_edge, label %if.end.sink.split.i

_rtl92d_write_fw.exit._rtl92d_enable_fw_download.exit_crit_edge: ; preds = %_rtl92d_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_enable_fw_download.exit

if.end.sink.split.i:                              ; preds = %_rtl92d_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i52.i = call zeroext i8 %88(ptr noundef %77, i32 noundef 128) #5
  br label %_rtl92d_enable_fw_download.exit

_rtl92d_enable_fw_download.exit:                  ; preds = %if.end.sink.split.i, %_rtl92d_write_fw.exit._rtl92d_enable_fw_download.exit_crit_edge
  %call136 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @globalmutex_for_fwdownload) #5
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  %read32_sync.i.i265 = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %_rtl92d_enable_fw_download.exit
  %counter.0.i = phi i32 [ 0, %_rtl92d_enable_fw_download.exit ], [ %inc.i267, %do.body.i.do.body.i_crit_edge ]
  %91 = ptrtoint ptr %read32_sync.i.i265 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read32_sync.i.i265, align 4
  %call.i.i266 = call i32 %92(ptr noundef %90, i32 noundef 128) #5
  %inc.i267 = add nuw nsw i32 %counter.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %counter.0.i)
  %cmp.i268 = icmp ult i32 %counter.0.i, 1000
  %and.i269 = and i32 %call.i.i266, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269)
  %tobool.not.i270 = icmp eq i32 %and.i269, 0
  %or.cond.i = select i1 %cmp.i268, i1 %tobool.not.i270, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 998, i32 %counter.0.i)
  %cmp1.i = icmp ugt i32 %counter.0.i, 998
  br i1 %cmp1.i, label %do.end4.i, label %if.end.i271

do.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call.i.i266) #8
  br label %_rtl92d_fw_free_to_go.exit

if.end.i271:                                      ; preds = %do.end.i
  %93 = ptrtoint ptr %read32_sync.i.i265 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32_sync.i.i265, align 4
  %call.i16.i = call i32 %94(ptr noundef %90, i32 noundef 128) #5
  %or.i = or i32 %call.i16.i, 2
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 13, i32 7
  %95 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write32_async.i.i, align 4
  call void %96(ptr noundef %90, i32 noundef 128, i32 noundef %or.i) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %90, i32 0, i32 32
  %97 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %write_readback.i.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i.i, label %if.end.i271._rtl92d_fw_free_to_go.exit_crit_edge, label %if.then.i.i

if.end.i271._rtl92d_fw_free_to_go.exit_crit_edge: ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_fw_free_to_go.exit

if.then.i.i:                                      ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %read32_sync.i.i265 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read32_sync.i.i265, align 4
  %call.i18.i = call i32 %102(ptr noundef %90, i32 noundef 128) #5
  br label %_rtl92d_fw_free_to_go.exit

_rtl92d_fw_free_to_go.exit:                       ; preds = %if.then.i.i, %if.end.i271._rtl92d_fw_free_to_go.exit_crit_edge, %do.end4.i
  %103 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i, align 4
  %call.i273 = call zeroext i8 %104(ptr noundef %1, i32 noundef 31) #5
  %105 = and i8 %call.i273, -33
  %write8_async.i274 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %106 = ptrtoint ptr %write8_async.i274 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write8_async.i274, align 4
  call void %107(ptr noundef %1, i32 noundef 31, i8 noundef zeroext %105) #5
  %cfg.i275 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %108 = ptrtoint ptr %cfg.i275 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i275, align 8
  %write_readback.i276 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %write_readback.i276 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %write_readback.i276, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i277 = icmp eq i8 %111, 0
  br i1 %tobool.not.i277, label %_rtl92d_fw_free_to_go.exit.rtl_write_byte.exit282_crit_edge, label %if.then.i280

_rtl92d_fw_free_to_go.exit.rtl_write_byte.exit282_crit_edge: ; preds = %_rtl92d_fw_free_to_go.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit282

if.then.i280:                                     ; preds = %_rtl92d_fw_free_to_go.exit
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %read8_sync.i, align 4
  %call.i279 = call zeroext i8 %113(ptr noundef %1, i32 noundef 31) #5
  br label %rtl_write_byte.exit282

rtl_write_byte.exit282:                           ; preds = %if.then.i280, %_rtl92d_fw_free_to_go.exit.rtl_write_byte.exit282_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @globalmutex_for_fwdownload, i32 noundef %call136) #5
  br i1 %cmp1.i, label %do.end150, label %rtl_write_byte.exit282.exit_crit_edge

rtl_write_byte.exit282.exit_crit_edge:            ; preds = %rtl_write_byte.exit282
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end150:                                        ; preds = %rtl_write_byte.exit282
  call void @__sanitizer_cov_trace_pc() #7
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %exit

exit:                                             ; preds = %do.end150, %rtl_write_byte.exit282.exit_crit_edge, %for.body.exit_crit_edge, %if.then62
  %114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv, align 8
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %115, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.17) #5
  %interfaceindex.i = getelementptr inbounds %struct.rtl_priv, ptr %115, i32 0, i32 10, i32 56
  %read8_sync.i46.i = getelementptr inbounds %struct.rtl_priv, ptr %115, i32 0, i32 13, i32 9
  br label %do.body.i286

do.body.i286:                                     ; preds = %do.cond.i.do.body.i286_crit_edge, %exit
  %counter.0.i284 = phi i32 [ 0, %exit ], [ %inc.i291, %do.cond.i.do.body.i286_crit_edge ]
  %116 = ptrtoint ptr %interfaceindex.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %interfaceindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i285 = icmp eq i32 %117, 0
  %118 = ptrtoint ptr %read8_sync.i46.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i46.i, align 4
  br i1 %cmp.i285, label %if.then.i289, label %if.else.i

if.then.i289:                                     ; preds = %do.body.i286
  %call.i.i287 = call zeroext i8 %119(ptr noundef %115, i32 noundef 24) #5
  %120 = and i8 %call.i.i287, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i288 = icmp eq i8 %120, 0
  br i1 %tobool.not.i288, label %if.then.i289.do.cond.i_crit_edge, label %if.then3.i

if.then.i289.do.cond.i_crit_edge:                 ; preds = %if.then.i289
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then3.i:                                       ; preds = %if.then.i289
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %read8_sync.i46.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %read8_sync.i46.i, align 4
  %call.i45.i = call zeroext i8 %122(ptr noundef %115, i32 noundef 24) #5
  %conv5.i = zext i8 %call.i45.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %115, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %conv5.i) #5
  br label %cleanup

if.else.i:                                        ; preds = %do.body.i286
  %call.i47.i = call zeroext i8 %119(ptr noundef %115, i32 noundef 26) #5
  %123 = and i8 %call.i47.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool9.not.i = icmp eq i8 %123, 0
  br i1 %tobool9.not.i, label %if.else.i.do.cond.i_crit_edge, label %if.then10.i290

if.else.i.do.cond.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then10.i290:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %124 = ptrtoint ptr %read8_sync.i46.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read8_sync.i46.i, align 4
  %call.i49.i = call zeroext i8 %125(ptr noundef %115, i32 noundef 26) #5
  %conv12.i = zext i8 %call.i49.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %115, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %conv12.i) #5
  br label %cleanup

do.cond.i:                                        ; preds = %if.else.i.do.cond.i_crit_edge, %if.then.i289.do.cond.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %126(i32 noundef 1073740) #5
  %inc.i291 = add nuw nsw i32 %counter.0.i284, 1
  %exitcond.not.i292 = icmp eq i32 %inc.i291, 1001
  br i1 %exitcond.not.i292, label %do.end.i294, label %do.cond.i.do.body.i286_crit_edge

do.cond.i.do.body.i286_crit_edge:                 ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i286

do.end.i294:                                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %interfaceindex.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %interfaceindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp18.i = icmp eq i32 %128, 0
  %129 = ptrtoint ptr %read8_sync.i46.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read8_sync.i46.i, align 4
  %..i = select i1 %cmp18.i, i32 24, i32 26
  %.str.19..str.20.i = select i1 %cmp18.i, ptr @.str.19, ptr @.str.20
  %call.i53.i = call zeroext i8 %130(ptr noundef %115, i32 noundef %..i) #5
  %conv25.i = zext i8 %call.i53.i to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %115, i64 noundef 2, i32 noundef 3, ptr noundef nonnull %.str.19..str.20.i, i32 noundef %conv25.i) #5
  %read32_sync.i.i293 = getelementptr inbounds %struct.rtl_priv, ptr %115, i32 0, i32 13, i32 11
  %131 = ptrtoint ptr %read32_sync.i.i293 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read32_sync.i.i293, align 4
  %call.i54.i = call i32 %132(ptr noundef %115, i32 noundef 128) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %115, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %call.i54.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end.i294, %if.then10.i290, %if.then3.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then3.i ], [ -1, %do.end.i294 ], [ 0, %if.then10.i290 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92d_enable_fw_download(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 3) #5
  %4 = or i8 %call.i, 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %4) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i24 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i, align 4
  %call.i26 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 128) #5
  %15 = or i8 %call.i26, 1
  %16 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8_async.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef 128, i8 noundef zeroext %15) #5
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %write_readback.i29 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i29, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i30 = icmp eq i8 %21, 0
  br i1 %tobool.not.i30, label %rtl_write_byte.exit.rtl_write_byte.exit34_crit_edge, label %if.then.i33

rtl_write_byte.exit.rtl_write_byte.exit34_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit34

if.then.i33:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i, align 4
  %call.i32 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit34

rtl_write_byte.exit34:                            ; preds = %if.then.i33, %rtl_write_byte.exit.rtl_write_byte.exit34_crit_edge
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i36 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 130) #5
  %26 = and i8 %call.i36, -9
  %27 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 130, i8 noundef zeroext %26) #5
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i39 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i39 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i39, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i40 = icmp eq i8 %32, 0
  br i1 %tobool.not.i40, label %rtl_write_byte.exit34.if.end_crit_edge, label %rtl_write_byte.exit34.if.end.sink.split_crit_edge

rtl_write_byte.exit34.if.end.sink.split_crit_edge: ; preds = %rtl_write_byte.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

rtl_write_byte.exit34.if.end_crit_edge:           ; preds = %rtl_write_byte.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i46 = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 128) #5
  %33 = and i8 %call.i46, -2
  %write8_async.i47 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %34 = ptrtoint ptr %write8_async.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i47, align 4
  tail call void %35(ptr noundef %1, i32 noundef 128, i8 noundef zeroext %33) #5
  %cfg.i48 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %36 = ptrtoint ptr %cfg.i48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i48, align 8
  %write_readback.i49 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i49 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i49, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i50 = icmp eq i8 %39, 0
  br i1 %tobool.not.i50, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %rtl_write_byte.exit34.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 130, %rtl_write_byte.exit34.if.end.sink.split_crit_edge ], [ 128, %if.else.if.end.sink.split_crit_edge ]
  %40 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i, align 4
  %call.i52 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef %.sink) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %rtl_write_byte.exit34.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_fill_h2c_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr nocapture noundef readonly %cmdbuffer) local_unnamed_addr #0 align 64 {
entry:
  %tmp_cmdbuf.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  %tmp_cmdbuf.sroa.0.4..sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 4
  %0 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %tmp_cmdbuf.sroa.0, align 8
  %1 = call ptr @memcpy(ptr %tmp_cmdbuf.sroa.0, ptr %cmdbuffer, i32 %cmd_len)
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %rfpwr_state.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 21, i32 24
  %4 = ptrtoint ptr %rfpwr_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rfpwr_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %entry.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i

entry.cleanup.sink.split.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %entry
  %inactive_pwrstate.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 21, i32 23
  %6 = ptrtoint ptr %inactive_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inactive_pwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4.i = icmp eq i32 %7, 2
  br i1 %cmp4.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.23) #5
  %h2c_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 7, i32 4
  %call7454.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %h2c_setinprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 36
  %8 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h2c_setinprogress.i, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not455.i = icmp eq i8 %9, 0
  %.pre.i = zext i8 %element_id to i32
  br i1 %tobool.not455.i, label %if.end.i.if.end56.i_crit_edge, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  br label %if.then10.i

if.end.i.if.end56.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.then10.i:                                      ; preds = %while.end.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %call7457.i = phi i32 [ %call7.i, %while.end.i.if.then10.i_crit_edge ], [ %call7454.i, %if.end.i.if.then10.i_crit_edge ]
  %h2c_waitcounter.0456.i = phi i32 [ %h2c_waitcounter.1.lcssa.i, %while.end.i.if.then10.i_crit_edge ], [ 0, %if.end.i.if.then10.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %.pre.i) #5
  %10 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %h2c_setinprogress.i, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not450.i = icmp eq i8 %11, 0
  br i1 %tobool14.not450.i, label %if.then10.i.while.end.i_crit_edge, label %if.then10.i.while.body15.i_crit_edge

if.then10.i.while.body15.i_crit_edge:             ; preds = %if.then10.i
  br label %while.body15.i

if.then10.i.while.end.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body15.i:                                   ; preds = %do.body23.i.while.body15.i_crit_edge, %if.then10.i.while.body15.i_crit_edge
  %flag.0452.i = phi i32 [ %call32.i, %do.body23.i.while.body15.i_crit_edge ], [ %call7457.i, %if.then10.i.while.body15.i_crit_edge ]
  %h2c_waitcounter.1451.i = phi i32 [ %inc.i, %do.body23.i.while.body15.i_crit_edge ], [ %h2c_waitcounter.0456.i, %if.then10.i.while.body15.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0452.i) #5
  %inc.i = add i32 %h2c_waitcounter.1451.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %inc.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 21474800) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp18.i = icmp ugt i32 %inc.i, 1000
  br i1 %cmp18.i, label %while.body15.i._rtl92d_fill_h2c_command.exit_crit_edge, label %do.body23.i

while.body15.i._rtl92d_fill_h2c_command.exit_crit_edge: ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_fill_h2c_command.exit

do.body23.i:                                      ; preds = %while.body15.i
  %call32.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %13 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %h2c_setinprogress.i, align 8, !range !90
  %tobool14.not.i = icmp eq i8 %14, 0
  br i1 %tobool14.not.i, label %do.body23.i.while.end.i_crit_edge, label %do.body23.i.while.body15.i_crit_edge

do.body23.i.while.body15.i_crit_edge:             ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15.i

do.body23.i.while.end.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.body23.i.while.end.i_crit_edge, %if.then10.i.while.end.i_crit_edge
  %h2c_waitcounter.1.lcssa.i = phi i32 [ %h2c_waitcounter.0456.i, %if.then10.i.while.end.i_crit_edge ], [ %inc.i, %do.body23.i.while.end.i_crit_edge ]
  %flag.0.lcssa.i = phi i32 [ %call7457.i, %if.then10.i.while.end.i_crit_edge ], [ %call32.i, %do.body23.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0.lcssa.i) #5
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %15 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %h2c_setinprogress.i, align 8, !range !90
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %while.end.i.if.end56.i_crit_edge, label %while.end.i.if.then10.i_crit_edge

while.end.i.if.then10.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

while.end.i.if.end56.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

if.end56.i:                                       ; preds = %while.end.i.if.end56.i_crit_edge, %if.end.i.if.end56.i_crit_edge
  %call7.lcssa.i = phi i32 [ %call7454.i, %if.end.i.if.end56.i_crit_edge ], [ %call7.i, %while.end.i.if.end56.i_crit_edge ]
  %17 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call7.lcssa.i) #5
  %last_hmeboxnum.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 37
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 9
  %write8_async.i422.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 13, i32 5
  %cfg.i423.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %18 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %last_hmeboxnum.i, align 1
  %conv57.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %switch.lookup, label %do.end63.i

do.end63.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv57.i) #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %19 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 1
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 136
  %switch.idx.cast20 = zext i8 %19 to i32
  %switch.idx.mult21 = shl nuw nsw i32 %switch.idx.cast20, 2
  %switch.offset22 = add nuw nsw i32 %switch.idx.mult21, 464
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end63.i
  %box_extreg.1.i = phi i32 [ 0, %do.end63.i ], [ %switch.offset, %switch.lookup ]
  %box_reg.1.i = phi i32 [ 0, %do.end63.i ], [ %switch.offset22, %switch.lookup ]
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 13, i32 9
  %23 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %24(ptr noundef %22, i32 noundef 460) #5
  %25 = shl nuw i32 1, %conv57.i
  %conv.i.pn461.i = zext i8 %call.i.i.i to i32
  %isfw_read.0.in.in462.i = and i32 %25, %conv.i.pn461.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfw_read.0.in.in462.i)
  %isfw_read.0.in463.i = icmp eq i32 %isfw_read.0.in.in462.i, 0
  br i1 %isfw_read.0.in463.i, label %sw.epilog.i.if.end88.i_crit_edge, label %sw.epilog.i.while.body71.i_crit_edge

sw.epilog.i.while.body71.i_crit_edge:             ; preds = %sw.epilog.i
  br label %while.body71.i

sw.epilog.i.if.end88.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

while.body71.i:                                   ; preds = %if.end78.i.while.body71.i_crit_edge, %sw.epilog.i.while.body71.i_crit_edge
  %wait_h2c_limmit.1464.i = phi i8 [ %dec72.i, %if.end78.i.while.body71.i_crit_edge ], [ 100, %sw.epilog.i.while.body71.i_crit_edge ]
  %dec72.i = add nsw i8 %wait_h2c_limmit.1464.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec72.i)
  %cmp74.i = icmp eq i8 %dec72.i, 0
  br i1 %cmp74.i, label %if.then86.i, label %if.end78.i

if.end78.i:                                       ; preds = %while.body71.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #5
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 8
  %read8_sync.i.i383.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 9
  %29 = ptrtoint ptr %read8_sync.i.i383.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i.i383.i, align 4
  %call.i.i384.i = tail call zeroext i8 %30(ptr noundef %28, i32 noundef 460) #5
  %31 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %32(ptr noundef %3, i32 noundef 447) #5
  %conv83.i = zext i8 %call.i.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv57.i, i32 noundef %conv83.i) #5
  %conv.i.pn.i = zext i8 %call.i.i384.i to i32
  %isfw_read.0.in.in.i = and i32 %25, %conv.i.pn.i
  %isfw_read.0.in.i = icmp eq i32 %isfw_read.0.in.in.i, 0
  br i1 %isfw_read.0.in.i, label %if.end78.i.if.end88.i_crit_edge, label %if.end78.i.while.body71.i_crit_edge

if.end78.i.while.body71.i_crit_edge:              ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body71.i

if.end78.i.if.end88.i_crit_edge:                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

if.then86.i:                                      ; preds = %while.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv57.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv57.i) #5
  br label %do.body249.i

if.end88.i:                                       ; preds = %if.end78.i.if.end88.i_crit_edge, %sw.epilog.i.if.end88.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %box_reg.1.i, i32 noundef %.pre.i) #5
  %33 = zext i32 %cmd_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %cmd_len, label %do.end230.i [
    i32 1, label %sw.bb92.i
    i32 2, label %sw.bb106.i
    i32 3, label %sw.bb128.i
    i32 4, label %sw.bb150.i
    i32 5, label %sw.bb188.i
  ]

sw.bb92.i:                                        ; preds = %if.end88.i
  %34 = and i8 %element_id, 127
  %35 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.5 = load i8, ptr %tmp_cmdbuf.sroa.0, align 8
  %36 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %37(ptr noundef %3, i32 noundef %box_reg.1.i, i8 noundef zeroext %34) #5
  %38 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %write_readback.i.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %sw.bb92.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

sw.bb92.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %sw.bb92.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i389.i = tail call zeroext i8 %43(ptr noundef %3, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %sw.bb92.i.rtl_write_byte.exit.i_crit_edge
  %add.1.i = or i32 %box_reg.1.i, 1
  %44 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %45(ptr noundef %3, i32 noundef %add.1.i, i8 noundef zeroext %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.5) #5
  %46 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_readback.i.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.1.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.1.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i.1.i

rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.1.i

if.then.i.1.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i389.1.i = tail call zeroext i8 %51(ptr noundef %3, i32 noundef %add.1.i) #5
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i.1.i, %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge
  %add.2.i = or i32 %box_reg.1.i, 2
  %52 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %53(ptr noundef %3, i32 noundef %add.2.i, i8 noundef zeroext 0) #5
  %54 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i.2.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.2.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.2.i, label %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge, label %if.then.i.2.i

rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.2.i

if.then.i.2.i:                                    ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i389.2.i = tail call zeroext i8 %59(ptr noundef %3, i32 noundef %add.2.i) #5
  br label %rtl_write_byte.exit.2.i

rtl_write_byte.exit.2.i:                          ; preds = %if.then.i.2.i, %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge
  %add.3.i = or i32 %box_reg.1.i, 3
  %60 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %61(ptr noundef %3, i32 noundef %add.3.i, i8 noundef zeroext 0) #5
  %62 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %write_readback.i.3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %write_readback.i.3.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.3.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i.3.i, label %rtl_write_byte.exit.2.i.sw.epilog233.i_crit_edge, label %if.then.i.3.i

rtl_write_byte.exit.2.i.sw.epilog233.i_crit_edge: ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog233.i

if.then.i.3.i:                                    ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i389.3.i = tail call zeroext i8 %67(ptr noundef %3, i32 noundef %add.3.i) #5
  br label %sw.epilog233.i

sw.bb106.i:                                       ; preds = %if.end88.i
  %68 = and i8 %element_id, 127
  %69 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_load2_noabort(i32 %69)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.4 = load i16, ptr %tmp_cmdbuf.sroa.0, align 8
  %boxcontent.sroa.20.sroa.0.0.extract.shift511.i = lshr i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.4, 8
  %boxcontent.sroa.20.sroa.0.0.extract.trunc512.i = trunc i16 %boxcontent.sroa.20.sroa.0.0.extract.shift511.i to i8
  %boxcontent.sroa.20.sroa.14.0.extract.trunc517.i = trunc i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.4 to i8
  %70 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %71(ptr noundef %3, i32 noundef %box_reg.1.i, i8 noundef zeroext %68) #5
  %72 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i392.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write_readback.i392.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %write_readback.i392.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i393.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i393.i, label %sw.bb106.i.rtl_write_byte.exit397.i_crit_edge, label %if.then.i396.i

sw.bb106.i.rtl_write_byte.exit397.i_crit_edge:    ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit397.i

if.then.i396.i:                                   ; preds = %sw.bb106.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i395.i = tail call zeroext i8 %77(ptr noundef %3, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit397.i

rtl_write_byte.exit397.i:                         ; preds = %if.then.i396.i, %sw.bb106.i.rtl_write_byte.exit397.i_crit_edge
  %add122.1.i = or i32 %box_reg.1.i, 1
  %78 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %79(ptr noundef %3, i32 noundef %add122.1.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.0.0.extract.trunc512.i) #5
  %80 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i392.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i392.1.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i392.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i393.1.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i393.1.i, label %rtl_write_byte.exit397.i.rtl_write_byte.exit397.1.i_crit_edge, label %if.then.i396.1.i

rtl_write_byte.exit397.i.rtl_write_byte.exit397.1.i_crit_edge: ; preds = %rtl_write_byte.exit397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit397.1.i

if.then.i396.1.i:                                 ; preds = %rtl_write_byte.exit397.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i395.1.i = tail call zeroext i8 %85(ptr noundef %3, i32 noundef %add122.1.i) #5
  br label %rtl_write_byte.exit397.1.i

rtl_write_byte.exit397.1.i:                       ; preds = %if.then.i396.1.i, %rtl_write_byte.exit397.i.rtl_write_byte.exit397.1.i_crit_edge
  %add122.2.i = or i32 %box_reg.1.i, 2
  %86 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %87(ptr noundef %3, i32 noundef %add122.2.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.14.0.extract.trunc517.i) #5
  %88 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i392.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i392.2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i392.2.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i393.2.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i393.2.i, label %rtl_write_byte.exit397.1.i.rtl_write_byte.exit397.2.i_crit_edge, label %if.then.i396.2.i

rtl_write_byte.exit397.1.i.rtl_write_byte.exit397.2.i_crit_edge: ; preds = %rtl_write_byte.exit397.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit397.2.i

if.then.i396.2.i:                                 ; preds = %rtl_write_byte.exit397.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i395.2.i = tail call zeroext i8 %93(ptr noundef %3, i32 noundef %add122.2.i) #5
  br label %rtl_write_byte.exit397.2.i

rtl_write_byte.exit397.2.i:                       ; preds = %if.then.i396.2.i, %rtl_write_byte.exit397.1.i.rtl_write_byte.exit397.2.i_crit_edge
  %add122.3.i = or i32 %box_reg.1.i, 3
  %94 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %95(ptr noundef %3, i32 noundef %add122.3.i, i8 noundef zeroext 0) #5
  %96 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i392.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i392.3.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i392.3.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i393.3.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i393.3.i, label %rtl_write_byte.exit397.2.i.sw.epilog233.i_crit_edge, label %if.then.i396.3.i

rtl_write_byte.exit397.2.i.sw.epilog233.i_crit_edge: ; preds = %rtl_write_byte.exit397.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog233.i

if.then.i396.3.i:                                 ; preds = %rtl_write_byte.exit397.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i395.3.i = tail call zeroext i8 %101(ptr noundef %3, i32 noundef %add122.3.i) #5
  br label %sw.epilog233.i

sw.bb128.i:                                       ; preds = %if.end88.i
  %102 = and i8 %element_id, 127
  %103 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_load2_noabort(i32 %103)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.20.1.copyload501.i = load i16, ptr %tmp_cmdbuf.sroa.0, align 8
  %boxcontent.sroa.20.sroa.0.0.extract.shift515.i = lshr i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.20.1.copyload501.i, 8
  %boxcontent.sroa.20.sroa.0.0.extract.trunc516.i = trunc i16 %boxcontent.sroa.20.sroa.0.0.extract.shift515.i to i8
  %boxcontent.sroa.20.sroa.14.0.extract.trunc519.i = trunc i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.20.1.copyload501.i to i8
  %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx16 = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 2
  %104 = ptrtoint ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx16 to i32
  call void @__asan_load1_noabort(i32 %104)
  %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.boxcontent.sroa.37.1.copyload506.i = load i8, ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx16, align 2
  %105 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %106(ptr noundef %3, i32 noundef %box_reg.1.i, i8 noundef zeroext %102) #5
  %107 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i400.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %write_readback.i400.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %write_readback.i400.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i401.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i401.i, label %sw.bb128.i.rtl_write_byte.exit405.i_crit_edge, label %if.then.i404.i

sw.bb128.i.rtl_write_byte.exit405.i_crit_edge:    ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit405.i

if.then.i404.i:                                   ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #7
  %111 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i403.i = tail call zeroext i8 %112(ptr noundef %3, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit405.i

rtl_write_byte.exit405.i:                         ; preds = %if.then.i404.i, %sw.bb128.i.rtl_write_byte.exit405.i_crit_edge
  %add144.1.i = or i32 %box_reg.1.i, 1
  %113 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %114(ptr noundef %3, i32 noundef %add144.1.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.0.0.extract.trunc516.i) #5
  %115 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i400.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i400.1.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i400.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i401.1.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i401.1.i, label %rtl_write_byte.exit405.i.rtl_write_byte.exit405.1.i_crit_edge, label %if.then.i404.1.i

rtl_write_byte.exit405.i.rtl_write_byte.exit405.1.i_crit_edge: ; preds = %rtl_write_byte.exit405.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit405.1.i

if.then.i404.1.i:                                 ; preds = %rtl_write_byte.exit405.i
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i403.1.i = tail call zeroext i8 %120(ptr noundef %3, i32 noundef %add144.1.i) #5
  br label %rtl_write_byte.exit405.1.i

rtl_write_byte.exit405.1.i:                       ; preds = %if.then.i404.1.i, %rtl_write_byte.exit405.i.rtl_write_byte.exit405.1.i_crit_edge
  %add144.2.i = or i32 %box_reg.1.i, 2
  %121 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %122(ptr noundef %3, i32 noundef %add144.2.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.14.0.extract.trunc519.i) #5
  %123 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i400.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i400.2.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i400.2.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i401.2.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i401.2.i, label %rtl_write_byte.exit405.1.i.rtl_write_byte.exit405.2.i_crit_edge, label %if.then.i404.2.i

rtl_write_byte.exit405.1.i.rtl_write_byte.exit405.2.i_crit_edge: ; preds = %rtl_write_byte.exit405.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit405.2.i

if.then.i404.2.i:                                 ; preds = %rtl_write_byte.exit405.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i403.2.i = tail call zeroext i8 %128(ptr noundef %3, i32 noundef %add144.2.i) #5
  br label %rtl_write_byte.exit405.2.i

rtl_write_byte.exit405.2.i:                       ; preds = %if.then.i404.2.i, %rtl_write_byte.exit405.1.i.rtl_write_byte.exit405.2.i_crit_edge
  %add144.3.i = or i32 %box_reg.1.i, 3
  %129 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %130(ptr noundef %3, i32 noundef %add144.3.i, i8 noundef zeroext %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.boxcontent.sroa.37.1.copyload506.i) #5
  %131 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i400.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_readback.i400.3.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %write_readback.i400.3.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i401.3.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i401.3.i, label %rtl_write_byte.exit405.2.i.sw.epilog233.i_crit_edge, label %if.then.i404.3.i

rtl_write_byte.exit405.2.i.sw.epilog233.i_crit_edge: ; preds = %rtl_write_byte.exit405.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog233.i

if.then.i404.3.i:                                 ; preds = %rtl_write_byte.exit405.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i403.3.i = tail call zeroext i8 %136(ptr noundef %3, i32 noundef %add144.3.i) #5
  br label %sw.epilog233.i

sw.bb150.i:                                       ; preds = %if.end88.i
  %137 = or i8 %element_id, -128
  %138 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_load2_noabort(i32 %138)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.3 = load i16, ptr %tmp_cmdbuf.sroa.0, align 8
  %boxextcontent.sroa.0.0.extract.shift484.i = lshr i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.3, 8
  %boxextcontent.sroa.0.0.extract.trunc485.i = trunc i16 %boxextcontent.sroa.0.0.extract.shift484.i to i8
  %boxextcontent.sroa.8.0.extract.trunc486.i = trunc i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.3 to i8
  %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx15 = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 2
  %139 = ptrtoint ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx15 to i32
  call void @__asan_load2_noabort(i32 %139)
  %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2. = load i16, ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx15, align 2
  %boxcontent.sroa.20.sroa.0.0.extract.shift.i = lshr i16 %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2., 8
  %boxcontent.sroa.20.sroa.0.0.extract.trunc.i = trunc i16 %boxcontent.sroa.20.sroa.0.0.extract.shift.i to i8
  %boxcontent.sroa.20.sroa.14.0.extract.trunc.i = trunc i16 %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2. to i8
  %140 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %141(ptr noundef %3, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.0.extract.trunc485.i) #5
  %142 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i408.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_readback.i408.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %write_readback.i408.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i409.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i409.i, label %sw.bb150.i.rtl_write_byte.exit413.i_crit_edge, label %if.then.i412.i

sw.bb150.i.rtl_write_byte.exit413.i_crit_edge:    ; preds = %sw.bb150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit413.i

if.then.i412.i:                                   ; preds = %sw.bb150.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i411.i = tail call zeroext i8 %147(ptr noundef %3, i32 noundef %box_extreg.1.i) #5
  br label %rtl_write_byte.exit413.i

rtl_write_byte.exit413.i:                         ; preds = %if.then.i412.i, %sw.bb150.i.rtl_write_byte.exit413.i_crit_edge
  %add169.1.i = or i32 %box_extreg.1.i, 1
  %148 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %149(ptr noundef %3, i32 noundef %add169.1.i, i8 noundef zeroext %boxextcontent.sroa.8.0.extract.trunc486.i) #5
  %150 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i408.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %write_readback.i408.1.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %write_readback.i408.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i409.1.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i409.1.i, label %rtl_write_byte.exit413.i.rtl_write_byte.exit413.1.i_crit_edge, label %if.then.i412.1.i

rtl_write_byte.exit413.i.rtl_write_byte.exit413.1.i_crit_edge: ; preds = %rtl_write_byte.exit413.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit413.1.i

if.then.i412.1.i:                                 ; preds = %rtl_write_byte.exit413.i
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i411.1.i = tail call zeroext i8 %155(ptr noundef %3, i32 noundef %add169.1.i) #5
  br label %rtl_write_byte.exit413.1.i

rtl_write_byte.exit413.1.i:                       ; preds = %if.then.i412.1.i, %rtl_write_byte.exit413.i.rtl_write_byte.exit413.1.i_crit_edge
  %156 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %157(ptr noundef %3, i32 noundef %box_reg.1.i, i8 noundef zeroext %137) #5
  %158 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i416.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %write_readback.i416.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_readback.i416.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i417.i = icmp eq i8 %161, 0
  br i1 %tobool.not.i417.i, label %rtl_write_byte.exit413.1.i.rtl_write_byte.exit421.i_crit_edge, label %if.then.i420.i

rtl_write_byte.exit413.1.i.rtl_write_byte.exit421.i_crit_edge: ; preds = %rtl_write_byte.exit413.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit421.i

if.then.i420.i:                                   ; preds = %rtl_write_byte.exit413.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i419.i = tail call zeroext i8 %163(ptr noundef %3, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit421.i

rtl_write_byte.exit421.i:                         ; preds = %if.then.i420.i, %rtl_write_byte.exit413.1.i.rtl_write_byte.exit421.i_crit_edge
  %add182.1.i = or i32 %box_reg.1.i, 1
  %164 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %165(ptr noundef %3, i32 noundef %add182.1.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.0.0.extract.trunc.i) #5
  %166 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i416.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %write_readback.i416.1.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %write_readback.i416.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i417.1.i = icmp eq i8 %169, 0
  br i1 %tobool.not.i417.1.i, label %rtl_write_byte.exit421.i.rtl_write_byte.exit421.1.i_crit_edge, label %if.then.i420.1.i

rtl_write_byte.exit421.i.rtl_write_byte.exit421.1.i_crit_edge: ; preds = %rtl_write_byte.exit421.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit421.1.i

if.then.i420.1.i:                                 ; preds = %rtl_write_byte.exit421.i
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i419.1.i = tail call zeroext i8 %171(ptr noundef %3, i32 noundef %add182.1.i) #5
  br label %rtl_write_byte.exit421.1.i

rtl_write_byte.exit421.1.i:                       ; preds = %if.then.i420.1.i, %rtl_write_byte.exit421.i.rtl_write_byte.exit421.1.i_crit_edge
  %add182.2.i = or i32 %box_reg.1.i, 2
  %172 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %173(ptr noundef %3, i32 noundef %add182.2.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.14.0.extract.trunc.i) #5
  %174 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i416.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %write_readback.i416.2.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %write_readback.i416.2.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i417.2.i = icmp eq i8 %177, 0
  br i1 %tobool.not.i417.2.i, label %rtl_write_byte.exit421.1.i.rtl_write_byte.exit421.2.i_crit_edge, label %if.then.i420.2.i

rtl_write_byte.exit421.1.i.rtl_write_byte.exit421.2.i_crit_edge: ; preds = %rtl_write_byte.exit421.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit421.2.i

if.then.i420.2.i:                                 ; preds = %rtl_write_byte.exit421.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %178 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i419.2.i = tail call zeroext i8 %179(ptr noundef %3, i32 noundef %add182.2.i) #5
  br label %rtl_write_byte.exit421.2.i

rtl_write_byte.exit421.2.i:                       ; preds = %if.then.i420.2.i, %rtl_write_byte.exit421.1.i.rtl_write_byte.exit421.2.i_crit_edge
  %add182.3.i = or i32 %box_reg.1.i, 3
  %180 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %181(ptr noundef %3, i32 noundef %add182.3.i, i8 noundef zeroext 0) #5
  %182 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i416.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %write_readback.i416.3.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %write_readback.i416.3.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i417.3.i = icmp eq i8 %185, 0
  br i1 %tobool.not.i417.3.i, label %rtl_write_byte.exit421.2.i.sw.epilog233.i_crit_edge, label %if.then.i420.3.i

rtl_write_byte.exit421.2.i.sw.epilog233.i_crit_edge: ; preds = %rtl_write_byte.exit421.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog233.i

if.then.i420.3.i:                                 ; preds = %rtl_write_byte.exit421.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %186 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i419.3.i = tail call zeroext i8 %187(ptr noundef %3, i32 noundef %add182.3.i) #5
  br label %sw.epilog233.i

sw.bb188.i:                                       ; preds = %if.end88.i
  %188 = or i8 %element_id, -128
  %189 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_load2_noabort(i32 %189)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0. = load i16, ptr %tmp_cmdbuf.sroa.0, align 8
  %boxextcontent.sroa.0.0.extract.shift.i = lshr i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0., 8
  %boxextcontent.sroa.0.0.extract.trunc.i = trunc i16 %boxextcontent.sroa.0.0.extract.shift.i to i8
  %boxextcontent.sroa.8.0.extract.trunc.i = trunc i16 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0. to i8
  %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 2
  %190 = ptrtoint ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %190)
  %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.boxcontent.sroa.20.1.copyload.i = load i16, ptr %tmp_cmdbuf.sroa.0.2.add.ptr200.i.sroa_idx, align 2
  %boxcontent.sroa.20.sroa.0.0.extract.shift513.i = lshr i16 %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.boxcontent.sroa.20.1.copyload.i, 8
  %boxcontent.sroa.20.sroa.0.0.extract.trunc514.i = trunc i16 %boxcontent.sroa.20.sroa.0.0.extract.shift513.i to i8
  %boxcontent.sroa.20.sroa.14.0.extract.trunc518.i = trunc i16 %tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.tmp_cmdbuf.sroa.0.2.boxcontent.sroa.20.1.copyload.i to i8
  %191 = ptrtoint ptr %tmp_cmdbuf.sroa.0.4..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %191)
  %tmp_cmdbuf.sroa.0.4.tmp_cmdbuf.sroa.0.4.tmp_cmdbuf.sroa.0.4.boxcontent.sroa.37.1.copyload.i = load i8, ptr %tmp_cmdbuf.sroa.0.4..sroa_idx, align 4
  %192 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %193(ptr noundef %3, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.0.extract.trunc.i) #5
  %194 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i424.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %write_readback.i424.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %write_readback.i424.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i425.i = icmp eq i8 %197, 0
  br i1 %tobool.not.i425.i, label %sw.bb188.i.rtl_write_byte.exit429.i_crit_edge, label %if.then.i428.i

sw.bb188.i.rtl_write_byte.exit429.i_crit_edge:    ; preds = %sw.bb188.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit429.i

if.then.i428.i:                                   ; preds = %sw.bb188.i
  call void @__sanitizer_cov_trace_pc() #7
  %198 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i427.i = tail call zeroext i8 %199(ptr noundef %3, i32 noundef %box_extreg.1.i) #5
  br label %rtl_write_byte.exit429.i

rtl_write_byte.exit429.i:                         ; preds = %if.then.i428.i, %sw.bb188.i.rtl_write_byte.exit429.i_crit_edge
  %add208.1.i = or i32 %box_extreg.1.i, 1
  %200 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %201(ptr noundef %3, i32 noundef %add208.1.i, i8 noundef zeroext %boxextcontent.sroa.8.0.extract.trunc.i) #5
  %202 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i424.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %write_readback.i424.1.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %write_readback.i424.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i425.1.i = icmp eq i8 %205, 0
  br i1 %tobool.not.i425.1.i, label %rtl_write_byte.exit429.i.rtl_write_byte.exit429.1.i_crit_edge, label %if.then.i428.1.i

rtl_write_byte.exit429.i.rtl_write_byte.exit429.1.i_crit_edge: ; preds = %rtl_write_byte.exit429.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit429.1.i

if.then.i428.1.i:                                 ; preds = %rtl_write_byte.exit429.i
  call void @__sanitizer_cov_trace_pc() #7
  %206 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i427.1.i = tail call zeroext i8 %207(ptr noundef %3, i32 noundef %add208.1.i) #5
  br label %rtl_write_byte.exit429.1.i

rtl_write_byte.exit429.1.i:                       ; preds = %if.then.i428.1.i, %rtl_write_byte.exit429.i.rtl_write_byte.exit429.1.i_crit_edge
  %208 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %209(ptr noundef %3, i32 noundef %box_reg.1.i, i8 noundef zeroext %188) #5
  %210 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i432.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %write_readback.i432.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %write_readback.i432.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i433.i = icmp eq i8 %213, 0
  br i1 %tobool.not.i433.i, label %rtl_write_byte.exit429.1.i.rtl_write_byte.exit437.i_crit_edge, label %if.then.i436.i

rtl_write_byte.exit429.1.i.rtl_write_byte.exit437.i_crit_edge: ; preds = %rtl_write_byte.exit429.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit437.i

if.then.i436.i:                                   ; preds = %rtl_write_byte.exit429.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i435.i = tail call zeroext i8 %215(ptr noundef %3, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit437.i

rtl_write_byte.exit437.i:                         ; preds = %if.then.i436.i, %rtl_write_byte.exit429.1.i.rtl_write_byte.exit437.i_crit_edge
  %add221.1.i = or i32 %box_reg.1.i, 1
  %216 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %217(ptr noundef %3, i32 noundef %add221.1.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.0.0.extract.trunc514.i) #5
  %218 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i432.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %write_readback.i432.1.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %write_readback.i432.1.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool.not.i433.1.i = icmp eq i8 %221, 0
  br i1 %tobool.not.i433.1.i, label %rtl_write_byte.exit437.i.rtl_write_byte.exit437.1.i_crit_edge, label %if.then.i436.1.i

rtl_write_byte.exit437.i.rtl_write_byte.exit437.1.i_crit_edge: ; preds = %rtl_write_byte.exit437.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit437.1.i

if.then.i436.1.i:                                 ; preds = %rtl_write_byte.exit437.i
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i435.1.i = tail call zeroext i8 %223(ptr noundef %3, i32 noundef %add221.1.i) #5
  br label %rtl_write_byte.exit437.1.i

rtl_write_byte.exit437.1.i:                       ; preds = %if.then.i436.1.i, %rtl_write_byte.exit437.i.rtl_write_byte.exit437.1.i_crit_edge
  %add221.2.i = or i32 %box_reg.1.i, 2
  %224 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %225(ptr noundef %3, i32 noundef %add221.2.i, i8 noundef zeroext %boxcontent.sroa.20.sroa.14.0.extract.trunc518.i) #5
  %226 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i432.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %write_readback.i432.2.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %write_readback.i432.2.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool.not.i433.2.i = icmp eq i8 %229, 0
  br i1 %tobool.not.i433.2.i, label %rtl_write_byte.exit437.1.i.rtl_write_byte.exit437.2.i_crit_edge, label %if.then.i436.2.i

rtl_write_byte.exit437.1.i.rtl_write_byte.exit437.2.i_crit_edge: ; preds = %rtl_write_byte.exit437.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit437.2.i

if.then.i436.2.i:                                 ; preds = %rtl_write_byte.exit437.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %230 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i435.2.i = tail call zeroext i8 %231(ptr noundef %3, i32 noundef %add221.2.i) #5
  br label %rtl_write_byte.exit437.2.i

rtl_write_byte.exit437.2.i:                       ; preds = %if.then.i436.2.i, %rtl_write_byte.exit437.1.i.rtl_write_byte.exit437.2.i_crit_edge
  %add221.3.i = or i32 %box_reg.1.i, 3
  %232 = ptrtoint ptr %write8_async.i422.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write8_async.i422.i, align 4
  tail call void %233(ptr noundef %3, i32 noundef %add221.3.i, i8 noundef zeroext %tmp_cmdbuf.sroa.0.4.tmp_cmdbuf.sroa.0.4.tmp_cmdbuf.sroa.0.4.boxcontent.sroa.37.1.copyload.i) #5
  %234 = ptrtoint ptr %cfg.i423.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cfg.i423.i, align 8
  %write_readback.i432.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %write_readback.i432.3.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %write_readback.i432.3.i, align 1, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i433.3.i = icmp eq i8 %237, 0
  br i1 %tobool.not.i433.3.i, label %rtl_write_byte.exit437.2.i.sw.epilog233.i_crit_edge, label %if.then.i436.3.i

rtl_write_byte.exit437.2.i.sw.epilog233.i_crit_edge: ; preds = %rtl_write_byte.exit437.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog233.i

if.then.i436.3.i:                                 ; preds = %rtl_write_byte.exit437.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %238 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i435.3.i = tail call zeroext i8 %239(ptr noundef %3, i32 noundef %add221.3.i) #5
  br label %sw.epilog233.i

do.end230.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #7
  %call232.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %cmd_len) #8
  br label %sw.epilog233.i

sw.epilog233.i:                                   ; preds = %do.end230.i, %if.then.i436.3.i, %rtl_write_byte.exit437.2.i.sw.epilog233.i_crit_edge, %if.then.i420.3.i, %rtl_write_byte.exit421.2.i.sw.epilog233.i_crit_edge, %if.then.i404.3.i, %rtl_write_byte.exit405.2.i.sw.epilog233.i_crit_edge, %if.then.i396.3.i, %rtl_write_byte.exit397.2.i.sw.epilog233.i_crit_edge, %if.then.i.3.i, %rtl_write_byte.exit.2.i.sw.epilog233.i_crit_edge
  %add235.i = add i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add235.i)
  %cmp240.i = icmp eq i8 %add235.i, 4
  %spec.select.i = select i1 %cmp240.i, i8 0, i8 %add235.i
  %240 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %spec.select.i, ptr %last_hmeboxnum.i, align 1
  %conv246.i = zext i8 %spec.select.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.37, i32 noundef %conv246.i) #5
  br label %do.body249.i

do.body249.i:                                     ; preds = %sw.epilog233.i, %if.then86.i
  %call258.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %241 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call258.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.body249.i, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %entry.cleanup.sink.split.i_crit_edge
  %.str.38.sink.i = phi ptr [ @.str.38, %do.body249.i ], [ @.str.22, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge ], [ @.str.22, %entry.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %3, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull %.str.38.sink.i) #5
  br label %_rtl92d_fill_h2c_command.exit

_rtl92d_fill_h2c_command.exit:                    ; preds = %cleanup.sink.split.i, %while.body15.i._rtl92d_fill_h2c_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %dl_finished) local_unnamed_addr #0 align 64 {
entry:
  %u1rsvdpageloc = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %u1rsvdpageloc) #5
  %2 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac80211, align 8
  store i8 %3, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 10), align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  store i8 %5, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 11), align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 2
  store i8 %7, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 12), align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx15, align 1
  store i8 %9, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 13), align 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx20, align 4
  store i8 %11, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 14), align 1
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx25, align 1
  store i8 %13, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %14 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bssid, align 2
  store i8 %15, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 16), align 1
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx34, align 1
  store i8 %17, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 17), align 1
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx39, align 2
  store i8 %19, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 18), align 1
  %arrayidx44 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %20 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx44, align 1
  store i8 %21, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 19), align 1
  %arrayidx49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx49, align 2
  store i8 %23, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 20), align 1
  %arrayidx54 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %24 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx54, align 1
  store i8 %25, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 21), align 1
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %26 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %assoc_id, align 2
  %28 = or i16 %27, -16384
  store i16 %28, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 258), align 2
  %29 = load i32, ptr %bssid, align 4
  store i32 %29, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 260), align 4
  %30 = load i16, ptr %arrayidx49, align 2
  store i16 %30, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 264), align 2
  %31 = load i32, ptr %mac80211, align 4
  store i32 %31, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 266), align 4
  %32 = load i16, ptr %arrayidx20, align 2
  store i16 %32, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 270), align 2
  %add.ptr66 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %33 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %add.ptr66, align 1
  %34 = lshr i32 %29, 24
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 388), align 1
  %36 = load i8, ptr %arrayidx34, align 1
  store i8 %36, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 389), align 1
  %37 = load i8, ptr %arrayidx39, align 2
  store i8 %37, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 390), align 1
  %38 = load i8, ptr %arrayidx44, align 1
  store i8 %38, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 391), align 1
  %39 = load i8, ptr %arrayidx49, align 2
  store i8 %39, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 392), align 1
  %40 = load i8, ptr %arrayidx54, align 1
  store i8 %40, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 393), align 1
  %41 = lshr i32 %31, 24
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 394), align 1
  %43 = load i8, ptr %arrayidx5, align 1
  store i8 %43, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 395), align 1
  %44 = load i8, ptr %arrayidx10, align 2
  store i8 %44, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 396), align 1
  %45 = load i8, ptr %arrayidx15, align 1
  store i8 %45, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 397), align 1
  %46 = load i8, ptr %arrayidx20, align 4
  store i8 %46, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 398), align 1
  %47 = load i8, ptr %arrayidx25, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 399), align 1
  store i8 %35, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 400), align 1
  %48 = load i8, ptr %arrayidx34, align 1
  store i8 %48, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 401), align 1
  %49 = load i8, ptr %arrayidx39, align 2
  store i8 %49, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 402), align 1
  %50 = load i8, ptr %arrayidx44, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 403), align 1
  %51 = load i8, ptr %arrayidx49, align 2
  store i8 %51, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 404), align 1
  %52 = load i8, ptr %arrayidx54, align 1
  store i8 %52, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 405), align 1
  %add.ptr158 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %53 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %add.ptr158, align 1
  store i8 %35, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 516), align 1
  %54 = load i8, ptr %arrayidx34, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 517), align 1
  %55 = load i8, ptr %arrayidx39, align 2
  store i8 %55, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 518), align 1
  %56 = load i8, ptr %arrayidx44, align 1
  store i8 %56, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 519), align 1
  %57 = load i8, ptr %arrayidx49, align 2
  store i8 %57, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 520), align 1
  %58 = load i8, ptr %arrayidx54, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 521), align 1
  store i8 %42, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 522), align 1
  %59 = load i8, ptr %arrayidx5, align 1
  store i8 %59, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 523), align 1
  %60 = load i8, ptr %arrayidx10, align 2
  store i8 %60, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 524), align 1
  %61 = load i8, ptr %arrayidx15, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 525), align 1
  %62 = load i8, ptr %arrayidx20, align 4
  store i8 %62, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 526), align 1
  %63 = load i8, ptr %arrayidx25, align 1
  store i8 %63, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 527), align 1
  store i8 %35, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 528), align 1
  %64 = load i8, ptr %arrayidx34, align 1
  store i8 %64, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 529), align 1
  %65 = load i8, ptr %arrayidx39, align 2
  store i8 %65, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 530), align 1
  %66 = load i8, ptr %arrayidx44, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 531), align 1
  %67 = load i8, ptr %arrayidx49, align 2
  store i8 %67, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 532), align 1
  %68 = load i8, ptr %arrayidx54, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 533), align 1
  %69 = ptrtoint ptr %u1rsvdpageloc to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 4, ptr %u1rsvdpageloc, align 1
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @reserved_page_packet, i32 noundef 768) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 768, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.else261, label %if.else

if.else:                                          ; preds = %entry
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 768) #5
  %70 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet, i32 768)
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %queue.i = getelementptr %struct.rtl_priv, ptr %72, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 1, i32 1
  %73 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %74, %queue.i
  %spec.store.select.i.i.i = select i1 %cmp.i.i.i, ptr null, ptr %74
  %tobool.not.i.i = icmp eq ptr %spec.store.select.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else._rtl92d_cmd_send_packet.exit_crit_edge, label %if.then.i.i

if.else._rtl92d_cmd_send_packet.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92d_cmd_send_packet.exit

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %qlen.i.i.i = getelementptr %struct.rtl_priv, ptr %72, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %75 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %76, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %77 = ptrtoint ptr %spec.store.select.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spec.store.select.i.i.i, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.41, ptr %spec.store.select.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i.i, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.41, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %80, ptr %prev17.i.i.i, align 4
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %78, ptr %80, align 8
  br label %_rtl92d_cmd_send_packet.exit

_rtl92d_cmd_send_packet.exit:                     ; preds = %if.then.i.i, %if.else._rtl92d_cmd_send_packet.exit_crit_edge
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %72, i32 1, i32 7, i32 5, i32 0, i32 0, i32 2
  call void @kfree_skb_reason(ptr noundef %spec.store.select.i.i.i, i32 noundef 0) #5
  %irq_th_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 7, i32 3
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_th_lock.i) #5
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i, align 4
  %get_desc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %88, i32 0, i32 38
  %89 = ptrtoint ptr %get_desc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %get_desc.i, align 4
  %call9.i = call i64 %90(ptr noundef %hw, ptr noundef %84, i1 noundef zeroext true, i8 noundef zeroext 0) #5
  %91 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cfg.i, align 8
  %ops11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %ops11.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ops11.i, align 4
  %fill_tx_cmddesc.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %94, i32 0, i32 28
  %95 = ptrtoint ptr %fill_tx_cmddesc.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %fill_tx_cmddesc.i, align 4
  call void %96(ptr noundef %hw, ptr noundef %84, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %call.i.i) #5
  %prev.i.i.i = getelementptr %struct.rtl_priv, ptr %72, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 2
  %97 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i, align 4
  %99 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %queue.i, ptr %call.i.i, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.41, ptr %call.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i.i, align 4
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %call.i.i, ptr %98, align 4
  %qlen.i.i.i.i = getelementptr %struct.rtl_priv, ptr %72, i32 1, i32 7, i32 5, i32 0, i32 0, i32 4, i32 3
  %102 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %103, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_th_lock.i, i32 noundef %call5.i) #5
  %104 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i, align 8
  %ops16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ops16.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops16.i, align 4
  %tx_polling.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %107, i32 0, i32 40
  %108 = ptrtoint ptr %tx_polling.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tx_polling.i, align 4
  call void %109(ptr noundef %hw, i8 noundef zeroext 4) #5
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.9) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  call void @rtl92d_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 3, i32 noundef 3, ptr noundef nonnull %u1rsvdpageloc)
  br label %if.end262

if.else261:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.11) #5
  br label %if.end262

if.end262:                                        ; preds = %if.else261, %_rtl92d_cmd_send_packet.exit
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %u1rsvdpageloc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92d_set_fw_joinbss_report_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %u1_joinbssrpt_parm = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u1_joinbssrpt_parm) #5
  %0 = ptrtoint ptr %u1_joinbssrpt_parm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mstatus, ptr %u1_joinbssrpt_parm, align 1
  call void @rtl92d_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 2, i32 noundef 1, ptr noundef nonnull %u1_joinbssrpt_parm)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u1_joinbssrpt_parm) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fill_dummy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_page_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 106, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 107, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 180, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 185, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 217, i32 5}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 251, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtl92d_download_fw._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtl92d_download_fw._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 639, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 656, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 658, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 663, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 50, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 56, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @_rtl92d_write_fw._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @_rtl92d_write_fw._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 80, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @_rtl92d_fw_free_to_go._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @_rtl92d_fw_free_to_go._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 117, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 124, i32 5}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 145, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 149, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 153, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 289, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 293, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 297, i32 4}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 305, i32 5}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 326, i32 4}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @_rtl92d_fill_h2c_command._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @_rtl92d_fill_h2c_command._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 348, i32 4}
!62 = !{ptr @_rtl92d_fill_h2c_command._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @_rtl92d_fill_h2c_command._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 356, i32 5}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 364, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 369, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 377, i32 3}
!72 = !{ptr @_rtl92d_fill_h2c_command._entry.35, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 425, i32 4}
!74 = !{ptr @_rtl92d_fill_h2c_command._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 433, i32 3}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 440, i32 2}
!79 = !{ptr @reserved_page_packet, !80, !"reserved_page_packet", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192de/fw.c", i32 485, i32 11}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{!"branch_weights", i32 2000, i32 1}
