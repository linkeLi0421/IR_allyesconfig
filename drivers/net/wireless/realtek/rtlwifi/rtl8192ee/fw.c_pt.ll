; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"normal Firmware SIZE %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Firmware Version(%d), Signature(%#x),Size(%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Firmware no Header, Signature(%#x)\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl92ee_fill_h2c_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtl8192ee: error H2C cmd because of Fw download fail!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"  _8051Reset92E(): 8051 reset success .\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW LPS mode = %d (coex:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl92c_set_fw_pwrmode(): u1_h2c_set_pwrmode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rtl92ee_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set RSVD page location to Fw.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"H2C_RSVDPAGE:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"P2P_PS_DISABLE\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P2P_PS_ENABLE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P2P_PS_SCAN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW size is %d bytes,\0A\00", [42 x i8] zeroinitializer }, align 32
@_rtl92ee_write_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8192ee: Page numbers should not greater then 8\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_rtl92ee_write_fw\00", [46 x i8] zeroinitializer }, align 32
@_rtl92ee_write_fw._entry_ptr = internal global ptr @_rtl92ee_write_fw._entry, section ".printk_index", align 4
@_rtl92ee_fw_free_to_go._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtl8192ee: chksum report fail! REG_MCUFWDL:0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_rtl92ee_fw_free_to_go\00", [41 x i8] zeroinitializer }, align 32
@_rtl92ee_fw_free_to_go._entry_ptr = internal global ptr @_rtl92ee_fw_free_to_go._entry, section ".printk_index", align 4
@_rtl92ee_fw_free_to_go._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013rtl8192ee: Polling FW ready fail!! REG_MCUFWDL:0x%08x. count = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl92ee_fw_free_to_go._entry_ptr.23 = internal global ptr @_rtl92ee_fw_free_to_go._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"FillH2CCommand8192E(): Return because RF is off!!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"come in\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wait 100 us (%d times)...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Waiting too long for FW read clear HMEBox(%d)!!!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Write H2C reg BOX[%d] fail,Fw don't read.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"go out\0A\00", [24 x i8] zeroinitializer }, align 32
@reserved_page_packet = internal global { <{ [886 x i8], [138 x i8] }>, [256 x i8] } { <{ [886 x i8], [138 x i8] }> <{ [886 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0L\02\B1x\EC\1AY\0B\AD\D4 \00\00\00\00\00\00\00\00\00d\00\10\04\00\05Test2\01\08\82\84\0B\16$0Hl\03\01\06\06\02\00\00*\01\022\04\0C\12\18`-\1Al\09\03\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\07\00\E0L\02\02\00\00\DD\18\00P\F2\01\01\00\00P\F2\04\01\00\00P\F2\04\01\00\00P\F2\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00(\8C\00\12\00\00\00\00\00\00\00\81\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\01\C0\EC\1AY\0B\AD\D4\00\E0L\02\B1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00H\01\00\00\EC\1AY\0B\AD\D4\00\E0L\02\B1x\EC\1AY\0B\AD\D4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00r\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00P\00\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\9EF\152'\F2-\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\80\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n", [138 x i8] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 121, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 125, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 133, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 362, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 391, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 411, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 474, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 736, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 753, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 755, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 760, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 786, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 790, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 841, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 845, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 39, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 47, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 76, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 97, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 183, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 188, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 196, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 204, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 243, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 266, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 275, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 285, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 294, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 343, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 352, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"reserved_page_packet\00", align 1
@___asan_gen_.147 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 509, i32 11 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @_rtl92ee_fw_free_to_go._entry, ptr @_rtl92ee_fw_free_to_go._entry.21, ptr @_rtl92ee_fw_free_to_go._entry_ptr, ptr @_rtl92ee_fw_free_to_go._entry_ptr.23, ptr @_rtl92ee_write_fw._entry, ptr @_rtl92ee_write_fw._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @reserved_page_packet], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_write_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_fw_free_to_go._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_fw_free_to_go._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ee_download_fw(ptr noundef %hw, i1 noundef zeroext %buse_wake_on_wlan_fw) local_unnamed_addr #0 align 64 {
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
  %15 = and i16 %14, -3841
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8046, i16 %15)
  %cmp = icmp eq i16 %15, -8046
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %version5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %version5, align 4
  %conv12 = zext i16 %17 to i32
  %conv14 = zext i16 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %conv12, i32 noundef %conv14, i32 noundef 32) #5
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %sub = add i32 %12, -32
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv16 = zext i16 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %conv16) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10
  %pfwdata.0 = phi ptr [ %add.ptr, %if.then10 ], [ %3, %if.else ]
  %fwsize.0 = phi i32 [ %sub, %if.then10 ], [ %12, %if.else ]
  %mac_func_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 6
  %18 = ptrtoint ptr %mac_func_enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mac_func_enable, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %20 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 128) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool22.not = icmp sgt i8 %call.i, -1
  br i1 %tobool22.not, label %if.then19.if.end25_crit_edge, label %if.then23

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %if.then19
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %22 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write8_async.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef 128, i8 noundef zeroext 0) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.then23.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then23.rtl_write_byte.exit_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read8_sync.i, align 4
  %call.i58 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 128) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then23.rtl_write_byte.exit_crit_edge
  tail call void @rtl92ee_firmware_selfreset(ptr noundef %hw)
  br label %if.end25

if.end25:                                         ; preds = %rtl_write_byte.exit, %if.then19.if.end25_crit_edge, %if.end17.if.end25_crit_edge
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 5
  %32 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %33(ptr noundef %31, i32 noundef 128, i8 noundef zeroext 5) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 32
  %34 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i, label %if.end25.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end25.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %39(ptr noundef %31, i32 noundef 128) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end25.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i11.i = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 13, i32 9
  %40 = ptrtoint ptr %read8_sync.i11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read8_sync.i11.i, align 4
  %call.i12.i = tail call zeroext i8 %41(ptr noundef %31, i32 noundef 130) #5
  %42 = and i8 %call.i12.i, -9
  %43 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %44(ptr noundef %31, i32 noundef 130, i8 noundef zeroext %42) #5
  %45 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i15.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i15.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i16.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i16.i, label %rtl_write_byte.exit.i._rtl92ee_enable_fw_download.exit_crit_edge, label %if.end.sink.split.i

rtl_write_byte.exit.i._rtl92ee_enable_fw_download.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_enable_fw_download.exit

if.end.sink.split.i:                              ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %read8_sync.i11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i11.i, align 4
  %call.i28.i = tail call zeroext i8 %50(ptr noundef %31, i32 noundef 130) #5
  br label %_rtl92ee_enable_fw_download.exit

_rtl92ee_enable_fw_download.exit:                 ; preds = %if.end.sink.split.i, %rtl_write_byte.exit.i._rtl92ee_enable_fw_download.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.addr.i)
  %51 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %fwsize.0, ptr %size.addr.i, align 4
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %53, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.16, i32 noundef %fwsize.0) #5
  call void @rtl_fill_dummy(ptr noundef %pfwdata.0, ptr noundef nonnull %size.addr.i) #5
  %54 = ptrtoint ptr %size.addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size.addr.i, align 4
  %div1.i = lshr i32 %55, 12
  %rem.i = and i32 %55, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 36863, i32 %55)
  %cmp.i = icmp ugt i32 %55, 36863
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %_rtl92ee_enable_fw_download.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %for.body.preheader.i

if.end.i:                                         ; preds = %_rtl92ee_enable_fw_download.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %55)
  %cmp12.not.i = icmp ult i32 %55, 4096
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 429496) #5
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
  %tobool.not.i62 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i62, label %for.end.i._rtl92ee_write_fw.exit_crit_edge, label %if.then2.i

for.end.i._rtl92ee_write_fw.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_write_fw.exit

if.then2.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul3.i = and i32 %55, -4096
  %add.ptr4.i = getelementptr i8, ptr %pfwdata.0, i32 %mul3.i
  call void @rtl_fw_page_write(ptr noundef %hw, i32 noundef %div1.i, ptr noundef %add.ptr4.i, i32 noundef %rem.i) #5
  br label %_rtl92ee_write_fw.exit

_rtl92ee_write_fw.exit:                           ; preds = %if.then2.i, %for.end.i._rtl92ee_write_fw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.addr.i)
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %read8_sync.i21.i = getelementptr inbounds %struct.rtl_priv, ptr %58, i32 0, i32 13, i32 9
  %59 = ptrtoint ptr %read8_sync.i21.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read8_sync.i21.i, align 4
  %call.i22.i = call zeroext i8 %60(ptr noundef %58, i32 noundef 128) #5
  %61 = and i8 %call.i22.i, -2
  %write8_async.i23.i = getelementptr inbounds %struct.rtl_priv, ptr %58, i32 0, i32 13, i32 5
  %62 = ptrtoint ptr %write8_async.i23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write8_async.i23.i, align 4
  call void %63(ptr noundef %58, i32 noundef 128, i8 noundef zeroext %61) #5
  %cfg.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %58, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i24.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i24.i, align 8
  %write_readback.i25.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i25.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i25.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i26.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i26.i, label %_rtl92ee_write_fw.exit._rtl92ee_enable_fw_download.exit67_crit_edge, label %if.end.sink.split.i65

_rtl92ee_write_fw.exit._rtl92ee_enable_fw_download.exit67_crit_edge: ; preds = %_rtl92ee_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_enable_fw_download.exit67

if.end.sink.split.i65:                            ; preds = %_rtl92ee_write_fw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %read8_sync.i21.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read8_sync.i21.i, align 4
  %call.i28.i64 = call zeroext i8 %69(ptr noundef %58, i32 noundef 128) #5
  br label %_rtl92ee_enable_fw_download.exit67

_rtl92ee_enable_fw_download.exit67:               ; preds = %if.end.sink.split.i65, %_rtl92ee_write_fw.exit._rtl92ee_enable_fw_download.exit67_crit_edge
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 13, i32 11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %_rtl92ee_enable_fw_download.exit67
  %counter.0.i = phi i32 [ 0, %_rtl92ee_enable_fw_download.exit67 ], [ %inc.i70, %do.body.i.do.body.i_crit_edge ]
  %72 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i69 = call i32 %73(ptr noundef %71, i32 noundef 128) #5
  %inc.i70 = add nuw nsw i32 %counter.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %counter.0.i)
  %cmp.i71 = icmp ult i32 %counter.0.i, 3000
  %and.i = and i32 %call.i.i69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i72 = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i71, i1 %tobool.not.i72, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2998, i32 %counter.0.i)
  %cmp1.i = icmp ugt i32 %counter.0.i, 2998
  br i1 %cmp1.i, label %do.end4.i, label %if.end.i76

do.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call.i.i69) #8
  br label %cleanup

if.end.i76:                                       ; preds = %do.end.i
  %74 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i40.i = call i32 %75(ptr noundef %71, i32 noundef 128) #5
  %or.i = and i32 %call.i40.i, -67
  %and7.i = or i32 %or.i, 2
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 13, i32 7
  %76 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32_async.i.i, align 4
  call void %77(ptr noundef %71, i32 noundef 128, i32 noundef %and7.i) #5
  %cfg.i.i73 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i73, align 8
  %write_readback.i.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i.i74 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i.i74, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i75 = icmp eq i8 %81, 0
  br i1 %tobool.not.i.i75, label %if.end.i76.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i77

if.end.i76.rtl_write_dword.exit.i_crit_edge:      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit.i

if.then.i.i77:                                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i42.i = call i32 %83(ptr noundef %71, i32 noundef 128) #5
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i77, %if.end.i76.rtl_write_dword.exit.i_crit_edge
  call void @rtl92ee_firmware_selfreset(ptr noundef %hw) #5
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.end13.i.do.body8.i_crit_edge, %rtl_write_dword.exit.i
  %counter.1.i = phi i32 [ 0, %rtl_write_dword.exit.i ], [ %inc15.i, %if.end13.i.do.body8.i_crit_edge ]
  %84 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i44.i = call i32 %85(ptr noundef %71, i32 noundef 128) #5
  %and10.i = and i32 %call.i44.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %do.body8.i.cleanup_crit_edge

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13.i:                                       ; preds = %do.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 10737400) #5
  %inc15.i = add nuw nsw i32 %counter.1.i, 1
  %exitcond.not.i78 = icmp eq i32 %inc15.i, 3001
  br i1 %exitcond.not.i78, label %do.end20.i, label %if.end13.i.do.body8.i_crit_edge

if.end13.i.do.body8.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call.i44.i, i32 noundef 3001) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end20.i, %do.body8.i.cleanup_crit_edge, %do.end4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ -5, %do.end20.i ], [ -5, %do.end4.i ], [ 0, %do.body8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_firmware_selfreset(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
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
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 29) #5
  %4 = and i8 %call.i, -2
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %4) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i25 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 29) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i, align 4
  %call.i27 = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 3) #5
  %15 = and i8 %call.i27, -5
  %16 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8_async.i, align 4
  tail call void %17(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %15) #5
  %18 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i, align 8
  %write_readback.i30 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i30 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i30, align 1, !range !81
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
  %call.i33 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit35

rtl_write_byte.exit35:                            ; preds = %if.then.i34, %rtl_write_byte.exit.rtl_write_byte.exit35_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 10737400) #5
  %25 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i, align 4
  %call.i37 = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 29) #5
  %27 = or i8 %call.i37, 1
  %28 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write8_async.i, align 4
  tail call void %29(ptr noundef %1, i32 noundef 29, i8 noundef zeroext %27) #5
  %30 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i, align 8
  %write_readback.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_readback.i40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %write_readback.i40, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i41 = icmp eq i8 %33, 0
  br i1 %tobool.not.i41, label %rtl_write_byte.exit35.rtl_write_byte.exit45_crit_edge, label %if.then.i44

rtl_write_byte.exit35.rtl_write_byte.exit45_crit_edge: ; preds = %rtl_write_byte.exit35
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit45

if.then.i44:                                      ; preds = %rtl_write_byte.exit35
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read8_sync.i, align 4
  %call.i43 = tail call zeroext i8 %35(ptr noundef %1, i32 noundef 29) #5
  br label %rtl_write_byte.exit45

rtl_write_byte.exit45:                            ; preds = %if.then.i44, %rtl_write_byte.exit35.rtl_write_byte.exit45_crit_edge
  %36 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i, align 4
  %call.i47 = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 3) #5
  %38 = or i8 %call.i47, 4
  %39 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i, align 4
  tail call void %40(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %38) #5
  %41 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i, align 8
  %write_readback.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i50 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i50, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i51 = icmp eq i8 %44, 0
  br i1 %tobool.not.i51, label %rtl_write_byte.exit45.rtl_write_byte.exit55_crit_edge, label %if.then.i54

rtl_write_byte.exit45.rtl_write_byte.exit55_crit_edge: ; preds = %rtl_write_byte.exit45
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit55

if.then.i54:                                      ; preds = %rtl_write_byte.exit45
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i, align 4
  %call.i53 = tail call zeroext i8 %46(ptr noundef %1, i32 noundef 3) #5
  br label %rtl_write_byte.exit55

rtl_write_byte.exit55:                            ; preds = %if.then.i54, %rtl_write_byte.exit45.rtl_write_byte.exit55_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_fill_h2c_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr nocapture noundef readonly %cmdbuffer) local_unnamed_addr #0 align 64 {
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
  %3 = load i8, ptr %fw_ready, align 2, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.end, label %if.end36

land.end:                                         ; preds = %entry
  %.b43 = load i1, ptr @rtl92ee_fill_h2c_cmd.__already_done, align 1
  br i1 %.b43, label %land.end.cleanup_crit_edge, label %if.then7, !prof !82

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rtl92ee_fill_h2c_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 363, i32 noundef 9, ptr noundef nonnull @.str.4) #5
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  %dot11_psmode.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 7
  %8 = ptrtoint ptr %dot11_psmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dot11_psmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end36.cleanup.sink.split.i_crit_edge

if.end36.cleanup.sink.split.i_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %if.end36
  %inactive_pwrstate.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 23
  %10 = ptrtoint ptr %inactive_pwrstate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inactive_pwrstate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp4.i = icmp eq i32 %11, 2
  br i1 %cmp4.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.25) #5
  %h2c_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 4
  %call7326.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %h2c_setinprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 36
  %12 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %h2c_setinprogress.i, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not327.i = icmp eq i8 %13, 0
  %.pre.i = zext i8 %element_id to i32
  br i1 %tobool.not327.i, label %if.end.i.if.else.i_crit_edge, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  br label %if.then10.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then10.i:                                      ; preds = %while.end.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %call7329.i = phi i32 [ %call7.i, %while.end.i.if.then10.i_crit_edge ], [ %call7326.i, %if.end.i.if.then10.i_crit_edge ]
  %h2c_waitcounter.0328.i = phi i32 [ %h2c_waitcounter.1.lcssa.i, %while.end.i.if.then10.i_crit_edge ], [ 0, %if.end.i.if.then10.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %.pre.i) #5
  %14 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %h2c_setinprogress.i, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not322.i = icmp eq i8 %15, 0
  br i1 %tobool14.not322.i, label %if.then10.i.while.end.i_crit_edge, label %if.then10.i.while.body15.i_crit_edge

if.then10.i.while.body15.i_crit_edge:             ; preds = %if.then10.i
  br label %while.body15.i

if.then10.i.while.end.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body15.i:                                   ; preds = %do.body23.i.while.body15.i_crit_edge, %if.then10.i.while.body15.i_crit_edge
  %flag.0324.i = phi i32 [ %call32.i, %do.body23.i.while.body15.i_crit_edge ], [ %call7329.i, %if.then10.i.while.body15.i_crit_edge ]
  %h2c_waitcounter.1323.i = phi i32 [ %inc.i, %do.body23.i.while.body15.i_crit_edge ], [ %h2c_waitcounter.0328.i, %if.then10.i.while.body15.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0324.i) #5
  %inc.i = add i32 %h2c_waitcounter.1323.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %inc.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 21474800) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp18.i = icmp ugt i32 %inc.i, 1000
  br i1 %cmp18.i, label %while.body15.i._rtl92ee_fill_h2c_command.exit_crit_edge, label %do.body23.i

while.body15.i._rtl92ee_fill_h2c_command.exit_crit_edge: ; preds = %while.body15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92ee_fill_h2c_command.exit

do.body23.i:                                      ; preds = %while.body15.i
  %call32.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %17 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %h2c_setinprogress.i, align 8, !range !81
  %tobool14.not.i = icmp eq i8 %18, 0
  br i1 %tobool14.not.i, label %do.body23.i.while.end.i_crit_edge, label %do.body23.i.while.body15.i_crit_edge

do.body23.i.while.body15.i_crit_edge:             ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body15.i

do.body23.i.while.end.i_crit_edge:                ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.body23.i.while.end.i_crit_edge, %if.then10.i.while.end.i_crit_edge
  %h2c_waitcounter.1.lcssa.i = phi i32 [ %h2c_waitcounter.0328.i, %if.then10.i.while.end.i_crit_edge ], [ %inc.i, %do.body23.i.while.end.i_crit_edge ]
  %flag.0.lcssa.i = phi i32 [ %call7329.i, %if.then10.i.while.end.i_crit_edge ], [ %call32.i, %do.body23.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0.lcssa.i) #5
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %19 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %h2c_setinprogress.i, align 8, !range !81
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %while.end.i.if.else.i_crit_edge, label %while.end.i.if.then10.i_crit_edge

while.end.i.if.then10.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

while.end.i.if.else.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.else.i:                                        ; preds = %while.end.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %call7.lcssa.i = phi i32 [ %call7326.i, %if.end.i.if.else.i_crit_edge ], [ %call7.i, %while.end.i.if.else.i_crit_edge ]
  %21 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call7.lcssa.i) #5
  %last_hmeboxnum.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %sub.i = add nsw i32 %cmd_len, -3
  %write8_async.i293.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i294.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %22 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %last_hmeboxnum.i, align 1
  %conv47.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %24 = icmp ult i8 %23, 4
  br i1 %24, label %switch.lookup, label %sw.default.i

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %conv47.i) #5
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.idx.cast = zext i8 %23 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 464
  %switch.idx.cast58 = zext i8 %23 to i32
  %switch.idx.mult59 = shl nuw nsw i32 %switch.idx.cast58, 2
  %switch.offset60 = add nuw nsw i32 %switch.idx.mult59, 496
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %sw.default.i
  %box_reg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset, %switch.lookup ]
  %box_extreg.1.i = phi i32 [ 0, %sw.default.i ], [ %switch.offset60, %switch.lookup ]
  %25 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i.i)
  %cmp54.not.i = icmp eq i8 %call.i.i, -22
  br i1 %cmp54.not.i, label %if.else57.i, label %if.then71.i

if.else57.i:                                      ; preds = %sw.epilog.i
  %27 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i272.i = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 528) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i272.i)
  %cmp60.i = icmp eq i8 %call.i272.i, -22
  br i1 %cmp60.i, label %if.else57.i.if.then67.i_crit_edge, label %lor.lhs.false62.i

if.else57.i.if.then67.i_crit_edge:                ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then67.i

lor.lhs.false62.i:                                ; preds = %if.else57.i
  %29 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i274.i = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 1050) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call.i274.i)
  %cmp65.i = icmp eq i8 %call.i274.i, -22
  br i1 %cmp65.i, label %lor.lhs.false62.i.if.then67.i_crit_edge, label %lor.lhs.false62.i.if.then91.i_crit_edge

lor.lhs.false62.i.if.then91.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91.i

lor.lhs.false62.i.if.then67.i_crit_edge:          ; preds = %lor.lhs.false62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then67.i

if.then67.i:                                      ; preds = %lor.lhs.false62.i.if.then67.i_crit_edge, %if.else57.i.if.then67.i_crit_edge
  %31 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %32(ptr noundef %1, i32 noundef 243, i8 noundef zeroext -1) #5
  %33 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %write_readback.i.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %if.then67.i.if.then91.i_crit_edge, label %if.then.i.i

if.then67.i.if.then91.i_crit_edge:                ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then91.i

if.then.i.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i276.i = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 243) #5
  br label %if.then91.i

if.then71.i:                                      ; preds = %sw.epilog.i
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 13, i32 9
  %41 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %42(ptr noundef %40, i32 noundef 460) #5
  %43 = shl nuw i32 1, %conv47.i
  %conv.i.pn333.i = zext i8 %call.i.i.i to i32
  %isfw_read.1.in.in334.i = and i32 %43, %conv.i.pn333.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfw_read.1.in.in334.i)
  %isfw_read.1.in335.i = icmp eq i32 %isfw_read.1.in.in334.i, 0
  br i1 %isfw_read.1.in335.i, label %if.then71.i.if.end93.i_crit_edge, label %if.then71.i.while.body76.i_crit_edge

if.then71.i.while.body76.i_crit_edge:             ; preds = %if.then71.i
  br label %while.body76.i

if.then71.i.if.end93.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.i

while.body76.i:                                   ; preds = %if.end82.i.while.body76.i_crit_edge, %if.then71.i.while.body76.i_crit_edge
  %wait_h2c_limmit.0336.i = phi i8 [ %dec.i, %if.end82.i.while.body76.i_crit_edge ], [ 100, %if.then71.i.while.body76.i_crit_edge ]
  %dec.i = add nsw i8 %wait_h2c_limmit.0336.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %cmp78.i = icmp eq i8 %dec.i, 0
  br i1 %cmp78.i, label %if.end89.thread310.i, label %if.end82.i

if.end89.thread310.i:                             ; preds = %while.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.29, i32 noundef %conv47.i) #5
  br label %if.then91.i

if.end82.i:                                       ; preds = %while.body76.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #5
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %read8_sync.i.i278.i = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 13, i32 9
  %47 = ptrtoint ptr %read8_sync.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i.i278.i, align 4
  %call.i.i279.i = tail call zeroext i8 %48(ptr noundef %46, i32 noundef 460) #5
  %49 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i284.i = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 304) #5
  %conv87.i = zext i8 %call.i284.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %conv47.i, i32 noundef %conv87.i) #5
  %conv.i.pn.i = zext i8 %call.i.i279.i to i32
  %isfw_read.1.in.in.i = and i32 %43, %conv.i.pn.i
  %isfw_read.1.in.i = icmp eq i32 %isfw_read.1.in.in.i, 0
  br i1 %isfw_read.1.in.i, label %if.end82.i.if.end93.i_crit_edge, label %if.end82.i.while.body76.i_crit_edge

if.end82.i.while.body76.i_crit_edge:              ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body76.i

if.end82.i.if.end93.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93.i

if.then91.i:                                      ; preds = %if.end89.thread310.i, %if.then.i.i, %if.then67.i.if.then91.i_crit_edge, %lor.lhs.false62.i.if.then91.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %conv47.i) #5
  br label %do.body160.i

if.end93.i:                                       ; preds = %if.end82.i.if.end93.i_crit_edge, %if.then71.i.if.end93.i_crit_edge
  %51 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 3)
  store i24 0, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %52 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %boxextcontent.sroa.0.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %box_reg.1.i, i32 noundef %.pre.i) #5
  %53 = zext i32 %cmd_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd_len, label %sw.default143.i [
    i32 1, label %if.end93.i.sw.bb97.i_crit_edge
    i32 2, label %if.end93.i.sw.bb97.i_crit_edge63
    i32 3, label %if.end93.i.sw.bb97.i_crit_edge64
    i32 4, label %if.end93.i.sw.bb108.i_crit_edge
    i32 5, label %if.end93.i.sw.bb108.i_crit_edge65
    i32 6, label %if.end93.i.sw.bb108.i_crit_edge66
    i32 7, label %if.end93.i.sw.bb108.i_crit_edge67
  ]

if.end93.i.sw.bb108.i_crit_edge67:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108.i

if.end93.i.sw.bb108.i_crit_edge66:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108.i

if.end93.i.sw.bb108.i_crit_edge65:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108.i

if.end93.i.sw.bb108.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb108.i

if.end93.i.sw.bb97.i_crit_edge64:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb97.i

if.end93.i.sw.bb97.i_crit_edge63:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb97.i

if.end93.i.sw.bb97.i_crit_edge:                   ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb97.i

sw.bb97.i:                                        ; preds = %if.end93.i.sw.bb97.i_crit_edge, %if.end93.i.sw.bb97.i_crit_edge63, %if.end93.i.sw.bb97.i_crit_edge64
  %54 = call ptr @memcpy(ptr %boxcontent.sroa.7.sroa.0.i, ptr %tmp_cmdbuf.sroa.0, i32 %cmd_len)
  %55 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %56(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %57 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i287.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i287.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i287.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i288.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i288.i, label %sw.bb97.i.rtl_write_byte.exit292.i_crit_edge, label %if.then.i291.i

sw.bb97.i.rtl_write_byte.exit292.i_crit_edge:     ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit292.i

if.then.i291.i:                                   ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i290.i = tail call zeroext i8 %62(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit292.i

rtl_write_byte.exit292.i:                         ; preds = %if.then.i291.i, %sw.bb97.i.rtl_write_byte.exit292.i_crit_edge
  %add.1.i = or i32 %box_reg.1.i, 1
  %63 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.354.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %64 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %65(ptr noundef %1, i32 noundef %add.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.354.i) #5
  %66 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i287.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i287.1.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i287.1.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i288.1.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i288.1.i, label %rtl_write_byte.exit292.i.rtl_write_byte.exit292.1.i_crit_edge, label %if.then.i291.1.i

rtl_write_byte.exit292.i.rtl_write_byte.exit292.1.i_crit_edge: ; preds = %rtl_write_byte.exit292.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit292.1.i

if.then.i291.1.i:                                 ; preds = %rtl_write_byte.exit292.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i290.1.i = tail call zeroext i8 %71(ptr noundef %1, i32 noundef %add.1.i) #5
  br label %rtl_write_byte.exit292.1.i

rtl_write_byte.exit292.1.i:                       ; preds = %if.then.i291.1.i, %rtl_write_byte.exit292.i.rtl_write_byte.exit292.1.i_crit_edge
  %add.2.i = or i32 %box_reg.1.i, 2
  %72 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.355.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %73 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %74(ptr noundef %1, i32 noundef %add.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.355.i) #5
  %75 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i287.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write_readback.i287.2.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %write_readback.i287.2.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i288.2.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i288.2.i, label %rtl_write_byte.exit292.1.i.rtl_write_byte.exit292.2.i_crit_edge, label %if.then.i291.2.i

rtl_write_byte.exit292.1.i.rtl_write_byte.exit292.2.i_crit_edge: ; preds = %rtl_write_byte.exit292.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit292.2.i

if.then.i291.2.i:                                 ; preds = %rtl_write_byte.exit292.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i290.2.i = tail call zeroext i8 %80(ptr noundef %1, i32 noundef %add.2.i) #5
  br label %rtl_write_byte.exit292.2.i

rtl_write_byte.exit292.2.i:                       ; preds = %if.then.i291.2.i, %rtl_write_byte.exit292.1.i.rtl_write_byte.exit292.2.i_crit_edge
  %add.3.i = or i32 %box_reg.1.i, 3
  %81 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %81)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.356.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %82 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %83(ptr noundef %1, i32 noundef %add.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.356.i) #5
  %84 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i287.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %write_readback.i287.3.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %write_readback.i287.3.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i288.3.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i288.3.i, label %rtl_write_byte.exit292.2.i.sw.epilog144.i_crit_edge, label %if.then.i291.3.i

rtl_write_byte.exit292.2.i.sw.epilog144.i_crit_edge: ; preds = %rtl_write_byte.exit292.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog144.i

if.then.i291.3.i:                                 ; preds = %rtl_write_byte.exit292.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i290.3.i = tail call zeroext i8 %89(ptr noundef %1, i32 noundef %add.3.i) #5
  br label %sw.epilog144.i

sw.bb108.i:                                       ; preds = %if.end93.i.sw.bb108.i_crit_edge, %if.end93.i.sw.bb108.i_crit_edge65, %if.end93.i.sw.bb108.i_crit_edge66, %if.end93.i.sw.bb108.i_crit_edge67
  %tmp_cmdbuf.sroa.0.3.add.ptr112.i.sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 3
  %90 = call ptr @memcpy(ptr %boxextcontent.sroa.0.i, ptr %tmp_cmdbuf.sroa.0.3.add.ptr112.i.sroa_idx, i32 %sub.i)
  %91 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 3)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i = load i24, ptr %tmp_cmdbuf.sroa.0, align 8
  %92 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 3)
  store i24 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %93 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i = load i8, ptr %boxextcontent.sroa.0.i, align 4
  %94 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %95(ptr noundef %1, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i) #5
  %96 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i295.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i295.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i295.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i296.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i296.i, label %sw.bb108.i.rtl_write_byte.exit300.i_crit_edge, label %if.then.i299.i

sw.bb108.i.rtl_write_byte.exit300.i_crit_edge:    ; preds = %sw.bb108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit300.i

if.then.i299.i:                                   ; preds = %sw.bb108.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i298.i = tail call zeroext i8 %101(ptr noundef %1, i32 noundef %box_extreg.1.i) #5
  br label %rtl_write_byte.exit300.i

rtl_write_byte.exit300.i:                         ; preds = %if.then.i299.i, %sw.bb108.i.rtl_write_byte.exit300.i_crit_edge
  %add124.1.i = or i32 %box_extreg.1.i, 1
  %boxextcontent.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 1
  %102 = ptrtoint ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %102)
  %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i = load i8, ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx, align 1
  %103 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %104(ptr noundef %1, i32 noundef %add124.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i) #5
  %105 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i295.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i295.1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i295.1.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i296.1.i = icmp eq i8 %108, 0
  br i1 %tobool.not.i296.1.i, label %rtl_write_byte.exit300.i.rtl_write_byte.exit300.1.i_crit_edge, label %if.then.i299.1.i

rtl_write_byte.exit300.i.rtl_write_byte.exit300.1.i_crit_edge: ; preds = %rtl_write_byte.exit300.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit300.1.i

if.then.i299.1.i:                                 ; preds = %rtl_write_byte.exit300.i
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i298.1.i = tail call zeroext i8 %110(ptr noundef %1, i32 noundef %add124.1.i) #5
  br label %rtl_write_byte.exit300.1.i

rtl_write_byte.exit300.1.i:                       ; preds = %if.then.i299.1.i, %rtl_write_byte.exit300.i.rtl_write_byte.exit300.1.i_crit_edge
  %add124.2.i = or i32 %box_extreg.1.i, 2
  %boxextcontent.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 2
  %111 = ptrtoint ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %111)
  %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i = load i8, ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx, align 2
  %112 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %113(ptr noundef %1, i32 noundef %add124.2.i, i8 noundef zeroext %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i) #5
  %114 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i295.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i295.2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i295.2.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i296.2.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i296.2.i, label %rtl_write_byte.exit300.1.i.rtl_write_byte.exit300.2.i_crit_edge, label %if.then.i299.2.i

rtl_write_byte.exit300.1.i.rtl_write_byte.exit300.2.i_crit_edge: ; preds = %rtl_write_byte.exit300.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit300.2.i

if.then.i299.2.i:                                 ; preds = %rtl_write_byte.exit300.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i298.2.i = tail call zeroext i8 %119(ptr noundef %1, i32 noundef %add124.2.i) #5
  br label %rtl_write_byte.exit300.2.i

rtl_write_byte.exit300.2.i:                       ; preds = %if.then.i299.2.i, %rtl_write_byte.exit300.1.i.rtl_write_byte.exit300.2.i_crit_edge
  %add124.3.i = or i32 %box_extreg.1.i, 3
  %boxextcontent.sroa.0.i.3.i.3..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 3
  %120 = ptrtoint ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %120)
  %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i = load i8, ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx, align 1
  %121 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %122(ptr noundef %1, i32 noundef %add124.3.i, i8 noundef zeroext %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i) #5
  %123 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i295.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i295.3.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i295.3.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i296.3.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i296.3.i, label %rtl_write_byte.exit300.2.i.rtl_write_byte.exit300.3.i_crit_edge, label %if.then.i299.3.i

rtl_write_byte.exit300.2.i.rtl_write_byte.exit300.3.i_crit_edge: ; preds = %rtl_write_byte.exit300.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit300.3.i

if.then.i299.3.i:                                 ; preds = %rtl_write_byte.exit300.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %127 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i298.3.i = tail call zeroext i8 %128(ptr noundef %1, i32 noundef %add124.3.i) #5
  br label %rtl_write_byte.exit300.3.i

rtl_write_byte.exit300.3.i:                       ; preds = %if.then.i299.3.i, %rtl_write_byte.exit300.2.i.rtl_write_byte.exit300.3.i_crit_edge
  %129 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %130(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #5
  %131 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i303.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %write_readback.i303.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %write_readback.i303.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i304.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i304.i, label %rtl_write_byte.exit300.3.i.rtl_write_byte.exit308.i_crit_edge, label %if.then.i307.i

rtl_write_byte.exit300.3.i.rtl_write_byte.exit308.i_crit_edge: ; preds = %rtl_write_byte.exit300.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit308.i

if.then.i307.i:                                   ; preds = %rtl_write_byte.exit300.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %135 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i306.i = tail call zeroext i8 %136(ptr noundef %1, i32 noundef %box_reg.1.i) #5
  br label %rtl_write_byte.exit308.i

rtl_write_byte.exit308.i:                         ; preds = %if.then.i307.i, %rtl_write_byte.exit300.3.i.rtl_write_byte.exit308.i_crit_edge
  %add137.1.i = or i32 %box_reg.1.i, 1
  %137 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %138 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %139(ptr noundef %1, i32 noundef %add137.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i) #5
  %140 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i303.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write_readback.i303.1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %write_readback.i303.1.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i304.1.i = icmp eq i8 %143, 0
  br i1 %tobool.not.i304.1.i, label %rtl_write_byte.exit308.i.rtl_write_byte.exit308.1.i_crit_edge, label %if.then.i307.1.i

rtl_write_byte.exit308.i.rtl_write_byte.exit308.1.i_crit_edge: ; preds = %rtl_write_byte.exit308.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit308.1.i

if.then.i307.1.i:                                 ; preds = %rtl_write_byte.exit308.i
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i306.1.i = tail call zeroext i8 %145(ptr noundef %1, i32 noundef %add137.1.i) #5
  br label %rtl_write_byte.exit308.1.i

rtl_write_byte.exit308.1.i:                       ; preds = %if.then.i307.1.i, %rtl_write_byte.exit308.i.rtl_write_byte.exit308.1.i_crit_edge
  %add137.2.i = or i32 %box_reg.1.i, 2
  %146 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %146)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %147 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %148(ptr noundef %1, i32 noundef %add137.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i) #5
  %149 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i303.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %write_readback.i303.2.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %write_readback.i303.2.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i304.2.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i304.2.i, label %rtl_write_byte.exit308.1.i.rtl_write_byte.exit308.2.i_crit_edge, label %if.then.i307.2.i

rtl_write_byte.exit308.1.i.rtl_write_byte.exit308.2.i_crit_edge: ; preds = %rtl_write_byte.exit308.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit308.2.i

if.then.i307.2.i:                                 ; preds = %rtl_write_byte.exit308.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i306.2.i = tail call zeroext i8 %154(ptr noundef %1, i32 noundef %add137.2.i) #5
  br label %rtl_write_byte.exit308.2.i

rtl_write_byte.exit308.2.i:                       ; preds = %if.then.i307.2.i, %rtl_write_byte.exit308.1.i.rtl_write_byte.exit308.2.i_crit_edge
  %add137.3.i = or i32 %box_reg.1.i, 3
  %155 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %155)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %156 = ptrtoint ptr %write8_async.i293.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %write8_async.i293.i, align 4
  tail call void %157(ptr noundef %1, i32 noundef %add137.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i) #5
  %158 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i294.i, align 8
  %write_readback.i303.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %write_readback.i303.3.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_readback.i303.3.i, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i304.3.i = icmp eq i8 %161, 0
  br i1 %tobool.not.i304.3.i, label %rtl_write_byte.exit308.2.i.sw.epilog144.i_crit_edge, label %if.then.i307.3.i

rtl_write_byte.exit308.2.i.sw.epilog144.i_crit_edge: ; preds = %rtl_write_byte.exit308.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog144.i

if.then.i307.3.i:                                 ; preds = %rtl_write_byte.exit308.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i306.3.i = tail call zeroext i8 %163(ptr noundef %1, i32 noundef %add137.3.i) #5
  br label %sw.epilog144.i

sw.default143.i:                                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.28, i32 noundef %cmd_len) #5
  br label %sw.epilog144.i

sw.epilog144.i:                                   ; preds = %sw.default143.i, %if.then.i307.3.i, %rtl_write_byte.exit308.2.i.sw.epilog144.i_crit_edge, %if.then.i291.3.i, %rtl_write_byte.exit292.2.i.sw.epilog144.i_crit_edge
  %add146.i = add i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add146.i)
  %cmp151.i = icmp eq i8 %add146.i, 4
  %spec.select.i = select i1 %cmp151.i, i8 0, i8 %add146.i
  %164 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %spec.select.i, ptr %last_hmeboxnum.i, align 1
  %conv157.i = zext i8 %spec.select.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv157.i) #5
  br label %do.body160.i

do.body160.i:                                     ; preds = %sw.epilog144.i, %if.then91.i
  %call169.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #5
  %165 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call169.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.body160.i, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %if.end36.cleanup.sink.split.i_crit_edge
  %.str.34.sink.i = phi ptr [ @.str.34, %do.body160.i ], [ @.str.24, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge ], [ @.str.24, %if.end36.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull %.str.34.sink.i) #5
  br label %_rtl92ee_fill_h2c_command.exit

_rtl92ee_fill_h2c_command.exit:                   ; preds = %cleanup.sink.split.i, %while.body15.i._rtl92ee_fill_h2c_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  br label %cleanup

cleanup:                                          ; preds = %_rtl92ee_fill_h2c_command.exit, %if.then7, %land.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_fw_pwrmode_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %u1_h2c_set_pwrmode = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #5
  %2 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 6)
  %btcoexist = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 49
  %4 = ptrtoint ptr %btcoexist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %btcoexist, align 8
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %get_btc_status = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 66
  %10 = ptrtoint ptr %get_btc_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_btc_status, align 4
  %call = tail call zeroext i1 %11() #5
  br i1 %call, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %btc_is_bt_ctrl_lps = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 27
  %12 = ptrtoint ptr %btc_is_bt_ctrl_lps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_is_bt_ctrl_lps, align 4
  %call3 = tail call zeroext i1 %13(ptr noundef %1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %call3, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg, align 8
  %ops5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops5, align 4
  %get_btc_status6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 66
  %18 = ptrtoint ptr %get_btc_status6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_btc_status6, align 4
  %call7 = tail call zeroext i1 %19() #5
  br i1 %call7, label %cond.true9, label %cond.end.cond.end13_crit_edge

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end13

cond.true9:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %btc_is_bt_lps_on = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 29
  %20 = ptrtoint ptr %btc_is_bt_lps_on to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_is_bt_lps_on, align 4
  %call10 = tail call zeroext i1 %21(ptr noundef %1) #5
  %phi.cast = zext i1 %call10 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true9, %cond.end.cond.end13_crit_edge
  %cond14 = phi i8 [ %phi.cast, %cond.true9 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %spec.select = select i1 %cond, i8 %cond14, i8 %mode
  %conv22 = zext i8 %spec.select to i32
  %conv24 = zext i1 %cond to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.6, i32 noundef %conv22, i32 noundef %conv24) #5
  %22 = zext i8 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %spec.select, label %sw.epilog [
    i8 1, label %cond.end13.sw.epilog.thread_crit_edge
    i8 2, label %sw.bb26
    i8 3, label %sw.bb27
  ]

cond.end13.sw.epilog.thread_crit_edge:            ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.thread

sw.bb27:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #7
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %23 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg_max_lps_awakeintvl, align 2
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb27, %sw.bb26, %cond.end13.sw.epilog.thread_crit_edge
  %rlbm.0.ph = phi i8 [ 0, %cond.end13.sw.epilog.thread_crit_edge ], [ 1, %sw.bb26 ], [ 2, %sw.bb27 ]
  %awake_intvl.0.ph = phi i8 [ 2, %cond.end13.sw.epilog.thread_crit_edge ], [ 2, %sw.bb26 ], [ %24, %sw.bb27 ]
  %p2p138 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %25 = ptrtoint ptr %p2p138 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %p2p138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not139 = icmp eq i8 %26, 0
  %spec.select115140 = select i1 %tobool28.not139, i8 %rlbm.0.ph, i8 1
  %spec.select116141 = select i1 %tobool28.not139, i8 %awake_intvl.0.ph, i8 2
  br label %if.else

sw.epilog:                                        ; preds = %cond.end13
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %27 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  %spec.select115 = select i1 %tobool28.not, i8 2, i8 1
  %spec.select116 = select i1 %tobool28.not, i8 4, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %cmp = icmp eq i8 %spec.select, 0
  br i1 %cmp, label %sw.epilog.u8p_replace_bits.exit_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

sw.epilog.u8p_replace_bits.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.epilog.thread
  %spec.select116146 = phi i8 [ %spec.select116141, %sw.epilog.thread ], [ %spec.select116, %sw.epilog.if.else_crit_edge ]
  %spec.select115145 = phi i8 [ %spec.select115140, %sw.epilog.thread ], [ %spec.select115, %sw.epilog.if.else_crit_edge ]
  %p2p143 = phi ptr [ %p2p138, %sw.epilog.thread ], [ %p2p, %sw.epilog.if.else_crit_edge ]
  br i1 %cond, label %if.then35, label %if.else.u8p_replace_bits.exit_crit_edge

if.else.u8p_replace_bits.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %btc_get_lps_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 25
  %29 = ptrtoint ptr %btc_get_lps_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_get_lps_val, align 4
  %call36 = tail call zeroext i8 %30(ptr noundef %1) #5
  %btc_get_rpwm_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 26
  %31 = ptrtoint ptr %btc_get_rpwm_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_get_rpwm_val, align 4
  %call37 = tail call zeroext i8 %32(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select115145)
  %cmp39 = icmp ne i8 %spec.select115145, 2
  %33 = and i8 %call36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %tobool42.not
  %spec.select117 = select i1 %or.cond, i8 %spec.select115145, i8 2
  %spec.select118 = select i1 %or.cond, i8 %spec.select116146, i8 2
  br label %u8p_replace_bits.exit

u8p_replace_bits.exit:                            ; preds = %if.then35, %if.else.u8p_replace_bits.exit_crit_edge, %sw.epilog.u8p_replace_bits.exit_crit_edge
  %p2p144 = phi ptr [ %p2p, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %p2p143, %if.else.u8p_replace_bits.exit_crit_edge ], [ %p2p143, %if.then35 ]
  %rlbm.2 = phi i8 [ %spec.select115, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select115145, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select117, %if.then35 ]
  %power_state.0 = phi i8 [ 12, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 0, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call37, %if.then35 ]
  %byte5.0 = phi i8 [ 64, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 64, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call36, %if.then35 ]
  %awake_intvl.2 = phi i8 [ %spec.select116, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select116146, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select118, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool49.not = icmp ne i8 %spec.select, 0
  %conv51 = zext i1 %tobool49.not to i8
  %34 = ptrtoint ptr %u1_h2c_set_pwrmode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv51, ptr %u1_h2c_set_pwrmode, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr, align 1
  %and.i = and i8 %36, -16
  %or.i = or i8 %and.i, %rlbm.2
  store i8 %or.i, ptr %add.ptr, align 1
  br i1 %cond, label %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge, label %cond.false58

u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge: ; preds = %u8p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit135

cond.false58:                                     ; preds = %u8p_replace_bits.exit
  %37 = ptrtoint ptr %p2p144 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p2p144, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool62.not = icmp eq i8 %38, 0
  br i1 %tobool62.not, label %cond.false58.u8p_replace_bits.exit135_crit_edge, label %cond.true63

cond.false58.u8p_replace_bits.exit135_crit_edge:  ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #7
  br label %u8p_replace_bits.exit135

cond.true63:                                      ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #7
  %smart_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 41
  %39 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %smart_ps, align 1
  %phi.bo = shl i8 %40, 4
  br label %u8p_replace_bits.exit135

u8p_replace_bits.exit135:                         ; preds = %cond.true63, %cond.false58.u8p_replace_bits.exit135_crit_edge, %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge
  %cond69 = phi i8 [ 0, %u8p_replace_bits.exit.u8p_replace_bits.exit135_crit_edge ], [ %phi.bo, %cond.true63 ], [ 16, %cond.false58.u8p_replace_bits.exit135_crit_edge ]
  %or.i134 = or i8 %cond69, %rlbm.2
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or.i134, ptr %add.ptr, align 1
  %add.ptr72 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 2
  %42 = ptrtoint ptr %add.ptr72 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %awake_intvl.2, ptr %add.ptr72, align 1
  %add.ptr74 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 3
  %43 = ptrtoint ptr %add.ptr74 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %add.ptr74, align 1
  %add.ptr76 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 4
  %44 = ptrtoint ptr %add.ptr76 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %power_state.0, ptr %add.ptr76, align 1
  %add.ptr78 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 5
  %45 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %byte5.0, ptr %add.ptr78, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull %u1_h2c_set_pwrmode, i32 noundef 7) #5
  %46 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg, align 8
  %ops81 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops81 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops81, align 4
  %get_btc_status82 = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 66
  %50 = ptrtoint ptr %get_btc_status82 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_btc_status82, align 4
  %call83 = call zeroext i1 %51() #5
  br i1 %call83, label %if.then84, label %u8p_replace_bits.exit135.if.end86_crit_edge

u8p_replace_bits.exit135.if.end86_crit_edge:      ; preds = %u8p_replace_bits.exit135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then84:                                        ; preds = %u8p_replace_bits.exit135
  call void @__sanitizer_cov_trace_pc() #7
  %btc_record_pwr_mode = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 24
  %52 = ptrtoint ptr %btc_record_pwr_mode to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %btc_record_pwr_mode, align 4
  call void %53(ptr noundef %1, ptr noundef nonnull %u1_h2c_set_pwrmode, i8 noundef zeroext 7) #5
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %u8p_replace_bits.exit135.if.end86_crit_edge
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 32, i32 noundef 7, ptr noundef nonnull %u1_h2c_set_pwrmode)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_fw_media_status_rpt_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %parm) #5
  %0 = getelementptr inbounds i8, ptr %parm, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %0, align 1
  %2 = and i8 %mstatus, 1
  %3 = ptrtoint ptr %parm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %parm, align 1
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 1, i32 noundef 3, ptr noundef nonnull %parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %parm) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %b_dl_finished) local_unnamed_addr #0 align 64 {
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
  %2 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %4 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211, align 8
  store i8 %5, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 10), align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  store i8 %7, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 11), align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 2
  store i8 %9, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 12), align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  store i8 %11, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 13), align 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 4
  store i8 %13, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 14), align 1
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  store i8 %15, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %16 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bssid, align 2
  store i8 %17, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 16), align 1
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  store i8 %19, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 17), align 1
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 2
  store i8 %21, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 18), align 1
  %arrayidx44 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  store i8 %23, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 19), align 1
  %arrayidx49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 2
  store i8 %25, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 20), align 1
  %arrayidx54 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  store i8 %27, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 21), align 1
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %28 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assoc_id, align 2
  %30 = or i16 %29, -16384
  store i16 %30, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 258), align 2
  %31 = load i32, ptr %bssid, align 4
  store i32 %31, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 260), align 4
  %32 = load i16, ptr %arrayidx49, align 2
  store i16 %32, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 264), align 2
  %33 = load i32, ptr %mac80211, align 4
  store i32 %33, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 266), align 4
  %34 = load i16, ptr %arrayidx20, align 2
  store i16 %34, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 270), align 2
  %add.ptr66 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %35 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %add.ptr66, align 1
  %36 = lshr i32 %31, 24
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 388), align 1
  %38 = load i8, ptr %arrayidx34, align 1
  store i8 %38, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 389), align 1
  %39 = load i8, ptr %arrayidx39, align 2
  store i8 %39, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 390), align 1
  %40 = load i8, ptr %arrayidx44, align 1
  store i8 %40, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 391), align 1
  %41 = load i8, ptr %arrayidx49, align 2
  store i8 %41, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 392), align 1
  %42 = load i8, ptr %arrayidx54, align 1
  store i8 %42, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 393), align 1
  %43 = lshr i32 %33, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 394), align 1
  %45 = load i8, ptr %arrayidx5, align 1
  store i8 %45, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 395), align 1
  %46 = load i8, ptr %arrayidx10, align 2
  store i8 %46, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 396), align 1
  %47 = load i8, ptr %arrayidx15, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 397), align 1
  %48 = load i8, ptr %arrayidx20, align 4
  store i8 %48, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 398), align 1
  %49 = load i8, ptr %arrayidx25, align 1
  store i8 %49, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 399), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 400), align 1
  %50 = load i8, ptr %arrayidx34, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 401), align 1
  %51 = load i8, ptr %arrayidx39, align 2
  store i8 %51, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 402), align 1
  %52 = load i8, ptr %arrayidx44, align 1
  store i8 %52, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 403), align 1
  %53 = load i8, ptr %arrayidx49, align 2
  store i8 %53, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 404), align 1
  %54 = load i8, ptr %arrayidx54, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 405), align 1
  %add.ptr158 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %55 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %add.ptr158, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 516), align 1
  %56 = load i8, ptr %arrayidx34, align 1
  store i8 %56, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 517), align 1
  %57 = load i8, ptr %arrayidx39, align 2
  store i8 %57, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 518), align 1
  %58 = load i8, ptr %arrayidx44, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 519), align 1
  %59 = load i8, ptr %arrayidx49, align 2
  store i8 %59, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 520), align 1
  %60 = load i8, ptr %arrayidx54, align 1
  store i8 %60, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 521), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 522), align 1
  %61 = load i8, ptr %arrayidx5, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 523), align 1
  %62 = load i8, ptr %arrayidx10, align 2
  store i8 %62, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 524), align 1
  %63 = load i8, ptr %arrayidx15, align 1
  store i8 %63, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 525), align 1
  %64 = load i8, ptr %arrayidx20, align 4
  store i8 %64, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 526), align 1
  %65 = load i8, ptr %arrayidx25, align 1
  store i8 %65, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 527), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 528), align 1
  %66 = load i8, ptr %arrayidx34, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 529), align 1
  %67 = load i8, ptr %arrayidx39, align 2
  store i8 %67, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 530), align 1
  %68 = load i8, ptr %arrayidx44, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 531), align 1
  %69 = load i8, ptr %arrayidx49, align 2
  store i8 %69, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 532), align 1
  %70 = load i8, ptr %arrayidx54, align 1
  store i8 %70, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 533), align 1
  %71 = ptrtoint ptr %u1rsvdpageloc to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 4, ptr %u1rsvdpageloc, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 772), align 1
  %72 = load i8, ptr %arrayidx34, align 1
  store i8 %72, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 773), align 1
  %73 = load i8, ptr %arrayidx39, align 2
  store i8 %73, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 774), align 1
  %74 = load i8, ptr %arrayidx44, align 1
  store i8 %74, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 775), align 1
  %75 = load i8, ptr %arrayidx49, align 2
  store i8 %75, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 776), align 1
  %76 = load i8, ptr %arrayidx54, align 1
  store i8 %76, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 777), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 778), align 1
  %77 = load i8, ptr %arrayidx5, align 1
  store i8 %77, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 779), align 1
  %78 = load i8, ptr %arrayidx10, align 2
  store i8 %78, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 780), align 1
  %79 = load i8, ptr %arrayidx15, align 1
  store i8 %79, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 781), align 1
  %80 = load i8, ptr %arrayidx20, align 4
  store i8 %80, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 782), align 1
  %81 = load i8, ptr %arrayidx25, align 1
  store i8 %81, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 783), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 784), align 1
  %82 = load i8, ptr %arrayidx34, align 1
  store i8 %82, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 785), align 1
  %83 = load i8, ptr %arrayidx39, align 2
  store i8 %83, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 786), align 1
  %84 = load i8, ptr %arrayidx44, align 1
  store i8 %84, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 787), align 1
  %85 = load i8, ptr %arrayidx49, align 2
  store i8 %85, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 788), align 1
  %86 = load i8, ptr %arrayidx54, align 1
  store i8 %86, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 789), align 1
  %add.ptr341 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 3
  %87 = ptrtoint ptr %add.ptr341 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 6, ptr %add.ptr341, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 14), align 1
  %88 = load i8, ptr %arrayidx34, align 1
  store i8 %88, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 15), align 1
  %89 = load i8, ptr %arrayidx39, align 2
  store i8 %89, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 16), align 1
  %90 = load i8, ptr %arrayidx44, align 1
  store i8 %90, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 17), align 1
  %91 = load i8, ptr %arrayidx49, align 2
  store i8 %91, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 18), align 1
  %92 = load i8, ptr %arrayidx54, align 1
  store i8 %92, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 19), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 20), align 1
  %93 = load i8, ptr %arrayidx5, align 1
  store i8 %93, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 21), align 1
  %94 = load i8, ptr %arrayidx10, align 2
  store i8 %94, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 22), align 1
  %95 = load i8, ptr %arrayidx15, align 1
  store i8 %95, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 23), align 1
  %96 = load i8, ptr %arrayidx20, align 4
  store i8 %96, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 24), align 1
  %97 = load i8, ptr %arrayidx25, align 1
  store i8 %97, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 25), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 26), align 1
  %98 = load i8, ptr %arrayidx34, align 1
  store i8 %98, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 27), align 1
  %99 = load i8, ptr %arrayidx39, align 2
  store i8 %99, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 28), align 1
  %100 = load i8, ptr %arrayidx44, align 1
  store i8 %100, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 29), align 1
  %101 = load i8, ptr %arrayidx49, align 2
  store i8 %101, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 30), align 1
  %102 = load i8, ptr %arrayidx54, align 1
  store i8 %102, ptr getelementptr inbounds (<{ [886 x i8], [138 x i8] }>, ptr @reserved_page_packet, i32 0, i32 1, i32 31), align 1
  %add.ptr433 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %103 = ptrtoint ptr %add.ptr433 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 7, ptr %add.ptr433, align 1
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull @reserved_page_packet, i32 noundef 1024) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1024, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1024) #5
  %104 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet, i32 1024)
  %call436 = call zeroext i1 @rtl_cmd_send_packet(ptr noundef %hw, ptr noundef nonnull %call.i.i) #5
  br i1 %call436, label %if.then442, label %if.else

if.then442:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.9) #5
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.10, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 3) #5
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1rsvdpageloc)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then442, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1rsvdpageloc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_cmd_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_set_p2p_ps_offload_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.37)
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.12) #5
  %3 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.13) #5
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
  call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 70, i32 noundef 1, ptr noundef nonnull %u1_ctwindow_period.i) #5
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
  %16 = load i8, ptr %write_readback.i, align 1, !range !81
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
  %27 = load i8, ptr %write_readback.i154, align 1, !range !81
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
  %37 = load i8, ptr %write_readback.i160, align 1, !range !81
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
  %57 = load i8, ptr %write_readback.i170, align 1, !range !81
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
  %67 = load i8, ptr %write_readback.i178, align 1, !range !81
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
  %80 = load i8, ptr %write_readback.i186, align 1, !range !81
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
  %bf.set78 = and i8 %bf.load69, 57
  %bf.clear80 = or i8 %bf.set78, -64
  %storemerge = select i1 %cmp73, i8 %bf.clear80, i8 %bf.clear84
  %86 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.14) #5
  %87 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load92 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set94 = or i8 %bf.load92, 2
  store i8 %bf.set94, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.15) #5
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
  tail call void @rtl92ee_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 20, i32 noundef 1, ptr noundef %p2p_ps_offload4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_c2h_ra_report_handler(ptr noundef %hw, ptr nocapture noundef readonly %cmd_buf, i8 noundef zeroext %cmd_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_buf, align 1
  %2 = and i8 %1, 63
  %arrayidx2 = getelementptr i8, ptr %cmd_buf, i32 3
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  tail call void @rtl92ee_dm_dynamic_arfb_select(ptr noundef %hw, i8 noundef zeroext %2, i1 noundef zeroext %tobool) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_dynamic_arfb_select(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_fill_dummy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 121, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 125, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 133, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 362, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 391, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 411, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 474, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 736, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 753, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 755, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 760, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 786, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 790, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 841, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 845, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 39, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 47, i32 3}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @_rtl92ee_write_fw._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @_rtl92ee_write_fw._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 76, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @_rtl92ee_fw_free_to_go._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @_rtl92ee_fw_free_to_go._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 97, i32 2}
!46 = !{ptr @_rtl92ee_fw_free_to_go._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @_rtl92ee_fw_free_to_go._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 183, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 188, i32 2}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 196, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 204, i32 5}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 243, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 266, i32 6}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 275, i32 5}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 285, i32 4}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 294, i32 3}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 343, i32 3}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 352, i32 2}
!70 = !{ptr @reserved_page_packet, !71, !"reserved_page_packet", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/fw.c", i32 509, i32 11}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 2000, i32 1}
