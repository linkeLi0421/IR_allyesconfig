; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c"
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
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@RTL8192CEAGCTAB_2TARRAY = external dso_local local_unnamed_addr global [320 x i32], align 4
@RTL8192CEPHY_REG_2TARRAY = external dso_local local_unnamed_addr global [374 x i32], align 4
@RTL8192CEAGCTAB_1TARRAY = external dso_local local_unnamed_addr global [320 x i32], align 4
@RTL8192CEPHY_REG_1TARRAY = external dso_local local_unnamed_addr global [374 x i32], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@RTL8192CEPHY_REG_ARRAY_PG = external dso_local local_unnamed_addr global [192 x i32], align 4
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", [57 x i8] zeroinitializer }, align 32
@RTL8192CERADIOA_2TARRAY = external dso_local local_unnamed_addr global [282 x i32], align 4
@RTL8192CE_RADIOB_2TARRAY = external dso_local local_unnamed_addr global [78 x i32], align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Radio_A:RTL8192CERADIOA_2TARRAY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_B:RTL8192CE_RADIOB_2TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@RTL8192CE_RADIOA_1TARRAY = external dso_local local_unnamed_addr global [282 x i32], align 4
@RTL8192CE_RADIOB_1TARRAY = external dso_local local_unnamed_addr global [1 x i32], align 4
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_A:RTL8192CE_RADIOA_1TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_B:RTL8192CE_RADIOB_1TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92c_phy_config_rf_with_headerfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016rtl8192ce: Incorrect rfpath %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rtl92c_phy_config_rf_with_headerfile\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl92c_phy_config_rf_with_headerfile._entry_ptr = internal global ptr @rtl92c_phy_config_rf_with_headerfile._entry, section ".printk_index", align 4
@rtl92c_phy_config_rf_with_headerfile._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016rtl8192ce: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@rtl92c_phy_config_rf_with_headerfile._entry_ptr.16 = internal global ptr @rtl92c_phy_config_rf_with_headerfile._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl92ce_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.13, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016rtl8192ce: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92ce_phy_set_bw_mode_callback\00", [63 x i8] zeroinitializer }, align 32
@rtl92ce_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl92ce_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl92ce_phy_set_bw_mode_callback._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.13, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192ce: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@rtl92ce_phy_set_bw_mode_callback._entry_ptr.24 = internal global ptr @rtl92ce_phy_set_bw_mode_callback._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<==\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read Rtl819XMACPHY_Array\0A\00", [38 x i8] zeroinitializer }, align 32
@RTL8192CEMAC_2T_ARRAY = external dso_local local_unnamed_addr global [162 x i32], align 4
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Img:RTL8192CEMAC_2T_ARRAY\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set ERFON slept:%d ms\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92ce_phy_set_rf_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.13, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192ce: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl92ce_phy_set_rf_power_state\00", [32 x i8] zeroinitializer }, align 32
@_rtl92ce_phy_set_rf_power_state._entry_ptr = internal global ptr @_rtl92ce_phy_set_rf_power_state._entry, section ".printk_index", align 4
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Switch RF timeout !!!\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 28, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 47, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 102, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 183, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 193, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 224, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 246, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 248, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 255, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 257, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 260, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 278, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 281, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 296, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 321, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 345, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 351, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 147, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 150, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 449, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 456, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 474, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 500, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 509, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 517, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 526, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 421, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @_rtl92ce_phy_set_rf_power_state._entry, ptr @_rtl92ce_phy_set_rf_power_state._entry_ptr, ptr @rtl92c_phy_config_rf_with_headerfile._entry, ptr @rtl92c_phy_config_rf_with_headerfile._entry.14, ptr @rtl92c_phy_config_rf_with_headerfile._entry_ptr, ptr @rtl92c_phy_config_rf_with_headerfile._entry_ptr.16, ptr @rtl92ce_phy_set_bw_mode_callback._entry, ptr @rtl92ce_phy_set_bw_mode_callback._entry.22, ptr @rtl92ce_phy_set_bw_mode_callback._entry_ptr, ptr @rtl92ce_phy_set_bw_mode_callback._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_phy_config_rf_with_headerfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92c_phy_config_rf_with_headerfile._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ce_phy_set_bw_mode_callback._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ce_phy_set_rf_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92c_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #3
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #3
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @_rtl92c_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @_rtl92c_phy_fw_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %original_value.0 = phi i32 [ %call, %if.then ], [ %call2, %if.else ]
  %call3 = tail call i32 @_rtl92c_phy_calculate_bit_shift(i32 noundef %bitmask) #3
  %and = and i32 %original_value.0, %bitmask
  %shr = lshr i32 %and, %call3
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %original_value.0) #3
  ret i32 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtl92c_phy_rf_serial_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtl92c_phy_fw_rf_serial_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_rtl92c_phy_calculate_bit_shift(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %and = and i32 %3, 3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.26) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.27) #3
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %add2.i, %rtl_write_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8192CEMAC_2T_ARRAY, i32 %i.01.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.01.i, 1
  %arrayidx1.i = getelementptr i32, ptr @RTL8192CEMAC_2T_ARRAY, i32 %add.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  %conv.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %5, i8 noundef zeroext %conv.i) #3
  %10 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %write_readback.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.body.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %15(ptr noundef %1, i32 noundef %5) #3
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.body.i.rtl_write_byte.exit.i_crit_edge
  %add2.i = add nuw nsw i32 %i.01.i, 2
  %cmp.i = icmp ult i32 %i.01.i, 160
  br i1 %cmp.i, label %rtl_write_byte.exit.i.for.body.i_crit_edge, label %_rtl92c_phy_config_mac_with_headerfile.exit

rtl_write_byte.exit.i.for.body.i_crit_edge:       ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

_rtl92c_phy_config_mac_with_headerfile.exit:      ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %16 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8_async.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_rtl92c_phy_config_mac_with_headerfile.exit
  tail call void %17(ptr noundef %1, i32 noundef 20, i8 noundef zeroext 113) #3
  %18 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.else:                                          ; preds = %_rtl92c_phy_config_mac_with_headerfile.exit
  tail call void %17(ptr noundef %1, i32 noundef 1226, i8 noundef zeroext 10) #3
  %22 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i13 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i13, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i14 = icmp eq i8 %25, 0
  br i1 %tobool.not.i14, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 20, %if.then.if.end.sink.split_crit_edge ], [ 1226, %if.else.if.end.sink.split_crit_edge ]
  %26 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i16 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef %.sink) #3
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @_rtl92c_phy_init_bb_rf_register_definition(ptr noundef %hw) #3
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %2 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %3(ptr noundef %1, i32 noundef 2) #3
  %4 = or i16 %call.i, 8195
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %5 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write16_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %4) #3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read16_sync.i, align 4
  %call.i20 = tail call zeroext i16 %12(ptr noundef %1, i32 noundef 2) #3
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %13 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write8_async.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef 40, i8 noundef zeroext -125) #3
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %write_readback.i22 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %write_readback.i22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %write_readback.i22, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i23 = icmp eq i8 %18, 0
  br i1 %tobool.not.i23, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i25

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit

if.then.i25:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %19 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read8_sync.i, align 4
  %call.i24 = tail call zeroext i8 %20(ptr noundef %1, i32 noundef 40) #3
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i25, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %21 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef 41, i8 noundef zeroext -37) #3
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 8
  %write_readback.i28 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i28, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i29 = icmp eq i8 %26, 0
  br i1 %tobool.not.i29, label %rtl_write_byte.exit.rtl_write_byte.exit33_crit_edge, label %if.then.i32

rtl_write_byte.exit.rtl_write_byte.exit33_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit33

if.then.i32:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i30 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %27 = ptrtoint ptr %read8_sync.i30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i30, align 4
  %call.i31 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 41) #3
  br label %rtl_write_byte.exit33

rtl_write_byte.exit33:                            ; preds = %if.then.i32, %rtl_write_byte.exit.rtl_write_byte.exit33_crit_edge
  %29 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #3
  %31 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i, align 8
  %write_readback.i36 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i36 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i36, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i37 = icmp eq i8 %34, 0
  br i1 %tobool.not.i37, label %rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge, label %if.then.i40

rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge: ; preds = %rtl_write_byte.exit33
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit41

if.then.i40:                                      ; preds = %rtl_write_byte.exit33
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i38 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %35 = ptrtoint ptr %read8_sync.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i38, align 4
  %call.i39 = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 31) #3
  br label %rtl_write_byte.exit41

rtl_write_byte.exit41:                            ; preds = %if.then.i40, %rtl_write_byte.exit33.rtl_write_byte.exit41_crit_edge
  %37 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write8_async.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -29) #3
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i44, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i45 = icmp eq i8 %42, 0
  br i1 %tobool.not.i45, label %rtl_write_byte.exit41.rtl_write_byte.exit49_crit_edge, label %if.then.i48

rtl_write_byte.exit41.rtl_write_byte.exit49_crit_edge: ; preds = %rtl_write_byte.exit41
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit49

if.then.i48:                                      ; preds = %rtl_write_byte.exit41
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i46 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %43 = ptrtoint ptr %read8_sync.i46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read8_sync.i46, align 4
  %call.i47 = tail call zeroext i8 %44(ptr noundef %1, i32 noundef 2) #3
  br label %rtl_write_byte.exit49

rtl_write_byte.exit49:                            ; preds = %if.then.i48, %rtl_write_byte.exit41.rtl_write_byte.exit49_crit_edge
  %45 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write8_async.i, align 4
  tail call void %46(ptr noundef %1, i32 noundef 37, i8 noundef zeroext -128) #3
  %47 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i, align 8
  %write_readback.i52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i52 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i52, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i53 = icmp eq i8 %50, 0
  br i1 %tobool.not.i53, label %rtl_write_byte.exit49.rtl_write_byte.exit57_crit_edge, label %if.then.i56

rtl_write_byte.exit49.rtl_write_byte.exit57_crit_edge: ; preds = %rtl_write_byte.exit49
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit57

if.then.i56:                                      ; preds = %rtl_write_byte.exit49
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i54 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %51 = ptrtoint ptr %read8_sync.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read8_sync.i54, align 4
  %call.i55 = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 37) #3
  br label %rtl_write_byte.exit57

rtl_write_byte.exit57:                            ; preds = %if.then.i56, %rtl_write_byte.exit49.rtl_write_byte.exit57_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %53 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32_sync.i, align 4
  %call.i58 = tail call i32 %54(ptr noundef %1, i32 noundef 76) #3
  %or5 = or i32 %call.i58, 8388608
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %55 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write32_async.i, align 4
  tail call void %56(ptr noundef %1, i32 noundef 76, i32 noundef %or5) #3
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i, align 8
  %write_readback.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i60 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i60, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i61 = icmp eq i8 %60, 0
  br i1 %tobool.not.i61, label %rtl_write_byte.exit57.rtl_write_dword.exit_crit_edge, label %if.then.i64

rtl_write_byte.exit57.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit57
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_dword.exit

if.then.i64:                                      ; preds = %rtl_write_byte.exit57
  call void @__sanitizer_cov_trace_pc() #5
  %61 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32_sync.i, align 4
  %call.i63 = tail call i32 %62(ptr noundef %1, i32 noundef 76) #3
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i64, %rtl_write_byte.exit57.rtl_write_dword.exit_crit_edge
  %call8 = tail call zeroext i1 @_rtl92c_phy_bb8192c_config_parafile(ptr noundef %hw) #3
  ret i1 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_init_bb_rf_register_definition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92c_phy_bb8192c_config_parafile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #3
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #3
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %bitmask)
  %cmp6.not = icmp eq i32 %bitmask, 1048575
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp6.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @_rtl92c_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #3
  %call5 = tail call i32 @_rtl92c_phy_calculate_bit_shift(i32 noundef %bitmask) #3
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %data, %call5
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then4 ], [ %data, %if.then.if.end_crit_edge ]
  tail call void @_rtl92c_phy_rf_serial_write(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %data.addr.0) #3
  br label %if.end16

if.else:                                          ; preds = %entry
  br i1 %cmp6.not, label %if.else.if.end15_crit_edge, label %if.then8

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @_rtl92c_phy_fw_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #3
  %call10 = tail call i32 @_rtl92c_phy_calculate_bit_shift(i32 noundef %bitmask) #3
  %neg11 = xor i32 %bitmask, -1
  %and12 = and i32 %call9, %neg11
  %shl13 = shl i32 %data, %call10
  %or14 = or i32 %shl13, %and12
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.else.if.end15_crit_edge
  %data.addr.1 = phi i32 [ %or14, %if.then8 ], [ %data, %if.else.if.end15_crit_edge ]
  tail call void @_rtl92c_phy_fw_rf_serial_write(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %data.addr.1) #3
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %data.addr.2 = phi i32 [ %data.addr.0, %if.end ], [ %data.addr.1, %if.end15 ]
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.2, i32 noundef %rfpath) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_fw_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_rtl92ce_phy_config_bb_with_headerfile(ptr noundef %hw, i8 noundef zeroext %configtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %RTL8192CEPHY_REG_2TARRAY.RTL8192CEPHY_REG_1TARRAY = select i1 %cmp, ptr @RTL8192CEPHY_REG_2TARRAY, ptr @RTL8192CEPHY_REG_1TARRAY
  %RTL8192CEAGCTAB_2TARRAY.RTL8192CEAGCTAB_1TARRAY = select i1 %cmp, ptr @RTL8192CEAGCTAB_2TARRAY, ptr @RTL8192CEAGCTAB_1TARRAY
  %4 = zext i8 %configtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %configtype, label %entry.if.end37_crit_edge [
    i8 0, label %entry.for.body_crit_edge
    i8 1, label %entry.for.body26_crit_edge
  ]

entry.for.body26_crit_edge:                       ; preds = %entry
  br label %for.body26

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.068 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %RTL8192CEPHY_REG_2TARRAY.RTL8192CEPHY_REG_1TARRAY, i32 %i.068
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  tail call void @rtl_addr_delay(i32 noundef %6) #3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = or i32 %i.068, 1
  %arrayidx12 = getelementptr i32, ptr %RTL8192CEPHY_REG_2TARRAY.RTL8192CEPHY_REG_1TARRAY, i32 %add
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %12, i32 0, i32 32
  %13 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %18(ptr noundef %hw, i32 noundef %8, i32 noundef -1, i32 noundef %10) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %21, i32 noundef %23) #3
  %add16 = add nuw nsw i32 %i.068, 2
  %cmp9 = icmp ult i32 %i.068, 372
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %entry.for.body26_crit_edge
  %i.167 = phi i32 [ %add34, %for.body26.for.body26_crit_edge ], [ 0, %entry.for.body26_crit_edge ]
  %arrayidx27 = getelementptr i32, ptr %RTL8192CEAGCTAB_2TARRAY.RTL8192CEAGCTAB_1TARRAY, i32 %i.167
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx27, align 4
  %add28 = or i32 %i.167, 1
  %arrayidx29 = getelementptr i32, ptr %RTL8192CEAGCTAB_2TARRAY.RTL8192CEAGCTAB_1TARRAY, i32 %add28
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx29, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %cfg.i63 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i63, align 8
  %ops.i64 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ops.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i64, align 4
  %set_bbreg.i65 = getelementptr inbounds %struct.rtl_hal_ops, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %set_bbreg.i65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_bbreg.i65, align 4
  tail call void %35(ptr noundef %hw, i32 noundef %25, i32 noundef -1, i32 noundef %27) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #3
  %37 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx27, align 4
  %39 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx29, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef %38, i32 noundef %40) #3
  %add34 = add nuw nsw i32 %i.167, 2
  %cmp24 = icmp ult i32 %i.167, 318
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.if.end37_crit_edge

for.body26.if.end37_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body26

if.end37:                                         ; preds = %for.body26.if.end37_crit_edge, %for.body.if.end37_crit_edge, %entry.if.end37_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_addr_delay(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_rtl92ce_phy_config_bb_with_pgheaderfile(ptr noundef %hw, i8 noundef zeroext %configtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %configtype)
  %cmp = icmp eq i8 %configtype, 0
  br i1 %cmp, label %entry.for.body_crit_edge, label %if.else

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @RTL8192CEPHY_REG_ARRAY_PG, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  tail call void @rtl_addr_delay(i32 noundef %1) #3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.019, 1
  %arrayidx6 = getelementptr i32, ptr @RTL8192CEPHY_REG_ARRAY_PG, i32 %add
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %add7 = add nuw nsw i32 %i.019, 2
  %arrayidx8 = getelementptr i32, ptr @RTL8192CEPHY_REG_ARRAY_PG, i32 %add7
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx8, align 4
  tail call void @_rtl92c_store_pwrindex_diffrate_offset(ptr noundef %hw, i32 noundef %3, i32 noundef %5, i32 noundef %7) #3
  %add9 = add nuw nsw i32 %i.019, 3
  %cmp3 = icmp ult i32 %i.019, 189
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %9, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.5) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_store_pwrindex_diffrate_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %.str.6..str.8 = select i1 %cmp, ptr @.str.6, ptr @.str.8
  %.str.7..str.9 = select i1 %cmp, ptr @.str.7, ptr @.str.9
  %. = select i1 %cmp, i32 78, i32 1
  %RTL8192CE_RADIOB_2TARRAY.RTL8192CE_RADIOB_1TARRAY = select i1 %cmp, ptr @RTL8192CE_RADIOB_2TARRAY, ptr @RTL8192CE_RADIOB_1TARRAY
  %RTL8192CERADIOA_2TARRAY.RTL8192CE_RADIOA_1TARRAY = select i1 %cmp, ptr @RTL8192CERADIOA_2TARRAY, ptr @RTL8192CE_RADIOA_1TARRAY
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.6..str.8) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.7..str.9) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %rfpath) #3
  %4 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %rfpath, label %do.end24 [
    i32 0, label %entry.for.body_crit_edge
    i32 1, label %entry.for.body14_crit_edge
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %entry.sw.epilog.sink.split_crit_edge55
  ]

entry.sw.epilog.sink.split_crit_edge55:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

entry.for.body14_crit_edge:                       ; preds = %entry
  br label %for.body14

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.050 = phi i32 [ %add8, %for.body.for.body_crit_edge ], [ %rfpath, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %RTL8192CERADIOA_2TARRAY.RTL8192CE_RADIOA_1TARRAY, i32 %i.050
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = or i32 %i.050, 1
  %arrayidx7 = getelementptr i32, ptr %RTL8192CERADIOA_2TARRAY.RTL8192CE_RADIOA_1TARRAY, i32 %add
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 0, i32 noundef %6, i32 noundef 1048575, i32 noundef %8) #3
  %add8 = add nuw nsw i32 %i.050, 2
  %cmp5 = icmp ult i32 %i.050, 280
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %entry.for.body14_crit_edge
  %i.149 = phi i32 [ %add19, %for.body14.for.body14_crit_edge ], [ 0, %entry.for.body14_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %RTL8192CE_RADIOB_2TARRAY.RTL8192CE_RADIOB_1TARRAY, i32 %i.149
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  %add16 = or i32 %i.149, 1
  %arrayidx17 = getelementptr i32, ptr %RTL8192CE_RADIOB_2TARRAY.RTL8192CE_RADIOB_1TARRAY, i32 %add16
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx17, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 1, i32 noundef %10, i32 noundef 1048575, i32 noundef %12) #3
  %add19 = add nuw nsw i32 %i.149, 2
  %cmp12 = icmp ult i32 %add19, %.
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.sw.epilog_crit_edge

for.body14.sw.epilog_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body14

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end24, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge55
  %.str.15.sink = phi ptr [ @.str.15, %do.end24 ], [ @.str.11, %entry.sw.epilog.sink.split_crit_edge ], [ @.str.11, %entry.sw.epilog.sink.split_crit_edge55 ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, i32 noundef %rfpath) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body14.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_rfreg_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ce_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %2 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_chan_bw, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %cond = select i1 %cmp, ptr @.str.18, ptr @.str.19
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #3
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %set_bwmode_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %set_bwmode_inprogress, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %7 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 1539) #3
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 1090) #3
  %11 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_chan_bw, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %12, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  %14 = or i8 %call.i, 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %14) #3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i87 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1539) #3
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %23 = and i8 %call.i, -5
  %write8_async.i88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %write8_async.i88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i88, align 4
  tail call void %25(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %23) #3
  %cfg.i89 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i89, align 8
  %write_readback.i90 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i90 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i90, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i91 = icmp eq i8 %29, 0
  br i1 %tobool.not.i91, label %sw.bb11.rtl_write_byte.exit95_crit_edge, label %if.then.i94

sw.bb11.rtl_write_byte.exit95_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit95

if.then.i94:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #5
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i93 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 1539) #3
  br label %rtl_write_byte.exit95

rtl_write_byte.exit95:                            ; preds = %if.then.i94, %sw.bb11.rtl_write_byte.exit95_crit_edge
  %32 = and i8 %call.i85, -112
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %33 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %34, 5
  %or17 = or i8 %shl, %32
  %35 = ptrtoint ptr %write8_async.i88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i88, align 4
  tail call void %36(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %or17) #3
  %37 = ptrtoint ptr %cfg.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i89, align 8
  %write_readback.i98 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i98 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i98, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i99 = icmp eq i8 %40, 0
  br i1 %tobool.not.i99, label %rtl_write_byte.exit95.sw.epilog_crit_edge, label %if.then.i102

rtl_write_byte.exit95.sw.epilog_crit_edge:        ; preds = %rtl_write_byte.exit95
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i102:                                     ; preds = %rtl_write_byte.exit95
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i, align 4
  %call.i101 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 1090) #3
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %conv8 = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i102, %rtl_write_byte.exit95.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %44, label %do.end38 [
    i8 0, label %sw.bb24
    i8 1, label %sw.bb25
  ]

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i104 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i104, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #3
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i106 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i106, align 8
  %ops.i107 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i107, align 4
  %set_bbreg.i108 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %set_bbreg.i108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bbreg.i108, align 4
  tail call void %61(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #3
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i110 = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i110, align 8
  %ops.i111 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i111, align 4
  %set_bbreg.i112 = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i112 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i112, align 4
  tail call void %69(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 1) #3
  br label %sw.epilog43

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i114 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i114, align 8
  %ops.i115 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i115 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i115, align 4
  %set_bbreg.i116 = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i116 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i116, align 4
  tail call void %77(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #3
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %cfg.i118 = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i118 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i118, align 8
  %ops.i119 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i119, align 4
  %set_bbreg.i120 = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %set_bbreg.i120 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_bbreg.i120, align 4
  tail call void %85(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #3
  %cur_40_prime_sc26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %86 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cur_40_prime_sc26, align 1
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i32
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %cfg.i122 = getelementptr inbounds %struct.rtl_priv, ptr %91, i32 0, i32 32
  %92 = ptrtoint ptr %cfg.i122 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i122, align 8
  %ops.i123 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ops.i123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i123, align 4
  %set_bbreg.i124 = getelementptr inbounds %struct.rtl_hal_ops, ptr %95, i32 0, i32 46
  %96 = ptrtoint ptr %set_bbreg.i124 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_bbreg.i124, align 4
  tail call void %97(ptr noundef %hw, i32 noundef 2560, i32 noundef 16, i32 noundef %89) #3
  %98 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_40_prime_sc26, align 1
  %conv29 = zext i8 %99 to i32
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %cfg.i126 = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %102 = ptrtoint ptr %cfg.i126 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i126, align 8
  %ops.i127 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %ops.i127 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i127, align 4
  %set_bbreg.i128 = getelementptr inbounds %struct.rtl_hal_ops, ptr %105, i32 0, i32 46
  %106 = ptrtoint ptr %set_bbreg.i128 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_bbreg.i128, align 4
  tail call void %107(ptr noundef %hw, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv29) #3
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %cfg.i130 = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %110 = ptrtoint ptr %cfg.i130 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i130, align 8
  %ops.i131 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %ops.i131 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i131, align 4
  %set_bbreg.i132 = getelementptr inbounds %struct.rtl_hal_ops, ptr %113, i32 0, i32 46
  %114 = ptrtoint ptr %set_bbreg.i132 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set_bbreg.i132, align 4
  tail call void %115(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 0) #3
  %116 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %cur_40_prime_sc26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %117)
  %cmp32 = icmp eq i8 %117, 1
  %cond34 = select i1 %cmp32, i32 2, i32 1
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 8
  %cfg.i134 = getelementptr inbounds %struct.rtl_priv, ptr %119, i32 0, i32 32
  %120 = ptrtoint ptr %cfg.i134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i134, align 8
  %ops.i135 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %ops.i135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i135, align 4
  %set_bbreg.i136 = getelementptr inbounds %struct.rtl_hal_ops, ptr %123, i32 0, i32 46
  %124 = ptrtoint ptr %set_bbreg.i136 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %set_bbreg.i136, align 4
  tail call void %125(ptr noundef %hw, i32 noundef 2072, i32 noundef 201326592, i32 noundef %cond34) #3
  br label %sw.epilog43

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %conv23 = zext i8 %44 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv23) #6
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %126 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl92ce_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %127) #3
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %128 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.25) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtl92ce_phy_lc_calibrate(ptr noundef %hw, i1 noundef zeroext %is2t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 3331) #3
  %4 = and i8 %call.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and3 = and i8 %call.i, -113
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 3331, i8 noundef zeroext %and3) #3
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.then.rtl_write_byte.exit_crit_edge, label %if.then.i

if.then.rtl_write_byte.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i55 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 3331) #3
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %if.then.rtl_write_byte.exit_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %cfg.i56 = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %cfg.i56 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i56, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_rfreg.i, align 4
  %call.i57 = tail call i32 %20(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #3
  br i1 %is2t, label %if.then11, label %rtl_write_byte.exit.if.end13_crit_edge

rtl_write_byte.exit.if.end13_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.else:                                          ; preds = %entry
  %write8_async.i58 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %21 = ptrtoint ptr %write8_async.i58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write8_async.i58, align 4
  tail call void %22(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext -1) #3
  %cfg.i59 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i59, align 8
  %write_readback.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %write_readback.i60 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %write_readback.i60, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i61 = icmp eq i8 %26, 0
  br i1 %tobool.not.i61, label %if.else.if.end20_crit_edge, label %if.then.i64

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then.i64:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read8_sync.i, align 4
  %call.i63 = tail call zeroext i8 %28(ptr noundef %1, i32 noundef 1314) #3
  br label %if.end20

if.then11:                                        ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %cfg.i67 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i67, align 8
  %ops.i68 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i68, align 4
  %get_rfreg.i69 = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 47
  %35 = ptrtoint ptr %get_rfreg.i69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_rfreg.i69, align 4
  %call.i70 = tail call i32 %36(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 4095) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %rtl_write_byte.exit.if.end13_crit_edge
  %rf_b_mode.0 = phi i32 [ %call.i70, %if.then11 ], [ 0, %rtl_write_byte.exit.if.end13_crit_edge ]
  %and14 = and i32 %call.i57, 589823
  %or = or i32 %and14, 65536
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %cfg.i72 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i72, align 8
  %ops.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i73, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 48
  %43 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %44(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or) #3
  br i1 %is2t, label %if.then16, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  %and17 = and i32 %rf_b_mode.0, 589823
  %or18 = or i32 %and17, 65536
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i75 = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i75, align 8
  %ops.i76 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i76, align 4
  %set_rfreg.i77 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 48
  %51 = ptrtoint ptr %set_rfreg.i77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_rfreg.i77, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef %or18) #3
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge, %if.then.i64, %if.else.if.end20_crit_edge
  %rf_a_mode.0 = phi i32 [ %call.i57, %if.then16 ], [ %call.i57, %if.end13.if.end20_crit_edge ], [ 0, %if.else.if.end20_crit_edge ], [ 0, %if.then.i64 ]
  %rf_b_mode.1 = phi i32 [ %rf_b_mode.0, %if.then16 ], [ %rf_b_mode.0, %if.end13.if.end20_crit_edge ], [ 0, %if.else.if.end20_crit_edge ], [ 0, %if.then.i64 ]
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i79 = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i79, align 8
  %ops.i80 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i80, align 4
  %get_rfreg.i81 = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 47
  %59 = ptrtoint ptr %get_rfreg.i81 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %get_rfreg.i81, align 4
  %call.i82 = tail call i32 %60(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #3
  %or22 = or i32 %call.i82, 32768
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %cfg.i84 = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i84 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i84, align 8
  %ops.i85 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %ops.i85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i85, align 4
  %set_rfreg.i86 = getelementptr inbounds %struct.rtl_hal_ops, ptr %66, i32 0, i32 48
  %67 = ptrtoint ptr %set_rfreg.i86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_rfreg.i86, align 4
  tail call void %68(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or22) #3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end20
  %__ms.0111 = phi i32 [ 100, %if.end20 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0111, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #3
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %while.body
  %write8_async.i103 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %70 = ptrtoint ptr %write8_async.i103 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write8_async.i103, align 4
  br i1 %cmp.not, label %if.else32, label %if.then28

if.then28:                                        ; preds = %while.end
  tail call void %71(ptr noundef %1, i32 noundef 3331, i8 noundef zeroext %call.i) #3
  %cfg.i88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i89 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %write_readback.i89 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %write_readback.i89, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i90 = icmp eq i8 %75, 0
  br i1 %tobool.not.i90, label %if.then28.rtl_write_byte.exit94_crit_edge, label %if.then.i93

if.then28.rtl_write_byte.exit94_crit_edge:        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit94

if.then.i93:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %read8_sync.i, align 4
  %call.i92 = tail call zeroext i8 %77(ptr noundef %1, i32 noundef 3331) #3
  br label %rtl_write_byte.exit94

rtl_write_byte.exit94:                            ; preds = %if.then.i93, %if.then28.rtl_write_byte.exit94_crit_edge
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %cfg.i96 = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i96, align 8
  %ops.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i97 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i97, align 4
  %set_rfreg.i98 = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 48
  %84 = ptrtoint ptr %set_rfreg.i98 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_rfreg.i98, align 4
  tail call void %85(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_a_mode.0) #3
  br i1 %is2t, label %if.then30, label %rtl_write_byte.exit94.if.end33_crit_edge

rtl_write_byte.exit94.if.end33_crit_edge:         ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then30:                                        ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %cfg.i100 = getelementptr inbounds %struct.rtl_priv, ptr %87, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i100, align 8
  %ops.i101 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ops.i101 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i101, align 4
  %set_rfreg.i102 = getelementptr inbounds %struct.rtl_hal_ops, ptr %91, i32 0, i32 48
  %92 = ptrtoint ptr %set_rfreg.i102 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_rfreg.i102, align 4
  tail call void %93(ptr noundef %hw, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_b_mode.1) #3
  br label %if.end33

if.else32:                                        ; preds = %while.end
  tail call void %71(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext 0) #3
  %cfg.i104 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %94 = ptrtoint ptr %cfg.i104 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i104, align 8
  %write_readback.i105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i105 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i105, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i106 = icmp eq i8 %97, 0
  br i1 %tobool.not.i106, label %if.else32.if.end33_crit_edge, label %if.then.i109

if.else32.if.end33_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then.i109:                                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #5
  %98 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i, align 4
  %call.i108 = tail call zeroext i8 %99(ptr noundef %1, i32 noundef 1314) #3
  br label %if.end33

if.end33:                                         ; preds = %if.then.i109, %if.else32.if.end33_crit_edge, %if.then30, %rtl_write_byte.exit94.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92c_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rfpwr_state1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %2 = ptrtoint ptr %rfpwr_state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rfpwr_state1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rfpwr_state)
  %cmp = icmp eq i32 %3, %rfpwr_state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %rfpwr_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %rfpwr_state, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb18.i
    i32 1, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.if.else.i_crit_edge

sw.bb.i.if.else.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %cur_ps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %5 = ptrtoint ptr %cur_ps_level.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_ps_level.i, align 4
  %and.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  br label %do.body.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %initializecount.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.28) #3
  %call.i = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #3
  %call.not.i = xor i1 %call.i, true
  %inc.i = add nuw nsw i32 %initializecount.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %initializecount.0.i)
  %cmp7.i = icmp ult i32 %initializecount.0.i, 9
  %or.cond.i = select i1 %call.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %cur_ps_level.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_ps_level.i, align 4
  %and9.i = and i32 %8, -9
  store i32 %and9.i, ptr %cur_ps_level.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.bb.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %10 = ptrtoint ptr %last_sleep_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_sleep_jiffies.i, align 4
  %sub.i = sub i32 %9, %11
  %call10.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef %call10.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %13 = ptrtoint ptr %last_awake_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_awake_jiffies.i, align 4
  tail call void @rtl92ce_phy_set_rf_on(ptr noundef %hw) #3
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %do.end.i
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %14 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp11.i = icmp eq i32 %15, 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 36
  %20 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %led_control.i, align 4
  br i1 %cmp11.i, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %21(ptr noundef %hw, i32 noundef 2) #3
  br label %if.then75.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %21(ptr noundef %hw, i32 noundef 3) #3
  br label %if.then75.i

sw.bb18.i:                                        ; preds = %if.end
  %reg_rfps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %22 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_rfps_level.i, align 4
  %and19.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.30) #3
  %call22.i = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #3
  %cur_ps_level23.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %24 = ptrtoint ptr %cur_ps_level23.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_ps_level23.i, align 4
  %or.i = or i32 %25, 8
  store i32 %or.i, ptr %cur_ps_level23.i, align 4
  br label %if.then75.i

if.else24.i:                                      ; preds = %sw.bb18.i
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %26 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rfoff_reason.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %27)
  %cmp25.i = icmp eq i32 %27, 268435456
  %cfg27.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %28 = ptrtoint ptr %cfg27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg27.i, align 8
  %ops28.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops28.i, align 4
  %led_control29.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 36
  %32 = ptrtoint ptr %led_control29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %led_control29.i, align 4
  br i1 %cmp25.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %33(ptr noundef %hw, i32 noundef 3) #3
  br label %if.then75.i

if.else30.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %33(ptr noundef %hw, i32 noundef 7) #3
  br label %if.then75.i

sw.bb36.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp38.i = icmp eq i32 %3, 2
  br i1 %cmp38.i, label %sw.bb36.i.if.then75.i_crit_edge, label %for.cond.preheader.i

sw.bb36.i.if.then75.i_crit_edge:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then75.i

for.cond.preheader.i:                             ; preds = %sw.bb36.i
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.else51.i.for.cond.outer.i_crit_edge, %for.cond.preheader.i
  %indvars.iv137.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %if.else51.i.for.cond.outer.i_crit_edge ]
  %queue_id.0.ph.i = phi i8 [ 0, %for.cond.preheader.i ], [ %37, %if.else51.i.for.cond.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph.i)
  %cmp41131.i = icmp ult i8 %queue_id.0.ph.i, 9
  br i1 %cmp41131.i, label %for.body.preheader.i, label %for.cond.outer.i.for.end.i_crit_edge

for.cond.outer.i.for.end.i_crit_edge:             ; preds = %for.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.outer.i
  %34 = zext i8 %queue_id.0.ph.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.then49.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %34, %for.body.preheader.i ], [ %indvars.iv.next.i, %if.then49.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.i)
  %cmp44.i = icmp eq i32 %indvars.iv.i, 4
  br i1 %cmp44.i, label %for.body.i.if.then49.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then49.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then49.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %qlen.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %indvars.iv.i, i32 4, i32 1
  %35 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp47.i = icmp eq i32 %36, 0
  br i1 %cmp47.i, label %lor.lhs.false.i.if.then49.i_crit_edge, label %if.else51.i

lor.lhs.false.i.if.then49.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then49.i

if.then49.i:                                      ; preds = %lor.lhs.false.i.if.then49.i_crit_edge, %for.body.i.if.then49.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond, label %if.then49.i.for.end.i_crit_edge, label %if.then49.i.for.body.i_crit_edge

if.then49.i.for.body.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.then49.i.for.end.i_crit_edge:                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.else51.i:                                      ; preds = %lor.lhs.false.i
  %37 = trunc i32 %indvars.iv.i to i8
  %add.i = add nuw nsw i32 %indvars.iv137.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %add.i, i32 noundef %indvars.iv.i, i32 noundef %36) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #3
  %exitcond139.i = icmp eq i32 %add.i, 64
  br i1 %exitcond139.i, label %if.then61.i, label %if.else51.i.for.cond.outer.i_crit_edge

if.else51.i.for.cond.outer.i_crit_edge:           ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.outer.i

if.then61.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %40) #3
  br label %for.end.i

for.end.i:                                        ; preds = %if.then61.i, %if.then49.i.for.end.i_crit_edge, %for.cond.outer.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies66.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %42 = ptrtoint ptr %last_awake_jiffies66.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_awake_jiffies66.i, align 4
  %sub67.i = sub i32 %41, %43
  %call68.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub67.i) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.33, i32 noundef %call68.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies69.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %45 = ptrtoint ptr %last_sleep_jiffies69.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_sleep_jiffies69.i, align 4
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 5
  %48 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %49(ptr noundef %47, i32 noundef 1314, i8 noundef zeroext -1) #3
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i.i, label %for.end.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

for.end.i.rtl_write_byte.exit.i.i_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 9
  %54 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %55(ptr noundef %47, i32 noundef 1314) #3
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %for.end.i.rtl_write_byte.exit.i.i_crit_edge
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %cfg.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i25.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 48
  %62 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %63(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #3
  %64 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %65(ptr noundef %47, i32 noundef 1536, i8 noundef zeroext 64) #3
  %66 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i28.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i28.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i29.i.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i29.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit33.i.i_crit_edge, label %if.then.i32.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit33.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit33.i.i

if.then.i32.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i30.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 9
  %70 = ptrtoint ptr %read8_sync.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i30.i.i, align 4
  %call.i31.i.i = tail call zeroext i8 %71(ptr noundef %47, i32 noundef 1536) #3
  br label %rtl_write_byte.exit33.i.i

rtl_write_byte.exit33.i.i:                        ; preds = %if.then.i32.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit33.i.i_crit_edge
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %cfg.i35.i.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i35.i.i, align 8
  %ops.i36.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i36.i.i, align 4
  %get_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 47
  %78 = ptrtoint ptr %get_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_rfreg.i.i.i, align 4
  %call.i37.i.i = tail call i32 %79(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i.i)
  %cmp.not111.i.i = icmp eq i32 %call.i37.i.i, 0
  br i1 %cmp.not111.i.i, label %rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge, label %while.body.lr.ph.i.i

rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge:   ; preds = %rtl_write_byte.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

while.body.lr.ph.i.i:                             ; preds = %rtl_write_byte.exit33.i.i
  %read8_sync.i42.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %delay.0112.i.i = phi i8 [ 5, %while.body.lr.ph.i.i ], [ %dec.i.i, %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge ]
  %80 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %81(ptr noundef %47, i32 noundef 1536, i8 noundef zeroext 0) #3
  %82 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %write_readback.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %write_readback.i40.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i41.i.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i41.i.i, label %while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge, label %if.then.i44.i.i

while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit45.i.i

if.then.i44.i.i:                                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i43.i.i = tail call zeroext i8 %87(ptr noundef %47, i32 noundef 1536) #3
  br label %rtl_write_byte.exit45.i.i

rtl_write_byte.exit45.i.i:                        ; preds = %if.then.i44.i.i, %while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %cfg.i47.i.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 32
  %90 = ptrtoint ptr %cfg.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i47.i.i, align 8
  %ops.i48.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %ops.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i48.i.i, align 4
  %set_rfreg.i49.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %93, i32 0, i32 48
  %94 = ptrtoint ptr %set_rfreg.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_rfreg.i49.i.i, align 4
  tail call void %95(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #3
  %96 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %97(ptr noundef %47, i32 noundef 1536, i8 noundef zeroext 64) #3
  %98 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i52.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %write_readback.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %write_readback.i52.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i53.i.i = icmp eq i8 %101, 0
  br i1 %tobool.not.i53.i.i, label %rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge, label %if.then.i56.i.i

rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge: ; preds = %rtl_write_byte.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit57.i.i

if.then.i56.i.i:                                  ; preds = %rtl_write_byte.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %102 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i55.i.i = tail call zeroext i8 %103(ptr noundef %47, i32 noundef 1536) #3
  br label %rtl_write_byte.exit57.i.i

rtl_write_byte.exit57.i.i:                        ; preds = %if.then.i56.i.i, %rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv, align 8
  %cfg.i59.i.i = getelementptr inbounds %struct.rtl_priv, ptr %105, i32 0, i32 32
  %106 = ptrtoint ptr %cfg.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cfg.i59.i.i, align 8
  %ops.i60.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %ops.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ops.i60.i.i, align 4
  %get_rfreg.i61.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %109, i32 0, i32 47
  %110 = ptrtoint ptr %get_rfreg.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %get_rfreg.i61.i.i, align 4
  %call.i62.i.i = tail call i32 %111(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575) #3
  %dec.i.i = add nsw i8 %delay.0112.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i62.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %cmp1.not.i.i = icmp eq i8 %dec.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond.i.i, label %while.end.i.i, label %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge

rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge: ; preds = %rtl_write_byte.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %rtl_write_byte.exit57.i.i
  br i1 %cmp1.not.i.i, label %if.then.i.i, label %while.end.i.i.if.end.i.i_crit_edge

while.end.i.i.if.end.i.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.end.i.i
  %112 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %113(ptr noundef %47, i32 noundef 1536, i8 noundef zeroext 0) #3
  %114 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i65.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write_readback.i65.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %write_readback.i65.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i66.i.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i66.i.i, label %if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge, label %if.then.i69.i.i

if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit70.i.i

if.then.i69.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %118 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i68.i.i = tail call zeroext i8 %119(ptr noundef %47, i32 noundef 1536) #3
  br label %rtl_write_byte.exit70.i.i

rtl_write_byte.exit70.i.i:                        ; preds = %if.then.i69.i.i, %if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge
  %120 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %121(ptr noundef %47, i32 noundef 2, i8 noundef zeroext -30) #3
  %122 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i73.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %write_readback.i73.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %write_readback.i73.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i74.i.i = icmp eq i8 %125, 0
  br i1 %tobool.not.i74.i.i, label %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge, label %if.then.i77.i.i

rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge: ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit78.i.i

if.then.i77.i.i:                                  ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %126 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i76.i.i = tail call zeroext i8 %127(ptr noundef %47, i32 noundef 2) #3
  br label %rtl_write_byte.exit78.i.i

rtl_write_byte.exit78.i.i:                        ; preds = %if.then.i77.i.i, %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge
  %128 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %129(ptr noundef %47, i32 noundef 2, i8 noundef zeroext -29) #3
  %130 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i81.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %write_readback.i81.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %write_readback.i81.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i82.i.i = icmp eq i8 %133, 0
  br i1 %tobool.not.i82.i.i, label %rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge, label %if.then.i85.i.i

rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge: ; preds = %rtl_write_byte.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit86.i.i

if.then.i85.i.i:                                  ; preds = %rtl_write_byte.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %134 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i84.i.i = tail call zeroext i8 %135(ptr noundef %47, i32 noundef 2) #3
  br label %rtl_write_byte.exit86.i.i

rtl_write_byte.exit86.i.i:                        ; preds = %if.then.i85.i.i, %rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge
  %136 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %137(ptr noundef %47, i32 noundef 1314, i8 noundef zeroext 0) #3
  %138 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i89.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %write_readback.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %write_readback.i89.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i90.i.i = icmp eq i8 %141, 0
  br i1 %tobool.not.i90.i.i, label %rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge, label %if.then.i93.i.i

rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge: ; preds = %rtl_write_byte.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit94.i.i

if.then.i93.i.i:                                  ; preds = %rtl_write_byte.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %142 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i92.i.i = tail call zeroext i8 %143(ptr noundef %47, i32 noundef 1314) #3
  br label %rtl_write_byte.exit94.i.i

rtl_write_byte.exit94.i.i:                        ; preds = %if.then.i93.i.i, %rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %47, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.36) #3
  br label %if.then75.i

if.end.i.i:                                       ; preds = %while.end.i.i.if.end.i.i_crit_edge, %rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge
  %144 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %145(ptr noundef %47, i32 noundef 2, i8 noundef zeroext -30) #3
  %146 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i97.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %write_readback.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %write_readback.i97.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i98.i.i = icmp eq i8 %149, 0
  br i1 %tobool.not.i98.i.i, label %if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge, label %if.then.i101.i.i

if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit102.i.i

if.then.i101.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i99.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 9
  %150 = ptrtoint ptr %read8_sync.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read8_sync.i99.i.i, align 4
  %call.i100.i.i = tail call zeroext i8 %151(ptr noundef %47, i32 noundef 2) #3
  br label %rtl_write_byte.exit102.i.i

rtl_write_byte.exit102.i.i:                       ; preds = %if.then.i101.i.i, %if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge
  %152 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %153(ptr noundef %47, i32 noundef 17, i8 noundef zeroext 34) #3
  %154 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i105.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %write_readback.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %write_readback.i105.i.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i106.i.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i106.i.i, label %rtl_write_byte.exit102.i.i.if.then75.i_crit_edge, label %if.then.i109.i.i

rtl_write_byte.exit102.i.i.if.then75.i_crit_edge: ; preds = %rtl_write_byte.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then75.i

if.then.i109.i.i:                                 ; preds = %rtl_write_byte.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i107.i.i = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 13, i32 9
  %158 = ptrtoint ptr %read8_sync.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read8_sync.i107.i.i, align 4
  %call.i108.i.i = tail call zeroext i8 %159(ptr noundef %47, i32 noundef 17) #3
  br label %if.then75.i

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %rfpwr_state) #6
  br label %cleanup

if.then75.i:                                      ; preds = %if.then.i109.i.i, %rtl_write_byte.exit102.i.i.if.then75.i_crit_edge, %rtl_write_byte.exit94.i.i, %sw.bb36.i.if.then75.i_crit_edge, %if.else30.i, %if.then26.i, %if.then21.i, %if.else13.i, %if.then12.i
  %160 = ptrtoint ptr %rfpwr_state1 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %rfpwr_state, ptr %rfpwr_state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then75.i, %sw.epilog.i, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then75.i ], [ false, %sw.epilog.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_set_rf_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 47, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 102, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 183, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 193, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 224, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 246, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 248, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 255, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 257, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 260, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 278, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtl92c_phy_config_rf_with_headerfile._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtl92c_phy_config_rf_with_headerfile._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 281, i32 3}
!30 = !{ptr @rtl92c_phy_config_rf_with_headerfile._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtl92c_phy_config_rf_with_headerfile._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 296, i32 2}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 321, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtl92ce_phy_set_bw_mode_callback._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtl92ce_phy_set_bw_mode_callback._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 345, i32 3}
!43 = !{ptr @rtl92ce_phy_set_bw_mode_callback._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rtl92ce_phy_set_bw_mode_callback._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 351, i32 2}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 147, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 150, i32 2}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 449, i32 6}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 456, i32 5}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 474, i32 5}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 500, i32 6}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 509, i32 6}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 517, i32 4}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 526, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @_rtl92ce_phy_set_rf_power_state._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @_rtl92ce_phy_set_rf_power_state._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ce/phy.c", i32 421, i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
