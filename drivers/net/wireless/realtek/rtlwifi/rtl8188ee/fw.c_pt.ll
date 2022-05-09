; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c"
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
%struct.rtlwifi_firmware_header = type { i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32 }
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"normal Firmware SIZE %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Firmware Version(%d), Signature(%#x), Size(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@rtl88e_download_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8188ee: Firmware is not ready to run!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl88e_download_fw\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c\00", [44 x i8] zeroinitializer }, align 32
@rtl88e_download_fw._entry_ptr = internal global ptr @rtl88e_download_fw._entry, section ".printk_index", align 4
@rtl88e_fill_h2c_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtl8188ee: error H2C cmd because of Fw download fail!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"8051Reset88E(): 8051 reset success\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW LPS mode = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl92c_set_fw_pwrmode(): u1_h2c_set_pwrmode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rtl88e_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set RSVD page location to Fw.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"H2C_RSVDPAGE:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"P2P_PS_DISABLE\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P2P_PS_ENABLE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P2P_PS_SCAN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW size is %d bytes,\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl88e_write_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8188ee: Page numbers should not greater then 8\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_rtl88e_write_fw\00", [47 x i8] zeroinitializer }, align 32
@_rtl88e_write_fw._entry_ptr = internal global ptr @_rtl88e_write_fw._entry, section ".printk_index", align 4
@_rtl88e_fw_free_to_go._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rtl8188ee: chksum report fail! REG_MCUFWDL:0x%08x .\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_rtl88e_fw_free_to_go\00", [42 x i8] zeroinitializer }, align 32
@_rtl88e_fw_free_to_go._entry_ptr = internal global ptr @_rtl88e_fw_free_to_go._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_rtl88e_fw_free_to_go._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rtl8188ee: Polling FW ready fail!! REG_MCUFWDL:0x%08x .\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl88e_fw_free_to_go._entry_ptr.24 = internal global ptr @_rtl88e_fw_free_to_go._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"come in\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wait 100 us (%d times)...\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl88e_fill_h2c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rtl8188ee: Write H2C fail because no trigger for FW INT!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_rtl88e_fill_h2c_command\00", [39 x i8] zeroinitializer }, align 32
@_rtl88e_fill_h2c_command._entry_ptr = internal global ptr @_rtl88e_fill_h2c_command._entry, section ".printk_index", align 4
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"go out\0A\00", [24 x i8] zeroinitializer }, align 32
@reserved_page_packet = internal global { <{ [626 x i8], [142 x i8] }>, [192 x i8] } { <{ [626 x i8], [142 x i8] }> <{ [626 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0Lv\00B\00@\10\10\00\03P\08\00\00\00\00\00\00\00\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00 \8C\00\12\10\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\01\C0\00@\10\10\00\03\00\E0Lv\00B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00 \8C\00\12\00\00\00\00\00\00\00\00\00\80\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00H\01\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00r\00 \8C\00\12\00\00\00\00\00\00\00\00\00\80\80\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\9EF\152'\F2-\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p", [142 x i8] zeroinitializer }>, [192 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 126, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 130, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 149, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 342, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 362, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 373, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 390, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 595, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 613, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 615, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 620, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 646, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 650, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 706, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 710, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 43, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 51, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 79, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 100, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 184, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 189, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 197, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 218, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 241, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 249, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 259, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 265, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 274, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 323, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 332, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"reserved_page_packet\00", align 1
@___asan_gen_.160 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 428, i32 11 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @_rtl88e_fill_h2c_command._entry, ptr @_rtl88e_fill_h2c_command._entry_ptr, ptr @_rtl88e_fw_free_to_go._entry, ptr @_rtl88e_fw_free_to_go._entry.22, ptr @_rtl88e_fw_free_to_go._entry_ptr, ptr @_rtl88e_fw_free_to_go._entry_ptr.24, ptr @_rtl88e_write_fw._entry, ptr @_rtl88e_write_fw._entry_ptr, ptr @rtl88e_download_fw._entry, ptr @rtl88e_download_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @reserved_page_packet], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_download_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_write_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_fw_free_to_go._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_fw_free_to_go._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_fill_h2c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl88e_download_fw(ptr noundef %hw, i1 noundef zeroext %buse_wake_on_wlan_fw) local_unnamed_addr #0 align 64 {
entry:
  %size.addr.i = alloca i32, align 4
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
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %version5 = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %version5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %version5, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %fw_version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 34
  %7 = ptrtoint ptr %fw_version to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %fw_version, align 4
  %subversion = getelementptr inbounds %struct.rtlwifi_firmware_header, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %subversion to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %subversion, align 2
  %conv = zext i8 %9 to i16
  %fw_subversion = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 35
  %10 = ptrtoint ptr %fw_subversion to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %fw_subversion, align 2
  %fwsize7 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 32
  %11 = ptrtoint ptr %fwsize7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fwsize7, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %12) #5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -7800, i16 %14)
  %cmp = icmp eq i16 %14, -7800
  br i1 %cmp, label %if.then10, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %version5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %version5, align 4
  %conv12 = zext i16 %16 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %conv12, i32 noundef 57736, i32 noundef 32) #5
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %sub = add i32 %12, -32
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %pfwdata.0 = phi ptr [ %add.ptr, %if.then10 ], [ %3, %if.end.if.end15_crit_edge ]
  %fwsize.0 = phi i32 [ %sub, %if.then10 ], [ %12, %if.end.if.end15_crit_edge ]
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool18.not = icmp sgt i8 %call.i, -1
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write8_async.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then19.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then19.rtl_write_byte.exit_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i, align 4
  %call.i55 = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then19.rtl_write_byte.exit_crit_edge
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 9
  %29 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %30(ptr noundef %28, i32 noundef 3) #5
  %and.i = and i8 %call.i.i, -5
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 13, i32 5
  %31 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %32(ptr noundef %28, i32 noundef 3, i8 noundef zeroext %and.i) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %33 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %rtl_write_byte.exit.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

rtl_write_byte.exit.rtl_write_byte.exit.i_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i9.i = tail call zeroext i8 %38(ptr noundef %28, i32 noundef 3) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %rtl_write_byte.exit.rtl_write_byte.exit.i_crit_edge
  %39 = or i8 %call.i.i, 4
  %40 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %41(ptr noundef %28, i32 noundef 3, i8 noundef zeroext %39) #5
  %42 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i12.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i12.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i13.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i13.i, label %rtl_write_byte.exit.i.rtl88e_firmware_selfreset.exit_crit_edge, label %if.then.i16.i

rtl_write_byte.exit.i.rtl88e_firmware_selfreset.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl88e_firmware_selfreset.exit

if.then.i16.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i15.i = tail call zeroext i8 %47(ptr noundef %28, i32 noundef 3) #5
  br label %rtl88e_firmware_selfreset.exit

rtl88e_firmware_selfreset.exit:                   ; preds = %if.then.i16.i, %rtl_write_byte.exit.i.rtl88e_firmware_selfreset.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %28, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6) #5
  br label %if.end20

if.end20:                                         ; preds = %rtl88e_firmware_selfreset.exit, %if.end15.if.end20_crit_edge
  tail call fastcc void @_rtl88e_enable_fw_download(ptr noundef %hw, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i)
  %48 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %fwsize.0, ptr %size.addr.i, align 4
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %fwsize.0) #5
  call void @rtl_fill_dummy(ptr noundef %pfwdata.0, ptr noundef nonnull %size.addr.i) #5
  %51 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size.addr.i, align 4
  %div1.i = lshr i32 %52, 12
  %rem.i = and i32 %52, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %52)
  %cmp.i = icmp ugt i32 %52, 36863
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call.i57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %52)
  %cmp12.not.i = icmp ult i32 %52, 4096
  br i1 %cmp12.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.preheader.i_crit_edge

if.end.i.for.body.preheader.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i.for.body.preheader.i_crit_edge, %if.end.thread.i
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

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i58 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i58, label %for.end.i._rtl88e_write_fw.exit_crit_edge, label %if.then2.i

for.end.i._rtl88e_write_fw.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl88e_write_fw.exit

if.then2.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul3.i = and i32 %52, -4096
  %add.ptr4.i = getelementptr i8, ptr %pfwdata.0, i32 %mul3.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %div1.i, ptr noundef %add.ptr4.i, i32 noundef %rem.i) #5
  br label %_rtl88e_write_fw.exit

_rtl88e_write_fw.exit:                            ; preds = %if.then2.i, %for.end.i._rtl88e_write_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i)
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %read8_sync.i.i60 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 9
  %55 = ptrtoint ptr %read8_sync.i.i60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i.i60, align 4
  %call.i47.i = call zeroext i8 %56(ptr noundef %54, i32 noundef 128) #5
  %57 = and i8 %call.i47.i, -2
  %write8_async.i48.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 13, i32 5
  %58 = ptrtoint ptr %write8_async.i48.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write8_async.i48.i, align 4
  call void %59(ptr noundef %54, i32 noundef 128, i8 noundef zeroext %57) #5
  %cfg.i49.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %60 = ptrtoint ptr %cfg.i49.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i49.i, align 8
  %write_readback.i50.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %write_readback.i50.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %write_readback.i50.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i51.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i51.i, label %_rtl88e_write_fw.exit.rtl_write_byte.exit55.i_crit_edge, label %if.then.i54.i

_rtl88e_write_fw.exit.rtl_write_byte.exit55.i_crit_edge: ; preds = %_rtl88e_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit55.i

if.then.i54.i:                                    ; preds = %_rtl88e_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %read8_sync.i.i60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i.i60, align 4
  %call.i53.i = call zeroext i8 %65(ptr noundef %54, i32 noundef 128) #5
  br label %rtl_write_byte.exit55.i

rtl_write_byte.exit55.i:                          ; preds = %if.then.i54.i, %_rtl88e_write_fw.exit.rtl_write_byte.exit55.i_crit_edge
  %66 = ptrtoint ptr %write8_async.i48.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write8_async.i48.i, align 4
  call void %67(ptr noundef %54, i32 noundef 129, i8 noundef zeroext 0) #5
  %68 = ptrtoint ptr %cfg.i49.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i49.i, align 8
  %write_readback.i58.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %write_readback.i58.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %write_readback.i58.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i59.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i59.i, label %rtl_write_byte.exit55.i._rtl88e_enable_fw_download.exit_crit_edge, label %if.end.sink.split.i

rtl_write_byte.exit55.i._rtl88e_enable_fw_download.exit_crit_edge: ; preds = %rtl_write_byte.exit55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl88e_enable_fw_download.exit

if.end.sink.split.i:                              ; preds = %rtl_write_byte.exit55.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %read8_sync.i.i60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read8_sync.i.i60, align 4
  %call.i61.i = call zeroext i8 %73(ptr noundef %54, i32 noundef 129) #5
  br label %_rtl88e_enable_fw_download.exit

_rtl88e_enable_fw_download.exit:                  ; preds = %if.end.sink.split.i, %rtl_write_byte.exit55.i._rtl88e_enable_fw_download.exit_crit_edge
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %75, i32 0, i32 13, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %_rtl88e_enable_fw_download.exit
  %counter.0.i = phi i32 [ 0, %_rtl88e_enable_fw_download.exit ], [ %inc.i64, %do.body.i.do.body.i_crit_edge ]
  %76 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i63 = call i32 %77(ptr noundef %75, i32 noundef 128) #5
  %inc.i64 = add nuw nsw i32 %counter.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %counter.0.i)
  %cmp.i65 = icmp ult i32 %counter.0.i, 3000
  %and.i66 = and i32 %call.i.i63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  %or.cond.i = select i1 %cmp.i65, i1 %tobool.not.i67, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2998, i32 %counter.0.i)
  %cmp1.i = icmp ugt i32 %counter.0.i, 2998
  br i1 %cmp1.i, label %do.end4.i, label %if.end.i71

do.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call.i.i63) #8
  br label %do.end

if.end.i71:                                       ; preds = %do.end.i
  %78 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i39.i = call i32 %79(ptr noundef %75, i32 noundef 128) #5
  %or.i = and i32 %call.i39.i, -67
  %and7.i = or i32 %or.i, 2
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %75, i32 0, i32 13, i32 7
  %80 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32_async.i.i, align 4
  call void %81(ptr noundef %75, i32 noundef 128, i32 noundef %and7.i) #5
  %cfg.i.i68 = getelementptr inbounds %struct.rtl_priv, ptr %75, i32 0, i32 32
  %82 = ptrtoint ptr %cfg.i.i68 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i.i68, align 8
  %write_readback.i.i69 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %write_readback.i.i69 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %write_readback.i.i69, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i70 = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i70, label %if.end.i71.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i72

if.end.i71.rtl_write_dword.exit.i_crit_edge:      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit.i

if.then.i.i72:                                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i41.i = call i32 %87(ptr noundef %75, i32 noundef 128) #5
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i72, %if.end.i71.rtl_write_dword.exit.i_crit_edge
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 13, i32 9
  %90 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = call zeroext i8 %91(ptr noundef %89, i32 noundef 3) #5
  %and.i.i = and i8 %call.i.i.i, -5
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 13, i32 5
  %92 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %93(ptr noundef %89, i32 noundef 3, i8 noundef zeroext %and.i.i) #5
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 32
  %94 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i.i, label %rtl_write_dword.exit.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

rtl_write_dword.exit.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %rtl_write_dword.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i9.i.i = call zeroext i8 %99(ptr noundef %89, i32 noundef 3) #5
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %rtl_write_dword.exit.i.rtl_write_byte.exit.i.i_crit_edge
  %100 = or i8 %call.i.i.i, 4
  %101 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write8_async.i.i.i, align 4
  call void %102(ptr noundef %89, i32 noundef 3, i8 noundef zeroext %100) #5
  %103 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i12.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %write_readback.i12.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %write_readback.i12.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.not.i13.i.i = icmp eq i8 %106, 0
  br i1 %tobool.not.i13.i.i, label %rtl_write_byte.exit.i.i.rtl88e_firmware_selfreset.exit.i_crit_edge, label %if.then.i16.i.i

rtl_write_byte.exit.i.i.rtl88e_firmware_selfreset.exit.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl88e_firmware_selfreset.exit.i

if.then.i16.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i15.i.i = call zeroext i8 %108(ptr noundef %89, i32 noundef 3) #5
  br label %rtl88e_firmware_selfreset.exit.i

rtl88e_firmware_selfreset.exit.i:                 ; preds = %if.then.i16.i.i, %rtl_write_byte.exit.i.i.rtl88e_firmware_selfreset.exit.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %89, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6) #5
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.end13.i.do.body8.i_crit_edge, %rtl88e_firmware_selfreset.exit.i
  %counter.1.i = phi i32 [ 0, %rtl88e_firmware_selfreset.exit.i ], [ %inc15.i, %if.end13.i.do.body8.i_crit_edge ]
  %109 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i43.i = call i32 %110(ptr noundef %75, i32 noundef 128) #5
  %and10.i = and i32 %call.i43.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %do.body8.i.cleanup_crit_edge

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %do.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 1073740) #5
  %inc15.i = add nuw nsw i32 %counter.1.i, 1
  %exitcond.not.i73 = icmp eq i32 %inc15.i, 3001
  br i1 %exitcond.not.i73, label %do.end20.i, label %if.end13.i.do.body8.i_crit_edge

if.end13.i.do.body8.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call.i43.i) #8
  br label %do.end

do.end:                                           ; preds = %do.end20.i, %do.end4.i
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %do.body8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_firmware_selfreset(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 3) #5
  %and = and i8 %call.i, -5
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %4 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write8_async.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %and) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_readback.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read8_sync.i, align 4
  %call.i9 = tail call zeroext i8 %11(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %12 = or i8 %call.i, 4
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %12) #5
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i12 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i12, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i13 = icmp eq i8 %18, 0
  br i1 %tobool.not.i13, label %rtl_write_byte.exit.rtl_write_byte.exit17_crit_edge, label %if.then.i16

rtl_write_byte.exit.rtl_write_byte.exit17_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit17

if.then.i16:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i15 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit17

rtl_write_byte.exit17:                            ; preds = %if.then.i16, %rtl_write_byte.exit.rtl_write_byte.exit17_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl88e_enable_fw_download(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
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
  %10 = load i8, ptr %write_readback.i, align 1, !range !87
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
  %call.i25 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i, align 4
  %call.i27 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 128) #5
  %15 = or i8 %call.i27, 1
  %16 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8_async.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef 128, i8 noundef zeroext %15) #5
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %write_readback.i30 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i30, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i31 = icmp eq i8 %21, 0
  br i1 %tobool.not.i31, label %rtl_write_byte.exit.rtl_write_byte.exit35_crit_edge, label %if.then.i34

rtl_write_byte.exit.rtl_write_byte.exit35_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit35

if.then.i34:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i, align 4
  %call.i33 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit35

rtl_write_byte.exit35:                            ; preds = %if.then.i34, %rtl_write_byte.exit.rtl_write_byte.exit35_crit_edge
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i37 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 130) #5
  %26 = and i8 %call.i37, -9
  %27 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 130, i8 noundef zeroext %26) #5
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i40 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i40, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i41 = icmp eq i8 %32, 0
  br i1 %tobool.not.i41, label %rtl_write_byte.exit35.if.end_crit_edge, label %rtl_write_byte.exit35.if.end.sink.split_crit_edge

rtl_write_byte.exit35.if.end.sink.split_crit_edge: ; preds = %rtl_write_byte.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

rtl_write_byte.exit35.if.end_crit_edge:           ; preds = %rtl_write_byte.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i47 = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 128) #5
  %33 = and i8 %call.i47, -2
  %write8_async.i48 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %34 = ptrtoint ptr %write8_async.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write8_async.i48, align 4
  tail call void %35(ptr noundef %1, i32 noundef 128, i8 noundef zeroext %33) #5
  %cfg.i49 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %36 = ptrtoint ptr %cfg.i49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i49, align 8
  %write_readback.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write_readback.i50 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %write_readback.i50, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i51 = icmp eq i8 %39, 0
  br i1 %tobool.not.i51, label %if.else.rtl_write_byte.exit55_crit_edge, label %if.then.i54

if.else.rtl_write_byte.exit55_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit55

if.then.i54:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i, align 4
  %call.i53 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit55

rtl_write_byte.exit55:                            ; preds = %if.then.i54, %if.else.rtl_write_byte.exit55_crit_edge
  %42 = ptrtoint ptr %write8_async.i48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write8_async.i48, align 4
  tail call void %43(ptr noundef %1, i32 noundef 129, i8 noundef zeroext 0) #5
  %44 = ptrtoint ptr %cfg.i49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i49, align 8
  %write_readback.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write_readback.i58 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %write_readback.i58, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i59 = icmp eq i8 %47, 0
  br i1 %tobool.not.i59, label %rtl_write_byte.exit55.if.end_crit_edge, label %rtl_write_byte.exit55.if.end.sink.split_crit_edge

rtl_write_byte.exit55.if.end.sink.split_crit_edge: ; preds = %rtl_write_byte.exit55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

rtl_write_byte.exit55.if.end_crit_edge:           ; preds = %rtl_write_byte.exit55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %rtl_write_byte.exit55.if.end.sink.split_crit_edge, %rtl_write_byte.exit35.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 130, %rtl_write_byte.exit35.if.end.sink.split_crit_edge ], [ 129, %rtl_write_byte.exit55.if.end.sink.split_crit_edge ]
  %48 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read8_sync.i, align 4
  %call.i61 = tail call zeroext i8 %49(ptr noundef %1, i32 noundef %.sink) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %rtl_write_byte.exit55.if.end_crit_edge, %rtl_write_byte.exit35.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_fill_h2c_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr nocapture noundef readonly %cmdbuffer) local_unnamed_addr #0 align 64 {
entry:
  %boxcontent.sroa.7.sroa.0.i = alloca i24, align 4
  %boxextcontent.sroa.0.i = alloca i32, align 4
  %tmp_cmdbuf.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ready, align 2, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.end, label %if.end36

land.end:                                         ; preds = %entry
  %.b43 = load i1, ptr @rtl88e_fill_h2c_cmd.__already_done, align 1
  br i1 %.b43, label %land.end.cleanup_crit_edge, label %if.then7, !prof !88

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl88e_fill_h2c_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 343, i32 noundef 9, ptr noundef nonnull @.str.5) #5
  br label %cleanup

if.end36:                                         ; preds = %entry
  %4 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tmp_cmdbuf.sroa.0, align 8
  %5 = call ptr @memcpy(ptr %tmp_cmdbuf.sroa.0, ptr %cmdbuffer, i32 %cmd_len)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  %6 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxcontent.sroa.7.sroa.0.i, i32 1
  %7 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %boxcontent.sroa.7.sroa.0.i, i32 2
  %8 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.25) #5
  %h2c_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 4
  %call4283.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %h2c_setinprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 36
  %9 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %h2c_setinprogress.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not284.i = icmp eq i8 %10, 0
  %.pre.i = zext i8 %element_id to i32
  br i1 %tobool.not284.i, label %if.end36.if.end51.i_crit_edge, label %if.end36.if.then.i_crit_edge

if.end36.if.then.i_crit_edge:                     ; preds = %if.end36
  br label %if.then.i

if.end36.if.end51.i_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.then.i:                                        ; preds = %while.end.i.if.then.i_crit_edge, %if.end36.if.then.i_crit_edge
  %call4286.i = phi i32 [ %call4.i, %while.end.i.if.then.i_crit_edge ], [ %call4283.i, %if.end36.if.then.i_crit_edge ]
  %h2c_waitcounter.0285.i = phi i32 [ %h2c_waitcounter.1.lcssa.i, %while.end.i.if.then.i_crit_edge ], [ 0, %if.end36.if.then.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %.pre.i) #5
  %11 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h2c_setinprogress.i, align 8, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not279.i = icmp eq i8 %12, 0
  br i1 %tobool10.not279.i, label %if.then.i.while.end.i_crit_edge, label %if.then.i.while.body11.i_crit_edge

if.then.i.while.body11.i_crit_edge:               ; preds = %if.then.i
  br label %while.body11.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body11.i:                                   ; preds = %do.body18.i.while.body11.i_crit_edge, %if.then.i.while.body11.i_crit_edge
  %flag.0281.i = phi i32 [ %call27.i, %do.body18.i.while.body11.i_crit_edge ], [ %call4286.i, %if.then.i.while.body11.i_crit_edge ]
  %h2c_waitcounter.1280.i = phi i32 [ %inc.i, %do.body18.i.while.body11.i_crit_edge ], [ %h2c_waitcounter.0285.i, %if.then.i.while.body11.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0281.i) #5
  %inc.i = add i32 %h2c_waitcounter.1280.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %inc.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp14.i = icmp ugt i32 %inc.i, 1000
  br i1 %cmp14.i, label %while.body11.i._rtl88e_fill_h2c_command.exit_crit_edge, label %do.body18.i

while.body11.i._rtl88e_fill_h2c_command.exit_crit_edge: ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl88e_fill_h2c_command.exit

do.body18.i:                                      ; preds = %while.body11.i
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %14 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %h2c_setinprogress.i, align 8, !range !87
  %tobool10.not.i = icmp eq i8 %15, 0
  br i1 %tobool10.not.i, label %do.body18.i.while.end.i_crit_edge, label %do.body18.i.while.body11.i_crit_edge

do.body18.i.while.body11.i_crit_edge:             ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body11.i

do.body18.i.while.end.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.body18.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %h2c_waitcounter.1.lcssa.i = phi i32 [ %h2c_waitcounter.0285.i, %if.then.i.while.end.i_crit_edge ], [ %inc.i, %do.body18.i.while.end.i_crit_edge ]
  %flag.0.lcssa.i = phi i32 [ %call4286.i, %if.then.i.while.end.i_crit_edge ], [ %call27.i, %do.body18.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0.lcssa.i) #5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %16 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %h2c_setinprogress.i, align 8, !range !87
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %while.end.i.if.end51.i_crit_edge, label %while.end.i.if.then.i_crit_edge

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

while.end.i.if.end51.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i

if.end51.i:                                       ; preds = %while.end.i.if.end51.i_crit_edge, %if.end36.if.end51.i_crit_edge
  %call4.lcssa.i = phi i32 [ %call4283.i, %if.end36.if.end51.i_crit_edge ], [ %call4.i, %while.end.i.if.end51.i_crit_edge ]
  %18 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call4.lcssa.i) #5
  %last_hmeboxnum.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %sub.i = add nsw i32 %cmd_len, -3
  %write8_async.i254.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i255.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_hmeboxnum.i, align 1
  %conv52.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp ult i8 %20, 4
  br i1 %21, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %conv52.i) #5
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %20 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 496
  %switch.idx.cast58 = zext i8 %20 to i32
  %switch.idx.mult59 = shl nuw nsw i32 %switch.idx.cast58, 2
  %switch.offset60 = add nuw nsw i32 %switch.idx.mult59, 464
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.default.i
  %box_extreg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset, %switch.lookup ]
  %box_reg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset60, %switch.lookup ]
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %25(ptr noundef %23, i32 noundef 460) #5
  %26 = shl nuw i32 1, %conv52.i
  %conv.i.pn290.i = zext i8 %call.i.i.i to i32
  %isfw_read.0.in.in291.i = and i32 %26, %conv.i.pn290.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfw_read.0.in.in291.i)
  %isfw_read.0.in292.i = icmp eq i32 %isfw_read.0.in.in291.i, 0
  br i1 %isfw_read.0.in292.i, label %sw.epilog.i.if.end78.i_crit_edge, label %sw.epilog.i.while.body61.i_crit_edge

sw.epilog.i.while.body61.i_crit_edge:             ; preds = %sw.epilog.i
  br label %while.body61.i

sw.epilog.i.if.end78.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.i

while.body61.i:                                   ; preds = %if.end68.i.while.body61.i_crit_edge, %sw.epilog.i.while.body61.i_crit_edge
  %wait_h2c_limmit.1293.i = phi i8 [ %dec62.i, %if.end68.i.while.body61.i_crit_edge ], [ 100, %sw.epilog.i.while.body61.i_crit_edge ]
  %dec62.i = add nsw i8 %wait_h2c_limmit.1293.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec62.i)
  %cmp64.i = icmp eq i8 %dec62.i, 0
  br i1 %cmp64.i, label %if.then76.i, label %if.end68.i

if.end68.i:                                       ; preds = %while.body61.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #5
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %read8_sync.i.i247.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i247.i, align 4
  %call.i.i248.i = tail call zeroext i8 %31(ptr noundef %29, i32 noundef 460) #5
  %32 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 304) #5
  %conv73.i = zext i8 %call.i.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %conv52.i, i32 noundef %conv73.i) #5
  %conv.i.pn.i = zext i8 %call.i.i248.i to i32
  %isfw_read.0.in.in.i = and i32 %26, %conv.i.pn.i
  %isfw_read.0.in.i = icmp eq i32 %isfw_read.0.in.in.i, 0
  br i1 %isfw_read.0.in.i, label %if.end68.i.if.end78.i_crit_edge, label %if.end68.i.while.body61.i_crit_edge

if.end68.i.while.body61.i_crit_edge:              ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body61.i

if.end68.i.if.end78.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78.i

if.then76.i:                                      ; preds = %while.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv52.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv52.i) #5
  br label %do.body145.i

if.end78.i:                                       ; preds = %if.end68.i.if.end78.i_crit_edge, %sw.epilog.i.if.end78.i_crit_edge
  %34 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 3)
  store i24 0, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %35 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %boxextcontent.sroa.0.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef %box_reg.1.i, i32 noundef %.pre.i) #5
  %36 = zext i32 %cmd_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd_len, label %sw.default128.i [
    i32 1, label %if.end78.i.sw.bb82.i_crit_edge
    i32 2, label %if.end78.i.sw.bb82.i_crit_edge63
    i32 3, label %if.end78.i.sw.bb82.i_crit_edge64
    i32 4, label %if.end78.i.sw.bb93.i_crit_edge
    i32 5, label %if.end78.i.sw.bb93.i_crit_edge65
    i32 6, label %if.end78.i.sw.bb93.i_crit_edge66
    i32 7, label %if.end78.i.sw.bb93.i_crit_edge67
  ]

if.end78.i.sw.bb93.i_crit_edge67:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93.i

if.end78.i.sw.bb93.i_crit_edge66:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93.i

if.end78.i.sw.bb93.i_crit_edge65:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93.i

if.end78.i.sw.bb93.i_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb93.i

if.end78.i.sw.bb82.i_crit_edge64:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82.i

if.end78.i.sw.bb82.i_crit_edge63:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82.i

if.end78.i.sw.bb82.i_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82.i

sw.bb82.i:                                        ; preds = %if.end78.i.sw.bb82.i_crit_edge, %if.end78.i.sw.bb82.i_crit_edge63, %if.end78.i.sw.bb82.i_crit_edge64
  %37 = call ptr @memcpy(ptr %boxcontent.sroa.7.sroa.0.i, ptr %tmp_cmdbuf.sroa.0, i32 %cmd_len)
  %38 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %40 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i, label %sw.bb82.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

sw.bb82.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i253.i = tail call zeroext i8 %45(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %sw.bb82.i.rtl_write_byte.exit.i_crit_edge
  %add.1.i = or i32 %box_reg.1.i, 1
  %46 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.310.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %47 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef %add.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.310.i) #5
  %49 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i.1.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.1.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.1.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i.1.i

rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.1.i

if.then.i.1.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i253.1.i = tail call zeroext i8 %54(ptr noundef %1, i32 noundef %add.1.i) #5
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i.1.i, %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge
  %add.2.i = or i32 %box_reg.1.i, 2
  %55 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %55)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.311.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %56 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %57(ptr noundef %1, i32 noundef %add.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.311.i) #5
  %58 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i.2.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.2.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.2.i, label %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge, label %if.then.i.2.i

rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.2.i

if.then.i.2.i:                                    ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i253.2.i = tail call zeroext i8 %63(ptr noundef %1, i32 noundef %add.2.i) #5
  br label %rtl_write_byte.exit.2.i

rtl_write_byte.exit.2.i:                          ; preds = %if.then.i.2.i, %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge
  %add.3.i = or i32 %box_reg.1.i, 3
  %64 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %64)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.312.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %65 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %66(ptr noundef %1, i32 noundef %add.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.312.i) #5
  %67 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_readback.i.3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_readback.i.3.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.3.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.3.i, label %rtl_write_byte.exit.2.i.sw.epilog129.i_crit_edge, label %if.then.i.3.i

rtl_write_byte.exit.2.i.sw.epilog129.i_crit_edge: ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog129.i

if.then.i.3.i:                                    ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i253.3.i = tail call zeroext i8 %72(ptr noundef %1, i32 noundef %add.3.i) #5
  br label %sw.epilog129.i

sw.bb93.i:                                        ; preds = %if.end78.i.sw.bb93.i_crit_edge, %if.end78.i.sw.bb93.i_crit_edge65, %if.end78.i.sw.bb93.i_crit_edge66, %if.end78.i.sw.bb93.i_crit_edge67
  %tmp_cmdbuf.sroa.0.3.add.ptr97.i.sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 3
  %73 = call ptr @memcpy(ptr %boxextcontent.sroa.0.i, ptr %tmp_cmdbuf.sroa.0.3.add.ptr97.i.sroa_idx, i32 %sub.i)
  %74 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 3)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i = load i24, ptr %tmp_cmdbuf.sroa.0, align 8
  %75 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 3)
  store i24 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %76 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i = load i8, ptr %boxextcontent.sroa.0.i, align 4
  %77 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %78(ptr noundef %1, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i) #5
  %79 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i256.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i256.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i256.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i257.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i257.i, label %sw.bb93.i.rtl_write_byte.exit261.i_crit_edge, label %if.then.i260.i

sw.bb93.i.rtl_write_byte.exit261.i_crit_edge:     ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit261.i

if.then.i260.i:                                   ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i259.i = tail call zeroext i8 %84(ptr noundef %1, i32 noundef %box_extreg.1.i) #5
  br label %rtl_write_byte.exit261.i

rtl_write_byte.exit261.i:                         ; preds = %if.then.i260.i, %sw.bb93.i.rtl_write_byte.exit261.i_crit_edge
  %add109.1.i = or i32 %box_extreg.1.i, 1
  %boxextcontent.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 1
  %85 = ptrtoint ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %85)
  %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i = load i8, ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx, align 1
  %86 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %87(ptr noundef %1, i32 noundef %add109.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i) #5
  %88 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i256.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i256.1.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i256.1.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i257.1.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i257.1.i, label %rtl_write_byte.exit261.i.rtl_write_byte.exit261.1.i_crit_edge, label %if.then.i260.1.i

rtl_write_byte.exit261.i.rtl_write_byte.exit261.1.i_crit_edge: ; preds = %rtl_write_byte.exit261.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit261.1.i

if.then.i260.1.i:                                 ; preds = %rtl_write_byte.exit261.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i259.1.i = tail call zeroext i8 %93(ptr noundef %1, i32 noundef %add109.1.i) #5
  br label %rtl_write_byte.exit261.1.i

rtl_write_byte.exit261.1.i:                       ; preds = %if.then.i260.1.i, %rtl_write_byte.exit261.i.rtl_write_byte.exit261.1.i_crit_edge
  %94 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %95(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %96 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i264.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i264.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i264.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i265.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i265.i, label %rtl_write_byte.exit261.1.i.rtl_write_byte.exit269.i_crit_edge, label %if.then.i268.i

rtl_write_byte.exit261.1.i.rtl_write_byte.exit269.i_crit_edge: ; preds = %rtl_write_byte.exit261.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit269.i

if.then.i268.i:                                   ; preds = %rtl_write_byte.exit261.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.i = tail call zeroext i8 %101(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit269.i

rtl_write_byte.exit269.i:                         ; preds = %if.then.i268.i, %rtl_write_byte.exit261.1.i.rtl_write_byte.exit269.i_crit_edge
  %add122.1.i = or i32 %box_reg.1.i, 1
  %102 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %103 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %104(ptr noundef %1, i32 noundef %add122.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i) #5
  %105 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i264.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i264.1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i264.1.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i265.1.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i265.1.i, label %rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge, label %if.then.i268.1.i

rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge: ; preds = %rtl_write_byte.exit269.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit269.1.i

if.then.i268.1.i:                                 ; preds = %rtl_write_byte.exit269.i
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.1.i = tail call zeroext i8 %110(ptr noundef %1, i32 noundef %add122.1.i) #5
  br label %rtl_write_byte.exit269.1.i

rtl_write_byte.exit269.1.i:                       ; preds = %if.then.i268.1.i, %rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge
  %add122.2.i = or i32 %box_reg.1.i, 2
  %111 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %111)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %112 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %113(ptr noundef %1, i32 noundef %add122.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i) #5
  %114 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i264.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i264.2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i264.2.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i265.2.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i265.2.i, label %rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge, label %if.then.i268.2.i

rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge: ; preds = %rtl_write_byte.exit269.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit269.2.i

if.then.i268.2.i:                                 ; preds = %rtl_write_byte.exit269.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.2.i = tail call zeroext i8 %119(ptr noundef %1, i32 noundef %add122.2.i) #5
  br label %rtl_write_byte.exit269.2.i

rtl_write_byte.exit269.2.i:                       ; preds = %if.then.i268.2.i, %rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge
  %add122.3.i = or i32 %box_reg.1.i, 3
  %120 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %120)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %121 = ptrtoint ptr %write8_async.i254.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i254.i, align 4
  tail call void %122(ptr noundef %1, i32 noundef %add122.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i) #5
  %123 = ptrtoint ptr %cfg.i255.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i255.i, align 8
  %write_readback.i264.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i264.3.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i264.3.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i265.3.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i265.3.i, label %rtl_write_byte.exit269.2.i.sw.epilog129.i_crit_edge, label %if.then.i268.3.i

rtl_write_byte.exit269.2.i.sw.epilog129.i_crit_edge: ; preds = %rtl_write_byte.exit269.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog129.i

if.then.i268.3.i:                                 ; preds = %rtl_write_byte.exit269.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.3.i = tail call zeroext i8 %128(ptr noundef %1, i32 noundef %add122.3.i) #5
  br label %sw.epilog129.i

sw.default128.i:                                  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %cmd_len) #5
  br label %sw.epilog129.i

sw.epilog129.i:                                   ; preds = %sw.default128.i, %if.then.i268.3.i, %rtl_write_byte.exit269.2.i.sw.epilog129.i_crit_edge, %if.then.i.3.i, %rtl_write_byte.exit.2.i.sw.epilog129.i_crit_edge
  %add131.i = add i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add131.i)
  %cmp136.i = icmp eq i8 %add131.i, 4
  %spec.select.i = select i1 %cmp136.i, i8 0, i8 %add131.i
  %129 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %spec.select.i, ptr %last_hmeboxnum.i, align 1
  %conv142.i = zext i8 %spec.select.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %conv142.i) #5
  br label %do.body145.i

do.body145.i:                                     ; preds = %sw.epilog129.i, %if.then76.i
  %call154.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %130 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call154.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.36) #5
  br label %_rtl88e_fill_h2c_command.exit

_rtl88e_fill_h2c_command.exit:                    ; preds = %do.body145.i, %while.body11.i._rtl88e_fill_h2c_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  br label %cleanup

cleanup:                                          ; preds = %_rtl88e_fill_h2c_command.exit, %if.then7, %land.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_set_fw_pwrmode_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %u1_h2c_set_pwrmode = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1_h2c_set_pwrmode) #5
  %conv = zext i8 %mode to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool.not = icmp ne i8 %mode, 0
  %conv3 = zext i1 %tobool.not to i8
  %2 = ptrtoint ptr %u1_h2c_set_pwrmode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %u1_h2c_set_pwrmode, align 1
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %3 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %entry.set_h2ccmd_pwrmode_parm_smart_ps.exit_crit_edge, label %cond.true

entry.set_h2ccmd_pwrmode_parm_smart_ps.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_h2ccmd_pwrmode_parm_smart_ps.exit

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %smart_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 41
  %5 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %smart_ps, align 1
  %phi.bo = shl i8 %6, 4
  br label %set_h2ccmd_pwrmode_parm_smart_ps.exit

set_h2ccmd_pwrmode_parm_smart_ps.exit:            ; preds = %cond.true, %entry.set_h2ccmd_pwrmode_parm_smart_ps.exit_crit_edge
  %cond9 = phi i8 [ %phi.bo, %cond.true ], [ 16, %entry.set_h2ccmd_pwrmode_parm_smart_ps.exit_crit_edge ]
  %add.ptr.i = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cond9, ptr %add.ptr.i, align 1
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %8 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_max_lps_awakeintvl, align 2
  %add.ptr.i34 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 2
  %10 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %add.ptr.i34, align 1
  %add.ptr.i35 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 3
  %11 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr.i35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %cmp = icmp eq i8 %mode, 0
  %. = select i1 %cmp, i8 12, i8 0
  %add.ptr.i36 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 4
  %12 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %., ptr %add.ptr.i36, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef nonnull %u1_h2c_set_pwrmode, i32 noundef 5) #5
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 32, i32 noundef 5, ptr noundef nonnull %u1_h2c_set_pwrmode)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1_h2c_set_pwrmode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_set_fw_joinbss_report_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %u1_joinbssrpt_parm = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u1_joinbssrpt_parm) #5
  %0 = ptrtoint ptr %u1_joinbssrpt_parm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %mstatus, ptr %u1_joinbssrpt_parm, align 1
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 1, i32 noundef 1, ptr noundef nonnull %u1_joinbssrpt_parm)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u1_joinbssrpt_parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_set_fw_ap_off_load_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %ap_offload_enable) local_unnamed_addr #0 align 64 {
entry:
  %u1_apoffload_parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %u1_apoffload_parm) #5
  %2 = ptrtoint ptr %u1_apoffload_parm to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %ap_offload_enable, ptr %u1_apoffload_parm, align 1
  %hiddenssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 53
  %3 = ptrtoint ptr %hiddenssid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hiddenssid, align 4, !range !87
  %add.ptr = getelementptr inbounds i8, ptr %u1_apoffload_parm, i32 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %add.ptr, align 1
  %add.ptr3 = getelementptr inbounds i8, ptr %u1_apoffload_parm, i32 2
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %add.ptr3, align 1
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 8, i32 noundef 3, ptr noundef nonnull %u1_apoffload_parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %u1_apoffload_parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %b_dl_finished) local_unnamed_addr #0 align 64 {
entry:
  %u1rsvdpageloc = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  %2 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 0, ptr %2, align 1
  %4 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211, align 8
  store i8 %5, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 10), align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  store i8 %7, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 11), align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 2
  store i8 %9, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 12), align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  store i8 %11, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 13), align 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 4
  store i8 %13, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 14), align 1
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  store i8 %15, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %16 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bssid, align 2
  store i8 %17, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 16), align 1
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  store i8 %19, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 17), align 1
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 2
  store i8 %21, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 18), align 1
  %arrayidx44 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  store i8 %23, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 19), align 1
  %arrayidx49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 2
  store i8 %25, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 20), align 1
  %arrayidx54 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  store i8 %27, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 21), align 1
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %28 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assoc_id, align 2
  %30 = or i16 %29, -16384
  store i16 %30, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 258), align 2
  %31 = load i32, ptr %bssid, align 4
  store i32 %31, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 260), align 4
  %32 = load i16, ptr %arrayidx49, align 2
  store i16 %32, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 264), align 2
  %33 = load i32, ptr %mac80211, align 4
  store i32 %33, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 266), align 4
  %34 = load i16, ptr %arrayidx20, align 2
  store i16 %34, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 270), align 2
  %add.ptr66 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %35 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %add.ptr66, align 1
  %36 = lshr i32 %31, 24
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 388), align 1
  %38 = load i8, ptr %arrayidx34, align 1
  store i8 %38, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 389), align 1
  %39 = load i8, ptr %arrayidx39, align 2
  store i8 %39, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 390), align 1
  %40 = load i8, ptr %arrayidx44, align 1
  store i8 %40, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 391), align 1
  %41 = load i8, ptr %arrayidx49, align 2
  store i8 %41, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 392), align 1
  %42 = load i8, ptr %arrayidx54, align 1
  store i8 %42, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 393), align 1
  %43 = lshr i32 %33, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 394), align 1
  %45 = load i8, ptr %arrayidx5, align 1
  store i8 %45, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 395), align 1
  %46 = load i8, ptr %arrayidx10, align 2
  store i8 %46, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 396), align 1
  %47 = load i8, ptr %arrayidx15, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 397), align 1
  %48 = load i8, ptr %arrayidx20, align 4
  store i8 %48, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 398), align 1
  %49 = load i8, ptr %arrayidx25, align 1
  store i8 %49, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 399), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 400), align 1
  %50 = load i8, ptr %arrayidx34, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 401), align 1
  %51 = load i8, ptr %arrayidx39, align 2
  store i8 %51, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 402), align 1
  %52 = load i8, ptr %arrayidx44, align 1
  store i8 %52, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 403), align 1
  %53 = load i8, ptr %arrayidx49, align 2
  store i8 %53, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 404), align 1
  %54 = load i8, ptr %arrayidx54, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 405), align 1
  %add.ptr158 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %55 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %add.ptr158, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 516), align 1
  %56 = load i8, ptr %arrayidx34, align 1
  store i8 %56, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 517), align 1
  %57 = load i8, ptr %arrayidx39, align 2
  store i8 %57, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 518), align 1
  %58 = load i8, ptr %arrayidx44, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 519), align 1
  %59 = load i8, ptr %arrayidx49, align 2
  store i8 %59, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 520), align 1
  %60 = load i8, ptr %arrayidx54, align 1
  store i8 %60, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 521), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 522), align 1
  %61 = load i8, ptr %arrayidx5, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 523), align 1
  %62 = load i8, ptr %arrayidx10, align 2
  store i8 %62, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 524), align 1
  %63 = load i8, ptr %arrayidx15, align 1
  store i8 %63, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 525), align 1
  %64 = load i8, ptr %arrayidx20, align 4
  store i8 %64, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 526), align 1
  %65 = load i8, ptr %arrayidx25, align 1
  store i8 %65, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 527), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 528), align 1
  %66 = load i8, ptr %arrayidx34, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 529), align 1
  %67 = load i8, ptr %arrayidx39, align 2
  store i8 %67, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 530), align 1
  %68 = load i8, ptr %arrayidx44, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 531), align 1
  %69 = load i8, ptr %arrayidx49, align 2
  store i8 %69, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 532), align 1
  %70 = load i8, ptr %arrayidx54, align 1
  store i8 %70, ptr getelementptr inbounds (<{ [626 x i8], [142 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 533), align 1
  %71 = ptrtoint ptr %u1rsvdpageloc to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 4, ptr %u1rsvdpageloc, align 1
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.9, ptr noundef nonnull @reserved_page_packet, i32 noundef 768) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.9, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 768, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 768) #5
  %72 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet, i32 768)
  %call252 = call zeroext i1 @rtl_cmd_send_packet(ptr noundef %hw, ptr noundef nonnull %call.i.i) #5
  br i1 %call252, label %if.then258, label %if.else

if.then258:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.10) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1rsvdpageloc)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.12) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then258, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_cmd_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_set_p2p_ps_offload_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
entry:
  %u1_ctwindow_period.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %p2p_ps_offload4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 46
  %2 = zext i8 %p2p_ps_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %p2p_ps_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb91
    i8 3, label %sw.bb95
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.13) #5
  %3 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.14) #5
  %ctwindow6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 3
  %4 = ptrtoint ptr %ctwindow6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctwindow6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %p2p_ps_offload4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #5
  %7 = ptrtoint ptr %u1_ctwindow_period.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %u1_ctwindow_period.i, align 1
  call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext -120, i32 noundef 1, ptr noundef nonnull %u1_ctwindow_period.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb5.if.end_crit_edge
  %noa_num = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 5
  %8 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %noa_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp14194.not = icmp eq i8 %9, 0
  br i1 %cmp14194.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  br label %for.body

for.body:                                         ; preds = %rtl_write_dword.exit183.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %rtl_write_dword.exit183.for.body_crit_edge ]
  %10 = trunc i32 %indvars.iv to i8
  %shl = shl i8 %10, 4
  %11 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write8_async.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef 1487, i8 noundef zeroext %shl) #5
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %for.body.rtl_write_byte.exit_crit_edge, label %if.then.i

for.body.rtl_write_byte.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 1487) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.body.rtl_write_byte.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp19 = icmp eq i32 %indvars.iv, 0
  %19 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load22 = load i8, ptr %p2p_ps_offload4, align 1
  %. = select i1 %cmp19, i8 16, i8 8
  %bf.set27 = or i8 %bf.load22, %.
  store i8 %bf.set27, ptr %p2p_ps_offload4, align 1
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 7, i32 %indvars.iv
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write32_async.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef 1504, i32 noundef %21) #5
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %write_readback.i154 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i154 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i154, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i155 = icmp eq i8 %27, 0
  br i1 %tobool.not.i155, label %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge, label %if.then.i157

rtl_write_byte.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i157:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i, align 4
  %call.i156 = tail call i32 %29(ptr noundef %1, i32 noundef 1504) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i157, %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge
  %arrayidx30 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 8, i32 %indvars.iv
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %32 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 1508, i32 noundef %31) #5
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i160 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i160 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i160, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i161 = icmp eq i8 %37, 0
  br i1 %tobool.not.i161, label %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge, label %if.then.i164

rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit165

if.then.i164:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i, align 4
  %call.i163 = tail call i32 %39(ptr noundef %1, i32 noundef 1508) #5
  br label %rtl_write_dword.exit165

rtl_write_dword.exit165:                          ; preds = %if.then.i164, %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge
  %40 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i, align 4
  %call.i167 = tail call i32 %41(ptr noundef %1, i32 noundef 1376) #5
  %arrayidx32 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 9, i32 %indvars.iv
  %42 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx32, align 4
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 6, i32 %indvars.iv
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp36.not = icmp eq i8 %45, 1
  br i1 %cmp36.not, label %rtl_write_dword.exit165.if.end56_crit_edge, label %while.cond.preheader

rtl_write_dword.exit165.if.end56_crit_edge:       ; preds = %rtl_write_dword.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

while.cond.preheader:                             ; preds = %rtl_write_dword.exit165
  %add = add i32 %call.i167, 51200
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add)
  %cmp39.not192 = icmp ugt i32 %43, %add
  br i1 %cmp39.not192, label %while.cond.preheader.if.end56_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end56_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %46 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %46)
  %arrayidx34.promoted = load i8, ptr %arrayidx34, align 1
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %while.body.lr.ph
  %47 = phi i8 [ %arrayidx34.promoted, %while.body.lr.ph ], [ %51, %if.end55.while.body_crit_edge ]
  %start_time.0193 = phi i32 [ %43, %while.body.lr.ph ], [ %add44, %if.end55.while.body_crit_edge ]
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx30, align 4
  %add44 = add i32 %49, %start_time.0193
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %cmp49.not = icmp eq i8 %47, -1
  br i1 %cmp49.not, label %while.body.if.end55_crit_edge, label %if.then51

while.body.if.end55_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i8 %47, -1
  %50 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %dec, ptr %arrayidx34, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %while.body.if.end55_crit_edge
  %51 = phi i8 [ %dec, %if.then51 ], [ -1, %while.body.if.end55_crit_edge ]
  %cmp39.not = icmp ugt i32 %add44, %add
  br i1 %cmp39.not, label %if.end55.if.end56_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end55.if.end56_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.end56:                                         ; preds = %if.end55.if.end56_crit_edge, %while.cond.preheader.if.end56_crit_edge, %rtl_write_dword.exit165.if.end56_crit_edge
  %start_time.1 = phi i32 [ %43, %rtl_write_dword.exit165.if.end56_crit_edge ], [ %43, %while.cond.preheader.if.end56_crit_edge ], [ %add44, %if.end55.if.end56_crit_edge ]
  %52 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32_async.i, align 4
  tail call void %53(ptr noundef %1, i32 noundef 1512, i32 noundef %start_time.1) #5
  %54 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i, align 8
  %write_readback.i170 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i170 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i170, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i171 = icmp eq i8 %57, 0
  br i1 %tobool.not.i171, label %if.end56.rtl_write_dword.exit175_crit_edge, label %if.then.i174

if.end56.rtl_write_dword.exit175_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit175

if.then.i174:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32_sync.i, align 4
  %call.i173 = tail call i32 %59(ptr noundef %1, i32 noundef 1512) #5
  br label %rtl_write_dword.exit175

rtl_write_dword.exit175:                          ; preds = %if.then.i174, %if.end56.rtl_write_dword.exit175_crit_edge
  %60 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx34, align 1
  %conv60 = zext i8 %61 to i32
  %62 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32_async.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1516, i32 noundef %conv60) #5
  %64 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i, align 8
  %write_readback.i178 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i178 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i178, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i179 = icmp eq i8 %67, 0
  br i1 %tobool.not.i179, label %rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge, label %if.then.i182

rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge: ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit183

if.then.i182:                                     ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32_sync.i, align 4
  %call.i181 = tail call i32 %69(ptr noundef %1, i32 noundef 1516) #5
  br label %rtl_write_dword.exit183

rtl_write_dword.exit183:                          ; preds = %if.then.i182, %rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %70 = ptrtoint ptr %noa_num to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %noa_num, align 1
  %72 = zext i8 %71 to i32
  %cmp14 = icmp ult i32 %indvars.iv.next, %72
  br i1 %cmp14, label %rtl_write_dword.exit183.for.body_crit_edge, label %for.end.loopexit

rtl_write_dword.exit183.for.body_crit_edge:       ; preds = %rtl_write_dword.exit183
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %rtl_write_dword.exit183
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %phi.cmp = icmp eq i8 %71, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i1 [ true, %if.end.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %opp_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 4
  %73 = ptrtoint ptr %opp_ps to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %opp_ps, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp62 = icmp ne i8 %74, 1
  %or.cond = select i1 %cmp62, i1 %.lcssa, i1 false
  br i1 %or.cond, label %for.end.sw.epilog_crit_edge, label %if.then68

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then68:                                        ; preds = %for.end
  %write8_async.i184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i184 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i184, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 16) #5
  %cfg.i185 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i185 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i185, align 8
  %write_readback.i186 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i186 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i186, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i187 = icmp eq i8 %80, 0
  br i1 %tobool.not.i187, label %if.then68.rtl_write_byte.exit191_crit_edge, label %if.then.i190

if.then68.rtl_write_byte.exit191_crit_edge:       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit191

if.then.i190:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i188 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i188 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i188, align 4
  %call.i189 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1363) #5
  br label %rtl_write_byte.exit191

rtl_write_byte.exit191:                           ; preds = %if.then.i190, %if.then68.rtl_write_byte.exit191_crit_edge
  %83 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load69 = load i8, ptr %p2p_ps_offload4, align 1
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %84 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %85)
  %cmp73 = icmp eq i8 %85, 3
  %bf.set71 = and i8 %bf.load69, 61
  %bf.clear84 = or i8 %bf.set71, -128
  %bf.set81 = or i8 %bf.load69, -60
  %storemerge = select i1 %cmp73, i8 %bf.set81, i8 %bf.clear84
  %bf.clear88 = and i8 %storemerge, -3
  %86 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %bf.clear88, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.15) #5
  %87 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load92 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set94 = or i8 %bf.load92, 2
  store i8 %bf.set94, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.16) #5
  %88 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load96 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.clear97 = and i8 %bf.load96, -3
  store i8 %bf.clear97, ptr %p2p_ps_offload4, align 1
  %p2p_ps_state99 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 1
  %89 = ptrtoint ptr %p2p_ps_state99 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %p2p_ps_state99, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb91, %rtl_write_byte.exit191, %for.end.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  tail call void @rtl88e_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef %p2p_ps_offload4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fill_dummy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fw_page_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 126, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 130, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 149, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtl88e_download_fw._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl88e_download_fw._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 342, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 362, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 373, i32 2}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 390, i32 2}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 595, i32 2}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 613, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 615, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 620, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 646, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 650, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 706, i32 3}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 710, i32 3}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 43, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 51, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @_rtl88e_write_fw._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @_rtl88e_write_fw._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 79, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @_rtl88e_fw_free_to_go._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @_rtl88e_fw_free_to_go._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 100, i32 2}
!49 = !{ptr @_rtl88e_fw_free_to_go._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @_rtl88e_fw_free_to_go._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 184, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 189, i32 4}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 197, i32 5}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 218, i32 4}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @_rtl88e_fill_h2c_command._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @_rtl88e_fill_h2c_command._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 241, i32 4}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 249, i32 5}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 259, i32 4}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 265, i32 4}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 274, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 323, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 332, i32 2}
!76 = !{ptr @reserved_page_packet, !77, !"reserved_page_packet", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/fw.c", i32 428, i32 11}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{!"branch_weights", i32 2000, i32 1}
