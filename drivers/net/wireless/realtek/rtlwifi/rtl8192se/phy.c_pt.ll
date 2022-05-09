; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c"
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
%struct.rtl_hal_cfg = type { i8, i8, ptr, ptr, ptr, ptr, ptr, i32, [91 x i32] }
%struct.rtl_hal_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt_firmware = type { ptr, i32, i16, [64000 x i8], [64000 x i8], i32, i32, [90000 x i8], i32, i16 }
%struct.swchnlcmd = type { i32, i32, i32, i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regaddr(%#x), bitmask(%#x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BBR MASK=0x%x Addr[0x%x]=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@rtl92s_phy_scan_operation_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013rtl8192se: Unknown operation\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92s_phy_scan_operation_backup\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl92s_phy_scan_operation_backup._entry_ptr = internal global ptr @rtl92s_phy_scan_operation_backup._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl92s_phy_set_bw_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192se: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtl92s_phy_set_bw_mode\00", [41 x i8] zeroinitializer }, align 32
@rtl92s_phy_set_bw_mode._entry_ptr = internal global ptr @rtl92s_phy_set_bw_mode._entry, section ".printk_index", align 4
@rtl92s_phy_set_bw_mode._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92s_phy_set_bw_mode._entry_ptr.15 = internal global ptr @rtl92s_phy_set_bw_mode._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<==\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch to channel%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"awake, slept:%d ms state_inap:%x\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] = %d before doze!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERFOFF: %d times TcbBusyQueue[%d] = %d !\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sleep awaked:%d ms state_inap:%x\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl92s_phy_set_rf_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.8, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013rtl8192se: switch case %#x not processed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rtl92s_phy_set_rf_power_state\00", [34 x i8] zeroinitializer }, align 32
@rtl92s_phy_set_rf_power_state._entry_ptr = internal global ptr @rtl92s_phy_set_rf_power_state._entry, section ".printk_index", align 4
@rtl8192seradioa_1t_array = external dso_local local_unnamed_addr global [202 x i32], align 4
@rtl8192seradiob_gm_array = external dso_local local_unnamed_addr global [10 x i32], align 4
@rtl8192seradiob_array = external dso_local local_unnamed_addr global [22 x i32], align 4
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@rtl8192semac_2t_array = external dso_local local_unnamed_addr global [106 x i32], align 4
@rtl92s_phy_bb_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtl8192se: RF_Type(%x) does not match RF_Num(%x)!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl92s_phy_bb_config\00", [43 x i8] zeroinitializer }, align 32
@rtl92s_phy_bb_config._entry_ptr = internal global ptr @rtl92s_phy_bb_config._entry, section ".printk_index", align 4
@rtl92s_phy_bb_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.8, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtl8192se: path1 0x%x, path2 0x%x, pathmap 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl92s_phy_bb_config._entry_ptr.32 = internal global ptr @rtl92s_phy_bb_config._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Channel-%d, cckPowerLevel (A / B) = 0x%x / 0x%x, ofdmPowerLevel (A / B) = 0x%x / 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl92s_phy_chk_fwcmd_iodone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.8, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013rtl8192se: Set FW Cmd fail!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl92s_phy_chk_fwcmd_iodone\00", [36 x i8] zeroinitializer }, align 32
@rtl92s_phy_chk_fwcmd_iodone._entry_ptr = internal global ptr @rtl92s_phy_chk_fwcmd_iodone._entry, section ".printk_index", align 4
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Set FW Cmd(%#x), set_fwcmd_inprogress(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RA init!!\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set DIG disable!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Set DIG enable or resume!!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set DIG halt!!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Set TxPwr tracking!! FwCmdMap(%#x), FwParam(%#x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[FW CMD] [New Version] Set RA/IOT Comb in n mode!! FwCmdMap(%#x), FwParam(%#x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"[FW CMD] Set PAPE Control\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFR-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFW-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@_rtl92s_phy_sw_chnl_step_by_step.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8192se: invalid channel for Zebra: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92s_phy_sw_chnl_step_by_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.49, ptr @.str.8, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"_rtl92s_phy_sw_chnl_step_by_step\00", [63 x i8] zeroinitializer }, align 32
@_rtl92s_phy_sw_chnl_step_by_step._entry_ptr = internal global ptr @_rtl92s_phy_sw_chnl_step_by_step._entry, section ".printk_index", align 4
@_rtl92s_phy_bb_config_parafile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.8, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8192se: Write BB Reg Fail!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"_rtl92s_phy_bb_config_parafile\00", [33 x i8] zeroinitializer }, align 32
@_rtl92s_phy_bb_config_parafile._entry_ptr = internal global ptr @_rtl92s_phy_bb_config_parafile._entry, section ".printk_index", align 4
@_rtl92s_phy_bb_config_parafile._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.8, i32 922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rtl8192se: _rtl92s_phy_bb_config_parafile(): BB_PG Reg Fail!!\0A\00", [63 x i8] zeroinitializer }, align 32
@_rtl92s_phy_bb_config_parafile._entry_ptr.55 = internal global ptr @_rtl92s_phy_bb_config_parafile._entry.53, section ".printk_index", align 4
@_rtl92s_phy_bb_config_parafile._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.8, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013rtl8192se: %s(): AGC Table Fail\0A\00", [61 x i8] zeroinitializer }, align 32
@_rtl92s_phy_bb_config_parafile._entry_ptr.58 = internal global ptr @_rtl92s_phy_bb_config_parafile._entry.56, section ".printk_index", align 4
@rtl8192seagctab_array = external dso_local local_unnamed_addr global [320 x i32], align 4
@rtl8192sephy_reg_2t2rarray = external dso_local local_unnamed_addr global [372 x i32], align 4
@rtl8192sephy_changeto_1t1rarray = external dso_local local_unnamed_addr global [48 x i32], align 4
@rtl8192sephy_changeto_1t2rarray = external dso_local local_unnamed_addr global [45 x i32], align 4
@rtl8192sephy_reg_array_pg = external dso_local local_unnamed_addr global [84 x i32], align 4
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FW_CMD_RA_RESET\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW_CMD_RA_ACTIVE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW_CMD_RA_REFRESH_N\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FW_CMD_RA_REFRESH_BG\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW_CMD_RA_REFRESH_N_COMB\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FW_CMD_RA_REFRESH_BG_COMB\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW_CMD_IQK_ENABLE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW_CMD_LPS_ENTER\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW_CMD_LPS_LEAVE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW_CMD_ADD_A2_ENTRY\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW_CMD_CTRL_DM_BY_DRIVER\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 9, i64 30]
@__sancov_gen_cov_switch_values.72 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 10, i64 14, i64 15, i64 16, i64 17, i64 18, i64 24, i64 25, i64 28, i64 29, i64 30]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 9]
@__sancov_gen_cov_switch_values.74 = internal global [17 x i64] [i64 15, i64 8, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 15, i64 16, i64 17, i64 18, i64 22, i64 23, i64 26, i64 27, i64 30]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 29, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 36, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 49, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 155, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 168, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 185, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 222, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 237, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 262, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 287, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 294, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 432, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 528, i32 6 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 536, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 557, i32 5 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 583, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 593, i32 6 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 602, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 607, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 616, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 965, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1047, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1049, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1085, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1096, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1160, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1189, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1341, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1380, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1387, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1395, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1402, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1418, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1440, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1528, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 121, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 144, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 348, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 411, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 909, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 922, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 930, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1221, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1226, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1231, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1239, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1247, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1254, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1261, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1296, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1305, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1310, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1315, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @_rtl92s_phy_bb_config_parafile._entry, ptr @_rtl92s_phy_bb_config_parafile._entry.53, ptr @_rtl92s_phy_bb_config_parafile._entry.56, ptr @_rtl92s_phy_bb_config_parafile._entry_ptr, ptr @_rtl92s_phy_bb_config_parafile._entry_ptr.55, ptr @_rtl92s_phy_bb_config_parafile._entry_ptr.58, ptr @_rtl92s_phy_sw_chnl_step_by_step._entry, ptr @_rtl92s_phy_sw_chnl_step_by_step._entry_ptr, ptr @rtl92s_phy_bb_config._entry, ptr @rtl92s_phy_bb_config._entry.30, ptr @rtl92s_phy_bb_config._entry_ptr, ptr @rtl92s_phy_bb_config._entry_ptr.32, ptr @rtl92s_phy_chk_fwcmd_iodone._entry, ptr @rtl92s_phy_chk_fwcmd_iodone._entry_ptr, ptr @rtl92s_phy_scan_operation_backup._entry, ptr @rtl92s_phy_scan_operation_backup._entry_ptr, ptr @rtl92s_phy_set_bw_mode._entry, ptr @rtl92s_phy_set_bw_mode._entry.14, ptr @rtl92s_phy_set_bw_mode._entry_ptr, ptr @rtl92s_phy_set_bw_mode._entry_ptr.15, ptr @rtl92s_phy_set_rf_power_state._entry, ptr @rtl92s_phy_set_rf_power_state._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_scan_operation_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_set_bw_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_set_bw_mode._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_set_rf_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_bb_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_bb_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92s_phy_chk_fwcmd_iodone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_phy_sw_chnl_step_by_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_phy_bb_config_parafile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_phy_bb_config_parafile._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92s_phy_bb_config_parafile._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92s_phy_query_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %bitmask) #5
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #5
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #5, !range !149
  %and = and i32 %call.i, %bitmask
  %shr = lshr i32 %and, %4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %bitmask, i32 noundef %regaddr, i32 noundef %call.i) #5
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_set_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #5
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #5, !range !149
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call.i, %neg
  %shl = shl i32 %data, %4
  %or = or i32 %and, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %5 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write32_async.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef %regaddr, i32 noundef %data.addr.0) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_dword.exit_crit_edge, label %if.then.i

if.end.rtl_write_dword.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i15, align 4
  %call.i16 = tail call i32 %12(ptr noundef %1, i32 noundef %regaddr) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.end.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92s_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #5
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #5
  %call = tail call fastcc i32 @_rtl92s_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr)
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #5, !range !149
  %and = and i32 %call, %bitmask
  %shr = lshr i32 %and, %2
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %call) #5
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92s_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 2084, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cmp = icmp eq i32 %rfpath, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rfhssi_para2 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 8
  %8 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfhssi_para2, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %cfg.i52 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i52, align 8
  %ops.i53 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i53, align 4
  %get_bbreg.i54 = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %get_bbreg.i54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_bbreg.i54, align 4
  %call.i55 = tail call i32 %17(ptr noundef %hw, i32 noundef %9, i32 noundef -1) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tmplong2.0 = phi i32 [ %call.i55, %if.else ], [ %call.i, %entry.if.end_crit_edge ]
  %and2 = and i32 %tmplong2.0, 8388607
  %and = shl i32 %offset, 23
  %shl = and i32 %and, 528482304
  %or = or i32 %shl, %and2
  %or3 = or i32 %or, -2147483648
  %and4 = and i32 %call.i, 2147483647
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %cfg.i57 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i57, align 8
  %ops.i58 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops.i58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i58, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %25(ptr noundef %hw, i32 noundef 2084, i32 noundef -1, i32 noundef %and4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  %rfhssi_para25 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 8
  %27 = ptrtoint ptr %rfhssi_para25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rfhssi_para25, align 4
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %cfg.i60 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i60, align 8
  %ops.i61 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i61, align 4
  %set_bbreg.i62 = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %set_bbreg.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_bbreg.i62, align 4
  tail call void %36(ptr noundef %hw, i32 noundef %28, i32 noundef -1, i32 noundef %or3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  %or6 = or i32 %call.i, -2147483648
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %cfg.i64 = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i64, align 8
  %ops.i65 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i65, align 4
  %set_bbreg.i66 = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %set_bbreg.i66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_bbreg.i66, align 4
  tail call void %45(ptr noundef %hw, i32 noundef 2084, i32 noundef -1, i32 noundef %or6) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #5
  br i1 %cmp, label %if.end.if.end17_crit_edge, label %if.else10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rfpath)
  %cmp11 = icmp eq i32 %rfpath, 1
  br i1 %cmp11, label %if.else10.if.end17_crit_edge, label %if.else10.if.else20_crit_edge

if.else10.if.else20_crit_edge:                    ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else20

if.else10.if.end17_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end17:                                         ; preds = %if.else10.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %.sink = phi i32 [ 2080, %if.end.if.end17_crit_edge ], [ 2088, %if.else10.if.end17_crit_edge ]
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %cfg.i73 = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i73, align 8
  %ops.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i74, align 4
  %get_bbreg.i75 = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %get_bbreg.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_bbreg.i75, align 4
  %call.i76 = tail call i32 %54(ptr noundef %hw, i32 noundef %.sink, i32 noundef 256) #5
  %rfpi_enable.0 = trunc i32 %call.i76 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rfpi_enable.0)
  %tobool.not = icmp eq i8 %rfpi_enable.0, 0
  br i1 %tobool.not, label %if.end17.if.else20_crit_edge, label %if.then18

if.end17.if.else20_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %rf_rbpi = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 17
  br label %if.end22

if.else20:                                        ; preds = %if.end17.if.else20_crit_edge, %if.else10.if.else20_crit_edge
  %rf_rb = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  %rf_rb.sink = phi ptr [ %rf_rb, %if.else20 ], [ %rf_rbpi, %if.then18 ]
  %55 = ptrtoint ptr %rf_rb.sink to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rf_rb.sink, align 4
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 8
  %cfg.i83 = getelementptr inbounds %struct.rtl_priv, ptr %58, i32 0, i32 32
  %59 = ptrtoint ptr %cfg.i83 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i83, align 8
  %ops.i84 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %ops.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i84, align 4
  %get_bbreg.i85 = getelementptr inbounds %struct.rtl_hal_ops, ptr %62, i32 0, i32 45
  %63 = ptrtoint ptr %get_bbreg.i85 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %get_bbreg.i85, align 4
  %call.i86 = tail call i32 %64(ptr noundef %hw, i32 noundef %56, i32 noundef 1048575) #5
  %rf_rb23 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  %65 = ptrtoint ptr %rf_rb23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rf_rb23, align 4
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 8
  %cfg.i88 = getelementptr inbounds %struct.rtl_priv, ptr %68, i32 0, i32 32
  %69 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i88, align 8
  %ops.i89 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %ops.i89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i89, align 4
  %get_bbreg.i90 = getelementptr inbounds %struct.rtl_hal_ops, ptr %72, i32 0, i32 45
  %73 = ptrtoint ptr %get_bbreg.i90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_bbreg.i90, align 4
  %call.i91 = tail call i32 %74(ptr noundef %hw, i32 noundef %66, i32 noundef 1048575) #5
  %75 = ptrtoint ptr %rf_rb23 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rf_rb23, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.46, i32 noundef %rfpath, i32 noundef %76, i32 noundef %call.i91) #5
  ret i32 %call.i91
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rf_pathmap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 60
  %2 = ptrtoint ptr %rf_pathmap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rf_pathmap, align 4
  %conv = zext i16 %3 to i32
  %4 = shl nuw i32 1, %rfpath
  %5 = and i32 %4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #5
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, 1048575
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @_rtl92s_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr)
  %6 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #5, !range !149
  %neg = xor i32 %bitmask, -1
  %and4 = and i32 %call, %neg
  %shl = shl i32 %data, %6
  %or = or i32 %and4, %shl
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then2 ], [ %data, %if.end.if.end5_crit_edge ]
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %phy.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 14
  %and.i = shl i32 %regaddr, 20
  %shl.i = and i32 %and.i, 66060288
  %and1.i = and i32 %data.addr.0, 1048575
  %or.i = or i32 %and1.i, %shl.i
  %rf3wire_offset.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %rfpath, i32 4
  %9 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rf3wire_offset.i, align 4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 46
  %15 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %16(ptr noundef %hw, i32 noundef %10, i32 noundef -1, i32 noundef %or.i) #5
  %17 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rf3wire_offset.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %8, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.47, i32 noundef %rfpath, i32 noundef %18, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0, i32 noundef %rfpath) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_scan_operation_backup(ptr noundef %hw, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %operation, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 15)
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef 16)
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_set_fw_cmd(ptr noundef %hw, i32 noundef %fw_cmdio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fwcmd_ioparam = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 43
  %2 = ptrtoint ptr %fwcmd_ioparam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fwcmd_ioparam, align 8
  %fwcmd_iomap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 42
  %4 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fwcmd_iomap, align 2
  %set_fwcmd_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 44
  %6 = ptrtoint ptr %set_fwcmd_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set_fwcmd_inprogress, align 4, !range !150
  %8 = zext i8 %7 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.38, i32 noundef %fw_cmdio, i32 noundef %8) #5
  %pfirmware = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 33
  %9 = ptrtoint ptr %pfirmware to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pfirmware, align 8
  %firmwareversion = getelementptr inbounds %struct.rt_firmware, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %firmwareversion to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %firmwareversion, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %12)
  %cmp = icmp ugt i16 %12, 52
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = zext i32 %fw_cmdio to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %fw_cmdio, label %if.then.if.end18_crit_edge [
    i32 8, label %if.then.if.end18.thread_crit_edge
    i32 9, label %sw.bb9
  ]

if.then.if.end18.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.thread

if.else:                                          ; preds = %entry
  %14 = zext i32 %fw_cmdio to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %fw_cmdio, label %if.else.if.end18_crit_edge [
    i32 30, label %if.else.land.lhs.true303_crit_edge
    i32 8, label %if.else.land.lhs.true303_crit_edge660
    i32 9, label %if.else.land.lhs.true303_crit_edge661
  ]

if.else.land.lhs.true303_crit_edge661:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303

if.else.land.lhs.true303_crit_edge660:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303

if.else.land.lhs.true303_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %if.then.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %fw_cmdio)
  %cmp26 = icmp eq i32 %fw_cmdio, 27
  %spec.select609 = select i1 %cmp26, i32 28, i32 %fw_cmdio
  br label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end18, %sw.bb9, %if.then.if.end18.thread_crit_edge
  %fw_cmdio.addr.0604 = phi i32 [ %fw_cmdio, %if.end18 ], [ 18, %sw.bb9 ], [ 17, %if.then.if.end18.thread_crit_edge ]
  %15 = phi i32 [ %spec.select609, %if.end18 ], [ 18, %sw.bb9 ], [ 17, %if.then.if.end18.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 61, i16 %12)
  %cmp23605 = icmp ugt i16 %12, 61
  %fw_cmdio.addr.1 = select i1 %cmp23605, i32 %15, i32 %fw_cmdio.addr.0604
  %16 = zext i32 %fw_cmdio.addr.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %fw_cmdio.addr.1, label %if.end18.thread.land.lhs.true303_crit_edge [
    i32 10, label %sw.bb31
    i32 1, label %sw.bb44
    i32 0, label %if.end18.thread.sw.bb53_crit_edge
    i32 3, label %if.end18.thread.sw.bb53_crit_edge662
    i32 2, label %sw.bb67
    i32 14, label %sw.bb76
    i32 17, label %sw.bb106
    i32 18, label %sw.bb133
    i32 30, label %sw.bb159
    i32 28, label %sw.bb176
    i32 16, label %sw.bb185
    i32 15, label %sw.bb233
    i32 5, label %sw.bb242
    i32 4, label %sw.bb251
    i32 25, label %sw.bb270
    i32 24, label %sw.bb279
    i32 29, label %sw.bb288
  ]

if.end18.thread.sw.bb53_crit_edge662:             ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end18.thread.sw.bb53_crit_edge:                ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb53

if.end18.thread.land.lhs.true303_crit_edge:       ; preds = %if.end18.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303

sw.bb31:                                          ; preds = %if.end18.thread
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.39) #5
  %17 = or i16 %5, 8
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %17) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %sw.bb31.rtl_write_word.exit_crit_edge, label %if.then.i

sw.bb31.rtl_write_word.exit_crit_edge:            ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %24 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %25(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %sw.bb31.rtl_write_word.exit_crit_edge
  %26 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %17, ptr %fwcmd_iomap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  %28 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fwcmd_iomap, align 2
  %30 = and i16 %29, -9
  store i16 %30, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb44:                                          ; preds = %if.end18.thread
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.40) #5
  %31 = and i16 %5, -2
  %write16_async.i459 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %32 = ptrtoint ptr %write16_async.i459 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write16_async.i459, align 4
  tail call void %33(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %31) #5
  %cfg.i460 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %34 = ptrtoint ptr %cfg.i460 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i460, align 8
  %write_readback.i461 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i461 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i461, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i462 = icmp eq i8 %37, 0
  br i1 %tobool.not.i462, label %sw.bb44.rtl_write_word.exit466_crit_edge, label %if.then.i465

sw.bb44.rtl_write_word.exit466_crit_edge:         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit466

if.then.i465:                                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i463 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %38 = ptrtoint ptr %read16_sync.i463 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read16_sync.i463, align 4
  %call.i464 = tail call zeroext i16 %39(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit466

rtl_write_word.exit466:                           ; preds = %if.then.i465, %sw.bb44.rtl_write_word.exit466_crit_edge
  %40 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %31, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb53:                                          ; preds = %if.end18.thread.sw.bb53_crit_edge, %if.end18.thread.sw.bb53_crit_edge662
  %dm_flag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 30
  %41 = ptrtoint ptr %dm_flag to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dm_flag, align 4
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool56.not = icmp eq i8 %43, 0
  br i1 %tobool56.not, label %if.then57, label %sw.bb53.cleanup_crit_edge

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then57:                                        ; preds = %sw.bb53
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.41) #5
  %44 = or i16 %5, 5
  %write16_async.i467 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %45 = ptrtoint ptr %write16_async.i467 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write16_async.i467, align 4
  tail call void %46(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %44) #5
  %cfg.i468 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i468 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i468, align 8
  %write_readback.i469 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i469 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i469, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i470 = icmp eq i8 %50, 0
  br i1 %tobool.not.i470, label %if.then57.rtl_write_word.exit474_crit_edge, label %if.then.i473

if.then57.rtl_write_word.exit474_crit_edge:       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit474

if.then.i473:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i471 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %51 = ptrtoint ptr %read16_sync.i471 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read16_sync.i471, align 4
  %call.i472 = tail call zeroext i16 %52(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit474

rtl_write_word.exit474:                           ; preds = %if.then.i473, %if.then57.rtl_write_word.exit474_crit_edge
  %53 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %44, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb67:                                          ; preds = %if.end18.thread
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.42) #5
  %54 = and i16 %5, -6
  %write16_async.i475 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %55 = ptrtoint ptr %write16_async.i475 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write16_async.i475, align 4
  tail call void %56(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %54) #5
  %cfg.i476 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i476 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i476, align 8
  %write_readback.i477 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i477 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i477, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i478 = icmp eq i8 %60, 0
  br i1 %tobool.not.i478, label %sw.bb67.rtl_write_word.exit482_crit_edge, label %if.then.i481

sw.bb67.rtl_write_word.exit482_crit_edge:         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit482

if.then.i481:                                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i479 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %61 = ptrtoint ptr %read16_sync.i479 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read16_sync.i479, align 4
  %call.i480 = tail call zeroext i16 %62(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit482

rtl_write_word.exit482:                           ; preds = %if.then.i481, %sw.bb67.rtl_write_word.exit482_crit_edge
  %63 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %54, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb76:                                          ; preds = %if.end18.thread
  %64 = or i16 %5, 64
  %and80 = and i32 %3, 65535
  %thermalvalue = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 23
  %65 = ptrtoint ptr %thermalvalue to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %thermalvalue, align 2
  %conv82 = zext i8 %66 to i32
  %shl = shl nuw i32 %conv82, 24
  %thermalmeter = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 56
  %67 = ptrtoint ptr %thermalmeter to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %thermalmeter, align 1
  %conv83 = zext i8 %68 to i32
  %shl84 = shl nuw nsw i32 %conv83, 16
  %or85 = or i32 %shl, %and80
  %or86 = or i32 %or85, %shl84
  %conv87 = zext i16 %64 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.43, i32 noundef %conv87, i32 noundef %or86) #5
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %69 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write32_async.i, align 4
  tail call void %70(ptr noundef %1, i32 noundef 872, i32 noundef %or86) #5
  %cfg.i483 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i483 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i483, align 8
  %write_readback.i484 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i484 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i484, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i485 = icmp eq i8 %74, 0
  br i1 %tobool.not.i485, label %sw.bb76.rtl_write_dword.exit_crit_edge, label %if.then.i487

sw.bb76.rtl_write_dword.exit_crit_edge:           ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i487:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %75 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read32_sync.i, align 4
  %call.i486 = tail call i32 %76(ptr noundef %1, i32 noundef 872) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i487, %sw.bb76.rtl_write_dword.exit_crit_edge
  %77 = ptrtoint ptr %fwcmd_ioparam to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or86, ptr %fwcmd_ioparam, align 8
  %write16_async.i488 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %78 = ptrtoint ptr %write16_async.i488 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16_async.i488, align 4
  tail call void %79(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %64) #5
  %80 = ptrtoint ptr %cfg.i483 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i483, align 8
  %write_readback.i490 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i490 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i490, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i491 = icmp eq i8 %83, 0
  br i1 %tobool.not.i491, label %rtl_write_dword.exit.rtl_write_word.exit495_crit_edge, label %if.then.i494

rtl_write_dword.exit.rtl_write_word.exit495_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit495

if.then.i494:                                     ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i492 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %84 = ptrtoint ptr %read16_sync.i492 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read16_sync.i492, align 4
  %call.i493 = tail call zeroext i16 %85(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit495

rtl_write_word.exit495:                           ; preds = %if.then.i494, %rtl_write_dword.exit.rtl_write_word.exit495_crit_edge
  %86 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %64, ptr %fwcmd_iomap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748000) #5
  %88 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %fwcmd_iomap, align 2
  %90 = and i16 %89, -65
  store i16 %90, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb106:                                         ; preds = %if.end18.thread
  %91 = and i16 %5, -57
  %92 = or i16 %91, 32
  %and113 = and i32 %3, -65536
  %conv114 = zext i16 %92 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.44, i32 noundef %conv114, i32 noundef %and113) #5
  %write32_async.i496 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %93 = ptrtoint ptr %write32_async.i496 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write32_async.i496, align 4
  tail call void %94(ptr noundef %1, i32 noundef 872, i32 noundef %and113) #5
  %cfg.i497 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %95 = ptrtoint ptr %cfg.i497 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i497, align 8
  %write_readback.i498 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %write_readback.i498 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_readback.i498, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i499 = icmp eq i8 %98, 0
  br i1 %tobool.not.i499, label %sw.bb106.rtl_write_dword.exit503_crit_edge, label %if.then.i502

sw.bb106.rtl_write_dword.exit503_crit_edge:       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit503

if.then.i502:                                     ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i500 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %99 = ptrtoint ptr %read32_sync.i500 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %read32_sync.i500, align 4
  %call.i501 = tail call i32 %100(ptr noundef %1, i32 noundef 872) #5
  br label %rtl_write_dword.exit503

rtl_write_dword.exit503:                          ; preds = %if.then.i502, %sw.bb106.rtl_write_dword.exit503_crit_edge
  %101 = ptrtoint ptr %fwcmd_ioparam to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and113, ptr %fwcmd_ioparam, align 8
  %write16_async.i504 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %102 = ptrtoint ptr %write16_async.i504 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write16_async.i504, align 4
  tail call void %103(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %92) #5
  %104 = ptrtoint ptr %cfg.i497 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i497, align 8
  %write_readback.i506 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %write_readback.i506 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %write_readback.i506, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i507 = icmp eq i8 %107, 0
  br i1 %tobool.not.i507, label %rtl_write_dword.exit503.rtl_write_word.exit511_crit_edge, label %if.then.i510

rtl_write_dword.exit503.rtl_write_word.exit511_crit_edge: ; preds = %rtl_write_dword.exit503
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit511

if.then.i510:                                     ; preds = %rtl_write_dword.exit503
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i508 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %108 = ptrtoint ptr %read16_sync.i508 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read16_sync.i508, align 4
  %call.i509 = tail call zeroext i16 %109(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit511

rtl_write_word.exit511:                           ; preds = %if.then.i510, %rtl_write_dword.exit503.rtl_write_word.exit511_crit_edge
  %110 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %92, ptr %fwcmd_iomap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748000) #5
  %112 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %fwcmd_iomap, align 2
  %114 = and i16 %113, -33
  store i16 %114, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb133:                                         ; preds = %if.end18.thread
  %115 = and i16 %5, -57
  %116 = or i16 %115, 16
  %and140 = and i32 %3, -65536
  %write32_async.i512 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %117 = ptrtoint ptr %write32_async.i512 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write32_async.i512, align 4
  tail call void %118(ptr noundef %1, i32 noundef 872, i32 noundef %and140) #5
  %cfg.i513 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %119 = ptrtoint ptr %cfg.i513 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i513, align 8
  %write_readback.i514 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i514 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i514, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i515 = icmp eq i8 %122, 0
  br i1 %tobool.not.i515, label %sw.bb133.rtl_write_dword.exit519_crit_edge, label %if.then.i518

sw.bb133.rtl_write_dword.exit519_crit_edge:       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit519

if.then.i518:                                     ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i516 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %123 = ptrtoint ptr %read32_sync.i516 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read32_sync.i516, align 4
  %call.i517 = tail call i32 %124(ptr noundef %1, i32 noundef 872) #5
  br label %rtl_write_dword.exit519

rtl_write_dword.exit519:                          ; preds = %if.then.i518, %sw.bb133.rtl_write_dword.exit519_crit_edge
  %125 = ptrtoint ptr %fwcmd_ioparam to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %and140, ptr %fwcmd_ioparam, align 8
  %write16_async.i520 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %126 = ptrtoint ptr %write16_async.i520 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write16_async.i520, align 4
  tail call void %127(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %116) #5
  %128 = ptrtoint ptr %cfg.i513 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i513, align 8
  %write_readback.i522 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %write_readback.i522 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %write_readback.i522, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i523 = icmp eq i8 %131, 0
  br i1 %tobool.not.i523, label %rtl_write_dword.exit519.rtl_write_word.exit527_crit_edge, label %if.then.i526

rtl_write_dword.exit519.rtl_write_word.exit527_crit_edge: ; preds = %rtl_write_dword.exit519
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit527

if.then.i526:                                     ; preds = %rtl_write_dword.exit519
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i524 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %132 = ptrtoint ptr %read16_sync.i524 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read16_sync.i524, align 4
  %call.i525 = tail call zeroext i16 %133(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit527

rtl_write_word.exit527:                           ; preds = %if.then.i526, %rtl_write_dword.exit519.rtl_write_word.exit527_crit_edge
  %134 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %116, ptr %fwcmd_iomap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #5
  %136 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %fwcmd_iomap, align 2
  %138 = and i16 %137, -17
  store i16 %138, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb159:                                         ; preds = %if.end18.thread
  %139 = or i16 %5, 128
  %write16_async.i528 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %140 = ptrtoint ptr %write16_async.i528 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write16_async.i528, align 4
  tail call void %141(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %139) #5
  %cfg.i529 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %142 = ptrtoint ptr %cfg.i529 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i529, align 8
  %write_readback.i530 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %write_readback.i530 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %write_readback.i530, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i531 = icmp eq i8 %145, 0
  br i1 %tobool.not.i531, label %sw.bb159.rtl_write_word.exit535_crit_edge, label %if.then.i534

sw.bb159.rtl_write_word.exit535_crit_edge:        ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit535

if.then.i534:                                     ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i532 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %146 = ptrtoint ptr %read16_sync.i532 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %read16_sync.i532, align 4
  %call.i533 = tail call zeroext i16 %147(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit535

rtl_write_word.exit535:                           ; preds = %if.then.i534, %sw.bb159.rtl_write_word.exit535_crit_edge
  %148 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %139, ptr %fwcmd_iomap, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #5
  %150 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %fwcmd_iomap, align 2
  %152 = and i16 %151, -129
  store i16 %152, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb176:                                         ; preds = %if.end18.thread
  %153 = or i16 %5, 512
  %write16_async.i536 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %154 = ptrtoint ptr %write16_async.i536 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write16_async.i536, align 4
  tail call void %155(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %153) #5
  %cfg.i537 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %156 = ptrtoint ptr %cfg.i537 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i537, align 8
  %write_readback.i538 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 1
  %158 = ptrtoint ptr %write_readback.i538 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %write_readback.i538, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i539 = icmp eq i8 %159, 0
  br i1 %tobool.not.i539, label %sw.bb176.rtl_write_word.exit543_crit_edge, label %if.then.i542

sw.bb176.rtl_write_word.exit543_crit_edge:        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit543

if.then.i542:                                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i540 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %160 = ptrtoint ptr %read16_sync.i540 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read16_sync.i540, align 4
  %call.i541 = tail call zeroext i16 %161(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit543

rtl_write_word.exit543:                           ; preds = %if.then.i542, %sw.bb176.rtl_write_word.exit543_crit_edge
  %162 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %153, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb185:                                         ; preds = %if.end18.thread
  %163 = or i16 %5, 7
  %dm_flag190 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 30
  %164 = ptrtoint ptr %dm_flag190 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %dm_flag190, align 4
  %166 = and i8 %165, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool193.not = icmp eq i8 %166, 0
  br i1 %tobool193.not, label %lor.lhs.false194, label %sw.bb185.if.then196_crit_edge

sw.bb185.if.then196_crit_edge:                    ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then196

lor.lhs.false194:                                 ; preds = %sw.bb185
  %dig_enable_flag = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 11
  %167 = ptrtoint ptr %dig_enable_flag to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dig_enable_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool195.not = icmp eq i8 %168, 0
  br i1 %tobool195.not, label %lor.lhs.false194.if.then196_crit_edge, label %lor.lhs.false194.if.end200_crit_edge

lor.lhs.false194.if.end200_crit_edge:             ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end200

lor.lhs.false194.if.then196_crit_edge:            ; preds = %lor.lhs.false194
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then196

if.then196:                                       ; preds = %lor.lhs.false194.if.then196_crit_edge, %sw.bb185.if.then196_crit_edge
  %169 = and i16 %163, -2
  br label %if.end200

if.end200:                                        ; preds = %if.then196, %lor.lhs.false194.if.end200_crit_edge
  %fw_cmdmap.0 = phi i16 [ %169, %if.then196 ], [ %163, %lor.lhs.false194.if.end200_crit_edge ]
  %170 = and i8 %165, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool205.not = icmp eq i8 %170, 0
  br i1 %tobool205.not, label %lor.lhs.false206, label %if.end200.if.then210_crit_edge

if.end200.if.then210_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then210

lor.lhs.false206:                                 ; preds = %if.end200
  %dynamic_txpower_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 6
  %171 = ptrtoint ptr %dynamic_txpower_enable to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %dynamic_txpower_enable, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %172)
  %tobool208.not = icmp eq i8 %172, 0
  br i1 %tobool208.not, label %lor.lhs.false206.if.end214_crit_edge, label %lor.lhs.false206.if.then210_crit_edge

lor.lhs.false206.if.then210_crit_edge:            ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then210

lor.lhs.false206.if.end214_crit_edge:             ; preds = %lor.lhs.false206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

if.then210:                                       ; preds = %lor.lhs.false206.if.then210_crit_edge, %if.end200.if.then210_crit_edge
  %173 = and i16 %fw_cmdmap.0, -3
  br label %if.end214

if.end214:                                        ; preds = %if.then210, %lor.lhs.false206.if.end214_crit_edge
  %fw_cmdmap.1 = phi i16 [ %173, %if.then210 ], [ %fw_cmdmap.0, %lor.lhs.false206.if.end214_crit_edge ]
  %dig_ext_port_stage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 35, i32 12
  %174 = ptrtoint ptr %dig_ext_port_stage to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %dig_ext_port_stage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %switch = icmp ult i8 %175, 2
  %176 = and i16 %fw_cmdmap.1, -2
  %spec.select = select i1 %switch, i16 %176, i16 %fw_cmdmap.1
  %write16_async.i544 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %177 = ptrtoint ptr %write16_async.i544 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write16_async.i544, align 4
  tail call void %178(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %spec.select) #5
  %cfg.i545 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %179 = ptrtoint ptr %cfg.i545 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cfg.i545, align 8
  %write_readback.i546 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %write_readback.i546 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %write_readback.i546, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i547 = icmp eq i8 %182, 0
  br i1 %tobool.not.i547, label %if.end214.land.lhs.true303.sink.split_crit_edge, label %if.end214.land.lhs.true303.sink.split.sink.split_crit_edge

if.end214.land.lhs.true303.sink.split.sink.split_crit_edge: ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split.sink.split

if.end214.land.lhs.true303.sink.split_crit_edge:  ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split

sw.bb233:                                         ; preds = %if.end18.thread
  %183 = and i16 %5, -8
  %write16_async.i552 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %184 = ptrtoint ptr %write16_async.i552 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %write16_async.i552, align 4
  tail call void %185(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %183) #5
  %cfg.i553 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %186 = ptrtoint ptr %cfg.i553 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cfg.i553, align 8
  %write_readback.i554 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %write_readback.i554 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %write_readback.i554, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool.not.i555 = icmp eq i8 %189, 0
  br i1 %tobool.not.i555, label %sw.bb233.land.lhs.true303.sink.split_crit_edge, label %sw.bb233.land.lhs.true303.sink.split.sink.split_crit_edge

sw.bb233.land.lhs.true303.sink.split.sink.split_crit_edge: ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split.sink.split

sw.bb233.land.lhs.true303.sink.split_crit_edge:   ; preds = %sw.bb233
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split

sw.bb242:                                         ; preds = %if.end18.thread
  %190 = and i16 %5, -3
  %write16_async.i560 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %191 = ptrtoint ptr %write16_async.i560 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write16_async.i560, align 4
  tail call void %192(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %190) #5
  %cfg.i561 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %193 = ptrtoint ptr %cfg.i561 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %cfg.i561, align 8
  %write_readback.i562 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %write_readback.i562 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %write_readback.i562, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i563 = icmp eq i8 %196, 0
  br i1 %tobool.not.i563, label %sw.bb242.land.lhs.true303.sink.split_crit_edge, label %sw.bb242.land.lhs.true303.sink.split.sink.split_crit_edge

sw.bb242.land.lhs.true303.sink.split.sink.split_crit_edge: ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split.sink.split

sw.bb242.land.lhs.true303.sink.split_crit_edge:   ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split

sw.bb251:                                         ; preds = %if.end18.thread
  %dm_flag253 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 30
  %197 = ptrtoint ptr %dm_flag253 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %dm_flag253, align 4
  %199 = and i8 %198, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool256.not = icmp eq i8 %199, 0
  br i1 %tobool256.not, label %land.lhs.true, label %sw.bb251.cleanup_crit_edge

sw.bb251.cleanup_crit_edge:                       ; preds = %sw.bb251
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb251
  %dynamic_txpower_enable258 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 15, i32 6
  %200 = ptrtoint ptr %dynamic_txpower_enable258 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %dynamic_txpower_enable258, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool259.not = icmp eq i8 %201, 0
  br i1 %tobool259.not, label %if.then260, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then260:                                       ; preds = %land.lhs.true
  %202 = or i16 %5, 6
  %write16_async.i568 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %203 = ptrtoint ptr %write16_async.i568 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %write16_async.i568, align 4
  tail call void %204(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %202) #5
  %cfg.i569 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %205 = ptrtoint ptr %cfg.i569 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cfg.i569, align 8
  %write_readback.i570 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %write_readback.i570 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %write_readback.i570, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool.not.i571 = icmp eq i8 %208, 0
  br i1 %tobool.not.i571, label %if.then260.land.lhs.true303.sink.split_crit_edge, label %if.then260.land.lhs.true303.sink.split.sink.split_crit_edge

if.then260.land.lhs.true303.sink.split.sink.split_crit_edge: ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split.sink.split

if.then260.land.lhs.true303.sink.split_crit_edge: ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true303.sink.split

sw.bb270:                                         ; preds = %if.end18.thread
  %209 = or i16 %5, 256
  %write16_async.i576 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %210 = ptrtoint ptr %write16_async.i576 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %write16_async.i576, align 4
  tail call void %211(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %209) #5
  %cfg.i577 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %212 = ptrtoint ptr %cfg.i577 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cfg.i577, align 8
  %write_readback.i578 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %write_readback.i578 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %write_readback.i578, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i579 = icmp eq i8 %215, 0
  br i1 %tobool.not.i579, label %sw.bb270.rtl_write_word.exit583_crit_edge, label %if.then.i582

sw.bb270.rtl_write_word.exit583_crit_edge:        ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit583

if.then.i582:                                     ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i580 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %216 = ptrtoint ptr %read16_sync.i580 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %read16_sync.i580, align 4
  %call.i581 = tail call zeroext i16 %217(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit583

rtl_write_word.exit583:                           ; preds = %if.then.i582, %sw.bb270.rtl_write_word.exit583_crit_edge
  %218 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %209, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb279:                                         ; preds = %if.end18.thread
  %219 = and i16 %5, -257
  %write16_async.i584 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %220 = ptrtoint ptr %write16_async.i584 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %write16_async.i584, align 4
  tail call void %221(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %219) #5
  %cfg.i585 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %222 = ptrtoint ptr %cfg.i585 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i585, align 8
  %write_readback.i586 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %write_readback.i586 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %write_readback.i586, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool.not.i587 = icmp eq i8 %225, 0
  br i1 %tobool.not.i587, label %sw.bb279.rtl_write_word.exit591_crit_edge, label %if.then.i590

sw.bb279.rtl_write_word.exit591_crit_edge:        ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit591

if.then.i590:                                     ; preds = %sw.bb279
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i588 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %226 = ptrtoint ptr %read16_sync.i588 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read16_sync.i588, align 4
  %call.i589 = tail call zeroext i16 %227(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit591

rtl_write_word.exit591:                           ; preds = %if.then.i590, %sw.bb279.rtl_write_word.exit591_crit_edge
  %228 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %219, ptr %fwcmd_iomap, align 2
  br label %cleanup

sw.bb288:                                         ; preds = %if.end18.thread
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.45) #5
  %229 = and i16 %5, -1025
  %write16_async.i592 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %230 = ptrtoint ptr %write16_async.i592 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %write16_async.i592, align 4
  tail call void %231(ptr noundef %1, i32 noundef 868, i16 noundef zeroext %229) #5
  %cfg.i593 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %232 = ptrtoint ptr %cfg.i593 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cfg.i593, align 8
  %write_readback.i594 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %write_readback.i594 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %write_readback.i594, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i595 = icmp eq i8 %235, 0
  br i1 %tobool.not.i595, label %sw.bb288.rtl_write_word.exit599_crit_edge, label %if.then.i598

sw.bb288.rtl_write_word.exit599_crit_edge:        ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit599

if.then.i598:                                     ; preds = %sw.bb288
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i596 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %236 = ptrtoint ptr %read16_sync.i596 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %read16_sync.i596, align 4
  %call.i597 = tail call zeroext i16 %237(ptr noundef %1, i32 noundef 868) #5
  br label %rtl_write_word.exit599

rtl_write_word.exit599:                           ; preds = %if.then.i598, %sw.bb288.rtl_write_word.exit599_crit_edge
  %238 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %229, ptr %fwcmd_iomap, align 2
  br label %cleanup

land.lhs.true303.sink.split.sink.split:           ; preds = %if.then260.land.lhs.true303.sink.split.sink.split_crit_edge, %sw.bb242.land.lhs.true303.sink.split.sink.split_crit_edge, %sw.bb233.land.lhs.true303.sink.split.sink.split_crit_edge, %if.end214.land.lhs.true303.sink.split.sink.split_crit_edge
  %spec.select.sink.ph = phi i16 [ %spec.select, %if.end214.land.lhs.true303.sink.split.sink.split_crit_edge ], [ %183, %sw.bb233.land.lhs.true303.sink.split.sink.split_crit_edge ], [ %190, %sw.bb242.land.lhs.true303.sink.split.sink.split_crit_edge ], [ %202, %if.then260.land.lhs.true303.sink.split.sink.split_crit_edge ]
  %read16_sync.i572 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %239 = ptrtoint ptr %read16_sync.i572 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %read16_sync.i572, align 4
  %call.i573 = tail call zeroext i16 %240(ptr noundef %1, i32 noundef 868) #5
  br label %land.lhs.true303.sink.split

land.lhs.true303.sink.split:                      ; preds = %land.lhs.true303.sink.split.sink.split, %if.then260.land.lhs.true303.sink.split_crit_edge, %sw.bb242.land.lhs.true303.sink.split_crit_edge, %sw.bb233.land.lhs.true303.sink.split_crit_edge, %if.end214.land.lhs.true303.sink.split_crit_edge
  %spec.select.sink = phi i16 [ %spec.select, %if.end214.land.lhs.true303.sink.split_crit_edge ], [ %183, %sw.bb233.land.lhs.true303.sink.split_crit_edge ], [ %190, %sw.bb242.land.lhs.true303.sink.split_crit_edge ], [ %202, %if.then260.land.lhs.true303.sink.split_crit_edge ], [ %spec.select.sink.ph, %land.lhs.true303.sink.split.sink.split ]
  %fw_cmdio.addr.2.ph = phi i32 [ 16, %if.end214.land.lhs.true303.sink.split_crit_edge ], [ 15, %sw.bb233.land.lhs.true303.sink.split_crit_edge ], [ 5, %sw.bb242.land.lhs.true303.sink.split_crit_edge ], [ 4, %if.then260.land.lhs.true303.sink.split_crit_edge ], [ %fw_cmdio.addr.1, %land.lhs.true303.sink.split.sink.split ]
  %241 = ptrtoint ptr %fwcmd_iomap to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %spec.select.sink, ptr %fwcmd_iomap, align 2
  br label %land.lhs.true303

land.lhs.true303:                                 ; preds = %land.lhs.true303.sink.split, %if.end18.thread.land.lhs.true303_crit_edge, %if.else.land.lhs.true303_crit_edge, %if.else.land.lhs.true303_crit_edge660, %if.else.land.lhs.true303_crit_edge661
  %fw_cmdio.addr.2 = phi i32 [ %fw_cmdio, %if.else.land.lhs.true303_crit_edge ], [ %fw_cmdio, %if.else.land.lhs.true303_crit_edge660 ], [ %fw_cmdio, %if.else.land.lhs.true303_crit_edge661 ], [ %fw_cmdio.addr.1, %if.end18.thread.land.lhs.true303_crit_edge ], [ %fw_cmdio.addr.2.ph, %land.lhs.true303.sink.split ]
  %242 = ptrtoint ptr %set_fwcmd_inprogress to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %set_fwcmd_inprogress, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool305.not = icmp eq i8 %243, 0
  br i1 %tobool305.not, label %if.then306, label %land.lhs.true303.cleanup_crit_edge

land.lhs.true303.cleanup_crit_edge:               ; preds = %land.lhs.true303
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then306:                                       ; preds = %land.lhs.true303
  %244 = ptrtoint ptr %set_fwcmd_inprogress to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %set_fwcmd_inprogress, align 4
  %conv308 = trunc i32 %fw_cmdio.addr.2 to i8
  %current_fwcmd_io = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 45
  %245 = ptrtoint ptr %current_fwcmd_io to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv308, ptr %current_fwcmd_io, align 1
  %246 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %priv, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 10, i32 14
  %248 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %cmp.i.i = icmp eq i8 %249, 0
  br i1 %cmp.i.i, label %if.then306.cleanup_crit_edge, label %if.end.i

if.then306.cleanup_crit_edge:                     ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then306
  %pfirmware.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 10, i32 33
  %250 = ptrtoint ptr %pfirmware.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pfirmware.i, align 8
  %firmwareversion.i = getelementptr inbounds %struct.rt_firmware, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %firmwareversion.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %firmwareversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %253)
  %cmp.i = icmp ult i16 %253, 52
  br i1 %cmp.i, label %if.end.i.skip.i_crit_edge, label %if.end6.i

if.end.i.skip.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.i

if.end6.i:                                        ; preds = %if.end.i
  %current_fwcmd_io.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 10, i32 45
  %254 = ptrtoint ptr %current_fwcmd_io.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %current_fwcmd_io.i, align 1
  %256 = zext i8 %255 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %255, label %if.end6.i.skip.i_crit_edge [
    i8 8, label %if.end6.i.skip.sink.split.i_crit_edge
    i8 9, label %sw.bb9.i
  ]

if.end6.i.skip.sink.split.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.sink.split.i

if.end6.i.skip.i_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.i

sw.bb9.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skip.sink.split.i

skip.sink.split.i:                                ; preds = %sw.bb9.i, %if.end6.i.skip.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 18, %sw.bb9.i ], [ 17, %if.end6.i.skip.sink.split.i_crit_edge ]
  %257 = ptrtoint ptr %current_fwcmd_io.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %.sink.i, ptr %current_fwcmd_io.i, align 1
  br label %skip.i

skip.i:                                           ; preds = %skip.sink.split.i, %if.end6.i.skip.i_crit_edge, %if.end.i.skip.i_crit_edge
  %current_fwcmd_io11.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 10, i32 45
  %258 = ptrtoint ptr %current_fwcmd_io11.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %current_fwcmd_io11.i, align 1
  %260 = zext i8 %259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %260, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %259, label %skip.i.sw.epilog44.i_crit_edge [
    i8 6, label %sw.bb13.i
    i8 7, label %sw.bb14.i
    i8 8, label %sw.bb15.i
    i8 9, label %sw.bb16.i
    i8 17, label %sw.bb17.i
    i8 18, label %sw.bb18.i
    i8 30, label %sw.bb19.i
    i8 15, label %sw.bb20.i
    i8 16, label %sw.bb21.i
    i8 5, label %sw.bb22.i
    i8 4, label %sw.bb26.i
    i8 22, label %sw.bb37.i
    i8 23, label %sw.bb40.i
    i8 26, label %sw.bb41.i
    i8 27, label %sw.bb42.i
  ]

skip.i.sw.epilog44.i_crit_edge:                   ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

sw.bb13.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.59) #5
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %261 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %262(ptr noundef %247, i32 noundef 704, i32 noundef -50331473) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %263 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %264, i32 0, i32 1
  %265 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %write_readback.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.not.i.i = icmp eq i8 %266, 0
  br i1 %tobool.not.i.i, label %sw.bb13.i.rtl_write_dword.exit.i_crit_edge, label %if.then.i.i

sw.bb13.i.rtl_write_dword.exit.i_crit_edge:       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit.i

if.then.i.i:                                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %267 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %268(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit.i

rtl_write_dword.exit.i:                           ; preds = %if.then.i.i, %sw.bb13.i.rtl_write_dword.exit.i_crit_edge
  %269 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %priv, align 8
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 13, i32 11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %rtl_write_dword.exit.i
  %pollingcnt.0.i.i = phi i16 [ 10000, %rtl_write_dword.exit.i ], [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %271 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %271(i32 noundef 2147480) #5
  %272 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i.i.i = tail call i32 %273(ptr noundef %270, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i109.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i109.i, label %do.body.i.i.sw.epilog44.i_crit_edge, label %do.cond.i.i

do.body.i.i.sw.epilog44.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i.i:                                      ; preds = %do.body.i.i
  %dec.i.i = add nsw i16 %pollingcnt.0.i.i, -1
  %tobool.not.i110.i = icmp eq i16 %dec.i.i, 0
  br i1 %tobool.not.i110.i, label %do.end6.i.i, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end6.i.i:                                      ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb14.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.60) #5
  %write32_async.i111.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %274 = ptrtoint ptr %write32_async.i111.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %write32_async.i111.i, align 4
  tail call void %275(ptr noundef %247, i32 noundef 704, i32 noundef -50331482) #5
  %cfg.i112.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i112.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i112.i, align 8
  %write_readback.i113.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 1
  %278 = ptrtoint ptr %write_readback.i113.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %write_readback.i113.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool.not.i114.i = icmp eq i8 %279, 0
  br i1 %tobool.not.i114.i, label %sw.bb14.i.rtl_write_dword.exit118.i_crit_edge, label %if.then.i117.i

sw.bb14.i.rtl_write_dword.exit118.i_crit_edge:    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit118.i

if.then.i117.i:                                   ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i115.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %280 = ptrtoint ptr %read32_sync.i115.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %read32_sync.i115.i, align 4
  %call.i116.i = tail call i32 %281(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit118.i

rtl_write_dword.exit118.i:                        ; preds = %if.then.i117.i, %sw.bb14.i.rtl_write_dword.exit118.i_crit_edge
  %282 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %priv, align 8
  %read32_sync.i.i120.i = getelementptr inbounds %struct.rtl_priv, ptr %283, i32 0, i32 13, i32 11
  br label %do.body.i124.i

do.body.i124.i:                                   ; preds = %do.cond.i127.i.do.body.i124.i_crit_edge, %rtl_write_dword.exit118.i
  %pollingcnt.0.i121.i = phi i16 [ 10000, %rtl_write_dword.exit118.i ], [ %dec.i125.i, %do.cond.i127.i.do.body.i124.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %284 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %284(i32 noundef 2147480) #5
  %285 = ptrtoint ptr %read32_sync.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %read32_sync.i.i120.i, align 4
  %call.i.i122.i = tail call i32 %286(ptr noundef %283, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122.i)
  %cmp.i123.i = icmp eq i32 %call.i.i122.i, 0
  br i1 %cmp.i123.i, label %do.body.i124.i.sw.epilog44.i_crit_edge, label %do.cond.i127.i

do.body.i124.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i127.i:                                   ; preds = %do.body.i124.i
  %dec.i125.i = add nsw i16 %pollingcnt.0.i121.i, -1
  %tobool.not.i126.i = icmp eq i16 %dec.i125.i, 0
  br i1 %tobool.not.i126.i, label %do.end6.i129.i, label %do.cond.i127.i.do.body.i124.i_crit_edge

do.cond.i127.i.do.body.i124.i_crit_edge:          ; preds = %do.cond.i127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i124.i

do.end6.i129.i:                                   ; preds = %do.cond.i127.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i128.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb15.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.61) #5
  %write32_async.i131.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %287 = ptrtoint ptr %write32_async.i131.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %write32_async.i131.i, align 4
  tail call void %288(ptr noundef %247, i32 noundef 704, i32 noundef -50331488) #5
  %cfg.i132.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %289 = ptrtoint ptr %cfg.i132.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %cfg.i132.i, align 8
  %write_readback.i133.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %write_readback.i133.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %write_readback.i133.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool.not.i134.i = icmp eq i8 %292, 0
  br i1 %tobool.not.i134.i, label %sw.bb15.i.rtl_write_dword.exit138.i_crit_edge, label %if.then.i137.i

sw.bb15.i.rtl_write_dword.exit138.i_crit_edge:    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit138.i

if.then.i137.i:                                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i135.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %293 = ptrtoint ptr %read32_sync.i135.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %read32_sync.i135.i, align 4
  %call.i136.i = tail call i32 %294(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit138.i

rtl_write_dword.exit138.i:                        ; preds = %if.then.i137.i, %sw.bb15.i.rtl_write_dword.exit138.i_crit_edge
  %295 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %priv, align 8
  %read32_sync.i.i140.i = getelementptr inbounds %struct.rtl_priv, ptr %296, i32 0, i32 13, i32 11
  br label %do.body.i144.i

do.body.i144.i:                                   ; preds = %do.cond.i147.i.do.body.i144.i_crit_edge, %rtl_write_dword.exit138.i
  %pollingcnt.0.i141.i = phi i16 [ 10000, %rtl_write_dword.exit138.i ], [ %dec.i145.i, %do.cond.i147.i.do.body.i144.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %297 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %297(i32 noundef 2147480) #5
  %298 = ptrtoint ptr %read32_sync.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %read32_sync.i.i140.i, align 4
  %call.i.i142.i = tail call i32 %299(ptr noundef %296, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142.i)
  %cmp.i143.i = icmp eq i32 %call.i.i142.i, 0
  br i1 %cmp.i143.i, label %do.body.i144.i.rtl92s_phy_chk_fwcmd_iodone.exit150.i_crit_edge, label %do.cond.i147.i

do.body.i144.i.rtl92s_phy_chk_fwcmd_iodone.exit150.i_crit_edge: ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_chk_fwcmd_iodone.exit150.i

do.cond.i147.i:                                   ; preds = %do.body.i144.i
  %dec.i145.i = add nsw i16 %pollingcnt.0.i141.i, -1
  %tobool.not.i146.i = icmp eq i16 %dec.i145.i, 0
  br i1 %tobool.not.i146.i, label %do.end6.i149.i, label %do.cond.i147.i.do.body.i144.i_crit_edge

do.cond.i147.i.do.body.i144.i_crit_edge:          ; preds = %do.cond.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i144.i

do.end6.i149.i:                                   ; preds = %do.cond.i147.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %rtl92s_phy_chk_fwcmd_iodone.exit150.i

rtl92s_phy_chk_fwcmd_iodone.exit150.i:            ; preds = %do.end6.i149.i, %do.body.i144.i.rtl92s_phy_chk_fwcmd_iodone.exit150.i_crit_edge
  %300 = ptrtoint ptr %write32_async.i131.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %write32_async.i131.i, align 4
  tail call void %301(ptr noundef %247, i32 noundef 704, i32 noundef -50331475) #5
  %302 = ptrtoint ptr %cfg.i132.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cfg.i132.i, align 8
  %write_readback.i153.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %write_readback.i153.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %write_readback.i153.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool.not.i154.i = icmp eq i8 %305, 0
  br i1 %tobool.not.i154.i, label %rtl92s_phy_chk_fwcmd_iodone.exit150.i.rtl_write_dword.exit158.i_crit_edge, label %if.then.i157.i

rtl92s_phy_chk_fwcmd_iodone.exit150.i.rtl_write_dword.exit158.i_crit_edge: ; preds = %rtl92s_phy_chk_fwcmd_iodone.exit150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit158.i

if.then.i157.i:                                   ; preds = %rtl92s_phy_chk_fwcmd_iodone.exit150.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i155.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %306 = ptrtoint ptr %read32_sync.i155.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %read32_sync.i155.i, align 4
  %call.i156.i = tail call i32 %307(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit158.i

rtl_write_dword.exit158.i:                        ; preds = %if.then.i157.i, %rtl92s_phy_chk_fwcmd_iodone.exit150.i.rtl_write_dword.exit158.i_crit_edge
  %308 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %priv, align 8
  %read32_sync.i.i160.i = getelementptr inbounds %struct.rtl_priv, ptr %309, i32 0, i32 13, i32 11
  br label %do.body.i164.i

do.body.i164.i:                                   ; preds = %do.cond.i167.i.do.body.i164.i_crit_edge, %rtl_write_dword.exit158.i
  %pollingcnt.0.i161.i = phi i16 [ 10000, %rtl_write_dword.exit158.i ], [ %dec.i165.i, %do.cond.i167.i.do.body.i164.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %310 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %310(i32 noundef 2147480) #5
  %311 = ptrtoint ptr %read32_sync.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %read32_sync.i.i160.i, align 4
  %call.i.i162.i = tail call i32 %312(ptr noundef %309, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162.i)
  %cmp.i163.i = icmp eq i32 %call.i.i162.i, 0
  br i1 %cmp.i163.i, label %do.body.i164.i.sw.epilog44.i_crit_edge, label %do.cond.i167.i

do.body.i164.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i164.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i167.i:                                   ; preds = %do.body.i164.i
  %dec.i165.i = add nsw i16 %pollingcnt.0.i161.i, -1
  %tobool.not.i166.i = icmp eq i16 %dec.i165.i, 0
  br i1 %tobool.not.i166.i, label %do.end6.i169.i, label %do.cond.i167.i.do.body.i164.i_crit_edge

do.cond.i167.i.do.body.i164.i_crit_edge:          ; preds = %do.cond.i167.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i164.i

do.end6.i169.i:                                   ; preds = %do.cond.i167.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i168.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb16.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.62) #5
  %write32_async.i171.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %313 = ptrtoint ptr %write32_async.i171.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %write32_async.i171.i, align 4
  tail call void %314(ptr noundef %247, i32 noundef 704, i32 noundef -50331488) #5
  %cfg.i172.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %315 = ptrtoint ptr %cfg.i172.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %cfg.i172.i, align 8
  %write_readback.i173.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %write_readback.i173.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %write_readback.i173.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %318)
  %tobool.not.i174.i = icmp eq i8 %318, 0
  br i1 %tobool.not.i174.i, label %sw.bb16.i.rtl_write_dword.exit178.i_crit_edge, label %if.then.i177.i

sw.bb16.i.rtl_write_dword.exit178.i_crit_edge:    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit178.i

if.then.i177.i:                                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %319 = ptrtoint ptr %read32_sync.i175.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %read32_sync.i175.i, align 4
  %call.i176.i = tail call i32 %320(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit178.i

rtl_write_dword.exit178.i:                        ; preds = %if.then.i177.i, %sw.bb16.i.rtl_write_dword.exit178.i_crit_edge
  %321 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %priv, align 8
  %read32_sync.i.i180.i = getelementptr inbounds %struct.rtl_priv, ptr %322, i32 0, i32 13, i32 11
  br label %do.body.i184.i

do.body.i184.i:                                   ; preds = %do.cond.i187.i.do.body.i184.i_crit_edge, %rtl_write_dword.exit178.i
  %pollingcnt.0.i181.i = phi i16 [ 10000, %rtl_write_dword.exit178.i ], [ %dec.i185.i, %do.cond.i187.i.do.body.i184.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %323 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %323(i32 noundef 2147480) #5
  %324 = ptrtoint ptr %read32_sync.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %read32_sync.i.i180.i, align 4
  %call.i.i182.i = tail call i32 %325(ptr noundef %322, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182.i)
  %cmp.i183.i = icmp eq i32 %call.i.i182.i, 0
  br i1 %cmp.i183.i, label %do.body.i184.i.rtl92s_phy_chk_fwcmd_iodone.exit190.i_crit_edge, label %do.cond.i187.i

do.body.i184.i.rtl92s_phy_chk_fwcmd_iodone.exit190.i_crit_edge: ; preds = %do.body.i184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_chk_fwcmd_iodone.exit190.i

do.cond.i187.i:                                   ; preds = %do.body.i184.i
  %dec.i185.i = add nsw i16 %pollingcnt.0.i181.i, -1
  %tobool.not.i186.i = icmp eq i16 %dec.i185.i, 0
  br i1 %tobool.not.i186.i, label %do.end6.i189.i, label %do.cond.i187.i.do.body.i184.i_crit_edge

do.cond.i187.i.do.body.i184.i_crit_edge:          ; preds = %do.cond.i187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i184.i

do.end6.i189.i:                                   ; preds = %do.cond.i187.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i188.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %rtl92s_phy_chk_fwcmd_iodone.exit190.i

rtl92s_phy_chk_fwcmd_iodone.exit190.i:            ; preds = %do.end6.i189.i, %do.body.i184.i.rtl92s_phy_chk_fwcmd_iodone.exit190.i_crit_edge
  %326 = ptrtoint ptr %write32_async.i171.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write32_async.i171.i, align 4
  tail call void %327(ptr noundef %247, i32 noundef 704, i32 noundef -50331476) #5
  %328 = ptrtoint ptr %cfg.i172.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %cfg.i172.i, align 8
  %write_readback.i193.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %329, i32 0, i32 1
  %330 = ptrtoint ptr %write_readback.i193.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %write_readback.i193.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %331)
  %tobool.not.i194.i = icmp eq i8 %331, 0
  br i1 %tobool.not.i194.i, label %rtl92s_phy_chk_fwcmd_iodone.exit190.i.rtl_write_dword.exit198.i_crit_edge, label %if.then.i197.i

rtl92s_phy_chk_fwcmd_iodone.exit190.i.rtl_write_dword.exit198.i_crit_edge: ; preds = %rtl92s_phy_chk_fwcmd_iodone.exit190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit198.i

if.then.i197.i:                                   ; preds = %rtl92s_phy_chk_fwcmd_iodone.exit190.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i195.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %332 = ptrtoint ptr %read32_sync.i195.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %read32_sync.i195.i, align 4
  %call.i196.i = tail call i32 %333(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit198.i

rtl_write_dword.exit198.i:                        ; preds = %if.then.i197.i, %rtl92s_phy_chk_fwcmd_iodone.exit190.i.rtl_write_dword.exit198.i_crit_edge
  %334 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %priv, align 8
  %read32_sync.i.i200.i = getelementptr inbounds %struct.rtl_priv, ptr %335, i32 0, i32 13, i32 11
  br label %do.body.i204.i

do.body.i204.i:                                   ; preds = %do.cond.i207.i.do.body.i204.i_crit_edge, %rtl_write_dword.exit198.i
  %pollingcnt.0.i201.i = phi i16 [ 10000, %rtl_write_dword.exit198.i ], [ %dec.i205.i, %do.cond.i207.i.do.body.i204.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %336 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %336(i32 noundef 2147480) #5
  %337 = ptrtoint ptr %read32_sync.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %read32_sync.i.i200.i, align 4
  %call.i.i202.i = tail call i32 %338(ptr noundef %335, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202.i)
  %cmp.i203.i = icmp eq i32 %call.i.i202.i, 0
  br i1 %cmp.i203.i, label %do.body.i204.i.sw.epilog44.i_crit_edge, label %do.cond.i207.i

do.body.i204.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i204.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i207.i:                                   ; preds = %do.body.i204.i
  %dec.i205.i = add nsw i16 %pollingcnt.0.i201.i, -1
  %tobool.not.i206.i = icmp eq i16 %dec.i205.i, 0
  br i1 %tobool.not.i206.i, label %do.end6.i209.i, label %do.cond.i207.i.do.body.i204.i_crit_edge

do.cond.i207.i.do.body.i204.i_crit_edge:          ; preds = %do.cond.i207.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i204.i

do.end6.i209.i:                                   ; preds = %do.cond.i207.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i208.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb17.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.63) #5
  %write32_async.i211.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %339 = ptrtoint ptr %write32_async.i211.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %write32_async.i211.i, align 4
  tail call void %340(ptr noundef %247, i32 noundef 704, i32 noundef -50331599) #5
  %cfg.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %341 = ptrtoint ptr %cfg.i212.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %cfg.i212.i, align 8
  %write_readback.i213.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %write_readback.i213.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %write_readback.i213.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool.not.i214.i = icmp eq i8 %344, 0
  br i1 %tobool.not.i214.i, label %sw.bb17.i.rtl_write_dword.exit218.i_crit_edge, label %if.then.i217.i

sw.bb17.i.rtl_write_dword.exit218.i_crit_edge:    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit218.i

if.then.i217.i:                                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i215.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %345 = ptrtoint ptr %read32_sync.i215.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %read32_sync.i215.i, align 4
  %call.i216.i = tail call i32 %346(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit218.i

rtl_write_dword.exit218.i:                        ; preds = %if.then.i217.i, %sw.bb17.i.rtl_write_dword.exit218.i_crit_edge
  %347 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %priv, align 8
  %read32_sync.i.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %348, i32 0, i32 13, i32 11
  br label %do.body.i224.i

do.body.i224.i:                                   ; preds = %do.cond.i227.i.do.body.i224.i_crit_edge, %rtl_write_dword.exit218.i
  %pollingcnt.0.i221.i = phi i16 [ 10000, %rtl_write_dword.exit218.i ], [ %dec.i225.i, %do.cond.i227.i.do.body.i224.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %349 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %349(i32 noundef 2147480) #5
  %350 = ptrtoint ptr %read32_sync.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %read32_sync.i.i220.i, align 4
  %call.i.i222.i = tail call i32 %351(ptr noundef %348, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i222.i)
  %cmp.i223.i = icmp eq i32 %call.i.i222.i, 0
  br i1 %cmp.i223.i, label %do.body.i224.i.sw.epilog44.i_crit_edge, label %do.cond.i227.i

do.body.i224.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i227.i:                                   ; preds = %do.body.i224.i
  %dec.i225.i = add nsw i16 %pollingcnt.0.i221.i, -1
  %tobool.not.i226.i = icmp eq i16 %dec.i225.i, 0
  br i1 %tobool.not.i226.i, label %do.end6.i229.i, label %do.cond.i227.i.do.body.i224.i_crit_edge

do.cond.i227.i.do.body.i224.i_crit_edge:          ; preds = %do.cond.i227.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i224.i

do.end6.i229.i:                                   ; preds = %do.cond.i227.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb18.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.64) #5
  %write32_async.i231.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %352 = ptrtoint ptr %write32_async.i231.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %write32_async.i231.i, align 4
  tail call void %353(ptr noundef %247, i32 noundef 704, i32 noundef -50331600) #5
  %cfg.i232.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %354 = ptrtoint ptr %cfg.i232.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %cfg.i232.i, align 8
  %write_readback.i233.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %355, i32 0, i32 1
  %356 = ptrtoint ptr %write_readback.i233.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %write_readback.i233.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool.not.i234.i = icmp eq i8 %357, 0
  br i1 %tobool.not.i234.i, label %sw.bb18.i.rtl_write_dword.exit238.i_crit_edge, label %if.then.i237.i

sw.bb18.i.rtl_write_dword.exit238.i_crit_edge:    ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit238.i

if.then.i237.i:                                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i235.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %358 = ptrtoint ptr %read32_sync.i235.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %read32_sync.i235.i, align 4
  %call.i236.i = tail call i32 %359(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit238.i

rtl_write_dword.exit238.i:                        ; preds = %if.then.i237.i, %sw.bb18.i.rtl_write_dword.exit238.i_crit_edge
  %360 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %priv, align 8
  %read32_sync.i.i240.i = getelementptr inbounds %struct.rtl_priv, ptr %361, i32 0, i32 13, i32 11
  br label %do.body.i244.i

do.body.i244.i:                                   ; preds = %do.cond.i247.i.do.body.i244.i_crit_edge, %rtl_write_dword.exit238.i
  %pollingcnt.0.i241.i = phi i16 [ 10000, %rtl_write_dword.exit238.i ], [ %dec.i245.i, %do.cond.i247.i.do.body.i244.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %362(i32 noundef 2147480) #5
  %363 = ptrtoint ptr %read32_sync.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %read32_sync.i.i240.i, align 4
  %call.i.i242.i = tail call i32 %364(ptr noundef %361, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242.i)
  %cmp.i243.i = icmp eq i32 %call.i.i242.i, 0
  br i1 %cmp.i243.i, label %do.body.i244.i.sw.epilog44.i_crit_edge, label %do.cond.i247.i

do.body.i244.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i244.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i247.i:                                   ; preds = %do.body.i244.i
  %dec.i245.i = add nsw i16 %pollingcnt.0.i241.i, -1
  %tobool.not.i246.i = icmp eq i16 %dec.i245.i, 0
  br i1 %tobool.not.i246.i, label %do.end6.i249.i, label %do.cond.i247.i.do.body.i244.i_crit_edge

do.cond.i247.i.do.body.i244.i_crit_edge:          ; preds = %do.cond.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i244.i

do.end6.i249.i:                                   ; preds = %do.cond.i247.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i248.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb19.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.65) #5
  %write32_async.i251.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %365 = ptrtoint ptr %write32_async.i251.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write32_async.i251.i, align 4
  tail call void %366(ptr noundef %247, i32 noundef 704, i32 noundef -268435424) #5
  %cfg.i252.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %367 = ptrtoint ptr %cfg.i252.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %cfg.i252.i, align 8
  %write_readback.i253.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %368, i32 0, i32 1
  %369 = ptrtoint ptr %write_readback.i253.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %write_readback.i253.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %370)
  %tobool.not.i254.i = icmp eq i8 %370, 0
  br i1 %tobool.not.i254.i, label %sw.bb19.i.rtl_write_dword.exit258.i_crit_edge, label %if.then.i257.i

sw.bb19.i.rtl_write_dword.exit258.i_crit_edge:    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit258.i

if.then.i257.i:                                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i255.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %371 = ptrtoint ptr %read32_sync.i255.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %read32_sync.i255.i, align 4
  %call.i256.i = tail call i32 %372(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit258.i

rtl_write_dword.exit258.i:                        ; preds = %if.then.i257.i, %sw.bb19.i.rtl_write_dword.exit258.i_crit_edge
  %373 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %priv, align 8
  %read32_sync.i.i260.i = getelementptr inbounds %struct.rtl_priv, ptr %374, i32 0, i32 13, i32 11
  br label %do.body.i264.i

do.body.i264.i:                                   ; preds = %do.cond.i267.i.do.body.i264.i_crit_edge, %rtl_write_dword.exit258.i
  %pollingcnt.0.i261.i = phi i16 [ 10000, %rtl_write_dword.exit258.i ], [ %dec.i265.i, %do.cond.i267.i.do.body.i264.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %375 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %375(i32 noundef 2147480) #5
  %376 = ptrtoint ptr %read32_sync.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %read32_sync.i.i260.i, align 4
  %call.i.i262.i = tail call i32 %377(ptr noundef %374, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262.i)
  %cmp.i263.i = icmp eq i32 %call.i.i262.i, 0
  br i1 %cmp.i263.i, label %do.body.i264.i.sw.epilog44.i_crit_edge, label %do.cond.i267.i

do.body.i264.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i267.i:                                   ; preds = %do.body.i264.i
  %dec.i265.i = add nsw i16 %pollingcnt.0.i261.i, -1
  %tobool.not.i266.i = icmp eq i16 %dec.i265.i, 0
  br i1 %tobool.not.i266.i, label %do.end6.i269.i, label %do.cond.i267.i.do.body.i264.i_crit_edge

do.cond.i267.i.do.body.i264.i_crit_edge:          ; preds = %do.cond.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i264.i

do.end6.i269.i:                                   ; preds = %do.cond.i267.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i268.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb20.i:                                        ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #7
  %378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %priv, align 8
  %cfg.i272.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 32
  %380 = ptrtoint ptr %cfg.i272.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i272.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 4
  %382 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %383, i32 0, i32 46
  %384 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %385(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef 23) #5
  %386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %priv, align 8
  %cfg.i274.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 32
  %388 = ptrtoint ptr %cfg.i274.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i274.i, align 8
  %ops.i275.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %ops.i275.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops.i275.i, align 4
  %set_bbreg.i276.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %391, i32 0, i32 46
  %392 = ptrtoint ptr %set_bbreg.i276.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %set_bbreg.i276.i, align 4
  tail call void %393(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef 23) #5
  %394 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %priv, align 8
  %cfg.i278.i = getelementptr inbounds %struct.rtl_priv, ptr %395, i32 0, i32 32
  %396 = ptrtoint ptr %cfg.i278.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i278.i, align 8
  %ops.i279.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %ops.i279.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %ops.i279.i, align 4
  %set_bbreg.i280.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %399, i32 0, i32 46
  %400 = ptrtoint ptr %set_bbreg.i280.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %set_bbreg.i280.i, align 4
  tail call void %401(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 64) #5
  br label %sw.epilog44.i

sw.bb21.i:                                        ; preds = %skip.i
  call void @__sanitizer_cov_trace_pc() #7
  %402 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %priv, align 8
  %cfg.i282.i = getelementptr inbounds %struct.rtl_priv, ptr %403, i32 0, i32 32
  %404 = ptrtoint ptr %cfg.i282.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %cfg.i282.i, align 8
  %ops.i283.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %405, i32 0, i32 4
  %406 = ptrtoint ptr %ops.i283.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %ops.i283.i, align 4
  %set_bbreg.i284.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %407, i32 0, i32 46
  %408 = ptrtoint ptr %set_bbreg.i284.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %set_bbreg.i284.i, align 4
  tail call void %409(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 205) #5
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 14, i32 10
  %410 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %current_channel.i, align 1
  tail call void @rtl92s_phy_set_txpower(ptr noundef %hw, i8 noundef zeroext %411) #5
  br label %sw.epilog44.i

sw.bb22.i:                                        ; preds = %skip.i
  %dm_flag.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 15, i32 30
  %412 = ptrtoint ptr %dm_flag.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %dm_flag.i, align 4
  %414 = and i8 %413, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %414)
  %tobool.not.i600 = icmp eq i8 %414, 0
  br i1 %tobool.not.i600, label %if.end25.i, label %sw.bb22.i.sw.epilog44.i_crit_edge

sw.bb22.i.sw.epilog44.i_crit_edge:                ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

if.end25.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #7
  %415 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %priv, align 8
  %cfg.i286.i = getelementptr inbounds %struct.rtl_priv, ptr %416, i32 0, i32 32
  %417 = ptrtoint ptr %cfg.i286.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cfg.i286.i, align 8
  %ops.i287.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %418, i32 0, i32 4
  %419 = ptrtoint ptr %ops.i287.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %ops.i287.i, align 4
  %set_bbreg.i288.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %420, i32 0, i32 46
  %421 = ptrtoint ptr %set_bbreg.i288.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %set_bbreg.i288.i, align 4
  tail call void %422(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef 23) #5
  %423 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %priv, align 8
  %cfg.i290.i = getelementptr inbounds %struct.rtl_priv, ptr %424, i32 0, i32 32
  %425 = ptrtoint ptr %cfg.i290.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %cfg.i290.i, align 8
  %ops.i291.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %426, i32 0, i32 4
  %427 = ptrtoint ptr %ops.i291.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %ops.i291.i, align 4
  %set_bbreg.i292.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %428, i32 0, i32 46
  %429 = ptrtoint ptr %set_bbreg.i292.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %set_bbreg.i292.i, align 4
  tail call void %430(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef 23) #5
  %431 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %priv, align 8
  %cfg.i294.i = getelementptr inbounds %struct.rtl_priv, ptr %432, i32 0, i32 32
  %433 = ptrtoint ptr %cfg.i294.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %cfg.i294.i, align 8
  %ops.i295.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %434, i32 0, i32 4
  %435 = ptrtoint ptr %ops.i295.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ops.i295.i, align 4
  %set_bbreg.i296.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %436, i32 0, i32 46
  %437 = ptrtoint ptr %set_bbreg.i296.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %set_bbreg.i296.i, align 4
  tail call void %438(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 64) #5
  br label %sw.epilog44.i

sw.bb26.i:                                        ; preds = %skip.i
  %dm_flag28.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 15, i32 30
  %439 = ptrtoint ptr %dm_flag28.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %dm_flag28.i, align 4
  %441 = and i8 %440, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %441)
  %tobool31.not.i = icmp eq i8 %441, 0
  br i1 %tobool31.not.i, label %lor.lhs.false.i, label %sw.bb26.i.sw.epilog44.i_crit_edge

sw.bb26.i.sw.epilog44.i_crit_edge:                ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

lor.lhs.false.i:                                  ; preds = %sw.bb26.i
  %dynamic_txpower_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 15, i32 6
  %442 = ptrtoint ptr %dynamic_txpower_enable.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %dynamic_txpower_enable.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool33.not.i = icmp eq i8 %443, 0
  br i1 %tobool33.not.i, label %if.end36.i, label %lor.lhs.false.i.sw.epilog44.i_crit_edge

lor.lhs.false.i.sw.epilog44.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

if.end36.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %444 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %priv, align 8
  %cfg.i298.i = getelementptr inbounds %struct.rtl_priv, ptr %445, i32 0, i32 32
  %446 = ptrtoint ptr %cfg.i298.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cfg.i298.i, align 8
  %ops.i299.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %447, i32 0, i32 4
  %448 = ptrtoint ptr %ops.i299.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops.i299.i, align 4
  %set_bbreg.i300.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %449, i32 0, i32 46
  %450 = ptrtoint ptr %set_bbreg.i300.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %set_bbreg.i300.i, align 4
  tail call void %451(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 205) #5
  br label %sw.epilog44.i

sw.bb37.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.66) #5
  %assoc_id.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 9, i32 52
  %452 = ptrtoint ptr %assoc_id.i to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %assoc_id.i, align 2
  %454 = or i16 %453, -16384
  %or.i = zext i16 %454 to i32
  %shl.i = shl nuw nsw i32 %or.i, 8
  %or39.i = or i32 %shl.i, -33554416
  %write32_async.i301.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %455 = ptrtoint ptr %write32_async.i301.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %write32_async.i301.i, align 4
  tail call void %456(ptr noundef %247, i32 noundef 704, i32 noundef %or39.i) #5
  %cfg.i302.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %457 = ptrtoint ptr %cfg.i302.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %cfg.i302.i, align 8
  %write_readback.i303.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %458, i32 0, i32 1
  %459 = ptrtoint ptr %write_readback.i303.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %write_readback.i303.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %460)
  %tobool.not.i304.i = icmp eq i8 %460, 0
  br i1 %tobool.not.i304.i, label %sw.bb37.i.rtl_write_dword.exit308.i_crit_edge, label %if.then.i307.i

sw.bb37.i.rtl_write_dword.exit308.i_crit_edge:    ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit308.i

if.then.i307.i:                                   ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i305.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %461 = ptrtoint ptr %read32_sync.i305.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %read32_sync.i305.i, align 4
  %call.i306.i = tail call i32 %462(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit308.i

rtl_write_dword.exit308.i:                        ; preds = %if.then.i307.i, %sw.bb37.i.rtl_write_dword.exit308.i_crit_edge
  %463 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %priv, align 8
  %read32_sync.i.i310.i = getelementptr inbounds %struct.rtl_priv, ptr %464, i32 0, i32 13, i32 11
  br label %do.body.i314.i

do.body.i314.i:                                   ; preds = %do.cond.i317.i.do.body.i314.i_crit_edge, %rtl_write_dword.exit308.i
  %pollingcnt.0.i311.i = phi i16 [ 10000, %rtl_write_dword.exit308.i ], [ %dec.i315.i, %do.cond.i317.i.do.body.i314.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %465 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %465(i32 noundef 2147480) #5
  %466 = ptrtoint ptr %read32_sync.i.i310.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %read32_sync.i.i310.i, align 4
  %call.i.i312.i = tail call i32 %467(ptr noundef %464, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i312.i)
  %cmp.i313.i = icmp eq i32 %call.i.i312.i, 0
  br i1 %cmp.i313.i, label %do.body.i314.i.sw.epilog44.i_crit_edge, label %do.cond.i317.i

do.body.i314.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i317.i:                                   ; preds = %do.body.i314.i
  %dec.i315.i = add nsw i16 %pollingcnt.0.i311.i, -1
  %tobool.not.i316.i = icmp eq i16 %dec.i315.i, 0
  br i1 %tobool.not.i316.i, label %do.end6.i319.i, label %do.cond.i317.i.do.body.i314.i_crit_edge

do.cond.i317.i.do.body.i314.i_crit_edge:          ; preds = %do.cond.i317.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i314.i

do.end6.i319.i:                                   ; preds = %do.cond.i317.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i318.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb40.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.67) #5
  %write32_async.i321.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %468 = ptrtoint ptr %write32_async.i321.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %write32_async.i321.i, align 4
  tail call void %469(ptr noundef %247, i32 noundef 704, i32 noundef -33554415) #5
  %cfg.i322.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %470 = ptrtoint ptr %cfg.i322.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %cfg.i322.i, align 8
  %write_readback.i323.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %471, i32 0, i32 1
  %472 = ptrtoint ptr %write_readback.i323.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %write_readback.i323.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %473)
  %tobool.not.i324.i = icmp eq i8 %473, 0
  br i1 %tobool.not.i324.i, label %sw.bb40.i.rtl_write_dword.exit328.i_crit_edge, label %if.then.i327.i

sw.bb40.i.rtl_write_dword.exit328.i_crit_edge:    ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit328.i

if.then.i327.i:                                   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i325.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %474 = ptrtoint ptr %read32_sync.i325.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %read32_sync.i325.i, align 4
  %call.i326.i = tail call i32 %475(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit328.i

rtl_write_dword.exit328.i:                        ; preds = %if.then.i327.i, %sw.bb40.i.rtl_write_dword.exit328.i_crit_edge
  %476 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %priv, align 8
  %read32_sync.i.i330.i = getelementptr inbounds %struct.rtl_priv, ptr %477, i32 0, i32 13, i32 11
  br label %do.body.i334.i

do.body.i334.i:                                   ; preds = %do.cond.i337.i.do.body.i334.i_crit_edge, %rtl_write_dword.exit328.i
  %pollingcnt.0.i331.i = phi i16 [ 10000, %rtl_write_dword.exit328.i ], [ %dec.i335.i, %do.cond.i337.i.do.body.i334.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %478 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %478(i32 noundef 2147480) #5
  %479 = ptrtoint ptr %read32_sync.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %read32_sync.i.i330.i, align 4
  %call.i.i332.i = tail call i32 %480(ptr noundef %477, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i332.i)
  %cmp.i333.i = icmp eq i32 %call.i.i332.i, 0
  br i1 %cmp.i333.i, label %do.body.i334.i.sw.epilog44.i_crit_edge, label %do.cond.i337.i

do.body.i334.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i334.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i337.i:                                   ; preds = %do.body.i334.i
  %dec.i335.i = add nsw i16 %pollingcnt.0.i331.i, -1
  %tobool.not.i336.i = icmp eq i16 %dec.i335.i, 0
  br i1 %tobool.not.i336.i, label %do.end6.i339.i, label %do.cond.i337.i.do.body.i334.i_crit_edge

do.cond.i337.i.do.body.i334.i_crit_edge:          ; preds = %do.cond.i337.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i334.i

do.end6.i339.i:                                   ; preds = %do.cond.i337.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i338.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb41.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 3, ptr noundef nonnull @.str.68) #5
  %write32_async.i341.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %481 = ptrtoint ptr %write32_async.i341.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %write32_async.i341.i, align 4
  tail call void %482(ptr noundef %247, i32 noundef 704, i32 noundef -50331626) #5
  %cfg.i342.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %483 = ptrtoint ptr %cfg.i342.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %cfg.i342.i, align 8
  %write_readback.i343.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %484, i32 0, i32 1
  %485 = ptrtoint ptr %write_readback.i343.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %write_readback.i343.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %486)
  %tobool.not.i344.i = icmp eq i8 %486, 0
  br i1 %tobool.not.i344.i, label %sw.bb41.i.rtl_write_dword.exit348.i_crit_edge, label %if.then.i347.i

sw.bb41.i.rtl_write_dword.exit348.i_crit_edge:    ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit348.i

if.then.i347.i:                                   ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i345.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %487 = ptrtoint ptr %read32_sync.i345.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %read32_sync.i345.i, align 4
  %call.i346.i = tail call i32 %488(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit348.i

rtl_write_dword.exit348.i:                        ; preds = %if.then.i347.i, %sw.bb41.i.rtl_write_dword.exit348.i_crit_edge
  %489 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %priv, align 8
  %read32_sync.i.i350.i = getelementptr inbounds %struct.rtl_priv, ptr %490, i32 0, i32 13, i32 11
  br label %do.body.i354.i

do.body.i354.i:                                   ; preds = %do.cond.i357.i.do.body.i354.i_crit_edge, %rtl_write_dword.exit348.i
  %pollingcnt.0.i351.i = phi i16 [ 10000, %rtl_write_dword.exit348.i ], [ %dec.i355.i, %do.cond.i357.i.do.body.i354.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %491 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %491(i32 noundef 2147480) #5
  %492 = ptrtoint ptr %read32_sync.i.i350.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %read32_sync.i.i350.i, align 4
  %call.i.i352.i = tail call i32 %493(ptr noundef %490, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i352.i)
  %cmp.i353.i = icmp eq i32 %call.i.i352.i, 0
  br i1 %cmp.i353.i, label %do.body.i354.i.sw.epilog44.i_crit_edge, label %do.cond.i357.i

do.body.i354.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i354.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i357.i:                                   ; preds = %do.body.i354.i
  %dec.i355.i = add nsw i16 %pollingcnt.0.i351.i, -1
  %tobool.not.i356.i = icmp eq i16 %dec.i355.i, 0
  br i1 %tobool.not.i356.i, label %do.end6.i359.i, label %do.cond.i357.i.do.body.i354.i_crit_edge

do.cond.i357.i.do.body.i354.i_crit_edge:          ; preds = %do.cond.i357.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i354.i

do.end6.i359.i:                                   ; preds = %do.cond.i357.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i358.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.bb42.i:                                        ; preds = %skip.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %247, i64 noundef 8388608, i32 noundef 4, ptr noundef nonnull @.str.69) #5
  %write32_async.i361.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 7
  %494 = ptrtoint ptr %write32_async.i361.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %write32_async.i361.i, align 4
  tail call void %495(ptr noundef %247, i32 noundef 704, i32 noundef -50331606) #5
  %cfg.i362.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 32
  %496 = ptrtoint ptr %cfg.i362.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %cfg.i362.i, align 8
  %write_readback.i363.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %497, i32 0, i32 1
  %498 = ptrtoint ptr %write_readback.i363.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %write_readback.i363.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %499)
  %tobool.not.i364.i = icmp eq i8 %499, 0
  br i1 %tobool.not.i364.i, label %sw.bb42.i.rtl_write_dword.exit368.i_crit_edge, label %if.then.i367.i

sw.bb42.i.rtl_write_dword.exit368.i_crit_edge:    ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit368.i

if.then.i367.i:                                   ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i365.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 13, i32 11
  %500 = ptrtoint ptr %read32_sync.i365.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %read32_sync.i365.i, align 4
  %call.i366.i = tail call i32 %501(ptr noundef %247, i32 noundef 704) #5
  br label %rtl_write_dword.exit368.i

rtl_write_dword.exit368.i:                        ; preds = %if.then.i367.i, %sw.bb42.i.rtl_write_dword.exit368.i_crit_edge
  %502 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %priv, align 8
  %read32_sync.i.i370.i = getelementptr inbounds %struct.rtl_priv, ptr %503, i32 0, i32 13, i32 11
  br label %do.body.i374.i

do.body.i374.i:                                   ; preds = %do.cond.i377.i.do.body.i374.i_crit_edge, %rtl_write_dword.exit368.i
  %pollingcnt.0.i371.i = phi i16 [ 10000, %rtl_write_dword.exit368.i ], [ %dec.i375.i, %do.cond.i377.i.do.body.i374.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %504 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %504(i32 noundef 2147480) #5
  %505 = ptrtoint ptr %read32_sync.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %read32_sync.i.i370.i, align 4
  %call.i.i372.i = tail call i32 %506(ptr noundef %503, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i372.i)
  %cmp.i373.i = icmp eq i32 %call.i.i372.i, 0
  br i1 %cmp.i373.i, label %do.body.i374.i.sw.epilog44.i_crit_edge, label %do.cond.i377.i

do.body.i374.i.sw.epilog44.i_crit_edge:           ; preds = %do.body.i374.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44.i

do.cond.i377.i:                                   ; preds = %do.body.i374.i
  %dec.i375.i = add nsw i16 %pollingcnt.0.i371.i, -1
  %tobool.not.i376.i = icmp eq i16 %dec.i375.i, 0
  br i1 %tobool.not.i376.i, label %do.end6.i379.i, label %do.cond.i377.i.do.body.i374.i_crit_edge

do.cond.i377.i.do.body.i374.i_crit_edge:          ; preds = %do.cond.i377.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i374.i

do.end6.i379.i:                                   ; preds = %do.cond.i377.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i378.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %sw.epilog44.i

sw.epilog44.i:                                    ; preds = %do.end6.i379.i, %do.body.i374.i.sw.epilog44.i_crit_edge, %do.end6.i359.i, %do.body.i354.i.sw.epilog44.i_crit_edge, %do.end6.i339.i, %do.body.i334.i.sw.epilog44.i_crit_edge, %do.end6.i319.i, %do.body.i314.i.sw.epilog44.i_crit_edge, %if.end36.i, %lor.lhs.false.i.sw.epilog44.i_crit_edge, %sw.bb26.i.sw.epilog44.i_crit_edge, %if.end25.i, %sw.bb22.i.sw.epilog44.i_crit_edge, %sw.bb21.i, %sw.bb20.i, %do.end6.i269.i, %do.body.i264.i.sw.epilog44.i_crit_edge, %do.end6.i249.i, %do.body.i244.i.sw.epilog44.i_crit_edge, %do.end6.i229.i, %do.body.i224.i.sw.epilog44.i_crit_edge, %do.end6.i209.i, %do.body.i204.i.sw.epilog44.i_crit_edge, %do.end6.i169.i, %do.body.i164.i.sw.epilog44.i_crit_edge, %do.end6.i129.i, %do.body.i124.i.sw.epilog44.i_crit_edge, %do.end6.i.i, %do.body.i.i.sw.epilog44.i_crit_edge, %skip.i.sw.epilog44.i_crit_edge
  %507 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %priv, align 8
  %read32_sync.i.i382.i = getelementptr inbounds %struct.rtl_priv, ptr %508, i32 0, i32 13, i32 11
  br label %do.body.i386.i

do.body.i386.i:                                   ; preds = %do.cond.i389.i.do.body.i386.i_crit_edge, %sw.epilog44.i
  %pollingcnt.0.i383.i = phi i16 [ 10000, %sw.epilog44.i ], [ %dec.i387.i, %do.cond.i389.i.do.body.i386.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %509 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %509(i32 noundef 2147480) #5
  %510 = ptrtoint ptr %read32_sync.i.i382.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %read32_sync.i.i382.i, align 4
  %call.i.i384.i = tail call i32 %511(ptr noundef %508, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i384.i)
  %cmp.i385.i = icmp eq i32 %call.i.i384.i, 0
  br i1 %cmp.i385.i, label %do.body.i386.i.rtl92s_phy_chk_fwcmd_iodone.exit392.i_crit_edge, label %do.cond.i389.i

do.body.i386.i.rtl92s_phy_chk_fwcmd_iodone.exit392.i_crit_edge: ; preds = %do.body.i386.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_chk_fwcmd_iodone.exit392.i

do.cond.i389.i:                                   ; preds = %do.body.i386.i
  %dec.i387.i = add nsw i16 %pollingcnt.0.i383.i, -1
  %tobool.not.i388.i = icmp eq i16 %dec.i387.i, 0
  br i1 %tobool.not.i388.i, label %do.end6.i391.i, label %do.cond.i389.i.do.body.i386.i_crit_edge

do.cond.i389.i.do.body.i386.i_crit_edge:          ; preds = %do.cond.i389.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i386.i

do.end6.i391.i:                                   ; preds = %do.cond.i389.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i390.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %rtl92s_phy_chk_fwcmd_iodone.exit392.i

rtl92s_phy_chk_fwcmd_iodone.exit392.i:            ; preds = %do.end6.i391.i, %do.body.i386.i.rtl92s_phy_chk_fwcmd_iodone.exit392.i_crit_edge
  %set_fwcmd_inprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %247, i32 0, i32 10, i32 44
  %512 = ptrtoint ptr %set_fwcmd_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 0, ptr %set_fwcmd_inprogress.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rtl92s_phy_chk_fwcmd_iodone.exit392.i, %if.then306.cleanup_crit_edge, %land.lhs.true303.cleanup_crit_edge, %rtl_write_word.exit599, %rtl_write_word.exit591, %rtl_write_word.exit583, %land.lhs.true.cleanup_crit_edge, %sw.bb251.cleanup_crit_edge, %rtl_write_word.exit543, %rtl_write_word.exit535, %rtl_write_word.exit527, %rtl_write_word.exit511, %rtl_write_word.exit495, %rtl_write_word.exit482, %rtl_write_word.exit474, %sw.bb53.cleanup_crit_edge, %rtl_write_word.exit466, %rtl_write_word.exit
  %retval.0 = phi i1 [ false, %land.lhs.true303.cleanup_crit_edge ], [ true, %if.then306.cleanup_crit_edge ], [ true, %rtl92s_phy_chk_fwcmd_iodone.exit392.i ], [ false, %rtl_write_word.exit599 ], [ false, %rtl_write_word.exit591 ], [ false, %rtl_write_word.exit583 ], [ false, %sw.bb251.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %rtl_write_word.exit543 ], [ false, %rtl_write_word.exit535 ], [ false, %rtl_write_word.exit527 ], [ false, %rtl_write_word.exit511 ], [ false, %rtl_write_word.exit495 ], [ false, %rtl_write_word.exit482 ], [ false, %sw.bb53.cleanup_crit_edge ], [ false, %rtl_write_word.exit474 ], [ false, %rtl_write_word.exit466 ], [ false, %rtl_write_word.exit ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_set_bw_mode(ptr noundef %hw, i32 noundef %ch_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %cond = select i1 %cmp, ptr @.str.10, ptr @.str.11
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #5
  %set_bwmode_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %set_bwmode_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %set_bwmode_inprogress, align 1
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 515) #5
  %11 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i, align 4
  %call.i83 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 387) #5
  %13 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_chan_bw, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %14, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end6
  %16 = or i8 %call.i, 4
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %17 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write8_async.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef 515, i8 noundef zeroext %16) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 515) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end6
  %25 = and i8 %call.i, -5
  %write8_async.i86 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %26 = ptrtoint ptr %write8_async.i86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i86, align 4
  tail call void %27(ptr noundef %1, i32 noundef 515, i8 noundef zeroext %25) #5
  %cfg.i87 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i87, align 8
  %write_readback.i88 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i88 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i88, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i89 = icmp eq i8 %31, 0
  br i1 %tobool.not.i89, label %sw.bb14.sw.epilog_crit_edge, label %if.then.i92

sw.bb14.sw.epilog_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i92:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i, align 4
  %call.i91 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 515) #5
  br label %sw.epilog

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv11 = zext i8 %14 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv11) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i92, %sw.bb14.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %34 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %current_chan_bw, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %35, label %do.end39 [
    i8 0, label %sw.bb22
    i8 1, label %sw.bb27
  ]

sw.bb22:                                          ; preds = %sw.epilog
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %cfg.i94 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i94, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 46
  %43 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %44(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #5
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i96 = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i96, align 8
  %ops.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i97, align 4
  %set_bbreg.i98 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i98 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i98, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #5
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %53 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp23.not = icmp eq i32 %54, 0
  br i1 %cmp23.not, label %sw.bb22.sw.epilog44_crit_edge, label %if.then25

sw.bb22.sw.epilog44_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

if.then25:                                        ; preds = %sw.bb22
  %write8_async.i99 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %55 = ptrtoint ptr %write8_async.i99 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write8_async.i99, align 4
  tail call void %56(ptr noundef %1, i32 noundef 2180, i8 noundef zeroext 88) #5
  %cfg.i100 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i100 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i100, align 8
  %write_readback.i101 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %write_readback.i101 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %write_readback.i101, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i102 = icmp eq i8 %60, 0
  br i1 %tobool.not.i102, label %if.then25.sw.epilog44_crit_edge, label %if.then.i105

if.then25.sw.epilog44_crit_edge:                  ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

if.then.i105:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i, align 4
  %call.i104 = tail call zeroext i8 %62(ptr noundef %1, i32 noundef 2180) #5
  br label %sw.epilog44

sw.bb27:                                          ; preds = %sw.epilog
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %cfg.i108 = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i108 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i108, align 8
  %ops.i109 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i109, align 4
  %set_bbreg.i110 = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 46
  %69 = ptrtoint ptr %set_bbreg.i110 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_bbreg.i110, align 4
  tail call void %70(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #5
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %cfg.i112 = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %73 = ptrtoint ptr %cfg.i112 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i112, align 8
  %ops.i113 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %ops.i113 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i113, align 4
  %set_bbreg.i114 = getelementptr inbounds %struct.rtl_hal_ops, ptr %76, i32 0, i32 46
  %77 = ptrtoint ptr %set_bbreg.i114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_bbreg.i114, align 4
  tail call void %78(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #5
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %79 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cur_40_prime_sc, align 1
  %81 = lshr i8 %80, 1
  %82 = zext i8 %81 to i32
  %83 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv, align 8
  %cfg.i116 = getelementptr inbounds %struct.rtl_priv, ptr %84, i32 0, i32 32
  %85 = ptrtoint ptr %cfg.i116 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cfg.i116, align 8
  %ops.i117 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %ops.i117 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i117, align 4
  %set_bbreg.i118 = getelementptr inbounds %struct.rtl_hal_ops, ptr %88, i32 0, i32 46
  %89 = ptrtoint ptr %set_bbreg.i118 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_bbreg.i118, align 4
  tail call void %90(ptr noundef %hw, i32 noundef 2560, i32 noundef 16, i32 noundef %82) #5
  %91 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cur_40_prime_sc, align 1
  %conv30 = zext i8 %92 to i32
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 8
  %cfg.i120 = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 0, i32 32
  %95 = ptrtoint ptr %cfg.i120 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i120, align 8
  %ops.i121 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %ops.i121 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i121, align 4
  %set_bbreg.i122 = getelementptr inbounds %struct.rtl_hal_ops, ptr %98, i32 0, i32 46
  %99 = ptrtoint ptr %set_bbreg.i122 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_bbreg.i122, align 4
  tail call void %100(ptr noundef %hw, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv30) #5
  %version31 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %101 = ptrtoint ptr %version31 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %version31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp32.not = icmp eq i32 %102, 0
  br i1 %cmp32.not, label %sw.bb27.sw.epilog44_crit_edge, label %if.then34

sw.bb27.sw.epilog44_crit_edge:                    ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

if.then34:                                        ; preds = %sw.bb27
  %write8_async.i123 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %103 = ptrtoint ptr %write8_async.i123 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8_async.i123, align 4
  tail call void %104(ptr noundef %1, i32 noundef 2180, i8 noundef zeroext 24) #5
  %cfg.i124 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %105 = ptrtoint ptr %cfg.i124 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i124, align 8
  %write_readback.i125 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i125 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i125, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i126 = icmp eq i8 %108, 0
  br i1 %tobool.not.i126, label %if.then34.sw.epilog44_crit_edge, label %if.then.i129

if.then34.sw.epilog44_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog44

if.then.i129:                                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i, align 4
  %call.i128 = tail call zeroext i8 %110(ptr noundef %1, i32 noundef 2180) #5
  br label %sw.epilog44

do.end39:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv21 = zext i8 %35 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv21) #8
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %do.end39, %if.then.i129, %if.then34.sw.epilog44_crit_edge, %sw.bb27.sw.epilog44_crit_edge, %if.then.i105, %if.then25.sw.epilog44_crit_edge, %sw.bb22.sw.epilog44_crit_edge
  %111 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl92s_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %112) #5
  %113 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %set_bwmode_inprogress, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92s_phy_sw_chnl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %precommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %postcommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %rfdependcmd.i = alloca [16 x %struct.swchnlcmd], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %2 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_channel, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.17, i32 noundef %conv) #5
  %sw_chnl_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 7
  %4 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_chnl_inprogress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_bwmode_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %6 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %set_bwmode_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.i = icmp eq i8 %9, 0
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %sw_chnl_inprogress, align 4
  %sw_chnl_stage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 8
  %11 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sw_chnl_stage, align 1
  %sw_chnl_step = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 9
  %12 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sw_chnl_step, align 2
  %13 = getelementptr inbounds i8, ptr %precommoncmd.i, i32 32
  %14 = getelementptr inbounds i8, ptr %postcommoncmd.i, i32 16
  %15 = getelementptr inbounds i8, ptr %rfdependcmd.i, i32 32
  %para139.i.i = getelementptr inbounds %struct.swchnlcmd, ptr %precommoncmd.i, i32 0, i32 1
  %para139.i166.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 1
  %para240.i167.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 2
  %msdelay41.i168.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 3
  %add.ptr.i169.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 1
  br label %if.end12

do.bodythread-pre-split:                          ; preds = %if.then18
  %16 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr = load i8, ptr %sw_chnl_inprogress, align 4
  %tobool10.not = icmp eq i8 %.pr, 0
  br i1 %tobool10.not, label %do.bodythread-pre-split.do.end_crit_edge, label %do.bodythread-pre-split.if.end12_crit_edge

do.bodythread-pre-split.if.end12_crit_edge:       ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.bodythread-pre-split.do.end_crit_edge:         ; preds = %do.bodythread-pre-split
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end12:                                         ; preds = %do.bodythread-pre-split.if.end12_crit_edge, %if.end7
  %17 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %current_channel, align 1
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %precommoncmd.i) #5
  %21 = call ptr @memset(ptr %13, i32 255, i32 224)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %postcommoncmd.i) #5
  %22 = call ptr @memset(ptr %14, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rfdependcmd.i) #5
  %23 = call ptr @memset(ptr %15, i32 255, i32 224)
  %num_total_rfpath1.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 14, i32 58
  %24 = ptrtoint ptr %num_total_rfpath1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_total_rfpath1.i, align 4
  %26 = ptrtoint ptr %precommoncmd.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %precommoncmd.i, align 4
  %27 = call ptr @memset(ptr %para139.i.i, i32 0, i32 28)
  %conv.i = zext i8 %18 to i32
  %28 = add i8 %18, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %28)
  %29 = icmp ult i8 %28, -14
  %30 = call ptr @memset(ptr %postcommoncmd.i, i32 0, i32 16)
  br i1 %29, label %land.rhs.i, label %if.end12.if.end40.i_crit_edge

if.end12.if.end40.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end12
  %.b159.i = load i1, ptr @_rtl92s_phy_sw_chnl_step_by_step.__already_done, align 1
  br i1 %.b159.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !151

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @_rtl92s_phy_sw_chnl_step_by_step.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 349, i32 noundef 9, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #5
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %if.end12.if.end40.i_crit_edge
  %31 = ptrtoint ptr %rfdependcmd.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %rfdependcmd.i, align 4
  %32 = ptrtoint ptr %para139.i166.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 24, ptr %para139.i166.i, align 4
  %33 = ptrtoint ptr %para240.i167.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %para240.i167.i, align 4
  %34 = ptrtoint ptr %msdelay41.i168.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 10, ptr %msdelay41.i168.i, align 4
  %35 = call ptr @memset(ptr %add.ptr.i169.i, i32 0, i32 16)
  %36 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr61 = load i8, ptr %sw_chnl_stage, align 1
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.else.i, %if.end40.i
  %37 = phi i8 [ %inc70.i, %if.else.i ], [ %.pr61, %if.end40.i ]
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %37, label %do.body55.i.if.else37_crit_edge [
    i8 0, label %do.body55.i.sw.epilog.i_crit_edge
    i8 1, label %sw.bb57.i
    i8 2, label %sw.bb60.i
  ]

do.body55.i.sw.epilog.i_crit_edge:                ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.body55.i.if.else37_crit_edge:                  ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else37

sw.bb57.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb60.i, %sw.bb57.i, %do.body55.i.sw.epilog.i_crit_edge
  %postcommoncmd.sink.i = phi ptr [ %postcommoncmd.i, %sw.bb60.i ], [ %rfdependcmd.i, %sw.bb57.i ], [ %precommoncmd.i, %do.body55.i.sw.epilog.i_crit_edge ]
  %39 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sw_chnl_step, align 1
  %idxprom61.i = zext i8 %40 to i32
  %arrayidx62.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i
  %41 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx62.i, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %42, label %do.end103.i [
    i32 0, label %if.then65.i
    i32 1, label %sw.bb73.i
    i32 3, label %sw.bb74.i
    i32 4, label %sw.bb75.i
    i32 5, label %sw.bb79.i
    i32 6, label %for.cond.preheader.i
  ]

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  %idxprom61.i.le = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp86195.not.i = icmp eq i8 %25, 0
  br i1 %cmp86195.not.i, label %for.cond.preheader.i.if.then18_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then18_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %para290.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 2
  %para195.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 1
  %wide.trip.count.i = zext i8 %25 to i32
  br label %for.body.i

if.then65.i:                                      ; preds = %sw.epilog.i
  %cmp67.i = icmp eq i8 %37, 2
  br i1 %cmp67.i, label %if.then65.i.if.else37_crit_edge, label %if.else.i

if.then65.i.if.else37_crit_edge:                  ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else37

if.else.i:                                        ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc70.i = add nuw nsw i8 %37, 1
  %44 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %inc70.i, ptr %sw_chnl_stage, align 1
  %45 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %sw_chnl_step, align 1
  br label %do.body55.i

sw.bb73.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom61.i.le143 = zext i8 %40 to i32
  tail call void @rtl92s_phy_set_txpower(ptr noundef %hw, i8 noundef zeroext %18) #5
  br label %if.then18

sw.bb74.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le141 = zext i8 %40 to i32
  %para1.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le141, i32 1
  %46 = ptrtoint ptr %para1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %para1.i, align 4
  %para2.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le141, i32 2
  %48 = ptrtoint ptr %para2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %para2.i, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 7
  %50 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %51(ptr noundef %20, i32 noundef %47, i32 noundef %49) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %52 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %write_readback.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %sw.bb74.i.if.then18_crit_edge, label %if.then.i.i

sw.bb74.i.if.then18_crit_edge:                    ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then.i.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 11
  %56 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %57(ptr noundef %20, i32 noundef %47) #5
  br label %if.then18

sw.bb75.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le139 = zext i8 %40 to i32
  %para176.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le139, i32 1
  %58 = ptrtoint ptr %para176.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %para176.i, align 4
  %para277.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le139, i32 2
  %60 = ptrtoint ptr %para277.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %para277.i, align 4
  %conv78.i = trunc i32 %61 to i16
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 6
  %62 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %63(ptr noundef %20, i32 noundef %59, i16 noundef zeroext %conv78.i) #5
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i173.i, align 8
  %write_readback.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %write_readback.i174.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_readback.i174.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i175.i = icmp eq i8 %67, 0
  br i1 %tobool.not.i175.i, label %sw.bb75.i.if.then18_crit_edge, label %if.then.i177.i

sw.bb75.i.if.then18_crit_edge:                    ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then.i177.i:                                   ; preds = %sw.bb75.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 10
  %68 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i176.i = tail call zeroext i16 %69(ptr noundef %20, i32 noundef %59) #5
  br label %if.then18

sw.bb79.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le137 = zext i8 %40 to i32
  %para180.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le137, i32 1
  %70 = ptrtoint ptr %para180.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %para180.i, align 4
  %para281.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le137, i32 2
  %72 = ptrtoint ptr %para281.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %para281.i, align 4
  %conv82.i = trunc i32 %73 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 5
  %74 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %75(ptr noundef %20, i32 noundef %71, i8 noundef zeroext %conv82.i) #5
  %cfg.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 32
  %76 = ptrtoint ptr %cfg.i178.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cfg.i178.i, align 8
  %write_readback.i179.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write_readback.i179.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_readback.i179.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i180.i = icmp eq i8 %79, 0
  br i1 %tobool.not.i180.i, label %sw.bb79.i.if.then18_crit_edge, label %if.then.i182.i

sw.bb79.i.if.then18_crit_edge:                    ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

if.then.i182.i:                                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 13, i32 9
  %80 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i181.i = tail call zeroext i8 %81(ptr noundef %20, i32 noundef %71) #5
  br label %if.then18

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx89.i = getelementptr %struct.rtl_priv, ptr %20, i32 0, i32 14, i32 52, i32 %indvars.iv.i
  %82 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx89.i, align 4
  %and.i = and i32 %83, -1024
  %84 = ptrtoint ptr %para290.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %para290.i, align 4
  %or.i = or i32 %and.i, %85
  store i32 %or.i, ptr %arrayidx89.i, align 4
  %86 = ptrtoint ptr %para195.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %para195.i, align 4
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %cfg.i183.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 32
  %90 = ptrtoint ptr %cfg.i183.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i183.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %93, i32 0, i32 48
  %94 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %95(ptr noundef %hw, i32 noundef %indvars.iv.i, i32 noundef %87, i32 noundef 1048575, i32 noundef %or.i) #5
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.then18_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.then18_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

do.end103.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %idxprom61.i.le145 = zext i8 %40 to i32
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %42) #8
  br label %if.then18

if.then18:                                        ; preds = %do.end103.i, %for.body.i.if.then18_crit_edge, %if.then.i182.i, %sw.bb79.i.if.then18_crit_edge, %if.then.i177.i, %sw.bb75.i.if.then18_crit_edge, %if.then.i.i, %sw.bb74.i.if.then18_crit_edge, %sw.bb73.i, %for.cond.preheader.i.if.then18_crit_edge
  %idxprom61.i127 = phi i32 [ %idxprom61.i.le145, %do.end103.i ], [ %idxprom61.i.le137, %if.then.i182.i ], [ %idxprom61.i.le137, %sw.bb79.i.if.then18_crit_edge ], [ %idxprom61.i.le139, %if.then.i177.i ], [ %idxprom61.i.le139, %sw.bb75.i.if.then18_crit_edge ], [ %idxprom61.i.le141, %if.then.i.i ], [ %idxprom61.i.le141, %sw.bb74.i.if.then18_crit_edge ], [ %idxprom61.i.le143, %sw.bb73.i ], [ %idxprom61.i.le, %for.cond.preheader.i.if.then18_crit_edge ], [ %idxprom61.i.le, %for.body.i.if.then18_crit_edge ]
  %msdelay.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i127, i32 3
  %96 = ptrtoint ptr %msdelay.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msdelay.i, align 4
  %98 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %sw_chnl_step, align 1
  %inc110.i = add i8 %99, 1
  store i8 %inc110.i, ptr %sw_chnl_step, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.not = icmp eq i32 %97, 0
  br i1 %cmp.not, label %do.bodythread-pre-split, label %if.then18.while.body_crit_edge

if.then18.while.body_crit_edge:                   ; preds = %if.then18
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then18.while.body_crit_edge
  %__ms.095 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %97, %if.then18.while.body_crit_edge ]
  %dec = add i32 %__ms.095, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #5
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %while.body.do.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else37:                                        ; preds = %if.then65.i.if.else37_crit_edge, %do.body55.i.if.else37_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #5
  br label %do.end

do.end:                                           ; preds = %if.else37, %while.body.do.end_crit_edge, %do.bodythread-pre-split.do.end_crit_edge
  %101 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.16) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rfpwr_state5 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 24
  %2 = ptrtoint ptr %rfpwr_state5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rfpwr_state5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rfpwr_state)
  %cmp = icmp eq i32 %3, %rfpwr_state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %rfpwr_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %rfpwr_state, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb25
    i32 1, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7 = icmp eq i32 %3, 2
  br i1 %cmp7, label %land.lhs.true, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %cur_ps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %5 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur_ps_level, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  br label %do.body

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body:                                          ; preds = %do.body.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %initializecount.0 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.18) #5
  %call = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #5
  %call.not = xor i1 %call, true
  %inc = add nuw nsw i32 %initializecount.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %initializecount.0)
  %cmp10 = icmp ult i32 %initializecount.0, 9
  %or.cond = select i1 %call.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %cur_ps_level to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_ps_level, align 4
  %and12 = and i32 %8, -9
  store i32 %and12, ptr %cur_ps_level, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %10 = ptrtoint ptr %last_sleep_jiffies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_sleep_jiffies, align 4
  %sub = sub i32 %9, %11
  %call13 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #5
  %state_inap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 27
  %12 = ptrtoint ptr %state_inap to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state_inap, align 2, !range !150
  %14 = zext i8 %13 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %call13, i32 noundef %14) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %16 = ptrtoint ptr %last_awake_jiffies to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %last_awake_jiffies, align 4
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %17 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write16_async.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 14332) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %19 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.else.rtl_write_word.exit_crit_edge, label %if.then.i

if.else.rtl_write_word.exit_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %23 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %24(ptr noundef %1, i32 noundef 64) #5
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %if.else.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %25 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write8_async.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef 66, i8 noundef zeroext 0) #5
  %27 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i, align 8
  %write_readback.i157 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %write_readback.i157 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %write_readback.i157, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i158 = icmp eq i8 %30, 0
  br i1 %tobool.not.i158, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i160

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i160:                                     ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %31 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read8_sync.i, align 4
  %call.i159 = tail call zeroext i8 %32(ptr noundef %1, i32 noundef 66) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i160, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %33 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write8_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 2051, i8 noundef zeroext 3) #5
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i163 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i163 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i163, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i164 = icmp eq i8 %38, 0
  br i1 %tobool.not.i164, label %rtl_write_byte.exit.if.end16_crit_edge, label %if.then.i167

rtl_write_byte.exit.if.end16_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then.i167:                                     ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i165 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %39 = ptrtoint ptr %read8_sync.i165 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i165, align 4
  %call.i166 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 2051) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then.i167, %rtl_write_byte.exit.if.end16_crit_edge, %do.end
  %link_state = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %41 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %link_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp17 = icmp eq i32 %42, 2
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops, align 4
  %led_control = getelementptr inbounds %struct.rtl_hal_ops, ptr %46, i32 0, i32 36
  %47 = ptrtoint ptr %led_control to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %led_control, align 4
  br i1 %cmp17, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %48(ptr noundef %hw, i32 noundef 2) #5
  br label %if.then92

if.else20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %48(ptr noundef %hw, i32 noundef 3) #5
  br label %if.then92

sw.bb25:                                          ; preds = %if.end
  %reg_rfps_level = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %49 = ptrtoint ptr %reg_rfps_level to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_rfps_level, align 4
  %and26 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else31, label %if.then28

if.then28:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.20) #5
  %call29 = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #5
  %cur_ps_level30 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %51 = ptrtoint ptr %cur_ps_level30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cur_ps_level30, align 4
  %or = or i32 %52, 8
  store i32 %or, ptr %cur_ps_level30, align 4
  br label %if.then92

if.else31:                                        ; preds = %sw.bb25
  %rfoff_reason = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %53 = ptrtoint ptr %rfoff_reason to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rfoff_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %54)
  %cmp32 = icmp eq i32 %54, 268435456
  %cfg35 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %55 = ptrtoint ptr %cfg35 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg35, align 8
  %ops36 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops36, align 4
  %led_control37 = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 36
  %59 = ptrtoint ptr %led_control37 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %led_control37, align 4
  br i1 %cmp32, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %60(ptr noundef %hw, i32 noundef 3) #5
  br label %if.then92

if.else38:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %60(ptr noundef %hw, i32 noundef 7) #5
  br label %if.then92

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp46 = icmp eq i32 %3, 2
  br i1 %cmp46, label %sw.bb44.cleanup_crit_edge, label %for.cond.preheader

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb44
  %tx_ring = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.else61.for.cond.outer_crit_edge, %for.cond.preheader
  %indvars.iv184 = phi i32 [ 0, %for.cond.preheader ], [ %add, %if.else61.for.cond.outer_crit_edge ]
  %queue_id.0.ph = phi i8 [ 0, %for.cond.preheader ], [ %64, %if.else61.for.cond.outer_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph)
  %cmp51176 = icmp ult i8 %queue_id.0.ph, 9
  br i1 %cmp51176, label %for.body.preheader, label %for.cond.outer.for.end_crit_edge

for.cond.outer.for.end_crit_edge:                 ; preds = %for.cond.outer
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.outer
  %61 = zext i8 %queue_id.0.ph to i32
  br label %for.body

for.body:                                         ; preds = %if.then59.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %61, %for.body.preheader ], [ %indvars.iv.next, %if.then59.for.body_crit_edge ]
  %qlen.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring, i32 0, i32 %indvars.iv, i32 4, i32 1
  %62 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp54 = icmp eq i32 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv)
  %cmp57 = icmp eq i32 %indvars.iv, 4
  %or.cond155 = select i1 %cmp54, i1 true, i1 %cmp57
  br i1 %or.cond155, label %if.then59, label %if.else61

if.then59:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next to i8
  %exitcond.not = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond.not, label %if.then59.for.end_crit_edge, label %if.then59.for.body_crit_edge

if.then59.for.body_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.then59.for.end_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else61:                                        ; preds = %for.body
  %64 = trunc i32 %indvars.iv to i8
  %add = add nuw nsw i32 %indvars.iv184, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %add, i32 noundef %indvars.iv, i32 noundef %63) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 2147480) #5
  %exitcond186 = icmp eq i32 %add, 64
  br i1 %exitcond186, label %if.then71, label %if.else61.for.cond.outer_crit_edge

if.else61.for.cond.outer_crit_edge:               ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.outer

if.then71:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %qlen.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef 64, i32 noundef %indvars.iv, i32 noundef %67) #5
  br label %for.end

for.end:                                          ; preds = %if.then71, %if.then59.for.end_crit_edge, %for.cond.outer.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies76 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %69 = ptrtoint ptr %last_awake_jiffies76 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %last_awake_jiffies76, align 4
  %sub77 = sub i32 %68, %70
  %call78 = tail call i32 @jiffies_to_msecs(i32 noundef %sub77) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %call78) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %72 = ptrtoint ptr %last_awake_jiffies76 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %last_awake_jiffies76, align 4
  %sub80 = sub i32 %71, %73
  %call81 = tail call i32 @jiffies_to_msecs(i32 noundef %sub80) #5
  %state_inap83 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 27
  %74 = ptrtoint ptr %state_inap83 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %state_inap83, align 2, !range !150
  %76 = zext i8 %75 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef %call81, i32 noundef %76) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies86 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %78 = ptrtoint ptr %last_sleep_jiffies86 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %last_sleep_jiffies86, align 4
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 9
  %81 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %82(ptr noundef %80, i32 noundef 33) #5
  %83 = or i8 %call.i.i, 1
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 5
  %84 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %85(ptr noundef %80, i32 noundef 33, i8 noundef zeroext %83) #5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 32
  %86 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i, label %for.end.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.end.rtl_write_byte.exit.i_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i14.i = tail call zeroext i8 %91(ptr noundef %80, i32 noundef 33) #5
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.end.rtl_write_byte.exit.i_crit_edge
  %92 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %93(ptr noundef %80, i32 noundef 24, i8 noundef zeroext 0) #5
  %94 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i17.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %write_readback.i17.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %write_readback.i17.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i18.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i18.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit22.i_crit_edge, label %if.then.i21.i

rtl_write_byte.exit.i.rtl_write_byte.exit22.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit22.i

if.then.i21.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i20.i = tail call zeroext i8 %99(ptr noundef %80, i32 noundef 24) #5
  br label %rtl_write_byte.exit22.i

rtl_write_byte.exit22.i:                          ; preds = %if.then.i21.i, %rtl_write_byte.exit.i.rtl_write_byte.exit22.i_crit_edge
  %100 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %101(ptr noundef %80, i32 noundef 66, i8 noundef zeroext -1) #5
  %102 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i25.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %write_readback.i25.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %write_readback.i25.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i26.i = icmp eq i8 %105, 0
  br i1 %tobool.not.i26.i, label %rtl_write_byte.exit22.i.rtl_write_byte.exit30.i_crit_edge, label %if.then.i29.i

rtl_write_byte.exit22.i.rtl_write_byte.exit30.i_crit_edge: ; preds = %rtl_write_byte.exit22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit30.i

if.then.i29.i:                                    ; preds = %rtl_write_byte.exit22.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i28.i = tail call zeroext i8 %107(ptr noundef %80, i32 noundef 66) #5
  br label %rtl_write_byte.exit30.i

rtl_write_byte.exit30.i:                          ; preds = %if.then.i29.i, %rtl_write_byte.exit22.i.rtl_write_byte.exit30.i_crit_edge
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 6
  %108 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %109(ptr noundef %80, i32 noundef 64, i16 noundef zeroext 22524) #5
  %110 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %write_readback.i32.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %write_readback.i32.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i33.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i33.i, label %rtl_write_byte.exit30.i.rtl_write_word.exit.i_crit_edge, label %if.then.i35.i

rtl_write_byte.exit30.i.rtl_write_word.exit.i_crit_edge: ; preds = %rtl_write_byte.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit.i

if.then.i35.i:                                    ; preds = %rtl_write_byte.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 10
  %114 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i34.i = tail call zeroext i16 %115(ptr noundef %80, i32 noundef 64) #5
  br label %rtl_write_word.exit.i

rtl_write_word.exit.i:                            ; preds = %if.then.i35.i, %rtl_write_byte.exit30.i.rtl_write_word.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %116(i32 noundef 21474800) #5
  %117 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %118(ptr noundef %80, i32 noundef 64, i16 noundef zeroext 30716) #5
  %119 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write_readback.i38.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %write_readback.i38.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i39.i = icmp eq i8 %122, 0
  br i1 %tobool.not.i39.i, label %rtl_write_word.exit.i.rtl_write_word.exit43.i_crit_edge, label %if.then.i42.i

rtl_write_word.exit.i.rtl_write_word.exit43.i_crit_edge: ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit43.i

if.then.i42.i:                                    ; preds = %rtl_write_word.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 10
  %123 = ptrtoint ptr %read16_sync.i40.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %read16_sync.i40.i, align 4
  %call.i41.i = tail call zeroext i16 %124(ptr noundef %80, i32 noundef 64) #5
  br label %rtl_write_word.exit43.i

rtl_write_word.exit43.i:                          ; preds = %if.then.i42.i, %rtl_write_word.exit.i.rtl_write_word.exit43.i_crit_edge
  %125 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %126(ptr noundef %80, i32 noundef 2051, i8 noundef zeroext 0) #5
  %127 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i46.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %write_readback.i46.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %write_readback.i46.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i47.i = icmp eq i8 %130, 0
  br i1 %tobool.not.i47.i, label %rtl_write_word.exit43.i.rtl_write_byte.exit51.i_crit_edge, label %if.then.i50.i

rtl_write_word.exit43.i.rtl_write_byte.exit51.i_crit_edge: ; preds = %rtl_write_word.exit43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit51.i

if.then.i50.i:                                    ; preds = %rtl_write_word.exit43.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i49.i = tail call zeroext i8 %132(ptr noundef %80, i32 noundef 2051) #5
  br label %rtl_write_byte.exit51.i

rtl_write_byte.exit51.i:                          ; preds = %if.then.i50.i, %rtl_write_word.exit43.i.rtl_write_byte.exit51.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 2147480) #5
  %134 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %135(ptr noundef %80, i32 noundef 64, i16 noundef zeroext 14332) #5
  %136 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i54.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %write_readback.i54.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %write_readback.i54.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i55.i = icmp eq i8 %139, 0
  br i1 %tobool.not.i55.i, label %rtl_write_byte.exit51.i.rtl_write_word.exit59.i_crit_edge, label %if.then.i58.i

rtl_write_byte.exit51.i.rtl_write_word.exit59.i_crit_edge: ; preds = %rtl_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit59.i

if.then.i58.i:                                    ; preds = %rtl_write_byte.exit51.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i56.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 10
  %140 = ptrtoint ptr %read16_sync.i56.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read16_sync.i56.i, align 4
  %call.i57.i = tail call zeroext i16 %141(ptr noundef %80, i32 noundef 64) #5
  br label %rtl_write_word.exit59.i

rtl_write_word.exit59.i:                          ; preds = %if.then.i58.i, %rtl_write_byte.exit51.i.rtl_write_word.exit59.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %142(i32 noundef 2147480) #5
  %143 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %144(ptr noundef %80, i32 noundef 64, i16 noundef zeroext 30716) #5
  %145 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i62.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write_readback.i62.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %write_readback.i62.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i63.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i63.i, label %rtl_write_word.exit59.i.rtl_write_word.exit67.i_crit_edge, label %if.then.i66.i

rtl_write_word.exit59.i.rtl_write_word.exit67.i_crit_edge: ; preds = %rtl_write_word.exit59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit67.i

if.then.i66.i:                                    ; preds = %rtl_write_word.exit59.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i64.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 10
  %149 = ptrtoint ptr %read16_sync.i64.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read16_sync.i64.i, align 4
  %call.i65.i = tail call zeroext i16 %150(ptr noundef %80, i32 noundef 64) #5
  br label %rtl_write_word.exit67.i

rtl_write_word.exit67.i:                          ; preds = %if.then.i66.i, %rtl_write_word.exit59.i.rtl_write_word.exit67.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 2147480) #5
  %152 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %153(ptr noundef %80, i32 noundef 64, i16 noundef zeroext 22524) #5
  %154 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i70.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %write_readback.i70.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %write_readback.i70.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i71.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i71.i, label %rtl_write_word.exit67.i._rtl92se_phy_set_rf_sleep.exit_crit_edge, label %if.then.i74.i

rtl_write_word.exit67.i._rtl92se_phy_set_rf_sleep.exit_crit_edge: ; preds = %rtl_write_word.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92se_phy_set_rf_sleep.exit

if.then.i74.i:                                    ; preds = %rtl_write_word.exit67.i
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i72.i = getelementptr inbounds %struct.rtl_priv, ptr %80, i32 0, i32 13, i32 10
  %158 = ptrtoint ptr %read16_sync.i72.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read16_sync.i72.i, align 4
  %call.i73.i = tail call zeroext i16 %159(ptr noundef %80, i32 noundef 64) #5
  br label %_rtl92se_phy_set_rf_sleep.exit

_rtl92se_phy_set_rf_sleep.exit:                   ; preds = %if.then.i74.i, %rtl_write_word.exit67.i._rtl92se_phy_set_rf_sleep.exit_crit_edge
  tail call void @rtl8192se_gpiobit3_cfg_inputmode(ptr noundef %hw) #5
  br label %if.then92

sw.epilog:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %rfpwr_state) #8
  br label %cleanup

if.then92:                                        ; preds = %_rtl92se_phy_set_rf_sleep.exit, %if.else38, %if.then34, %if.then28, %if.else20, %if.then19
  %160 = ptrtoint ptr %rfpwr_state5 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %rfpwr_state, ptr %rfpwr_state5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %sw.epilog, %sw.bb44.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb44.cleanup_crit_edge ], [ true, %if.then92 ], [ false, %sw.epilog ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92s_phy_config_rf(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  %rtl8192seradiob_gm_array.rtl8192seradiob_array = select i1 %cmp, ptr @rtl8192seradiob_gm_array, ptr @rtl8192seradiob_array
  %. = select i1 %cmp, i32 10, i32 22
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %rfpath) #5
  %4 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %rfpath, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.for.body_crit_edge
    i32 1, label %entry.for.body12_crit_edge
  ]

entry.for.body12_crit_edge:                       ; preds = %entry
  br label %for.body12

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.040 = phi i32 [ %add6, %for.body.for.body_crit_edge ], [ %rfpath, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @rtl8192seradioa_1t_array, i32 %i.040
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = or i32 %i.040, 1
  %arrayidx5 = getelementptr i32, ptr @rtl8192seradioa_1t_array, i32 %add
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 0, i32 noundef %6, i32 noundef 1048575, i32 noundef %8) #5
  %add6 = add nuw nsw i32 %i.040, 2
  %cmp3 = icmp ult i32 %i.040, 200
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %ic_class.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 10, i32 11
  %11 = ptrtoint ptr %ic_class.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ic_class.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.not.i = icmp eq i8 %12, 0
  br i1 %cmp.not.i, label %for.end.sw.epilog_crit_edge, label %if.then.i

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef 21, i32 noundef 0, i32 noundef 15) #5
  %rf_lock.i.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock.i.i) #5
  %call.i.i = tail call fastcc i32 @_rtl92s_phy_rf_serial_read(ptr noundef %hw, i32 noundef 0, i32 noundef 21) #5
  %and.i.i = and i32 %call.i.i, 15
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock.i.i) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef 0, i32 noundef 15, i32 noundef %call.i.i) #5
  %add.i = add nuw nsw i32 %and.i.i, 1
  tail call void @rtl92s_phy_set_rf_reg(ptr noundef %hw, i32 noundef 0, i32 noundef 21, i32 noundef 15, i32 noundef %add.i) #5
  br label %sw.epilog

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %entry.for.body12_crit_edge
  %i.139 = phi i32 [ %add17, %for.body12.for.body12_crit_edge ], [ 0, %entry.for.body12_crit_edge ]
  %arrayidx13 = getelementptr i32, ptr %rtl8192seradiob_gm_array.rtl8192seradiob_array, i32 %i.139
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx13, align 4
  %add14 = or i32 %i.139, 1
  %arrayidx15 = getelementptr i32, ptr %rtl8192seradiob_gm_array.rtl8192seradiob_array, i32 %add14
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15, align 4
  tail call void @rtl_rfreg_delay(ptr noundef %hw, i32 noundef 1, i32 noundef %14, i32 noundef 1048575, i32 noundef %16) #5
  %add17 = add nuw nsw i32 %i.139, 2
  %cmp10 = icmp ult i32 %add17, %.
  br i1 %cmp10, label %for.body12.for.body12_crit_edge, label %for.body12.sw.epilog_crit_edge

for.body12.sw.epilog_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12

sw.epilog:                                        ; preds = %for.body12.sw.epilog_crit_edge, %if.then.i, %for.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i8 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_rfreg_delay(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body

for.body:                                         ; preds = %rtl_write_byte.exit.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %add2, %rtl_write_byte.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @rtl8192semac_2t_array, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = or i32 %i.07, 1
  %arrayidx1 = getelementptr i32, ptr @rtl8192semac_2t_array, i32 %add
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %conv = trunc i32 %5 to i8
  %6 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv) #5
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %for.body.rtl_write_byte.exit_crit_edge, label %if.then.i

for.body.rtl_write_byte.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef %3) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %for.body.rtl_write_byte.exit_crit_edge
  %add2 = add nuw nsw i32 %i.07, 2
  %cmp = icmp ult i32 %i.07, 104
  br i1 %cmp, label %rtl_write_byte.exit.for.body_crit_edge, label %for.end

rtl_write_byte.exit.for.body_crit_edge:           ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_bb_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2160, ptr %phy.i, align 4
  %arrayidx2.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2160, ptr %arrayidx2.i, align 4
  %arrayidx5.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2164, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2164, ptr %arrayidx8.i, align 4
  %rfintfi.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %rfintfi.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2272, ptr %rfintfi.i, align 4
  %rfintfi14.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %rfintfi14.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2272, ptr %rfintfi14.i, align 4
  %rfintfi17.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %rfintfi17.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2276, ptr %rfintfi17.i, align 4
  %rfintfi20.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %rfintfi20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2276, ptr %rfintfi20.i, align 4
  %rfintfo.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo25.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %rfintfo25.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2148, ptr %rfintfo25.i, align 4
  %rfintfo28.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %rfintfo28.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2152, ptr %rfintfo28.i, align 4
  %rfintfo31.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %rfintfo31.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2156, ptr %rfintfo31.i, align 4
  %rfintfe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 3
  %14 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe36.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %rfintfe36.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2148, ptr %rfintfe36.i, align 4
  %rfintfe39.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %rfintfe39.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2152, ptr %rfintfe39.i, align 4
  %rfintfe42.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %rfintfe42.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2156, ptr %rfintfe42.i, align 4
  %rf3wire_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 4
  %18 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2112, ptr %rf3wire_offset.i, align 4
  %rf3wire_offset47.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %rf3wire_offset47.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2116, ptr %rf3wire_offset47.i, align 4
  %rf3wire_offset50.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %rf3wire_offset50.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2120, ptr %rf3wire_offset50.i, align 4
  %rf3wire_offset53.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %rf3wire_offset53.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2124, ptr %rf3wire_offset53.i, align 4
  %rflssi_select.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 5
  %22 = ptrtoint ptr %rflssi_select.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2168, ptr %rflssi_select.i, align 4
  %rflssi_select58.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %rflssi_select58.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2168, ptr %rflssi_select58.i, align 4
  %rflssi_select61.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 5
  %24 = ptrtoint ptr %rflssi_select61.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2172, ptr %rflssi_select61.i, align 4
  %rflssi_select64.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 5
  %25 = ptrtoint ptr %rflssi_select64.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2172, ptr %rflssi_select64.i, align 4
  %rftxgain_stage.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 6
  %26 = ptrtoint ptr %rftxgain_stage.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2060, ptr %rftxgain_stage.i, align 4
  %rftxgain_stage69.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %rftxgain_stage69.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2060, ptr %rftxgain_stage69.i, align 4
  %rftxgain_stage72.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %rftxgain_stage72.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2060, ptr %rftxgain_stage72.i, align 4
  %rftxgain_stage75.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 6
  %29 = ptrtoint ptr %rftxgain_stage75.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2060, ptr %rftxgain_stage75.i, align 4
  %rfhssi_para1.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 7
  %30 = ptrtoint ptr %rfhssi_para1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2080, ptr %rfhssi_para1.i, align 4
  %rfhssi_para180.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 7
  %31 = ptrtoint ptr %rfhssi_para180.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2088, ptr %rfhssi_para180.i, align 4
  %rfhssi_para183.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 7
  %32 = ptrtoint ptr %rfhssi_para183.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2096, ptr %rfhssi_para183.i, align 4
  %rfhssi_para186.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 7
  %33 = ptrtoint ptr %rfhssi_para186.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2104, ptr %rfhssi_para186.i, align 4
  %rfhssi_para2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 8
  %34 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2084, ptr %rfhssi_para2.i, align 4
  %rfhssi_para291.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 8
  %35 = ptrtoint ptr %rfhssi_para291.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2092, ptr %rfhssi_para291.i, align 4
  %rfhssi_para294.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 8
  %36 = ptrtoint ptr %rfhssi_para294.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2100, ptr %rfhssi_para294.i, align 4
  %rfhssi_para297.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %rfhssi_para297.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2108, ptr %rfhssi_para297.i, align 4
  %rfsw_ctrl.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 9
  %38 = ptrtoint ptr %rfsw_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2136, ptr %rfsw_ctrl.i, align 4
  %rfsw_ctrl102.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %rfsw_ctrl102.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2136, ptr %rfsw_ctrl102.i, align 4
  %rfsw_ctrl105.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 9
  %40 = ptrtoint ptr %rfsw_ctrl105.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2140, ptr %rfsw_ctrl105.i, align 4
  %rfsw_ctrl108.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 9
  %41 = ptrtoint ptr %rfsw_ctrl108.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2140, ptr %rfsw_ctrl108.i, align 4
  %rfagc_control1.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 10
  %42 = ptrtoint ptr %rfagc_control1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3152, ptr %rfagc_control1.i, align 4
  %rfagc_control1113.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 10
  %43 = ptrtoint ptr %rfagc_control1113.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3160, ptr %rfagc_control1113.i, align 4
  %rfagc_control1116.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 10
  %44 = ptrtoint ptr %rfagc_control1116.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3168, ptr %rfagc_control1116.i, align 4
  %rfagc_control1119.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 10
  %45 = ptrtoint ptr %rfagc_control1119.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3176, ptr %rfagc_control1119.i, align 4
  %rfagc_control2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 11
  %46 = ptrtoint ptr %rfagc_control2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3156, ptr %rfagc_control2.i, align 4
  %rfagc_control2124.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 11
  %47 = ptrtoint ptr %rfagc_control2124.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3164, ptr %rfagc_control2124.i, align 4
  %rfagc_control2127.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 11
  %48 = ptrtoint ptr %rfagc_control2127.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3172, ptr %rfagc_control2127.i, align 4
  %rfagc_control2130.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 11
  %49 = ptrtoint ptr %rfagc_control2130.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3180, ptr %rfagc_control2130.i, align 4
  %rfrxiq_imbal.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 12
  %50 = ptrtoint ptr %rfrxiq_imbal.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3092, ptr %rfrxiq_imbal.i, align 4
  %rfrxiq_imbal135.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 12
  %51 = ptrtoint ptr %rfrxiq_imbal135.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3100, ptr %rfrxiq_imbal135.i, align 4
  %rfrxiq_imbal138.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 12
  %52 = ptrtoint ptr %rfrxiq_imbal138.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3108, ptr %rfrxiq_imbal138.i, align 4
  %rfrxiq_imbal141.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 12
  %53 = ptrtoint ptr %rfrxiq_imbal141.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3116, ptr %rfrxiq_imbal141.i, align 4
  %rfrx_afe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 13
  %54 = ptrtoint ptr %rfrx_afe.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3088, ptr %rfrx_afe.i, align 4
  %rfrx_afe146.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 13
  %55 = ptrtoint ptr %rfrx_afe146.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3096, ptr %rfrx_afe146.i, align 4
  %rfrx_afe149.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 13
  %56 = ptrtoint ptr %rfrx_afe149.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 3104, ptr %rfrx_afe149.i, align 4
  %rfrx_afe152.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 13
  %57 = ptrtoint ptr %rfrx_afe152.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3112, ptr %rfrx_afe152.i, align 4
  %rftxiq_imbal.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 14
  %58 = ptrtoint ptr %rftxiq_imbal.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3200, ptr %rftxiq_imbal.i, align 4
  %rftxiq_imbal157.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 14
  %59 = ptrtoint ptr %rftxiq_imbal157.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3208, ptr %rftxiq_imbal157.i, align 4
  %rftxiq_imbal160.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 14
  %60 = ptrtoint ptr %rftxiq_imbal160.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 3216, ptr %rftxiq_imbal160.i, align 4
  %rftxiq_imbal163.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 14
  %61 = ptrtoint ptr %rftxiq_imbal163.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 3224, ptr %rftxiq_imbal163.i, align 4
  %rftx_afe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 15
  %62 = ptrtoint ptr %rftx_afe.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3204, ptr %rftx_afe.i, align 4
  %rftx_afe168.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 15
  %63 = ptrtoint ptr %rftx_afe168.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 3212, ptr %rftx_afe168.i, align 4
  %rftx_afe171.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 15
  %64 = ptrtoint ptr %rftx_afe171.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3220, ptr %rftx_afe171.i, align 4
  %rftx_afe174.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 15
  %65 = ptrtoint ptr %rftx_afe174.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3228, ptr %rftx_afe174.i, align 4
  %rf_rb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 16
  %66 = ptrtoint ptr %rf_rb.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2208, ptr %rf_rb.i, align 4
  %rf_rb179.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 16
  %67 = ptrtoint ptr %rf_rb179.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2212, ptr %rf_rb179.i, align 4
  %rf_rb182.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 16
  %68 = ptrtoint ptr %rf_rb182.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2216, ptr %rf_rb182.i, align 4
  %rf_rb185.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 16
  %69 = ptrtoint ptr %rf_rb185.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2220, ptr %rf_rb185.i, align 4
  %rf_rbpi.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 17
  %70 = ptrtoint ptr %rf_rbpi.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2232, ptr %rf_rbpi.i, align 4
  %rf_rbpi190.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 17
  %71 = ptrtoint ptr %rf_rbpi190.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2236, ptr %rf_rbpi190.i, align 4
  %72 = load ptr, ptr %priv, align 8
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 14, i32 4
  %73 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %74)
  %switch.i = icmp ult i8 %74, 4
  br i1 %switch.i, label %entry.for.body.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %rtl92s_phy_set_bb_reg.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %add7.i, %rtl92s_phy_set_bb_reg.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @rtl8192sephy_reg_2t2rarray, i32 %i.012.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  tail call void @rtl_addr_delay(i32 noundef %76) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748) #5
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.012.i, 1
  %arrayidx6.i = getelementptr i32, ptr @rtl8192sephy_reg_2t2rarray, i32 %add.i
  %80 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx6.i, align 4
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %83, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %79, i32 noundef -1, i32 noundef %81) #5
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 13, i32 7
  %84 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %85(ptr noundef %83, i32 noundef %79, i32 noundef %81) #5
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 32
  %86 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %write_readback.i.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.rtl92s_phy_set_bb_reg.exit.i_crit_edge, label %if.then.i.i.i90

for.body.i.rtl92s_phy_set_bb_reg.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_set_bb_reg.exit.i

if.then.i.i.i90:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i15.i.i = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 13, i32 11
  %90 = ptrtoint ptr %read32_sync.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read32_sync.i15.i.i, align 4
  %call.i16.i.i = tail call i32 %91(ptr noundef %83, i32 noundef %79) #5
  br label %rtl92s_phy_set_bb_reg.exit.i

rtl92s_phy_set_bb_reg.exit.i:                     ; preds = %if.then.i.i.i90, %for.body.i.rtl92s_phy_set_bb_reg.exit.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %83, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %79, i32 noundef -1, i32 noundef %81) #5
  %add7.i = add nuw nsw i32 %i.012.i, 2
  %cmp3.i = icmp ult i32 %i.012.i, 370
  br i1 %cmp3.i, label %rtl92s_phy_set_bb_reg.exit.i.for.body.i_crit_edge, label %_rtl92s_phy_config_bb.exit

rtl92s_phy_set_bb_reg.exit.i.for.body.i_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

_rtl92s_phy_config_bb.exit:                       ; preds = %rtl92s_phy_set_bb_reg.exit.i
  %92 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %rf_type.i, align 1
  %94 = and i8 %93, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %switch80.i = icmp eq i8 %94, 2
  br i1 %switch80.i, label %_rtl92s_phy_config_bb.exit.if.end31.i_crit_edge, label %if.then25.i

_rtl92s_phy_config_bb.exit.if.end31.i_crit_edge:  ; preds = %_rtl92s_phy_config_bb.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then25.i:                                      ; preds = %_rtl92s_phy_config_bb.exit
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 14, i32 4
  %97 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rf_type.i.i, align 1
  %99 = zext i8 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %98, label %if.then25.i.do.end.i_crit_edge [
    i8 0, label %if.then25.i.if.then12.i.i_crit_edge
    i8 1, label %if.then6.i.i
  ]

if.then25.i.if.then12.i.i_crit_edge:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i.i

if.then25.i.do.end.i_crit_edge:                   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then6.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.then6.i.i, %if.then25.i.if.then12.i.i_crit_edge
  %phy_regarray2xtxr_table.0.i.i = phi ptr [ @rtl8192sephy_changeto_1t2rarray, %if.then6.i.i ], [ @rtl8192sephy_changeto_1t1rarray, %if.then25.i.if.then12.i.i_crit_edge ]
  %phy_regarray2xtxr_len.0.i.i = phi i32 [ 45, %if.then6.i.i ], [ 48, %if.then25.i.if.then12.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %rtl92s_phy_set_bb_reg.exit.i.i.for.body.i.i_crit_edge, %if.then12.i.i
  %i.01.i.i = phi i32 [ 0, %if.then12.i.i ], [ %add20.i.i, %rtl92s_phy_set_bb_reg.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %phy_regarray2xtxr_table.0.i.i, i32 %i.01.i.i
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @rtl_addr_delay(i32 noundef %101) #5
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.01.i.i, 1
  %arrayidx17.i.i = getelementptr i32, ptr %phy_regarray2xtxr_table.0.i.i, i32 %add.i.i
  %104 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx17.i.i, align 4
  %add18.i.i = add nuw nsw i32 %i.01.i.i, 2
  %arrayidx19.i.i = getelementptr i32, ptr %phy_regarray2xtxr_table.0.i.i, i32 %add18.i.i
  %106 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx19.i.i, align 4
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %109, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %103, i32 noundef %105, i32 noundef %107) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %105)
  %cmp.not.i.i.i = icmp eq i32 %105, -1
  br i1 %cmp.not.i.i.i, label %for.body.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.if.end.i.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 11
  %110 = ptrtoint ptr %read32_sync.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %read32_sync.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %111(ptr noundef %109, i32 noundef %103) #5
  %112 = tail call i32 @llvm.cttz.i32(i32 %105, i1 false) #5, !range !149
  %neg.i.i.i = xor i32 %105, -1
  %and.i.i.i = and i32 %call.i.i.i.i, %neg.i.i.i
  %shl.i.i.i = shl i32 %107, %112
  %or.i.i.i = or i32 %and.i.i.i, %shl.i.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.if.end.i.i.i_crit_edge
  %data.addr.0.i.i.i = phi i32 [ %or.i.i.i, %if.then.i.i.i ], [ %107, %for.body.i.i.if.end.i.i.i_crit_edge ]
  %write32_async.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 7
  %113 = ptrtoint ptr %write32_async.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write32_async.i.i.i.i, align 4
  tail call void %114(ptr noundef %109, i32 noundef %103, i32 noundef %data.addr.0.i.i.i) #5
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %115 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i.i.i.i, align 8
  %write_readback.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i.i.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i.i.i.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.rtl92s_phy_set_bb_reg.exit.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.rtl92s_phy_set_bb_reg.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_set_bb_reg.exit.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i15.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 13, i32 11
  %119 = ptrtoint ptr %read32_sync.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read32_sync.i15.i.i.i, align 4
  %call.i16.i.i.i = tail call i32 %120(ptr noundef %109, i32 noundef %103) #5
  br label %rtl92s_phy_set_bb_reg.exit.i.i

rtl92s_phy_set_bb_reg.exit.i.i:                   ; preds = %if.then.i.i.i.i, %if.end.i.i.i.rtl92s_phy_set_bb_reg.exit.i.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %109, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %103, i32 noundef %105, i32 noundef %data.addr.0.i.i.i) #5
  %add20.i.i = add nuw nsw i32 %i.01.i.i, 3
  %cmp14.i.i = icmp ult i32 %add20.i.i, %phy_regarray2xtxr_len.0.i.i
  br i1 %cmp14.i.i, label %rtl92s_phy_set_bb_reg.exit.i.i.for.body.i.i_crit_edge, label %rtl92s_phy_set_bb_reg.exit.i.i.if.end31.i_crit_edge

rtl92s_phy_set_bb_reg.exit.i.i.if.end31.i_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

rtl92s_phy_set_bb_reg.exit.i.i.for.body.i.i_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.then25.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #8
  br label %_rtl92s_phy_bb_config_parafile.exit

if.end31.i:                                       ; preds = %rtl92s_phy_set_bb_reg.exit.i.i.if.end31.i_crit_edge, %_rtl92s_phy_config_bb.exit.if.end31.i_crit_edge
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 17, i32 7
  %121 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp33.i = icmp eq i8 %122, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.end31.i.for.body16.i.i.preheader_crit_edge

if.end31.i.for.body16.i.i.preheader_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.i.i.preheader

if.then35.i:                                      ; preds = %if.end31.i
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 14, i32 38
  %123 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %pwrgroup_cnt.i, align 2
  br label %for.body.i83.i

for.body.i83.i:                                   ; preds = %rtl92s_phy_set_bb_reg.exit.i101.i.for.body.i83.i_crit_edge, %if.then35.i
  %i.02.i.i = phi i32 [ 0, %if.then35.i ], [ %add14.i.i, %rtl92s_phy_set_bb_reg.exit.i101.i.for.body.i83.i_crit_edge ]
  %arrayidx.i81.i = getelementptr i32, ptr @rtl8192sephy_reg_array_pg, i32 %i.02.i.i
  %124 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i81.i, align 4
  tail call void @rtl_addr_delay(i32 noundef %125) #5
  %126 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i81.i, align 4
  %add.i82.i = add nuw nsw i32 %i.02.i.i, 1
  %arrayidx6.i.i = getelementptr i32, ptr @rtl8192sephy_reg_array_pg, i32 %add.i82.i
  %add7.i.i = add nuw nsw i32 %i.02.i.i, 2
  %arrayidx8.i.i = getelementptr i32, ptr @rtl8192sephy_reg_array_pg, i32 %add7.i.i
  %128 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx8.i.i, align 4
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 8
  %132 = add i32 %127, -3584
  %133 = tail call i32 @llvm.fshl.i32(i32 %132, i32 %132, i32 30) #5
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %133, label %for.body.i83.i._rtl92s_store_pwrindex_diffrate_offset.exit.i.i_crit_edge [
    i32 0, label %for.body.i83.i.if.end24.thread.i.i.i_crit_edge
    i32 1, label %if.then2.i.i.i
    i32 2, label %if.then5.i.i.i
    i32 4, label %if.then8.i.i.i
    i32 5, label %if.then11.i.i.i
    i32 6, label %if.then14.i.i.i
    i32 7, label %if.then27.i.i.i
  ]

for.body.i83.i.if.end24.thread.i.i.i_crit_edge:   ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

for.body.i83.i._rtl92s_store_pwrindex_diffrate_offset.exit.i.i_crit_edge: ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i

if.then2.i.i.i:                                   ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

if.then5.i.i.i:                                   ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

if.then8.i.i.i:                                   ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

if.then11.i.i.i:                                  ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

if.then14.i.i.i:                                  ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.thread.i.i.i

if.end24.thread.i.i.i:                            ; preds = %if.then14.i.i.i, %if.then11.i.i.i, %if.then8.i.i.i, %if.then5.i.i.i, %if.then2.i.i.i, %for.body.i83.i.if.end24.thread.i.i.i_crit_edge
  %index.0.ph.i.i.i = phi i32 [ %133, %for.body.i83.i.if.end24.thread.i.i.i_crit_edge ], [ 6, %if.then5.i.i.i ], [ 3, %if.then11.i.i.i ], [ 4, %if.then14.i.i.i ], [ 2, %if.then8.i.i.i ], [ 1, %if.then2.i.i.i ]
  %pwrgroup_cnt3.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %131, i32 0, i32 14, i32 38
  %135 = ptrtoint ptr %pwrgroup_cnt3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pwrgroup_cnt3.i.i.i, align 2
  %idxprom4.i.i.i = zext i8 %136 to i32
  %arrayidx255.i.i.i = getelementptr %struct.rtl_priv, ptr %131, i32 0, i32 14, i32 41, i32 %idxprom4.i.i.i, i32 %index.0.ph.i.i.i
  %137 = ptrtoint ptr %arrayidx255.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %129, ptr %arrayidx255.i.i.i, align 4
  br label %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i

if.then27.i.i.i:                                  ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #7
  %pwrgroup_cnt.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %131, i32 0, i32 14, i32 38
  %138 = ptrtoint ptr %pwrgroup_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %pwrgroup_cnt.i.i.i, align 2
  %idxprom.i.i.i = zext i8 %139 to i32
  %arrayidx25.i.i.i = getelementptr %struct.rtl_priv, ptr %131, i32 0, i32 14, i32 41, i32 %idxprom.i.i.i, i32 5
  %140 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %129, ptr %arrayidx25.i.i.i, align 4
  %inc.i.i.i = add i8 %139, 1
  store i8 %inc.i.i.i, ptr %pwrgroup_cnt.i.i.i, align 2
  br label %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i

_rtl92s_store_pwrindex_diffrate_offset.exit.i.i:  ; preds = %if.then27.i.i.i, %if.end24.thread.i.i.i, %for.body.i83.i._rtl92s_store_pwrindex_diffrate_offset.exit.i.i_crit_edge
  %141 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i81.i, align 4
  %143 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx6.i.i, align 4
  %145 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx8.i.i, align 4
  %147 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %142, i32 noundef %144, i32 noundef %146) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %144)
  %cmp.not.i.i84.i = icmp eq i32 %144, -1
  br i1 %cmp.not.i.i84.i, label %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i.if.end.i.i97.i_crit_edge, label %if.then.i.i91.i

_rtl92s_store_pwrindex_diffrate_offset.exit.i.i.if.end.i.i97.i_crit_edge: ; preds = %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i97.i

if.then.i.i91.i:                                  ; preds = %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i.i.i85.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 13, i32 11
  %149 = ptrtoint ptr %read32_sync.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %read32_sync.i.i.i85.i, align 4
  %call.i.i.i86.i = tail call i32 %150(ptr noundef %148, i32 noundef %142) #5
  %151 = tail call i32 @llvm.cttz.i32(i32 %144, i1 false) #5, !range !149
  %neg.i.i87.i = xor i32 %144, -1
  %and.i.i88.i = and i32 %call.i.i.i86.i, %neg.i.i87.i
  %shl.i.i89.i = shl i32 %146, %151
  %or.i.i90.i = or i32 %and.i.i88.i, %shl.i.i89.i
  br label %if.end.i.i97.i

if.end.i.i97.i:                                   ; preds = %if.then.i.i91.i, %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i.if.end.i.i97.i_crit_edge
  %data.addr.0.i.i92.i = phi i32 [ %or.i.i90.i, %if.then.i.i91.i ], [ %146, %_rtl92s_store_pwrindex_diffrate_offset.exit.i.i.if.end.i.i97.i_crit_edge ]
  %write32_async.i.i.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 13, i32 7
  %152 = ptrtoint ptr %write32_async.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %write32_async.i.i.i93.i, align 4
  tail call void %153(ptr noundef %148, i32 noundef %142, i32 noundef %data.addr.0.i.i92.i) #5
  %cfg.i.i.i94.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 32
  %154 = ptrtoint ptr %cfg.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cfg.i.i.i94.i, align 8
  %write_readback.i.i.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %write_readback.i.i.i95.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %write_readback.i.i.i95.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i.i96.i = icmp eq i8 %157, 0
  br i1 %tobool.not.i.i.i96.i, label %if.end.i.i97.i.rtl92s_phy_set_bb_reg.exit.i101.i_crit_edge, label %if.then.i.i.i100.i

if.end.i.i97.i.rtl92s_phy_set_bb_reg.exit.i101.i_crit_edge: ; preds = %if.end.i.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_set_bb_reg.exit.i101.i

if.then.i.i.i100.i:                               ; preds = %if.end.i.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i15.i.i98.i = getelementptr inbounds %struct.rtl_priv, ptr %148, i32 0, i32 13, i32 11
  %158 = ptrtoint ptr %read32_sync.i15.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read32_sync.i15.i.i98.i, align 4
  %call.i16.i.i99.i = tail call i32 %159(ptr noundef %148, i32 noundef %142) #5
  br label %rtl92s_phy_set_bb_reg.exit.i101.i

rtl92s_phy_set_bb_reg.exit.i101.i:                ; preds = %if.then.i.i.i100.i, %if.end.i.i97.i.rtl92s_phy_set_bb_reg.exit.i101.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %148, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %142, i32 noundef %144, i32 noundef %data.addr.0.i.i92.i) #5
  %add14.i.i = add nuw nsw i32 %i.02.i.i, 3
  %cmp3.i.i = icmp ult i32 %i.02.i.i, 81
  br i1 %cmp3.i.i, label %rtl92s_phy_set_bb_reg.exit.i101.i.for.body.i83.i_crit_edge, label %rtl92s_phy_set_bb_reg.exit.i101.i.for.body16.i.i.preheader_crit_edge

rtl92s_phy_set_bb_reg.exit.i101.i.for.body16.i.i.preheader_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.i.i.preheader

rtl92s_phy_set_bb_reg.exit.i101.i.for.body.i83.i_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i83.i

for.body16.i.i.preheader:                         ; preds = %rtl92s_phy_set_bb_reg.exit.i101.i.for.body16.i.i.preheader_crit_edge, %if.end31.i.for.body16.i.i.preheader_crit_edge
  br label %for.body16.i.i

for.body16.i.i:                                   ; preds = %rtl92s_phy_set_bb_reg.exit9.i.i.for.body16.i.i_crit_edge, %for.body16.i.i.preheader
  %i.111.i.i = phi i32 [ %add21.i.i, %rtl92s_phy_set_bb_reg.exit9.i.i.for.body16.i.i_crit_edge ], [ 0, %for.body16.i.i.preheader ]
  %arrayidx17.i103.i = getelementptr i32, ptr @rtl8192seagctab_array, i32 %i.111.i.i
  %160 = ptrtoint ptr %arrayidx17.i103.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx17.i103.i, align 4
  %add18.i104.i = or i32 %i.111.i.i, 1
  %arrayidx19.i105.i = getelementptr i32, ptr @rtl8192seagctab_array, i32 %add18.i104.i
  %162 = ptrtoint ptr %arrayidx19.i105.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx19.i105.i, align 4
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %165, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %161, i32 noundef -1, i32 noundef %163) #5
  %write32_async.i.i2.i.i = getelementptr inbounds %struct.rtl_priv, ptr %165, i32 0, i32 13, i32 7
  %166 = ptrtoint ptr %write32_async.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write32_async.i.i2.i.i, align 4
  tail call void %167(ptr noundef %165, i32 noundef %161, i32 noundef %163) #5
  %cfg.i.i3.i.i = getelementptr inbounds %struct.rtl_priv, ptr %165, i32 0, i32 32
  %168 = ptrtoint ptr %cfg.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cfg.i.i3.i.i, align 8
  %write_readback.i.i4.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %write_readback.i.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %write_readback.i.i4.i.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i.i5.i.i = icmp eq i8 %171, 0
  br i1 %tobool.not.i.i5.i.i, label %for.body16.i.i.rtl92s_phy_set_bb_reg.exit9.i.i_crit_edge, label %if.then.i.i8.i.i

for.body16.i.i.rtl92s_phy_set_bb_reg.exit9.i.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl92s_phy_set_bb_reg.exit9.i.i

if.then.i.i8.i.i:                                 ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i15.i6.i.i = getelementptr inbounds %struct.rtl_priv, ptr %165, i32 0, i32 13, i32 11
  %172 = ptrtoint ptr %read32_sync.i15.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %read32_sync.i15.i6.i.i, align 4
  %call.i16.i7.i.i = tail call i32 %173(ptr noundef %165, i32 noundef %161) #5
  br label %rtl92s_phy_set_bb_reg.exit9.i.i

rtl92s_phy_set_bb_reg.exit9.i.i:                  ; preds = %if.then.i.i8.i.i, %for.body16.i.i.rtl92s_phy_set_bb_reg.exit9.i.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %165, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %161, i32 noundef -1, i32 noundef %163) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748) #5
  %add21.i.i = add nuw nsw i32 %i.111.i.i, 2
  %cmp14.i106.i = icmp ult i32 %i.111.i.i, 318
  br i1 %cmp14.i106.i, label %rtl92s_phy_set_bb_reg.exit9.i.i.for.body16.i.i_crit_edge, label %_rtl92s_phy_config_bb.exit.i

rtl92s_phy_set_bb_reg.exit9.i.i.for.body16.i.i_crit_edge: ; preds = %rtl92s_phy_set_bb_reg.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.i.i

_rtl92s_phy_config_bb.exit.i:                     ; preds = %rtl92s_phy_set_bb_reg.exit9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 2084, i32 noundef 512) #5
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %176, i32 0, i32 13, i32 11
  %177 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i.i.i = tail call i32 %178(ptr noundef %176, i32 noundef 2084) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %176, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef 512, i32 noundef 2084, i32 noundef %call.i.i.i) #5
  %179 = lshr i32 %call.i.i.i, 9
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 14, i32 39
  %182 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %cck_high_power.i, align 1
  br label %_rtl92s_phy_bb_config_parafile.exit

_rtl92s_phy_bb_config_parafile.exit:              ; preds = %_rtl92s_phy_config_bb.exit.i, %do.end.i
  %rtstatus.2.off0.i = phi i1 [ true, %_rtl92s_phy_config_bb.exit.i ], [ false, %do.end.i ]
  %183 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 2052, i32 noundef 15) #5
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %184, i32 0, i32 13, i32 11
  %185 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %186(ptr noundef %184, i32 noundef 2052) #5
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %184, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef 2052, i32 noundef %call.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %189(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %190(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %191 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %191(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748000) #5
  %and.i = and i32 %call.i.i, 15
  %197 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %198, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef 3076, i32 noundef 15) #5
  %read32_sync.i.i87 = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 13, i32 11
  %199 = ptrtoint ptr %read32_sync.i.i87 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %read32_sync.i.i87, align 4
  %call.i.i88 = tail call i32 %200(ptr noundef %198, i32 noundef 3076) #5
  %and.i89 = and i32 %call.i.i88, 15
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %198, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef 3076, i32 noundef %call.i.i88) #5
  %or = or i32 %and.i89, %and.i
  %201 = trunc i32 %or to i16
  %rf_pathmap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 60
  %202 = ptrtoint ptr %rf_pathmap to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %201, ptr %rf_pathmap, align 4
  %203 = trunc i32 %or to i8
  %204 = and i8 %203, 1
  %205 = trunc i32 %or to i8
  %206 = lshr i8 %205, 1
  %207 = and i8 %206, 1
  %spec.select.1 = add nuw nsw i8 %204, %207
  %208 = trunc i32 %or to i8
  %209 = lshr i8 %208, 2
  %210 = and i8 %209, 1
  %spec.select.2 = add nuw nsw i8 %spec.select.1, %210
  %.lobit = lshr i32 %or, 3
  %211 = trunc i32 %.lobit to i8
  %spec.select.3 = add nuw nsw i8 %spec.select.2, %211
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %212 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %cmp15 = icmp ne i8 %213, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %spec.select.3)
  %cmp18.not = icmp eq i8 %spec.select.3, 1
  %or.cond = select i1 %cmp15, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %lor.lhs.false, label %_rtl92s_phy_bb_config_parafile.exit.do.end_crit_edge

_rtl92s_phy_bb_config_parafile.exit.do.end_crit_edge: ; preds = %_rtl92s_phy_bb_config_parafile.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %_rtl92s_phy_bb_config_parafile.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %213)
  %cmp22 = icmp ne i8 %213, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %spec.select.3)
  %cmp26.not = icmp eq i8 %spec.select.3, 2
  %or.cond81 = select i1 %cmp22, i1 true, i1 %cmp26.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %213)
  %cmp31 = icmp ne i8 %213, 2
  %or.cond82 = select i1 %cmp31, i1 true, i1 %cmp26.not
  %or.cond91 = select i1 %or.cond81, i1 %or.cond82, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %213)
  %cmp40 = icmp ne i8 %213, 3
  %or.cond83 = select i1 %cmp40, i1 true, i1 %cmp26.not
  %or.cond92 = select i1 %or.cond91, i1 %or.cond83, i1 false
  br i1 %or.cond92, label %lor.lhs.false.if.end59_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %_rtl92s_phy_bb_config_parafile.exit.do.end_crit_edge
  %conv48 = zext i8 %213 to i32
  %conv49 = zext i8 %spec.select.3 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv48, i32 noundef %conv49) #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %and.i, i32 noundef %and.i89, i32 noundef %or) #8
  br label %if.end59

if.end59:                                         ; preds = %do.end, %lor.lhs.false.if.end59_crit_edge
  ret i1 %rtstatus.2.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92s_phy_rf_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %rf_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp, i8 1, i8 2
  %4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 4
  %call = tail call zeroext i1 @rtl92s_phy_rf6052_config(ptr noundef %hw) #5
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92s_phy_rf6052_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_get_hw_reg_originalvalue(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #5
  %conv = trunc i32 %call.i to i8
  %default_initialgain = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 45
  %8 = ptrtoint ptr %default_initialgain to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %default_initialgain, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %cfg.i49 = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 32
  %11 = ptrtoint ptr %cfg.i49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg.i49, align 8
  %ops.i50 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ops.i50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i50, align 4
  %get_bbreg.i51 = getelementptr inbounds %struct.rtl_hal_ops, ptr %14, i32 0, i32 45
  %15 = ptrtoint ptr %get_bbreg.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_bbreg.i51, align 4
  %call.i52 = tail call i32 %16(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #5
  %conv2 = trunc i32 %call.i52 to i8
  %arrayidx4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 45, i32 1
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv2, ptr %arrayidx4, align 1
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %cfg.i54 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i54, align 8
  %ops.i55 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops.i55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i55, align 4
  %get_bbreg.i56 = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 45
  %24 = ptrtoint ptr %get_bbreg.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_bbreg.i56, align 4
  %call.i57 = tail call i32 %25(ptr noundef %hw, i32 noundef 3168, i32 noundef 255) #5
  %conv6 = trunc i32 %call.i57 to i8
  %arrayidx8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 45, i32 2
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6, ptr %arrayidx8, align 2
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %cfg.i59 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i59, align 8
  %ops.i60 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i60, align 4
  %get_bbreg.i61 = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %get_bbreg.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_bbreg.i61, align 4
  %call.i62 = tail call i32 %34(ptr noundef %hw, i32 noundef 3176, i32 noundef 255) #5
  %conv10 = trunc i32 %call.i62 to i8
  %arrayidx12 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 45, i32 3
  %35 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv10, ptr %arrayidx12, align 1
  %36 = ptrtoint ptr %default_initialgain to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %default_initialgain, align 4
  %conv15 = zext i8 %37 to i32
  %38 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx4, align 1
  %conv18 = zext i8 %39 to i32
  %40 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8, align 2
  %conv21 = zext i8 %41 to i32
  %conv24 = and i32 %call.i62, 255
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #5
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %cfg.i64 = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i64, align 8
  %ops.i65 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i65, align 4
  %get_bbreg.i66 = getelementptr inbounds %struct.rtl_hal_ops, ptr %47, i32 0, i32 45
  %48 = ptrtoint ptr %get_bbreg.i66 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %get_bbreg.i66, align 4
  %call.i67 = tail call i32 %49(ptr noundef %hw, i32 noundef 3128, i32 noundef 255) #5
  %conv26 = trunc i32 %call.i67 to i8
  %framesync = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 56
  %50 = ptrtoint ptr %framesync to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv26, ptr %framesync, align 4
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %cfg.i69 = getelementptr inbounds %struct.rtl_priv, ptr %52, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i69, align 8
  %ops.i70 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %ops.i70 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i70, align 4
  %get_bbreg.i71 = getelementptr inbounds %struct.rtl_hal_ops, ptr %56, i32 0, i32 45
  %57 = ptrtoint ptr %get_bbreg.i71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %get_bbreg.i71, align 4
  %call.i72 = tail call i32 %58(ptr noundef %hw, i32 noundef 3124, i32 noundef -1) #5
  %framesync_c34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 57
  %59 = ptrtoint ptr %framesync_c34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i72, ptr %framesync_c34, align 4
  %60 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %framesync, align 4
  %conv29 = zext i8 %61 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.34, i32 noundef 3128, i32 noundef %conv29) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_set_txpower(ptr noundef %hw, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %ofdmpowerlevel = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdmpowerlevel) #5
  %2 = getelementptr inbounds [2 x i8], ptr %ofdmpowerlevel, i32 0, i32 1
  %txpwr_fromeprom = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 23
  %3 = ptrtoint ptr %txpwr_fromeprom to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %txpwr_fromeprom, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = add i8 %channel, -1
  %txpwrlevel_cck.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38
  %idxprom.i = zext i8 %sub.i to i32
  %arrayidx3.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i, i32 0, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8.i, align 1
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %9 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rf_type.i, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %10, label %if.else39.i [
    i8 1, label %if.end.if.then.i_crit_edge
    i8 0, label %if.end.if.then.i_crit_edge29
    i8 2, label %if.then29.i
  ]

if.end.if.then.i_crit_edge29:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge29
  %txpwrlevel_ht40_1s.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39
  %arrayidx18.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s.i, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18.i, align 1
  %14 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %ofdmpowerlevel, align 1
  %arrayidx23.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i
  %15 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23.i, align 1
  br label %_rtl92s_phy_get_txpower_index.exit

if.then29.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %txpwrlevel_ht40_2s.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40
  %arrayidx32.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_2s.i, i32 0, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32.i, align 1
  %19 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ofdmpowerlevel, align 1
  %arrayidx37.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40, i32 1, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx37.i, align 1
  br label %_rtl92s_phy_get_txpower_index.exit

if.else39.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ofdmpowerlevel, align 1
  br label %_rtl92s_phy_get_txpower_index.exit

_rtl92s_phy_get_txpower_index.exit:               ; preds = %if.else39.i, %if.then29.i, %if.then.i
  %.sink.i = phi i8 [ %21, %if.then29.i ], [ 0, %if.else39.i ], [ %16, %if.then.i ]
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i, ptr %2, align 1
  %conv = zext i8 %channel to i32
  %conv4 = zext i8 %6 to i32
  %conv6 = zext i8 %8 to i32
  %24 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ofdmpowerlevel, align 1
  %conv8 = zext i8 %25 to i32
  %conv10 = zext i8 %.sink.i to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10) #5
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cur_cck_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 14, i32 46
  %28 = ptrtoint ptr %cur_cck_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %6, ptr %cur_cck_txpwridx.i, align 4
  %cur_ofdm24g_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 14, i32 47
  %29 = ptrtoint ptr %cur_ofdm24g_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %cur_ofdm24g_txpwridx.i, align 1
  tail call void @rtl92s_phy_rf6052_set_ccktxpower(ptr noundef %hw, i8 noundef zeroext %6) #5
  call void @rtl92s_phy_rf6052_set_ofdmtxpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel, i8 noundef zeroext %channel) #5
  br label %cleanup

cleanup:                                          ; preds = %_rtl92s_phy_get_txpower_index.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdmpowerlevel) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_rf6052_set_ccktxpower(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92s_phy_rf6052_set_ofdmtxpower(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_chk_fwcmd_iodone(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %pollingcnt.0 = phi i16 [ 10000, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #5
  %3 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %4(ptr noundef %1, i32 noundef 704) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %do.body.if.end8_crit_edge, label %do.cond

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.cond:                                          ; preds = %do.body
  %dec = add nsw i16 %pollingcnt.0, -1
  %tobool.not = icmp eq i16 %dec, 0
  br i1 %tobool.not, label %do.end6, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end6:                                          ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %do.body.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_switch_ephy_parameter(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write32_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef 1344, i32 noundef 474129) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_dword.exit_crit_edge, label %if.then.i

entry.rtl_write_dword.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %8 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1, i32 noundef 1344) #5
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %entry.rtl_write_dword.exit_crit_edge
  %10 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32_async.i, align 4
  tail call void %11(ptr noundef %1, i32 noundef 1352, i32 noundef 147580) #5
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %write_readback.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_readback.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %write_readback.i19, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i20 = icmp eq i8 %15, 0
  br i1 %tobool.not.i20, label %rtl_write_dword.exit.rtl_write_dword.exit24_crit_edge, label %if.then.i23

rtl_write_dword.exit.rtl_write_dword.exit24_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit24

if.then.i23:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i21 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %16 = ptrtoint ptr %read32_sync.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32_sync.i21, align 4
  %call.i22 = tail call i32 %17(ptr noundef %1, i32 noundef 1352) #5
  br label %rtl_write_dword.exit24

rtl_write_dword.exit24:                           ; preds = %if.then.i23, %rtl_write_dword.exit.rtl_write_dword.exit24_crit_edge
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16_async.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef 1360, i16 noundef zeroext 4096) #5
  %20 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i, align 8
  %write_readback.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %write_readback.i26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_readback.i26, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i27 = icmp eq i8 %23, 0
  br i1 %tobool.not.i27, label %rtl_write_dword.exit24.rtl_write_word.exit_crit_edge, label %if.then.i29

rtl_write_dword.exit24.rtl_write_word.exit_crit_edge: ; preds = %rtl_write_dword.exit24
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit

if.then.i29:                                      ; preds = %rtl_write_dword.exit24
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %24 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read16_sync.i, align 4
  %call.i28 = tail call zeroext i16 %25(ptr noundef %1, i32 noundef 1360) #5
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i29, %rtl_write_dword.exit24.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %26 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write8_async.i, align 4
  tail call void %27(ptr noundef %1, i32 noundef 1364, i8 noundef zeroext 32) #5
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %write_readback.i31 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %write_readback.i31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %write_readback.i31, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i32 = icmp eq i8 %31, 0
  br i1 %tobool.not.i32, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i34

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit

if.then.i34:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %32 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read8_sync.i, align 4
  %call.i33 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 1364) #5
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i34, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %35, i32 0, i32 13, i32 9
  %36 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %37(ptr noundef %35, i32 noundef 1364) #5
  %38 = and i8 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not7.i = icmp eq i8 %38, 0
  br i1 %tobool.not7.i, label %rtl_write_byte.exit._rtl92s_phy_check_ephy_switchready.exit_crit_edge, label %rtl_write_byte.exit.while.body.i_crit_edge

rtl_write_byte.exit.while.body.i_crit_edge:       ; preds = %rtl_write_byte.exit
  br label %while.body.i

rtl_write_byte.exit._rtl92s_phy_check_ephy_switchready.exit_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %rtl_write_byte.exit.while.body.i_crit_edge
  %delay.08.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 100, %rtl_write_byte.exit.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i6.i = tail call zeroext i8 %40(ptr noundef %35, i32 noundef 1364) #5
  %dec.i = add nsw i32 %delay.08.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 10737400) #5
  %42 = and i8 %call.i6.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i35 = icmp eq i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool.not.i35, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %while.body.i._rtl92s_phy_check_ephy_switchready.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i._rtl92s_phy_check_ephy_switchready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit

_rtl92s_phy_check_ephy_switchready.exit:          ; preds = %while.body.i._rtl92s_phy_check_ephy_switchready.exit_crit_edge, %rtl_write_byte.exit._rtl92s_phy_check_ephy_switchready.exit_crit_edge
  %43 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write16_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 1360, i16 noundef zeroext -24341) #5
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i38 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i38 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i38, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i39 = icmp eq i8 %48, 0
  br i1 %tobool.not.i39, label %_rtl92s_phy_check_ephy_switchready.exit.rtl_write_word.exit43_crit_edge, label %if.then.i42

_rtl92s_phy_check_ephy_switchready.exit.rtl_write_word.exit43_crit_edge: ; preds = %_rtl92s_phy_check_ephy_switchready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit43

if.then.i42:                                      ; preds = %_rtl92s_phy_check_ephy_switchready.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i40 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %49 = ptrtoint ptr %read16_sync.i40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read16_sync.i40, align 4
  %call.i41 = tail call zeroext i16 %50(ptr noundef %1, i32 noundef 1360) #5
  br label %rtl_write_word.exit43

rtl_write_word.exit43:                            ; preds = %if.then.i42, %_rtl92s_phy_check_ephy_switchready.exit.rtl_write_word.exit43_crit_edge
  %51 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write8_async.i, align 4
  tail call void %52(ptr noundef %1, i32 noundef 1364, i8 noundef zeroext 62) #5
  %53 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i, align 8
  %write_readback.i46 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %write_readback.i46 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %write_readback.i46, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i47 = icmp eq i8 %56, 0
  br i1 %tobool.not.i47, label %rtl_write_word.exit43.rtl_write_byte.exit51_crit_edge, label %if.then.i50

rtl_write_word.exit43.rtl_write_byte.exit51_crit_edge: ; preds = %rtl_write_word.exit43
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit51

if.then.i50:                                      ; preds = %rtl_write_word.exit43
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i48 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %57 = ptrtoint ptr %read8_sync.i48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read8_sync.i48, align 4
  %call.i49 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 1364) #5
  br label %rtl_write_byte.exit51

rtl_write_byte.exit51:                            ; preds = %if.then.i50, %rtl_write_word.exit43.rtl_write_byte.exit51_crit_edge
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %priv, align 8
  %read8_sync.i.i53 = getelementptr inbounds %struct.rtl_priv, ptr %60, i32 0, i32 13, i32 9
  %61 = ptrtoint ptr %read8_sync.i.i53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read8_sync.i.i53, align 4
  %call.i.i54 = tail call zeroext i8 %62(ptr noundef %60, i32 noundef 1364) #5
  %63 = and i8 %call.i.i54, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not7.i55 = icmp eq i8 %63, 0
  br i1 %tobool.not7.i55, label %rtl_write_byte.exit51._rtl92s_phy_check_ephy_switchready.exit63_crit_edge, label %rtl_write_byte.exit51.while.body.i62_crit_edge

rtl_write_byte.exit51.while.body.i62_crit_edge:   ; preds = %rtl_write_byte.exit51
  br label %while.body.i62

rtl_write_byte.exit51._rtl92s_phy_check_ephy_switchready.exit63_crit_edge: ; preds = %rtl_write_byte.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit63

while.body.i62:                                   ; preds = %while.body.i62.while.body.i62_crit_edge, %rtl_write_byte.exit51.while.body.i62_crit_edge
  %delay.08.i56 = phi i32 [ %dec.i58, %while.body.i62.while.body.i62_crit_edge ], [ 100, %rtl_write_byte.exit51.while.body.i62_crit_edge ]
  %64 = ptrtoint ptr %read8_sync.i.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read8_sync.i.i53, align 4
  %call.i6.i57 = tail call zeroext i8 %65(ptr noundef %60, i32 noundef 1364) #5
  %dec.i58 = add nsw i32 %delay.08.i56, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 10737400) #5
  %67 = and i8 %call.i6.i57, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i59 = icmp eq i8 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i58)
  %cmp.not.i60 = icmp eq i32 %dec.i58, 0
  %or.cond.i61 = select i1 %tobool.not.i59, i1 true, i1 %cmp.not.i60
  br i1 %or.cond.i61, label %while.body.i62._rtl92s_phy_check_ephy_switchready.exit63_crit_edge, label %while.body.i62.while.body.i62_crit_edge

while.body.i62.while.body.i62_crit_edge:          ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i62

while.body.i62._rtl92s_phy_check_ephy_switchready.exit63_crit_edge: ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit63

_rtl92s_phy_check_ephy_switchready.exit63:        ; preds = %while.body.i62._rtl92s_phy_check_ephy_switchready.exit63_crit_edge, %rtl_write_byte.exit51._rtl92s_phy_check_ephy_switchready.exit63_crit_edge
  %68 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write16_async.i, align 4
  tail call void %69(ptr noundef %1, i32 noundef 1360, i16 noundef zeroext -128) #5
  %70 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i, align 8
  %write_readback.i66 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i66 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i66, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i67 = icmp eq i8 %73, 0
  br i1 %tobool.not.i67, label %_rtl92s_phy_check_ephy_switchready.exit63.rtl_write_word.exit71_crit_edge, label %if.then.i70

_rtl92s_phy_check_ephy_switchready.exit63.rtl_write_word.exit71_crit_edge: ; preds = %_rtl92s_phy_check_ephy_switchready.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_word.exit71

if.then.i70:                                      ; preds = %_rtl92s_phy_check_ephy_switchready.exit63
  call void @__sanitizer_cov_trace_pc() #7
  %read16_sync.i68 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %74 = ptrtoint ptr %read16_sync.i68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read16_sync.i68, align 4
  %call.i69 = tail call zeroext i16 %75(ptr noundef %1, i32 noundef 1360) #5
  br label %rtl_write_word.exit71

rtl_write_word.exit71:                            ; preds = %if.then.i70, %_rtl92s_phy_check_ephy_switchready.exit63.rtl_write_word.exit71_crit_edge
  %76 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write8_async.i, align 4
  tail call void %77(ptr noundef %1, i32 noundef 1364, i8 noundef zeroext 57) #5
  %78 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i, align 8
  %write_readback.i74 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_readback.i74 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %write_readback.i74, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i75 = icmp eq i8 %81, 0
  br i1 %tobool.not.i75, label %rtl_write_word.exit71.rtl_write_byte.exit79_crit_edge, label %if.then.i78

rtl_write_word.exit71.rtl_write_byte.exit79_crit_edge: ; preds = %rtl_write_word.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_byte.exit79

if.then.i78:                                      ; preds = %rtl_write_word.exit71
  call void @__sanitizer_cov_trace_pc() #7
  %read8_sync.i76 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %82 = ptrtoint ptr %read8_sync.i76 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read8_sync.i76, align 4
  %call.i77 = tail call zeroext i8 %83(ptr noundef %1, i32 noundef 1364) #5
  br label %rtl_write_byte.exit79

rtl_write_byte.exit79:                            ; preds = %if.then.i78, %rtl_write_word.exit71.rtl_write_byte.exit79_crit_edge
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  %read8_sync.i.i81 = getelementptr inbounds %struct.rtl_priv, ptr %85, i32 0, i32 13, i32 9
  %86 = ptrtoint ptr %read8_sync.i.i81 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8_sync.i.i81, align 4
  %call.i.i82 = tail call zeroext i8 %87(ptr noundef %85, i32 noundef 1364) #5
  %88 = and i8 %call.i.i82, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not7.i83 = icmp eq i8 %88, 0
  br i1 %tobool.not7.i83, label %rtl_write_byte.exit79._rtl92s_phy_check_ephy_switchready.exit91_crit_edge, label %rtl_write_byte.exit79.while.body.i90_crit_edge

rtl_write_byte.exit79.while.body.i90_crit_edge:   ; preds = %rtl_write_byte.exit79
  br label %while.body.i90

rtl_write_byte.exit79._rtl92s_phy_check_ephy_switchready.exit91_crit_edge: ; preds = %rtl_write_byte.exit79
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit91

while.body.i90:                                   ; preds = %while.body.i90.while.body.i90_crit_edge, %rtl_write_byte.exit79.while.body.i90_crit_edge
  %delay.08.i84 = phi i32 [ %dec.i86, %while.body.i90.while.body.i90_crit_edge ], [ 100, %rtl_write_byte.exit79.while.body.i90_crit_edge ]
  %89 = ptrtoint ptr %read8_sync.i.i81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read8_sync.i.i81, align 4
  %call.i6.i85 = tail call zeroext i8 %90(ptr noundef %85, i32 noundef 1364) #5
  %dec.i86 = add nsw i32 %delay.08.i84, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 10737400) #5
  %92 = and i8 %call.i6.i85, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i87 = icmp eq i8 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i86)
  %cmp.not.i88 = icmp eq i32 %dec.i86, 0
  %or.cond.i89 = select i1 %tobool.not.i87, i1 true, i1 %cmp.not.i88
  br i1 %or.cond.i89, label %while.body.i90._rtl92s_phy_check_ephy_switchready.exit91_crit_edge, label %while.body.i90.while.body.i90_crit_edge

while.body.i90.while.body.i90_crit_edge:          ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i90

while.body.i90._rtl92s_phy_check_ephy_switchready.exit91_crit_edge: ; preds = %while.body.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %_rtl92s_phy_check_ephy_switchready.exit91

_rtl92s_phy_check_ephy_switchready.exit91:        ; preds = %while.body.i90._rtl92s_phy_check_ephy_switchready.exit91_crit_edge, %rtl_write_byte.exit79._rtl92s_phy_check_ephy_switchready.exit91_crit_edge
  %support_aspm = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 5
  %93 = ptrtoint ptr %support_aspm to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %support_aspm, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not = icmp eq i8 %94, 0
  br i1 %tobool.not, label %_rtl92s_phy_check_ephy_switchready.exit91.if.else_crit_edge, label %land.lhs.true

_rtl92s_phy_check_ephy_switchready.exit91.if.else_crit_edge: ; preds = %_rtl92s_phy_check_ephy_switchready.exit91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %_rtl92s_phy_check_ephy_switchready.exit91
  %support_backdoor = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 6
  %95 = ptrtoint ptr %support_backdoor to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %support_backdoor, align 2, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool2.not = icmp eq i8 %96, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %97 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i, align 4
  tail call void %98(ptr noundef %1, i32 noundef 1376, i8 noundef zeroext 64) #5
  %99 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i, align 8
  %write_readback.i94 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i94 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i94, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i95 = icmp eq i8 %102, 0
  br i1 %tobool.not.i95, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %_rtl92s_phy_check_ephy_switchready.exit91.if.else_crit_edge
  %103 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write8_async.i, align 4
  tail call void %104(ptr noundef %1, i32 noundef 1376, i8 noundef zeroext 0) #5
  %105 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg.i, align 8
  %write_readback.i102 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %write_readback.i102 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_readback.i102, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i103 = icmp eq i8 %108, 0
  br i1 %tobool.not.i103, label %if.else.if.end_crit_edge, label %if.else.if.end.sink.split_crit_edge

if.else.if.end.sink.split_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.else.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %read8_sync.i104 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %109 = ptrtoint ptr %read8_sync.i104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %read8_sync.i104, align 4
  %call.i105 = tail call zeroext i8 %110(ptr noundef %1, i32 noundef 1376) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92s_phy_set_beacon_hwreg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %beaconinterval) local_unnamed_addr #0 align 64 {
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
  %firmwareversion = getelementptr inbounds %struct.rt_firmware, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %firmwareversion to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %firmwareversion, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 50, i16 %5)
  %cmp = icmp ugt i16 %5, 50
  %conv2 = zext i16 %beaconinterval to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, -251658240
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %6 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write32_async.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 704, i32 noundef %or) #5
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  %mul = shl nuw nsw i32 %conv2, 5
  %sub = add nsw i32 %mul, -64
  %write32_async.i8 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %12 = ptrtoint ptr %write32_async.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write32_async.i8, align 4
  tail call void %13(ptr noundef %1, i32 noundef 676, i32 noundef %sub) #5
  %cfg.i9 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i9, align 8
  %write_readback.i10 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %write_readback.i10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_readback.i10, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i11 = icmp eq i8 %17, 0
  br i1 %tobool.not.i11, label %if.else.rtl_write_dword.exit15_crit_edge, label %if.then.i14

if.else.rtl_write_dword.exit15_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %rtl_write_dword.exit15

if.then.i14:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %read32_sync.i12 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %18 = ptrtoint ptr %read32_sync.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32_sync.i12, align 4
  %call.i13 = tail call i32 %19(ptr noundef %1, i32 noundef 676) #5
  br label %rtl_write_dword.exit15

rtl_write_dword.exit15:                           ; preds = %if.then.i14, %if.else.rtl_write_dword.exit15_crit_edge
  %20 = ptrtoint ptr %write32_async.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write32_async.i8, align 4
  tail call void %21(ptr noundef %1, i32 noundef 672, i32 noundef -1339686788) #5
  %22 = ptrtoint ptr %cfg.i9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg.i9, align 8
  %write_readback.i18 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write_readback.i18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_readback.i18, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i19 = icmp eq i8 %25, 0
  br i1 %tobool.not.i19, label %rtl_write_dword.exit15.if.end_crit_edge, label %rtl_write_dword.exit15.if.end.sink.split_crit_edge

rtl_write_dword.exit15.if.end.sink.split_crit_edge: ; preds = %rtl_write_dword.exit15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

rtl_write_dword.exit15.if.end_crit_edge:          ; preds = %rtl_write_dword.exit15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %rtl_write_dword.exit15.if.end.sink.split_crit_edge, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 704, %if.then.if.end.sink.split_crit_edge ], [ 672, %rtl_write_dword.exit15.if.end.sink.split_crit_edge ]
  %read32_sync.i20 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %26 = ptrtoint ptr %read32_sync.i20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32_sync.i20, align 4
  %call.i21 = tail call i32 %27(ptr noundef %1, i32 noundef %.sink) #5
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %rtl_write_dword.exit15.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192se_gpiobit3_cfg_inputmode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl_addr_delay(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 36, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 49, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 155, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 168, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 185, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 222, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtl92s_phy_scan_operation_backup._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl92s_phy_scan_operation_backup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 237, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 262, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl92s_phy_set_bw_mode._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl92s_phy_set_bw_mode._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rtl92s_phy_set_bw_mode._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 287, i32 3}
!29 = !{ptr @rtl92s_phy_set_bw_mode._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 294, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 432, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 528, i32 6}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 536, i32 5}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 557, i32 5}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 583, i32 6}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 593, i32 6}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 602, i32 4}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 607, i32 4}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 616, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rtl92s_phy_set_rf_power_state._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rtl92s_phy_set_rf_power_state._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 965, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1047, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtl92s_phy_bb_config._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @rtl92s_phy_bb_config._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1049, i32 3}
!62 = !{ptr @rtl92s_phy_bb_config._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtl92s_phy_bb_config._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1085, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1096, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1160, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1189, i32 3}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl92s_phy_chk_fwcmd_iodone._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtl92s_phy_chk_fwcmd_iodone._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1341, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1380, i32 4}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1387, i32 4}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1395, i32 5}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1402, i32 4}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1418, i32 4}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1440, i32 4}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1528, i32 4}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 121, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 144, i32 2}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 348, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 411, i32 4}
!100 = !{ptr @_rtl92s_phy_sw_chnl_step_by_step._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @_rtl92s_phy_sw_chnl_step_by_step._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 304, i32 3}
!104 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 909, i32 3}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @_rtl92s_phy_bb_config_parafile._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @_rtl92s_phy_bb_config_parafile._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 922, i32 3}
!112 = !{ptr @_rtl92s_phy_bb_config_parafile._entry.53, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @_rtl92s_phy_bb_config_parafile._entry_ptr.55, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 930, i32 3}
!116 = !{ptr @_rtl92s_phy_bb_config_parafile._entry.56, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @_rtl92s_phy_bb_config_parafile._entry_ptr.58, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1221, i32 3}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1226, i32 3}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1231, i32 3}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1239, i32 3}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1247, i32 3}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1254, i32 3}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1261, i32 3}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1296, i32 3}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1305, i32 3}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1310, i32 3}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192se/phy.c", i32 1315, i32 3}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i32 0, i32 33}
!150 = !{i8 0, i8 2}
!151 = !{!"branch_weights", i32 2000, i32 1}
