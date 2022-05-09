; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c"
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
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read Rtl819XMACPHY_ARRAY\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Img:RTL8192CUMAC_2T_ARRAY\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGARRAY[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGARRAY[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"configtype != BaseBand_Config_PHY_REG\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Radio_A:RTL8192CURADIOA_2TARRAY\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_B:RTL8192CU_RADIOB_2TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_A:RTL8192CU_RADIOA_1TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Radio_B:RTL8192CU_RADIOB_1TARRAY\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl92cu_phy_config_rf_with_headerfile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192cu: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rtl92cu_phy_config_rf_with_headerfile\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl92cu_phy_config_rf_with_headerfile._entry_ptr = internal global ptr @rtl92cu_phy_config_rf_with_headerfile._entry, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl92cu_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.15, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192cu: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92cu_phy_set_bw_mode_callback\00", [63 x i8] zeroinitializer }, align 32
@rtl92cu_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl92cu_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl92cu_phy_set_bw_mode_callback._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.15, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92cu_phy_set_bw_mode_callback._entry_ptr.22 = internal global ptr @rtl92cu_phy_set_bw_mode_callback._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<==\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set ERFON slept:%d ms\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERFOFF: %d times TcbBusyQueue[%d] = %d !\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl92cu_phy_set_rf_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.31, ptr @.str.15, i32 490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_rtl92cu_phy_set_rf_power_state\00", [32 x i8] zeroinitializer }, align 32
@_rtl92cu_phy_set_rf_power_state._entry_ptr = internal global ptr @_rtl92cu_phy_set_rf_power_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 25, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 37, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 51, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 124, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 127, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 161, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 171, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 201, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 223, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 225, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 232, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 234, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 237, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 255, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 272, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 294, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 316, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 322, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 393, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 400, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 424, i32 5 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 433, i32 5 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 442, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 474, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 482, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 489, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @_rtl92cu_phy_set_rf_power_state._entry, ptr @_rtl92cu_phy_set_rf_power_state._entry_ptr, ptr @rtl92cu_phy_config_rf_with_headerfile._entry, ptr @rtl92cu_phy_config_rf_with_headerfile._entry_ptr, ptr @rtl92cu_phy_set_bw_mode_callback._entry, ptr @rtl92cu_phy_set_bw_mode_callback._entry.21, ptr @rtl92cu_phy_set_bw_mode_callback._entry_ptr, ptr @rtl92cu_phy_set_bw_mode_callback._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_phy_config_rf_with_headerfile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92cu_phy_set_bw_mode_callback._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92cu_phy_set_rf_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92cu_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #3
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
define dso_local void @rtl92cu_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #3
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.2, i32 noundef %rfpath) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_fw_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.3) #3
  %arrayidx.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 4
  %conv.i = zext i16 %3 to i32
  %pdata.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 7, i32 1
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.4) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp16.not.i = icmp eq i16 %3, 0
  br i1 %cmp16.not.i, label %entry._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge, label %for.body.lr.ph.i

entry._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92cu_phy_config_mac_with_headerfile.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add7.i, %rtl_write_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr i32, ptr %5, i32 %i.017.i
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %add.i = or i32 %i.017.i, 1
  %arrayidx5.i = getelementptr i32, ptr %5, i32 %add.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = trunc i32 %9 to i8
  %10 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %7, i8 noundef zeroext %conv6.i) #3
  %12 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i, label %for.body.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.body.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %17(ptr noundef %1, i32 noundef %7) #3
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.body.i.rtl_write_byte.exit.i_crit_edge
  %add7.i = add nuw nsw i32 %i.017.i, 2
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %rtl_write_byte.exit.i.for.body.i_crit_edge, label %rtl_write_byte.exit.i._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge

rtl_write_byte.exit.i._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %_rtl92cu_phy_config_mac_with_headerfile.exit

rtl_write_byte.exit.i.for.body.i_crit_edge:       ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

_rtl92cu_phy_config_mac_with_headerfile.exit:     ; preds = %rtl_write_byte.exit.i._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge, %entry._rtl92cu_phy_config_mac_with_headerfile.exit_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_rtl92cu_phy_config_mac_with_headerfile(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.3) #3
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  %pdata = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 7, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.4) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp16.not = icmp eq i16 %3, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body

for.body:                                         ; preds = %rtl_write_byte.exit.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %add7, %rtl_write_byte.exit.for.body_crit_edge ]
  %arrayidx4 = getelementptr i32, ptr %5, i32 %i.017
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %add = or i32 %i.017, 1
  %arrayidx5 = getelementptr i32, ptr %5, i32 %add
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %conv6 = trunc i32 %9 to i8
  %10 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write8_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef %7, i8 noundef zeroext %conv6) #3
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %for.body.rtl_write_byte.exit_crit_edge, label %if.then.i

for.body.rtl_write_byte.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %17(ptr noundef %1, i32 noundef %7) #3
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.body.rtl_write_byte.exit_crit_edge
  %add7 = add nuw nsw i32 %i.017, 2
  %cmp = icmp ult i32 %add7, %conv
  br i1 %cmp, label %rtl_write_byte.exit.for.body_crit_edge, label %rtl_write_byte.exit.for.end_crit_edge

rtl_write_byte.exit.for.end_crit_edge:            ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

rtl_write_byte.exit.for.body_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %rtl_write_byte.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %10 = load i8, ptr %write_readback.i, align 1, !range !73
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
  %18 = load i8, ptr %write_readback.i22, align 1, !range !73
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
  %26 = load i8, ptr %write_readback.i28, align 1, !range !73
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
  %34 = load i8, ptr %write_readback.i36, align 1, !range !73
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
  tail call void %38(ptr noundef %1, i32 noundef 2, i8 noundef zeroext 23) #3
  %39 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %write_readback.i44, align 1, !range !73
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
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %45 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read32_sync.i, align 4
  %call.i50 = tail call i32 %46(ptr noundef %1, i32 noundef 2172) #3
  %and = and i32 %call.i50, 2147483647
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %47 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32_async.i, align 4
  tail call void %48(ptr noundef %1, i32 noundef 2172, i32 noundef %and) #3
  %49 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i, align 8
  %write_readback.i52 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write_readback.i52 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %write_readback.i52, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i53 = icmp eq i8 %52, 0
  br i1 %tobool.not.i53, label %rtl_write_byte.exit49.rtl_write_dword.exit_crit_edge, label %if.then.i56

rtl_write_byte.exit49.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit49
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_dword.exit

if.then.i56:                                      ; preds = %rtl_write_byte.exit49
  call void @__sanitizer_cov_trace_pc() #5
  %53 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read32_sync.i, align 4
  %call.i55 = tail call i32 %54(ptr noundef %1, i32 noundef 2172) #3
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i56, %rtl_write_byte.exit49.rtl_write_dword.exit_crit_edge
  %55 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i, align 4
  tail call void %56(ptr noundef %1, i32 noundef 34, i8 noundef zeroext 15) #3
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i, align 8
  %write_readback.i59 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i59 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i59, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i60 = icmp eq i8 %60, 0
  br i1 %tobool.not.i60, label %rtl_write_dword.exit.rtl_write_byte.exit64_crit_edge, label %if.then.i63

rtl_write_dword.exit.rtl_write_byte.exit64_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit64

if.then.i63:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i61 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %61 = ptrtoint ptr %read8_sync.i61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i61, align 4
  %call.i62 = tail call zeroext i8 %62(ptr noundef %1, i32 noundef 34) #3
  br label %rtl_write_byte.exit64

rtl_write_byte.exit64:                            ; preds = %if.then.i63, %rtl_write_dword.exit.rtl_write_byte.exit64_crit_edge
  %63 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write8_async.i, align 4
  tail call void %64(ptr noundef %1, i32 noundef 37, i8 noundef zeroext -128) #3
  %65 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i, align 8
  %write_readback.i67 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i67 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i67, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i68 = icmp eq i8 %68, 0
  br i1 %tobool.not.i68, label %rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge, label %if.then.i71

rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge: ; preds = %rtl_write_byte.exit64
  call void @__sanitizer_cov_trace_pc() #5
  br label %rtl_write_byte.exit72

if.then.i71:                                      ; preds = %rtl_write_byte.exit64
  call void @__sanitizer_cov_trace_pc() #5
  %read8_sync.i69 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %69 = ptrtoint ptr %read8_sync.i69 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read8_sync.i69, align 4
  %call.i70 = tail call zeroext i8 %70(ptr noundef %1, i32 noundef 37) #3
  br label %rtl_write_byte.exit72

rtl_write_byte.exit72:                            ; preds = %if.then.i71, %rtl_write_byte.exit64.rtl_write_byte.exit72_crit_edge
  %call7 = tail call zeroext i1 @_rtl92c_phy_bb8192c_config_parafile(ptr noundef %hw) #3
  ret i1 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_init_bb_rf_register_definition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @_rtl92c_phy_bb8192c_config_parafile(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_rtl92cu_phy_config_bb_with_headerfile(ptr noundef %hw, i8 noundef zeroext %configtype) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hwparam_tables = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 8
  %pdata = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 8, i32 1
  %pdata12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx14 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 9
  %pdata18 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 9, i32 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 1
  %pdata24 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 1, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phy_regarray_table.0.in = phi ptr [ %pdata12, %if.then ], [ %pdata24, %if.else ]
  %agctab_array_table.0.in = phi ptr [ %pdata, %if.then ], [ %pdata18, %if.else ]
  %phy_reg_arraylen.0.in = phi ptr [ %hwparam_tables, %if.then ], [ %arrayidx20, %if.else ]
  %agctab_arraylen.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx14, %if.else ]
  %4 = ptrtoint ptr %agctab_array_table.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %agctab_array_table.0 = load ptr, ptr %agctab_array_table.0.in, align 4
  %5 = ptrtoint ptr %phy_regarray_table.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %phy_regarray_table.0 = load ptr, ptr %phy_regarray_table.0.in, align 4
  %6 = zext i8 %configtype to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %configtype, label %if.end.if.end58_crit_edge [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond43.preheader
  ]

if.end.if.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

for.cond43.preheader:                             ; preds = %if.end
  %7 = ptrtoint ptr %agctab_arraylen.0.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %agctab_arraylen.0 = load i16, ptr %agctab_arraylen.0.in, align 4
  %conv44 = zext i16 %agctab_arraylen.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %agctab_arraylen.0)
  %cmp4596.not = icmp eq i16 %agctab_arraylen.0, 0
  br i1 %cmp4596.not, label %for.cond43.preheader.if.end58_crit_edge, label %for.cond43.preheader.for.body47_crit_edge

for.cond43.preheader.for.body47_crit_edge:        ; preds = %for.cond43.preheader
  br label %for.body47

for.cond43.preheader.if.end58_crit_edge:          ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

for.cond.preheader:                               ; preds = %if.end
  %8 = ptrtoint ptr %phy_reg_arraylen.0.in to i32
  call void @__asan_load2_noabort(i32 %8)
  %phy_reg_arraylen.0 = load i16, ptr %phy_reg_arraylen.0.in, align 4
  %conv28 = zext i16 %phy_reg_arraylen.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %phy_reg_arraylen.0)
  %cmp2998.not = icmp eq i16 %phy_reg_arraylen.0, 0
  br i1 %cmp2998.not, label %for.cond.preheader.if.end58_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end58_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.099 = phi i32 [ %add37, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx31 = getelementptr i32, ptr %phy_regarray_table.0, i32 %i.099
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx31, align 4
  tail call void @rtl_addr_delay(i32 noundef %10) #3
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx31, align 4
  %add = or i32 %i.099, 1
  %arrayidx33 = getelementptr i32, ptr %phy_regarray_table.0, i32 %add
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx33, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %22(ptr noundef %hw, i32 noundef %12, i32 noundef -1, i32 noundef %14) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #3
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %25, i32 noundef %27) #3
  %add37 = add nuw nsw i32 %i.099, 2
  %cmp29 = icmp ult i32 %add37, %conv28
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.if.end58_crit_edge

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond43.preheader.for.body47_crit_edge
  %i.197 = phi i32 [ %add55, %for.body47.for.body47_crit_edge ], [ 0, %for.cond43.preheader.for.body47_crit_edge ]
  %arrayidx48 = getelementptr i32, ptr %agctab_array_table.0, i32 %i.197
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx48, align 4
  %add49 = or i32 %i.197, 1
  %arrayidx50 = getelementptr i32, ptr %agctab_array_table.0, i32 %add49
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx50, align 4
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %cfg.i92 = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %cfg.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i92, align 8
  %ops.i93 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %ops.i93 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i93, align 4
  %set_bbreg.i94 = getelementptr inbounds %struct.rtl_hal_ops, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %set_bbreg.i94 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %set_bbreg.i94, align 4
  tail call void %39(ptr noundef %hw, i32 noundef %29, i32 noundef -1, i32 noundef %31) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748) #3
  %41 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx48, align 4
  %43 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef %42, i32 noundef %44) #3
  %add55 = add nuw nsw i32 %i.197, 2
  %cmp45 = icmp ult i32 %add55, %conv44
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.if.end58_crit_edge

for.body47.if.end58_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end58

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body47

if.end58:                                         ; preds = %for.body47.if.end58_crit_edge, %for.body.if.end58_crit_edge, %for.cond.preheader.if.end58_crit_edge, %for.cond43.preheader.if.end58_crit_edge, %if.end.if.end58_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_addr_delay(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @_rtl92cu_phy_config_bb_with_pgheaderfile(ptr noundef %hw, i8 noundef zeroext %configtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %pwrgroup_cnt = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 38
  %2 = ptrtoint ptr %pwrgroup_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pwrgroup_cnt, align 2
  %pdata = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 2, i32 1
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %configtype)
  %cmp = icmp eq i8 %configtype, 0
  br i1 %cmp, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv4 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp525.not = icmp eq i16 %6, 0
  br i1 %cmp525.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.026 = phi i32 [ %add12, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %4, i32 %i.026
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7, align 4
  tail call void @rtl_addr_delay(i32 noundef %8) #3
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %add = add nuw nsw i32 %i.026, 1
  %arrayidx9 = getelementptr i32, ptr %4, i32 %add
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  %add10 = add nuw nsw i32 %i.026, 2
  %arrayidx11 = getelementptr i32, ptr %4, i32 %add10
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  tail call void @_rtl92c_store_pwrindex_diffrate_offset(ptr noundef %hw, i32 noundef %10, i32 noundef %12, i32 noundef %14) #3
  %add12 = add nuw nsw i32 %i.026, 3
  %cmp5 = icmp ult i32 %add12, %conv4
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16, i32 noundef 5, ptr noundef nonnull @.str.7) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_store_pwrindex_diffrate_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92cu_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
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
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 3
  %pdata = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 3, i32 1
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 4
  %pdata12 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 4, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx14 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 5
  %pdata18 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 5, i32 1
  %arrayidx20 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 6
  %pdata24 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 59, i32 6, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pdata24.sink = phi ptr [ %pdata24, %if.else ], [ %pdata12, %if.then ]
  %.str.10.sink = phi ptr [ @.str.10, %if.else ], [ @.str.8, %if.then ]
  %.str.11.sink = phi ptr [ @.str.11, %if.else ], [ @.str.9, %if.then ]
  %radioa_arraylen.0.in = phi ptr [ %arrayidx14, %if.else ], [ %arrayidx, %if.then ]
  %radiob_arraylen.0.in = phi ptr [ %arrayidx20, %if.else ], [ %arrayidx8, %if.then ]
  %radioa_array_table.0.in = phi ptr [ %pdata18, %if.else ], [ %pdata, %if.then ]
  %4 = ptrtoint ptr %radioa_array_table.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %radioa_array_table.0 = load ptr, ptr %radioa_array_table.0.in, align 4
  %5 = ptrtoint ptr %radiob_arraylen.0.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %radiob_arraylen.0 = load i16, ptr %radiob_arraylen.0.in, align 4
  %6 = ptrtoint ptr %radioa_arraylen.0.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %radioa_arraylen.0 = load i16, ptr %radioa_arraylen.0.in, align 4
  %7 = ptrtoint ptr %pdata24.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata24.sink, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.10.sink) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.11.sink) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.12, i32 noundef %rfpath) #3
  %9 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %rfpath, label %if.end.sw.epilog_crit_edge [
    i32 0, label %for.cond.preheader
    i32 1, label %for.cond31.preheader
    i32 2, label %if.end.do.end_crit_edge
    i32 3, label %if.end.do.end_crit_edge80
  ]

if.end.do.end_crit_edge80:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.cond31.preheader:                             ; preds = %if.end
  %conv32 = zext i16 %radiob_arraylen.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %radiob_arraylen.0)
  %cmp3372.not = icmp eq i16 %radiob_arraylen.0, 0
  br i1 %cmp3372.not, label %for.cond31.preheader.sw.epilog_crit_edge, label %for.cond31.preheader.for.body35_crit_edge

for.cond31.preheader.for.body35_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body35

for.cond31.preheader.sw.epilog_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.cond.preheader:                               ; preds = %if.end
  %conv = zext i16 %radioa_arraylen.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %radioa_arraylen.0)
  %cmp2574.not = icmp eq i16 %radioa_arraylen.0, 0
  br i1 %cmp2574.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.075 = phi i32 [ %add29, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx27 = getelementptr i32, ptr %radioa_array_table.0, i32 %i.075
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx27, align 4
  %add = or i32 %i.075, 1
  %arrayidx28 = getelementptr i32, ptr %radioa_array_table.0, i32 %add
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 0, i32 noundef %11, i32 noundef 1048575, i32 noundef %13) #3
  %add29 = add nuw nsw i32 %i.075, 2
  %cmp25 = icmp ult i32 %add29, %conv
  br i1 %cmp25, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond31.preheader.for.body35_crit_edge
  %i.173 = phi i32 [ %add40, %for.body35.for.body35_crit_edge ], [ 0, %for.cond31.preheader.for.body35_crit_edge ]
  %arrayidx36 = getelementptr i32, ptr %8, i32 %i.173
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx36, align 4
  %add37 = or i32 %i.173, 1
  %arrayidx38 = getelementptr i32, ptr %8, i32 %add37
  %16 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx38, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 1, i32 noundef %15, i32 noundef 1048575, i32 noundef %17) #3
  %add40 = add nuw nsw i32 %i.173, 2
  %cmp33 = icmp ult i32 %add40, %conv32
  br i1 %cmp33, label %for.body35.for.body35_crit_edge, label %for.body35.sw.epilog_crit_edge

for.body35.sw.epilog_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body35

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge80
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %rfpath) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body35.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %for.cond31.preheader.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_rfreg_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %cond = select i1 %cmp, ptr @.str.17, ptr @.str.18
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #3
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
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
  %20 = load i8, ptr %write_readback.i, align 1, !range !73
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
  %29 = load i8, ptr %write_readback.i90, align 1, !range !73
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
  %40 = load i8, ptr %write_readback.i98, align 1, !range !73
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
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv8) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i102, %rtl_write_byte.exit95.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.34)
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
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv23) #6
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %126 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl92cu_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %127) #3
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %128 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.23) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92cu_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92cu_bb_block_on(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %bb_mutex = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 1
  tail call void @mutex_lock_nested(ptr noundef %bb_mutex, i32 noundef 0) #3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %9(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 1) #3
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %cfg.i7 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i7, align 8
  %ops.i8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i8, align 4
  %set_bbreg.i9 = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %set_bbreg.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_bbreg.i9, align 4
  tail call void %17(ptr noundef %hw, i32 noundef 2048, i32 noundef 33554432, i32 noundef 1) #3
  tail call void @mutex_unlock(ptr noundef %bb_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_rtl92cu_phy_lc_calibrate(ptr noundef %hw, i1 noundef zeroext %is2t) local_unnamed_addr #0 align 64 {
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
  %10 = load i8, ptr %write_readback.i, align 1, !range !73
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
  %26 = load i8, ptr %write_readback.i60, align 1, !range !73
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
  %75 = load i8, ptr %write_readback.i89, align 1, !range !73
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
  %97 = load i8, ptr %write_readback.i105, align 1, !range !73
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
define dso_local zeroext i1 @rtl92cu_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %rfpwr_state, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 2, label %for.cond.preheader.i
    i32 1, label %sw.bb62.i
  ]

for.cond.preheader.i:                             ; preds = %if.end
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond.outer.i

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
  %init_count.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.24) #3
  %call.i = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #3
  %call.not.i = xor i1 %call.i, true
  %inc.i = add nuw nsw i32 %init_count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %init_count.0.i)
  %cmp7.i = icmp ult i32 %init_count.0.i, 9
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %call10.i) #3
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
  br label %if.then109.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %21(ptr noundef %hw, i32 noundef 3) #3
  br label %if.then109.i

for.body.i:                                       ; preds = %for.body.preheader.i, %if.then27.i.for.body.i_crit_edge
  %indvars.iv213.i = phi i32 [ %26, %for.body.preheader.i ], [ %indvars.iv.next214.i, %if.then27.i.for.body.i_crit_edge ]
  %qlen.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %indvars.iv213.i, i32 4, i32 1
  %22 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22.i = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv213.i)
  %cmp25.i = icmp eq i32 %indvars.iv213.i, 4
  %or.cond178.i = select i1 %cmp22.i, i1 true, i1 %cmp25.i
  br i1 %or.cond178.i, label %if.then27.i, label %if.else29.i

if.then27.i:                                      ; preds = %for.body.i
  %indvars.iv.next214.i = add nuw nsw i32 %indvars.iv213.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next214.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond, label %if.then27.i.for.end.i_crit_edge, label %if.then27.i.for.body.i_crit_edge

if.then27.i.for.body.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.then27.i.for.end.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.else29.i:                                      ; preds = %for.body.i
  %24 = trunc i32 %indvars.iv213.i to i8
  %add.i = add nuw nsw i32 %indvars.iv216.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %add.i, i32 noundef %indvars.iv213.i, i32 noundef %23) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #3
  %exitcond218.i = icmp eq i32 %add.i, 64
  br i1 %exitcond218.i, label %if.then39.i, label %if.else29.i.for.cond.outer.i_crit_edge

if.else29.i.for.cond.outer.i_crit_edge:           ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.else29.i.for.cond.outer.i_crit_edge, %for.cond.preheader.i
  %indvars.iv216.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %if.else29.i.for.cond.outer.i_crit_edge ]
  %queue_id.0.ph.i = phi i8 [ 0, %for.cond.preheader.i ], [ %24, %if.else29.i.for.cond.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph.i)
  %cmp19196.i = icmp ult i8 %queue_id.0.ph.i, 9
  br i1 %cmp19196.i, label %for.body.preheader.i, label %for.cond.outer.i.for.end.i_crit_edge

for.cond.outer.i.for.end.i_crit_edge:             ; preds = %for.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.outer.i
  %26 = zext i8 %queue_id.0.ph.i to i32
  br label %for.body.i

if.then39.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 64, i32 noundef %indvars.iv213.i, i32 noundef %28) #3
  br label %for.end.i

for.end.i:                                        ; preds = %if.then39.i, %for.cond.outer.i.for.end.i_crit_edge, %if.then27.i.for.end.i_crit_edge
  %reg_rfps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %29 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_rfps_level.i, align 4
  %and44.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.else49.i, label %if.then46.i

if.then46.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.28) #3
  %call47.i = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #3
  %cur_ps_level48.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %31 = ptrtoint ptr %cur_ps_level48.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_ps_level48.i, align 4
  %or.i = or i32 %32, 8
  store i32 %or.i, ptr %cur_ps_level48.i, align 4
  br label %if.then109.i

if.else49.i:                                      ; preds = %for.end.i
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %33 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rfoff_reason.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %34)
  %cmp50.i = icmp eq i32 %34, 268435456
  %cfg53.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %35 = ptrtoint ptr %cfg53.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg53.i, align 8
  %ops54.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %ops54.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops54.i, align 4
  %led_control55.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %38, i32 0, i32 36
  %39 = ptrtoint ptr %led_control55.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %led_control55.i, align 4
  br i1 %cmp50.i, label %if.then52.i, label %if.else56.i

if.then52.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %40(ptr noundef %hw, i32 noundef 3) #3
  br label %if.then109.i

if.else56.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %40(ptr noundef %hw, i32 noundef 7) #3
  br label %if.then109.i

sw.bb62.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp64.i = icmp eq i32 %3, 2
  br i1 %cmp64.i, label %sw.bb62.i.cleanup_crit_edge, label %for.cond68.preheader.i

sw.bb62.i.cleanup_crit_edge:                      ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond68.preheader.i:                           ; preds = %sw.bb62.i
  %tx_ring74.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond68.outer.i

for.cond68.outer.i:                               ; preds = %if.else83.i.for.cond68.outer.i_crit_edge, %for.cond68.preheader.i
  %indvars.iv210.i = phi i32 [ 0, %for.cond68.preheader.i ], [ %add85.i, %if.else83.i.for.cond68.outer.i_crit_edge ]
  %queue_id.1.ph.i = phi i8 [ 0, %for.cond68.preheader.i ], [ %44, %if.else83.i.for.cond68.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.1.ph.i)
  %cmp70192.i = icmp ult i8 %queue_id.1.ph.i, 9
  br i1 %cmp70192.i, label %for.body72.preheader.i, label %for.cond68.outer.i.for.end99.i_crit_edge

for.cond68.outer.i.for.end99.i_crit_edge:         ; preds = %for.cond68.outer.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end99.i

for.body72.preheader.i:                           ; preds = %for.cond68.outer.i
  %41 = zext i8 %queue_id.1.ph.i to i32
  br label %for.body72.i

for.body72.i:                                     ; preds = %if.then81.i.for.body72.i_crit_edge, %for.body72.preheader.i
  %indvars.iv.i = phi i32 [ %41, %for.body72.preheader.i ], [ %indvars.iv.next.i, %if.then81.i.for.body72.i_crit_edge ]
  %qlen.i181.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring74.i, i32 0, i32 %indvars.iv.i, i32 4, i32 1
  %42 = ptrtoint ptr %qlen.i181.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qlen.i181.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp79.i = icmp eq i32 %43, 0
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i

if.then81.i:                                      ; preds = %for.body72.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %if.then81.i.for.end99.i_crit_edge, label %if.then81.i.for.body72.i_crit_edge

if.then81.i.for.body72.i_crit_edge:               ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body72.i

if.then81.i.for.end99.i_crit_edge:                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end99.i

if.else83.i:                                      ; preds = %for.body72.i
  %44 = trunc i32 %indvars.iv.i to i8
  %add85.i = add nuw nsw i32 %indvars.iv210.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %add85.i, i32 noundef %indvars.iv.i, i32 noundef %43) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #3
  %exitcond212.i = icmp eq i32 %add85.i, 64
  br i1 %exitcond212.i, label %if.then94.i, label %if.else83.i.for.cond68.outer.i_crit_edge

if.else83.i.for.cond68.outer.i_crit_edge:         ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond68.outer.i

if.then94.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %qlen.i181.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i181.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %47) #3
  br label %for.end99.i

for.end99.i:                                      ; preds = %if.then94.i, %if.then81.i.for.end99.i_crit_edge, %for.cond68.outer.i.for.end99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies100.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %49 = ptrtoint ptr %last_awake_jiffies100.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %last_awake_jiffies100.i, align 4
  %sub101.i = sub i32 %48, %50
  %call102.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub101.i) #3
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %call102.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies103.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %52 = ptrtoint ptr %last_sleep_jiffies103.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %last_sleep_jiffies103.i, align 4
  tail call void @_rtl92c_phy_set_rf_sleep(ptr noundef %hw) #3
  br label %if.then109.i

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %rfpwr_state) #6
  br label %cleanup

if.then109.i:                                     ; preds = %for.end99.i, %if.else56.i, %if.then52.i, %if.then46.i, %if.else13.i, %if.then12.i
  %53 = ptrtoint ptr %rfpwr_state1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rfpwr_state, ptr %rfpwr_state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then109.i, %sw.epilog.i, %sw.bb62.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb62.i.cleanup_crit_edge ], [ true, %if.then109.i ], [ false, %sw.epilog.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ce_phy_set_rf_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl92c_phy_set_rf_sleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 37, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 51, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 124, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 127, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 161, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 171, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 201, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 223, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 225, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 232, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 234, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 237, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 255, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtl92cu_phy_config_rf_with_headerfile._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtl92cu_phy_config_rf_with_headerfile._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 272, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 294, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtl92cu_phy_set_bw_mode_callback._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtl92cu_phy_set_bw_mode_callback._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @rtl92cu_phy_set_bw_mode_callback._entry.21, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 316, i32 3}
!43 = !{ptr @rtl92cu_phy_set_bw_mode_callback._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 322, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 393, i32 5}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 400, i32 4}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 424, i32 5}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 433, i32 5}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 442, i32 4}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 474, i32 5}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 482, i32 3}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192cu/phy.c", i32 489, i32 3}
!62 = !{ptr @_rtl92cu_phy_set_rf_power_state._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @_rtl92cu_phy_set_rf_power_state._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
