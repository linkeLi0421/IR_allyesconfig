; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c"
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
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtl_btc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtl8723be_fill_h2c_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtl8723be: error H2C cmd because of Fw download fail!!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FW LPS mode = %d (coex:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rtl92c_set_fw_pwrmode(): u1_h2c_set_pwrmode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rtl8723be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set RSVD page location to Fw.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"H2C_RSVDPAGE:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Set RSVD page location to Fw FAIL!!!!!!.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"P2P_PS_DISABLE\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"P2P_PS_ENABLE\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"P2P_PS_SCAN\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"P2P_PS_SCAN_DONE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"come in\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"H2C set in progress! Wait to set..element_id(%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wait 100 us (%d times)...\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_rtl8723be_fill_h2c_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rtl8723be: Write H2C fail because no trigger for FW INT!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_rtl8723be_fill_h2c_command\00", [36 x i8] zeroinitializer }, align 32
@_rtl8723be_fill_h2c_command._entry_ptr = internal global ptr @_rtl8723be_fill_h2c_command._entry, section ".printk_index", align 4
@_rtl8723be_fill_h2c_command._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8723be: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@_rtl8723be_fill_h2c_command._entry_ptr.19 = internal global ptr @_rtl8723be_fill_h2c_command._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Waiting too long for FW read clear HMEBox(%d)!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Waiting for FW read clear HMEBox(%d)!!! 0x130 = %2x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Write H2C register BOX[%d] fail!!!!! Fw do not read.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Write element_id box_reg(%4x) = %2x\0A\00", [59 x i8] zeroinitializer }, align 32
@_rtl8723be_fill_h2c_command._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_rtl8723be_fill_h2c_command._entry_ptr.25 = internal global ptr @_rtl8723be_fill_h2c_command._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pHalData->last_hmeboxnum  = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"go out\0A\00", [24 x i8] zeroinitializer }, align 32
@reserved_page_packet = internal global { <{ [918 x i8], [106 x i8] }>, [256 x i8] } { <{ [918 x i8], [106 x i8] }> <{ [918 x i8] c"\80\00\00\00\FF\FF\FF\FF\FF\FF\00\E0L\02\B1x\EC\1AY\0B\AD\D4 \00\00\00\00\00\00\00\00\00d\00\10\04\00\05Test2\01\08\82\84\0B\16$0Hl\03\01\06\06\02\00\00*\01\022\04\0C\12\18`-\1Al\09\03\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\07\00\E0L\02\02\00\00\DD\18\00P\F2\01\01\00\00P\F2\04\01\00\00P\F2\04\01\00\00P\F2\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00(\8C\00\12\00\00\00\00\00\00\00\81\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A4\10\01\C0\EC\1AY\0B\AD\D4\00\E0L\02\B1x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00H\01\00\00\EC\1AY\0B\AD\D4\00\E0L\02\B1x\EC\1AY\0B\AD\D4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00r\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00P\00\00\00\00@\10\10\00\03\00\E0Lv\00B\00@\10\10\00\03\00\00\9EF\152'\F2-\00d\00\00\04\00\0Clinksys_wlan\01\04\82\84\8B\96\03\01\01\06\02\00\00*\01\002\08$0Hl\0C\12\18`-\1Al\18\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\DD\06\00\E0L\02\01p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00(\8C\00\12\00\00\00\00\80\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\00\00\00\00\00\00\C8\01\00\00\84\C9\B2\A7\B3n\00\E0L\02Q\02\84\C9\B2\A7\B3n", [106 x i8] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 204, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 232, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 293, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 557, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 575, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 577, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 582, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 610, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 614, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 671, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 675, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 44, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 49, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 57, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 78, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 101, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 110, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 121, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 127, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 136, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 174, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 185, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 194, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"reserved_page_packet\00", align 1
@___asan_gen_.113 = private constant [55 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 327, i32 11 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @_rtl8723be_fill_h2c_command._entry, ptr @_rtl8723be_fill_h2c_command._entry.17, ptr @_rtl8723be_fill_h2c_command._entry.24, ptr @_rtl8723be_fill_h2c_command._entry_ptr, ptr @_rtl8723be_fill_h2c_command._entry_ptr.19, ptr @_rtl8723be_fill_h2c_command._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @reserved_page_packet], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_fill_h2c_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_fill_h2c_command._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_fill_h2c_command._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_page_packet to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_fill_h2c_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %element_id, i32 noundef %cmd_len, ptr nocapture noundef readonly %p_cmdbuffer) local_unnamed_addr #0 align 64 {
entry:
  %boxcontent.sroa.7.sroa.0.i = alloca i24, align 4
  %boxextcontent.sroa.0.i = alloca i32, align 4
  %tmp_cmdbuf.sroa.0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  %fw_ready = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 38
  %2 = ptrtoint ptr %fw_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ready, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.end, label %if.end36

land.end:                                         ; preds = %entry
  %.b43 = load i1, ptr @rtl8723be_fill_h2c_cmd.__already_done, align 1
  br i1 %.b43, label %land.end.cleanup_crit_edge, label %if.then7, !prof !66

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rtl8723be_fill_h2c_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end36:                                         ; preds = %entry
  %4 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %tmp_cmdbuf.sroa.0, align 8
  %5 = call ptr @memcpy(ptr %tmp_cmdbuf.sroa.0, ptr %p_cmdbuffer, i32 %cmd_len)
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.12) #4
  %h2c_lock.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 4
  %call4291.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #4
  %h2c_setinprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 36
  %9 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %h2c_setinprogress.i, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not292.i = icmp eq i8 %10, 0
  %.pre.i = zext i8 %element_id to i32
  br i1 %tobool.not292.i, label %if.end36.if.end51.i_crit_edge, label %if.end36.if.then.i_crit_edge

if.end36.if.then.i_crit_edge:                     ; preds = %if.end36
  br label %if.then.i

if.end36.if.end51.i_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.then.i:                                        ; preds = %while.end.i.if.then.i_crit_edge, %if.end36.if.then.i_crit_edge
  %call4294.i = phi i32 [ %call4.i, %while.end.i.if.then.i_crit_edge ], [ %call4291.i, %if.end36.if.then.i_crit_edge ]
  %h2c_waitcounter.0293.i = phi i32 [ %h2c_waitcounter.1.lcssa.i, %while.end.i.if.then.i_crit_edge ], [ 0, %if.end36.if.then.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %.pre.i) #4
  %11 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h2c_setinprogress.i, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not287.i = icmp eq i8 %12, 0
  br i1 %tobool10.not287.i, label %if.then.i.while.end.i_crit_edge, label %if.then.i.while.body11.i_crit_edge

if.then.i.while.body11.i_crit_edge:               ; preds = %if.then.i
  br label %while.body11.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body11.i:                                   ; preds = %do.body18.i.while.body11.i_crit_edge, %if.then.i.while.body11.i_crit_edge
  %flag.0289.i = phi i32 [ %call27.i, %do.body18.i.while.body11.i_crit_edge ], [ %call4294.i, %if.then.i.while.body11.i_crit_edge ]
  %h2c_waitcounter.1288.i = phi i32 [ %inc.i, %do.body18.i.while.body11.i_crit_edge ], [ %h2c_waitcounter.0293.i, %if.then.i.while.body11.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0289.i) #4
  %inc.i = add i32 %h2c_waitcounter.1288.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.14, i32 noundef %inc.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 21474800) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i)
  %cmp14.i = icmp ugt i32 %inc.i, 1000
  br i1 %cmp14.i, label %while.body11.i._rtl8723be_fill_h2c_command.exit_crit_edge, label %do.body18.i

while.body11.i._rtl8723be_fill_h2c_command.exit_crit_edge: ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %_rtl8723be_fill_h2c_command.exit

do.body18.i:                                      ; preds = %while.body11.i
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #4
  %14 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %h2c_setinprogress.i, align 8, !range !65
  %tobool10.not.i = icmp eq i8 %15, 0
  br i1 %tobool10.not.i, label %do.body18.i.while.end.i_crit_edge, label %do.body18.i.while.body11.i_crit_edge

do.body18.i.while.body11.i_crit_edge:             ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body11.i

do.body18.i.while.end.i_crit_edge:                ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.body18.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %h2c_waitcounter.1.lcssa.i = phi i32 [ %h2c_waitcounter.0293.i, %if.then.i.while.end.i_crit_edge ], [ %inc.i, %do.body18.i.while.end.i_crit_edge ]
  %flag.0.lcssa.i = phi i32 [ %call4294.i, %if.then.i.while.end.i_crit_edge ], [ %call27.i, %do.body18.i.while.end.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %flag.0.lcssa.i) #4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #4
  %16 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %h2c_setinprogress.i, align 8, !range !65
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %while.end.i.if.end51.i_crit_edge, label %while.end.i.if.then.i_crit_edge

while.end.i.if.then.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

while.end.i.if.end51.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51.i

if.end51.i:                                       ; preds = %while.end.i.if.end51.i_crit_edge, %if.end36.if.end51.i_crit_edge
  %call4.lcssa.i = phi i32 [ %call4291.i, %if.end36.if.end51.i_crit_edge ], [ %call4.i, %while.end.i.if.end51.i_crit_edge ]
  %18 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call4.lcssa.i) #4
  %last_hmeboxnum.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 37
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %sub.i = add nsw i32 %cmd_len, -3
  %write8_async.i262.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i263.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %last_hmeboxnum.i, align 1
  %conv52.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %21 = icmp ult i8 %20, 4
  br i1 %21, label %switch.lookup, label %do.end58.i

do.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv52.i) #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.idx.cast = zext i8 %20 to i32
  %switch.idx.mult = shl nuw nsw i32 %switch.idx.cast, 2
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 496
  %switch.idx.cast58 = zext i8 %20 to i32
  %switch.idx.mult59 = shl nuw nsw i32 %switch.idx.cast58, 2
  %switch.offset60 = add nuw nsw i32 %switch.idx.mult59, 464
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %do.end58.i
  %box_extreg.1.i = phi i32 [ 0, %do.end58.i ], [ %switch.offset, %switch.lookup ]
  %box_reg.1.i = phi i32 [ 0, %do.end58.i ], [ %switch.offset60, %switch.lookup ]
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 13, i32 9
  %24 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %25(ptr noundef %23, i32 noundef 460) #4
  %26 = shl nuw i32 1, %conv52.i
  %conv.i.pn298.i = zext i8 %call.i.i.i to i32
  %isfw_read.0.in.in299.i = and i32 %26, %conv.i.pn298.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isfw_read.0.in.in299.i)
  %isfw_read.0.in300.i = icmp eq i32 %isfw_read.0.in.in299.i, 0
  br i1 %isfw_read.0.in300.i, label %sw.epilog.i.if.end83.i_crit_edge, label %sw.epilog.i.while.body66.i_crit_edge

sw.epilog.i.while.body66.i_crit_edge:             ; preds = %sw.epilog.i
  br label %while.body66.i

sw.epilog.i.if.end83.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

while.body66.i:                                   ; preds = %if.end73.i.while.body66.i_crit_edge, %sw.epilog.i.while.body66.i_crit_edge
  %wait_h2c_limmit.1301.i = phi i8 [ %dec67.i, %if.end73.i.while.body66.i_crit_edge ], [ 100, %sw.epilog.i.while.body66.i_crit_edge ]
  %dec67.i = add nsw i8 %wait_h2c_limmit.1301.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec67.i)
  %cmp69.i = icmp eq i8 %dec67.i, 0
  br i1 %cmp69.i, label %if.then81.i, label %if.end73.i

if.end73.i:                                       ; preds = %while.body66.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %read8_sync.i.i255.i = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i.i255.i, align 4
  %call.i.i256.i = tail call zeroext i8 %31(ptr noundef %29, i32 noundef 460) #4
  %32 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 304) #4
  %conv78.i = zext i8 %call.i.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv52.i, i32 noundef %conv78.i) #4
  %conv.i.pn.i = zext i8 %call.i.i256.i to i32
  %isfw_read.0.in.in.i = and i32 %26, %conv.i.pn.i
  %isfw_read.0.in.i = icmp eq i32 %isfw_read.0.in.in.i, 0
  br i1 %isfw_read.0.in.i, label %if.end73.i.if.end83.i_crit_edge, label %if.end73.i.while.body66.i_crit_edge

if.end73.i.while.body66.i_crit_edge:              ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body66.i

if.end73.i.if.end83.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83.i

if.then81.i:                                      ; preds = %while.body66.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv52.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %conv52.i) #4
  br label %do.body155.i

if.end83.i:                                       ; preds = %if.end73.i.if.end83.i_crit_edge, %sw.epilog.i.if.end83.i_crit_edge
  %34 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 3)
  store i24 0, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %35 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %boxextcontent.sroa.0.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %box_reg.1.i, i32 noundef %.pre.i) #4
  %36 = zext i32 %cmd_len to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd_len, label %do.end136.i [
    i32 1, label %if.end83.i.sw.bb87.i_crit_edge
    i32 2, label %if.end83.i.sw.bb87.i_crit_edge63
    i32 3, label %if.end83.i.sw.bb87.i_crit_edge64
    i32 4, label %if.end83.i.sw.bb98.i_crit_edge
    i32 5, label %if.end83.i.sw.bb98.i_crit_edge65
    i32 6, label %if.end83.i.sw.bb98.i_crit_edge66
    i32 7, label %if.end83.i.sw.bb98.i_crit_edge67
  ]

if.end83.i.sw.bb98.i_crit_edge67:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb98.i

if.end83.i.sw.bb98.i_crit_edge66:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb98.i

if.end83.i.sw.bb98.i_crit_edge65:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb98.i

if.end83.i.sw.bb98.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb98.i

if.end83.i.sw.bb87.i_crit_edge64:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87.i

if.end83.i.sw.bb87.i_crit_edge63:                 ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87.i

if.end83.i.sw.bb87.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb87.i

sw.bb87.i:                                        ; preds = %if.end83.i.sw.bb87.i_crit_edge, %if.end83.i.sw.bb87.i_crit_edge63, %if.end83.i.sw.bb87.i_crit_edge64
  %37 = call ptr @memcpy(ptr %boxcontent.sroa.7.sroa.0.i, ptr %tmp_cmdbuf.sroa.0, i32 %cmd_len)
  %38 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #4
  %40 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i, label %sw.bb87.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

sw.bb87.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i261.i = tail call zeroext i8 %45(ptr noundef %1, i32 noundef %box_reg.1.i) #4
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %sw.bb87.i.rtl_write_byte.exit.i_crit_edge
  %add.1.i = or i32 %box_reg.1.i, 1
  %46 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.320.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %47 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef %add.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1.320.i) #4
  %49 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i.1.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.1.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i.1.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i.1.i

rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit.1.i

if.then.i.1.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i261.1.i = tail call zeroext i8 %54(ptr noundef %1, i32 noundef %add.1.i) #4
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i.1.i, %rtl_write_byte.exit.i.rtl_write_byte.exit.1.i_crit_edge
  %add.2.i = or i32 %box_reg.1.i, 2
  %55 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %55)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.321.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %56 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %57(ptr noundef %1, i32 noundef %add.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2.321.i) #4
  %58 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i.2.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.2.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i.2.i, label %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge, label %if.then.i.2.i

rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit.2.i

if.then.i.2.i:                                    ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i261.2.i = tail call zeroext i8 %63(ptr noundef %1, i32 noundef %add.2.i) #4
  br label %rtl_write_byte.exit.2.i

rtl_write_byte.exit.2.i:                          ; preds = %if.then.i.2.i, %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge
  %add.3.i = or i32 %box_reg.1.i, 3
  %64 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %64)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.322.i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %65 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %66(ptr noundef %1, i32 noundef %add.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3.322.i) #4
  %67 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_readback.i.3.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_readback.i.3.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.3.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i.3.i, label %rtl_write_byte.exit.2.i.sw.epilog139.i_crit_edge, label %if.then.i.3.i

rtl_write_byte.exit.2.i.sw.epilog139.i_crit_edge: ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog139.i

if.then.i.3.i:                                    ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i261.3.i = tail call zeroext i8 %72(ptr noundef %1, i32 noundef %add.3.i) #4
  br label %sw.epilog139.i

sw.bb98.i:                                        ; preds = %if.end83.i.sw.bb98.i_crit_edge, %if.end83.i.sw.bb98.i_crit_edge65, %if.end83.i.sw.bb98.i_crit_edge66, %if.end83.i.sw.bb98.i_crit_edge67
  %tmp_cmdbuf.sroa.0.3.add.ptr102.i.sroa_idx = getelementptr inbounds i8, ptr %tmp_cmdbuf.sroa.0, i32 3
  %73 = call ptr @memcpy(ptr %boxextcontent.sroa.0.i, ptr %tmp_cmdbuf.sroa.0.3.add.ptr102.i.sroa_idx, i32 %sub.i)
  %74 = ptrtoint ptr %tmp_cmdbuf.sroa.0 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 3)
  %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i = load i24, ptr %tmp_cmdbuf.sroa.0, align 8
  %75 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 3)
  store i24 %tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.tmp_cmdbuf.sroa.0.0.boxcontent.sroa.7.sroa.0.0.copyload.i, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %76 = ptrtoint ptr %boxextcontent.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i = load i8, ptr %boxextcontent.sroa.0.i, align 4
  %77 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %78(ptr noundef %1, i32 noundef %box_extreg.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.i.0.boxextcontent.sroa.0.0.boxextcontent.sroa.0.0..i) #4
  %79 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i264.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i264.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i264.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i265.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i265.i, label %sw.bb98.i.rtl_write_byte.exit269.i_crit_edge, label %if.then.i268.i

sw.bb98.i.rtl_write_byte.exit269.i_crit_edge:     ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit269.i

if.then.i268.i:                                   ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.i = tail call zeroext i8 %84(ptr noundef %1, i32 noundef %box_extreg.1.i) #4
  br label %rtl_write_byte.exit269.i

rtl_write_byte.exit269.i:                         ; preds = %if.then.i268.i, %sw.bb98.i.rtl_write_byte.exit269.i_crit_edge
  %add114.1.i = or i32 %box_extreg.1.i, 1
  %boxextcontent.sroa.0.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 1
  %85 = ptrtoint ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %85)
  %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i = load i8, ptr %boxextcontent.sroa.0.i.1.i.1..sroa_idx, align 1
  %86 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %87(ptr noundef %1, i32 noundef %add114.1.i, i8 noundef zeroext %boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.i.1.boxextcontent.sroa.0.1.boxextcontent.sroa.0.1..i) #4
  %88 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i264.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %write_readback.i264.1.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %write_readback.i264.1.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i265.1.i = icmp eq i8 %91, 0
  br i1 %tobool.not.i265.1.i, label %rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge, label %if.then.i268.1.i

rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge: ; preds = %rtl_write_byte.exit269.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit269.1.i

if.then.i268.1.i:                                 ; preds = %rtl_write_byte.exit269.i
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.1.i = tail call zeroext i8 %93(ptr noundef %1, i32 noundef %add114.1.i) #4
  br label %rtl_write_byte.exit269.1.i

rtl_write_byte.exit269.1.i:                       ; preds = %if.then.i268.1.i, %rtl_write_byte.exit269.i.rtl_write_byte.exit269.1.i_crit_edge
  %add114.2.i = or i32 %box_extreg.1.i, 2
  %boxextcontent.sroa.0.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 2
  %94 = ptrtoint ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %94)
  %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i = load i8, ptr %boxextcontent.sroa.0.i.2.i.2..sroa_idx, align 2
  %95 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %96(ptr noundef %1, i32 noundef %add114.2.i, i8 noundef zeroext %boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.i.2.boxextcontent.sroa.0.2.boxextcontent.sroa.0.2..i) #4
  %97 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i264.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %write_readback.i264.2.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %write_readback.i264.2.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i265.2.i = icmp eq i8 %100, 0
  br i1 %tobool.not.i265.2.i, label %rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge, label %if.then.i268.2.i

rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge: ; preds = %rtl_write_byte.exit269.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit269.2.i

if.then.i268.2.i:                                 ; preds = %rtl_write_byte.exit269.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.2.i = tail call zeroext i8 %102(ptr noundef %1, i32 noundef %add114.2.i) #4
  br label %rtl_write_byte.exit269.2.i

rtl_write_byte.exit269.2.i:                       ; preds = %if.then.i268.2.i, %rtl_write_byte.exit269.1.i.rtl_write_byte.exit269.2.i_crit_edge
  %add114.3.i = or i32 %box_extreg.1.i, 3
  %boxextcontent.sroa.0.i.3.i.3..sroa_idx = getelementptr inbounds i8, ptr %boxextcontent.sroa.0.i, i32 3
  %103 = ptrtoint ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %103)
  %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i = load i8, ptr %boxextcontent.sroa.0.i.3.i.3..sroa_idx, align 1
  %104 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %105(ptr noundef %1, i32 noundef %add114.3.i, i8 noundef zeroext %boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.i.3.boxextcontent.sroa.0.3.boxextcontent.sroa.0.3..i) #4
  %106 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i264.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %write_readback.i264.3.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_readback.i264.3.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i265.3.i = icmp eq i8 %109, 0
  br i1 %tobool.not.i265.3.i, label %rtl_write_byte.exit269.2.i.rtl_write_byte.exit269.3.i_crit_edge, label %if.then.i268.3.i

rtl_write_byte.exit269.2.i.rtl_write_byte.exit269.3.i_crit_edge: ; preds = %rtl_write_byte.exit269.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit269.3.i

if.then.i268.3.i:                                 ; preds = %rtl_write_byte.exit269.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i267.3.i = tail call zeroext i8 %111(ptr noundef %1, i32 noundef %add114.3.i) #4
  br label %rtl_write_byte.exit269.3.i

rtl_write_byte.exit269.3.i:                       ; preds = %if.then.i268.3.i, %rtl_write_byte.exit269.2.i.rtl_write_byte.exit269.3.i_crit_edge
  %112 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %113(ptr noundef %1, i32 noundef %box_reg.1.i, i8 noundef zeroext %element_id) #4
  %114 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i272.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i272.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i272.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i273.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i273.i, label %rtl_write_byte.exit269.3.i.rtl_write_byte.exit277.i_crit_edge, label %if.then.i276.i

rtl_write_byte.exit269.3.i.rtl_write_byte.exit277.i_crit_edge: ; preds = %rtl_write_byte.exit269.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit277.i

if.then.i276.i:                                   ; preds = %rtl_write_byte.exit269.3.i
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i275.i = tail call zeroext i8 %119(ptr noundef %1, i32 noundef %box_reg.1.i) #4
  br label %rtl_write_byte.exit277.i

rtl_write_byte.exit277.i:                         ; preds = %if.then.i276.i, %rtl_write_byte.exit269.3.i.rtl_write_byte.exit277.i_crit_edge
  %add127.1.i = or i32 %box_reg.1.i, 1
  %120 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i, align 4
  %121 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %122(ptr noundef %1, i32 noundef %add127.1.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.i.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.sroa.0.0.boxcontent.sroa.7.1..i) #4
  %123 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i272.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i272.1.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i272.1.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i273.1.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i273.1.i, label %rtl_write_byte.exit277.i.rtl_write_byte.exit277.1.i_crit_edge, label %if.then.i276.1.i

rtl_write_byte.exit277.i.rtl_write_byte.exit277.1.i_crit_edge: ; preds = %rtl_write_byte.exit277.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit277.1.i

if.then.i276.1.i:                                 ; preds = %rtl_write_byte.exit277.i
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i275.1.i = tail call zeroext i8 %128(ptr noundef %1, i32 noundef %add127.1.i) #4
  br label %rtl_write_byte.exit277.1.i

rtl_write_byte.exit277.1.i:                       ; preds = %if.then.i276.1.i, %rtl_write_byte.exit277.i.rtl_write_byte.exit277.1.i_crit_edge
  %add127.2.i = or i32 %box_reg.1.i, 2
  %129 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %129)
  %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.1.i.1..sroa_idx, align 1
  %130 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %131(ptr noundef %1, i32 noundef %add127.2.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.i.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.sroa.0.1.boxcontent.sroa.7.2..i) #4
  %132 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i272.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i272.2.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i272.2.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i273.2.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i273.2.i, label %rtl_write_byte.exit277.1.i.rtl_write_byte.exit277.2.i_crit_edge, label %if.then.i276.2.i

rtl_write_byte.exit277.1.i.rtl_write_byte.exit277.2.i_crit_edge: ; preds = %rtl_write_byte.exit277.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit277.2.i

if.then.i276.2.i:                                 ; preds = %rtl_write_byte.exit277.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %136 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i275.2.i = tail call zeroext i8 %137(ptr noundef %1, i32 noundef %add127.2.i) #4
  br label %rtl_write_byte.exit277.2.i

rtl_write_byte.exit277.2.i:                       ; preds = %if.then.i276.2.i, %rtl_write_byte.exit277.1.i.rtl_write_byte.exit277.2.i_crit_edge
  %add127.3.i = or i32 %box_reg.1.i, 3
  %138 = ptrtoint ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %138)
  %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i = load i8, ptr %boxcontent.sroa.7.sroa.0.i.2.i.2..sroa_idx, align 2
  %139 = ptrtoint ptr %write8_async.i262.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %write8_async.i262.i, align 4
  tail call void %140(ptr noundef %1, i32 noundef %add127.3.i, i8 noundef zeroext %boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.i.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.sroa.0.2.boxcontent.sroa.7.3..i) #4
  %141 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg.i263.i, align 8
  %write_readback.i272.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %write_readback.i272.3.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %write_readback.i272.3.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i273.3.i = icmp eq i8 %144, 0
  br i1 %tobool.not.i273.3.i, label %rtl_write_byte.exit277.2.i.sw.epilog139.i_crit_edge, label %if.then.i276.3.i

rtl_write_byte.exit277.2.i.sw.epilog139.i_crit_edge: ; preds = %rtl_write_byte.exit277.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog139.i

if.then.i276.3.i:                                 ; preds = %rtl_write_byte.exit277.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %145 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i275.3.i = tail call zeroext i8 %146(ptr noundef %1, i32 noundef %add127.3.i) #4
  br label %sw.epilog139.i

do.end136.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #6
  %call138.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %cmd_len) #7
  br label %sw.epilog139.i

sw.epilog139.i:                                   ; preds = %do.end136.i, %if.then.i276.3.i, %rtl_write_byte.exit277.2.i.sw.epilog139.i_crit_edge, %if.then.i.3.i, %rtl_write_byte.exit.2.i.sw.epilog139.i_crit_edge
  %add141.i = add i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %add141.i)
  %cmp146.i = icmp eq i8 %add141.i, 4
  %spec.select.i = select i1 %cmp146.i, i8 0, i8 %add141.i
  %147 = ptrtoint ptr %last_hmeboxnum.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %spec.select.i, ptr %last_hmeboxnum.i, align 1
  %conv152.i = zext i8 %spec.select.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %conv152.i) #4
  br label %do.body155.i

do.body155.i:                                     ; preds = %sw.epilog139.i, %if.then81.i
  %call164.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %h2c_lock.i) #4
  %148 = ptrtoint ptr %h2c_setinprogress.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %h2c_setinprogress.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %h2c_lock.i, i32 noundef %call164.i) #4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.27) #4
  br label %_rtl8723be_fill_h2c_command.exit

_rtl8723be_fill_h2c_command.exit:                 ; preds = %do.body155.i, %while.body11.i._rtl8723be_fill_h2c_command.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxextcontent.sroa.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %boxcontent.sroa.7.sroa.0.i)
  br label %cleanup

cleanup:                                          ; preds = %_rtl8723be_fill_h2c_command.exit, %if.then7, %land.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_cmdbuf.sroa.0)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_fw_pwrmode_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %u1_h2c_set_pwrmode = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #4
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
  %call = tail call zeroext i1 %11() #4
  br i1 %call, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %btc_is_bt_ctrl_lps = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 27
  %12 = ptrtoint ptr %btc_is_bt_ctrl_lps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btc_is_bt_ctrl_lps, align 4
  %call3 = tail call zeroext i1 %13(ptr noundef %1) #4
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
  %call7 = tail call zeroext i1 %19() #4
  br i1 %call7, label %cond.true9, label %cond.end.cond.end13_crit_edge

cond.end.cond.end13_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end13

cond.true9:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %btc_is_bt_lps_on = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 29
  %20 = ptrtoint ptr %btc_is_bt_lps_on to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %btc_is_bt_lps_on, align 4
  %call10 = tail call zeroext i1 %21(ptr noundef %1) #4
  %phi.cast = zext i1 %call10 to i8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.true9, %cond.end.cond.end13_crit_edge
  %cond14 = phi i8 [ %phi.cast, %cond.true9 ], [ 0, %cond.end.cond.end13_crit_edge ]
  %spec.select = select i1 %cond, i8 %cond14, i8 %mode
  %conv22 = zext i8 %spec.select to i32
  %conv24 = zext i1 %cond to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef %conv22, i32 noundef %conv24) #4
  %22 = zext i8 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %spec.select, label %sw.epilog [
    i8 1, label %cond.end13.sw.epilog.thread_crit_edge
    i8 2, label %sw.bb26
    i8 3, label %sw.bb27
  ]

cond.end13.sw.epilog.thread_crit_edge:            ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb26:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb27:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #6
  %reg_max_lps_awakeintvl = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 14
  %23 = ptrtoint ptr %reg_max_lps_awakeintvl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg_max_lps_awakeintvl, align 2
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb27, %sw.bb26, %cond.end13.sw.epilog.thread_crit_edge
  %rlbm.0.ph = phi i8 [ 0, %cond.end13.sw.epilog.thread_crit_edge ], [ 1, %sw.bb26 ], [ 2, %sw.bb27 ]
  %awake_intvl.0.ph = phi i8 [ 2, %cond.end13.sw.epilog.thread_crit_edge ], [ 2, %sw.bb26 ], [ %24, %sw.bb27 ]
  %p2p129 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %25 = ptrtoint ptr %p2p129 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %p2p129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not130 = icmp eq i8 %26, 0
  %spec.select106131 = select i1 %tobool28.not130, i8 %rlbm.0.ph, i8 1
  %spec.select107132 = select i1 %tobool28.not130, i8 %awake_intvl.0.ph, i8 2
  br label %if.else

sw.epilog:                                        ; preds = %cond.end13
  %p2p = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 14
  %27 = ptrtoint ptr %p2p to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %p2p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  %spec.select106 = select i1 %tobool28.not, i8 2, i8 1
  %spec.select107 = select i1 %tobool28.not, i8 4, i8 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %cmp = icmp eq i8 %spec.select, 0
  br i1 %cmp, label %sw.epilog.u8p_replace_bits.exit_crit_edge, label %sw.epilog.if.else_crit_edge

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

sw.epilog.u8p_replace_bits.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8p_replace_bits.exit

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %sw.epilog.thread
  %spec.select107135 = phi i8 [ %spec.select107132, %sw.epilog.thread ], [ %spec.select107, %sw.epilog.if.else_crit_edge ]
  %spec.select106134 = phi i8 [ %spec.select106131, %sw.epilog.thread ], [ %spec.select106, %sw.epilog.if.else_crit_edge ]
  br i1 %cond, label %if.then35, label %if.else.u8p_replace_bits.exit_crit_edge

if.else.u8p_replace_bits.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8p_replace_bits.exit

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %btc_get_lps_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 25
  %29 = ptrtoint ptr %btc_get_lps_val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %btc_get_lps_val, align 4
  %call36 = tail call zeroext i8 %30(ptr noundef %1) #4
  %btc_get_rpwm_val = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 26
  %31 = ptrtoint ptr %btc_get_rpwm_val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %btc_get_rpwm_val, align 4
  %call37 = tail call zeroext i8 %32(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select106134)
  %cmp39 = icmp ne i8 %spec.select106134, 2
  %33 = and i8 %call36, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  %or.cond = select i1 %cmp39, i1 true, i1 %tobool42.not
  %spec.select108 = select i1 %or.cond, i8 %spec.select106134, i8 2
  %spec.select109 = select i1 %or.cond, i8 %spec.select107135, i8 2
  br label %u8p_replace_bits.exit

u8p_replace_bits.exit:                            ; preds = %if.then35, %if.else.u8p_replace_bits.exit_crit_edge, %sw.epilog.u8p_replace_bits.exit_crit_edge
  %rlbm.2 = phi i8 [ %spec.select106, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select106134, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select108, %if.then35 ]
  %power_state.0 = phi i8 [ 12, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 0, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call37, %if.then35 ]
  %byte5.0 = phi i8 [ 64, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ 64, %if.else.u8p_replace_bits.exit_crit_edge ], [ %call36, %if.then35 ]
  %awake_intvl.2 = phi i8 [ %spec.select107, %sw.epilog.u8p_replace_bits.exit_crit_edge ], [ %spec.select107135, %if.else.u8p_replace_bits.exit_crit_edge ], [ %spec.select109, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.select)
  %tobool49.not = icmp ne i8 %spec.select, 0
  %conv51 = zext i1 %tobool49.not to i8
  %34 = ptrtoint ptr %u1_h2c_set_pwrmode to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv51, ptr %u1_h2c_set_pwrmode, align 1
  %add.ptr = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 1
  br i1 %cond, label %u8p_replace_bits.exit.u8p_replace_bits.exit126_crit_edge, label %cond.false58

u8p_replace_bits.exit.u8p_replace_bits.exit126_crit_edge: ; preds = %u8p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8p_replace_bits.exit126

cond.false58:                                     ; preds = %u8p_replace_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  %smart_ps = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 41
  %35 = ptrtoint ptr %smart_ps to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %smart_ps, align 1
  %phi.bo = shl i8 %36, 4
  br label %u8p_replace_bits.exit126

u8p_replace_bits.exit126:                         ; preds = %cond.false58, %u8p_replace_bits.exit.u8p_replace_bits.exit126_crit_edge
  %cond61 = phi i8 [ %phi.bo, %cond.false58 ], [ 0, %u8p_replace_bits.exit.u8p_replace_bits.exit126_crit_edge ]
  %or.i125 = or i8 %cond61, %rlbm.2
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or.i125, ptr %add.ptr, align 1
  %add.ptr64 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 2
  %38 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %awake_intvl.2, ptr %add.ptr64, align 1
  %add.ptr66 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 3
  %39 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %add.ptr66, align 1
  %add.ptr68 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 4
  %40 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %power_state.0, ptr %add.ptr68, align 1
  %add.ptr70 = getelementptr inbounds i8, ptr %u1_h2c_set_pwrmode, i32 5
  %41 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %byte5.0, ptr %add.ptr70, align 1
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef nonnull %u1_h2c_set_pwrmode, i32 noundef 7) #4
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg, align 8
  %ops73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %ops73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops73, align 4
  %get_btc_status74 = getelementptr inbounds %struct.rtl_hal_ops, ptr %45, i32 0, i32 66
  %46 = ptrtoint ptr %get_btc_status74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_btc_status74, align 4
  %call75 = call zeroext i1 %47() #4
  br i1 %call75, label %if.then76, label %u8p_replace_bits.exit126.if.end78_crit_edge

u8p_replace_bits.exit126.if.end78_crit_edge:      ; preds = %u8p_replace_bits.exit126
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end78

if.then76:                                        ; preds = %u8p_replace_bits.exit126
  call void @__sanitizer_cov_trace_pc() #6
  %btc_record_pwr_mode = getelementptr inbounds %struct.rtl_btc_ops, ptr %5, i32 0, i32 24
  %48 = ptrtoint ptr %btc_record_pwr_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %btc_record_pwr_mode, align 4
  call void %49(ptr noundef %1, ptr noundef nonnull %u1_h2c_set_pwrmode, i8 noundef zeroext 7) #4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %u8p_replace_bits.exit126.if.end78_crit_edge
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 32, i32 noundef 7, ptr noundef nonnull %u1_h2c_set_pwrmode)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %u1_h2c_set_pwrmode) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_fw_media_status_rpt_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %mstatus) local_unnamed_addr #0 align 64 {
entry:
  %parm = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %parm) #4
  %0 = getelementptr inbounds i8, ptr %parm, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 0, ptr %0, align 1
  %2 = and i8 %mstatus, 1
  %3 = ptrtoint ptr %parm to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %parm, align 1
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 1, i32 noundef 3, ptr noundef nonnull %parm)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %parm) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_fw_rsvdpagepkt(ptr noundef %hw, i1 noundef zeroext %b_dl_finished) local_unnamed_addr #0 align 64 {
entry:
  %u1rsvdpageloc = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %mac80211 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %u1rsvdpageloc) #4
  %2 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %2, align 1
  %4 = ptrtoint ptr %mac80211 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mac80211, align 8
  store i8 %5, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 10), align 1
  %arrayidx5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  store i8 %7, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 11), align 1
  %arrayidx10 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 2
  store i8 %9, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 12), align 1
  %arrayidx15 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  store i8 %11, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 13), align 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 4
  store i8 %13, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 14), align 1
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  store i8 %15, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 15), align 1
  %bssid = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34
  %16 = ptrtoint ptr %bssid to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bssid, align 2
  store i8 %17, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 16), align 1
  %arrayidx34 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 1
  store i8 %19, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 17), align 1
  %arrayidx39 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 2
  store i8 %21, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 18), align 1
  %arrayidx44 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 3
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx44, align 1
  store i8 %23, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 19), align 1
  %arrayidx49 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 4
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 2
  store i8 %25, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 20), align 1
  %arrayidx54 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 34, i32 5
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  store i8 %27, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 21), align 1
  %assoc_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 52
  %28 = ptrtoint ptr %assoc_id to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %assoc_id, align 2
  %30 = or i16 %29, -16384
  store i16 %30, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 258), align 2
  %31 = load i32, ptr %bssid, align 4
  store i32 %31, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 260), align 4
  %32 = load i16, ptr %arrayidx49, align 2
  store i16 %32, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 264), align 2
  %33 = load i32, ptr %mac80211, align 4
  store i32 %33, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 266), align 4
  %34 = load i16, ptr %arrayidx20, align 2
  store i16 %34, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 270), align 2
  %add.ptr66 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 1
  %35 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %add.ptr66, align 1
  %36 = lshr i32 %31, 24
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 388), align 1
  %38 = load i8, ptr %arrayidx34, align 1
  store i8 %38, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 389), align 1
  %39 = load i8, ptr %arrayidx39, align 2
  store i8 %39, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 390), align 1
  %40 = load i8, ptr %arrayidx44, align 1
  store i8 %40, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 391), align 1
  %41 = load i8, ptr %arrayidx49, align 2
  store i8 %41, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 392), align 1
  %42 = load i8, ptr %arrayidx54, align 1
  store i8 %42, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 393), align 1
  %43 = lshr i32 %33, 24
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 394), align 1
  %45 = load i8, ptr %arrayidx5, align 1
  store i8 %45, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 395), align 1
  %46 = load i8, ptr %arrayidx10, align 2
  store i8 %46, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 396), align 1
  %47 = load i8, ptr %arrayidx15, align 1
  store i8 %47, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 397), align 1
  %48 = load i8, ptr %arrayidx20, align 4
  store i8 %48, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 398), align 1
  %49 = load i8, ptr %arrayidx25, align 1
  store i8 %49, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 399), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 400), align 1
  %50 = load i8, ptr %arrayidx34, align 1
  store i8 %50, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 401), align 1
  %51 = load i8, ptr %arrayidx39, align 2
  store i8 %51, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 402), align 1
  %52 = load i8, ptr %arrayidx44, align 1
  store i8 %52, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 403), align 1
  %53 = load i8, ptr %arrayidx49, align 2
  store i8 %53, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 404), align 1
  %54 = load i8, ptr %arrayidx54, align 1
  store i8 %54, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 405), align 1
  %add.ptr158 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 2
  %55 = ptrtoint ptr %add.ptr158 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %add.ptr158, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 516), align 1
  %56 = load i8, ptr %arrayidx34, align 1
  store i8 %56, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 517), align 1
  %57 = load i8, ptr %arrayidx39, align 2
  store i8 %57, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 518), align 1
  %58 = load i8, ptr %arrayidx44, align 1
  store i8 %58, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 519), align 1
  %59 = load i8, ptr %arrayidx49, align 2
  store i8 %59, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 520), align 1
  %60 = load i8, ptr %arrayidx54, align 1
  store i8 %60, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 521), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 522), align 1
  %61 = load i8, ptr %arrayidx5, align 1
  store i8 %61, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 523), align 1
  %62 = load i8, ptr %arrayidx10, align 2
  store i8 %62, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 524), align 1
  %63 = load i8, ptr %arrayidx15, align 1
  store i8 %63, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 525), align 1
  %64 = load i8, ptr %arrayidx20, align 4
  store i8 %64, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 526), align 1
  %65 = load i8, ptr %arrayidx25, align 1
  store i8 %65, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 527), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 528), align 1
  %66 = load i8, ptr %arrayidx34, align 1
  store i8 %66, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 529), align 1
  %67 = load i8, ptr %arrayidx39, align 2
  store i8 %67, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 530), align 1
  %68 = load i8, ptr %arrayidx44, align 1
  store i8 %68, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 531), align 1
  %69 = load i8, ptr %arrayidx49, align 2
  store i8 %69, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 532), align 1
  %70 = load i8, ptr %arrayidx54, align 1
  store i8 %70, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 533), align 1
  %71 = ptrtoint ptr %u1rsvdpageloc to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 4, ptr %u1rsvdpageloc, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 772), align 1
  %72 = load i8, ptr %arrayidx34, align 1
  store i8 %72, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 773), align 1
  %73 = load i8, ptr %arrayidx39, align 2
  store i8 %73, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 774), align 1
  %74 = load i8, ptr %arrayidx44, align 1
  store i8 %74, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 775), align 1
  %75 = load i8, ptr %arrayidx49, align 2
  store i8 %75, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 776), align 1
  %76 = load i8, ptr %arrayidx54, align 1
  store i8 %76, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 777), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 778), align 1
  %77 = load i8, ptr %arrayidx5, align 1
  store i8 %77, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 779), align 1
  %78 = load i8, ptr %arrayidx10, align 2
  store i8 %78, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 780), align 1
  %79 = load i8, ptr %arrayidx15, align 1
  store i8 %79, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 781), align 1
  %80 = load i8, ptr %arrayidx20, align 4
  store i8 %80, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 782), align 1
  %81 = load i8, ptr %arrayidx25, align 1
  store i8 %81, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 783), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 784), align 1
  %82 = load i8, ptr %arrayidx34, align 1
  store i8 %82, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 785), align 1
  %83 = load i8, ptr %arrayidx39, align 2
  store i8 %83, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 786), align 1
  %84 = load i8, ptr %arrayidx44, align 1
  store i8 %84, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 787), align 1
  %85 = load i8, ptr %arrayidx49, align 2
  store i8 %85, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 788), align 1
  %86 = load i8, ptr %arrayidx54, align 1
  store i8 %86, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 789), align 1
  %add.ptr341 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 3
  %87 = ptrtoint ptr %add.ptr341 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 6, ptr %add.ptr341, align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 900), align 1
  %88 = load i8, ptr %arrayidx34, align 1
  store i8 %88, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 901), align 1
  %89 = load i8, ptr %arrayidx39, align 2
  store i8 %89, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 902), align 1
  %90 = load i8, ptr %arrayidx44, align 1
  store i8 %90, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 903), align 1
  %91 = load i8, ptr %arrayidx49, align 2
  store i8 %91, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 904), align 1
  %92 = load i8, ptr %arrayidx54, align 1
  store i8 %92, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 905), align 1
  store i8 %44, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 906), align 1
  %93 = load i8, ptr %arrayidx5, align 1
  store i8 %93, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 907), align 1
  %94 = load i8, ptr %arrayidx10, align 2
  store i8 %94, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 908), align 1
  %95 = load i8, ptr %arrayidx15, align 1
  store i8 %95, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 909), align 1
  %96 = load i8, ptr %arrayidx20, align 4
  store i8 %96, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 910), align 1
  %97 = load i8, ptr %arrayidx25, align 1
  store i8 %97, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 911), align 1
  store i8 %37, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 912), align 1
  %98 = load i8, ptr %arrayidx34, align 1
  store i8 %98, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 913), align 1
  %99 = load i8, ptr %arrayidx39, align 2
  store i8 %99, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 914), align 1
  %100 = load i8, ptr %arrayidx44, align 1
  store i8 %100, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 915), align 1
  %101 = load i8, ptr %arrayidx49, align 2
  store i8 %101, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 916), align 1
  %102 = load i8, ptr %arrayidx54, align 1
  store i8 %102, ptr getelementptr inbounds (<{ [918 x i8], [106 x i8] }>, ptr @reserved_page_packet, i32 0, i32 0, i32 917), align 1
  %add.ptr433 = getelementptr inbounds i8, ptr %u1rsvdpageloc, i32 4
  %103 = ptrtoint ptr %add.ptr433 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 7, ptr %add.ptr433, align 1
  tail call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.4, ptr noundef nonnull @reserved_page_packet, i32 noundef 1024) #4
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 5) #4
  %call.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1024, i32 noundef 2592) #4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1024) #4
  %104 = call ptr @memcpy(ptr %call.i, ptr @reserved_page_packet, i32 1024)
  %call436 = call zeroext i1 @rtl_cmd_send_packet(ptr noundef %hw, ptr noundef nonnull %call.i.i) #4
  br i1 %call436, label %if.then442, label %if.else

if.then442:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.5) #4
  call void @_rtl_dbg_print_data(ptr noundef %1, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.6, ptr noundef nonnull %u1rsvdpageloc, i32 noundef 5) #4
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 0, i32 noundef 5, ptr noundef nonnull %u1rsvdpageloc)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then442, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %u1rsvdpageloc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_cmd_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_set_p2p_ps_offload_cmd(ptr nocapture noundef readonly %hw, i8 noundef zeroext %p2p_ps_state) local_unnamed_addr #0 align 64 {
entry:
  %u1_ctwindow_period.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %p2p_ps_offload4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 46
  %2 = zext i8 %p2p_ps_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %p2p_ps_state, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb91
    i8 3, label %sw.bb95
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.8) #4
  %3 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.9) #4
  %ctwindow6 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 3
  %4 = ptrtoint ptr %ctwindow6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctwindow6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %sw.bb5.if.end_crit_edge, label %if.then

sw.bb5.if.end_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %p2p_ps_offload4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #4
  %7 = ptrtoint ptr %u1_ctwindow_period.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %u1_ctwindow_period.i, align 1
  call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 67, i32 noundef 1, ptr noundef nonnull %u1_ctwindow_period.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u1_ctwindow_period.i) #4
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
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void %12(ptr noundef %1, i32 noundef 1487, i8 noundef zeroext %shl) #4
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_readback.i, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %for.body.rtl_write_byte.exit_crit_edge, label %if.then.i

for.body.rtl_write_byte.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 1487) #4
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
  tail call void %23(ptr noundef %1, i32 noundef 1504, i32 noundef %21) #4
  %24 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg.i, align 8
  %write_readback.i154 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %write_readback.i154 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %write_readback.i154, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i155 = icmp eq i8 %27, 0
  br i1 %tobool.not.i155, label %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge, label %if.then.i157

rtl_write_byte.exit.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit

if.then.i157:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read32_sync.i, align 4
  %call.i156 = tail call i32 %29(ptr noundef %1, i32 noundef 1504) #4
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i157, %rtl_write_byte.exit.rtl_write_dword.exit_crit_edge
  %arrayidx30 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 39, i32 8, i32 %indvars.iv
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx30, align 4
  %32 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32_async.i, align 4
  tail call void %33(ptr noundef %1, i32 noundef 1508, i32 noundef %31) #4
  %34 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i, align 8
  %write_readback.i160 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i160 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i160, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i161 = icmp eq i8 %37, 0
  br i1 %tobool.not.i161, label %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge, label %if.then.i164

rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit165

if.then.i164:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read32_sync.i, align 4
  %call.i163 = tail call i32 %39(ptr noundef %1, i32 noundef 1508) #4
  br label %rtl_write_dword.exit165

rtl_write_dword.exit165:                          ; preds = %if.then.i164, %rtl_write_dword.exit.rtl_write_dword.exit165_crit_edge
  %40 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32_sync.i, align 4
  %call.i167 = tail call i32 %41(ptr noundef %1, i32 noundef 1376) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

while.cond.preheader:                             ; preds = %rtl_write_dword.exit165
  %add = add i32 %call.i167, 51200
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add)
  %cmp39.not192 = icmp ugt i32 %43, %add
  br i1 %cmp39.not192, label %while.cond.preheader.if.end56_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end56_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end55.if.end56_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.end56:                                         ; preds = %if.end55.if.end56_crit_edge, %while.cond.preheader.if.end56_crit_edge, %rtl_write_dword.exit165.if.end56_crit_edge
  %start_time.1 = phi i32 [ %43, %rtl_write_dword.exit165.if.end56_crit_edge ], [ %43, %while.cond.preheader.if.end56_crit_edge ], [ %add44, %if.end55.if.end56_crit_edge ]
  %52 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write32_async.i, align 4
  tail call void %53(ptr noundef %1, i32 noundef 1512, i32 noundef %start_time.1) #4
  %54 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i, align 8
  %write_readback.i170 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_readback.i170 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %write_readback.i170, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i171 = icmp eq i8 %57, 0
  br i1 %tobool.not.i171, label %if.end56.rtl_write_dword.exit175_crit_edge, label %if.then.i174

if.end56.rtl_write_dword.exit175_crit_edge:       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit175

if.then.i174:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read32_sync.i, align 4
  %call.i173 = tail call i32 %59(ptr noundef %1, i32 noundef 1512) #4
  br label %rtl_write_dword.exit175

rtl_write_dword.exit175:                          ; preds = %if.then.i174, %if.end56.rtl_write_dword.exit175_crit_edge
  %60 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx34, align 1
  %conv60 = zext i8 %61 to i32
  %62 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write32_async.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 1516, i32 noundef %conv60) #4
  %64 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i, align 8
  %write_readback.i178 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i178 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i178, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i179 = icmp eq i8 %67, 0
  br i1 %tobool.not.i179, label %rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge, label %if.then.i182

rtl_write_dword.exit175.rtl_write_dword.exit183_crit_edge: ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_dword.exit183

if.then.i182:                                     ; preds = %rtl_write_dword.exit175
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read32_sync.i, align 4
  %call.i181 = tail call i32 %69(ptr noundef %1, i32 noundef 1516) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.loopexit:                                 ; preds = %rtl_write_dword.exit183
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then68:                                        ; preds = %for.end
  %write8_async.i184 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %75 = ptrtoint ptr %write8_async.i184 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write8_async.i184, align 4
  tail call void %76(ptr noundef %1, i32 noundef 1363, i8 noundef zeroext 16) #4
  %cfg.i185 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i185 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i185, align 8
  %write_readback.i186 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i186 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i186, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i187 = icmp eq i8 %80, 0
  br i1 %tobool.not.i187, label %if.then68.rtl_write_byte.exit191_crit_edge, label %if.then.i190

if.then68.rtl_write_byte.exit191_crit_edge:       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl_write_byte.exit191

if.then.i190:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  %read8_sync.i188 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i188 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i188, align 4
  %call.i189 = tail call zeroext i8 %82(ptr noundef %1, i32 noundef 1363) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.10) #4
  %87 = ptrtoint ptr %p2p_ps_offload4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load92 = load i8, ptr %p2p_ps_offload4, align 1
  %bf.set94 = or i8 %bf.load92, 2
  store i8 %bf.set94, ptr %p2p_ps_offload4, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.11) #4
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
  tail call void @rtl8723be_fill_h2c_cmd(ptr noundef %hw, i8 noundef zeroext 36, i32 noundef 1, ptr noundef %p2p_ps_offload4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 204, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 232, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 293, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 557, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 575, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 577, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 582, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 610, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 614, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 671, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 675, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 44, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 49, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 57, i32 5}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 78, i32 4}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @_rtl8723be_fill_h2c_command._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @_rtl8723be_fill_h2c_command._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 101, i32 4}
!37 = !{ptr @_rtl8723be_fill_h2c_command._entry.17, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @_rtl8723be_fill_h2c_command._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 110, i32 5}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 121, i32 4}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 127, i32 4}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 136, i32 3}
!47 = !{ptr @_rtl8723be_fill_h2c_command._entry.24, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 174, i32 4}
!49 = !{ptr @_rtl8723be_fill_h2c_command._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 185, i32 3}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 194, i32 2}
!54 = !{ptr @reserved_page_packet, !55, !"reserved_page_packet", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/fw.c", i32 327, i32 11}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
!66 = !{!"branch_weights", i32 2000, i32 1}
