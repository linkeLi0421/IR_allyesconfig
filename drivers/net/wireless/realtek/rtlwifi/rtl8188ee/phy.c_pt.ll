; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c"
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
%struct.swchnlcmd = type { i32, i32, i32, i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"regaddr(%#x), bitmask(%#x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"BBR MASK=0x%x Addr[0x%x]=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@RTL8188EE_RADIOA_1TARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Radio_A:RTL8188EE_RADIOA_1TARRAY %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl88e_phy_scan_operation_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8188ee: Unknown Scan Backup operation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl88e_phy_scan_operation_backup\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl88e_phy_scan_operation_backup._entry_ptr = internal global ptr @rtl88e_phy_scan_operation_backup._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl88e_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.12, i32 1105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8188ee: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rtl88e_phy_set_bw_mode_callback\00", [32 x i8] zeroinitializer }, align 32
@rtl88e_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl88e_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl88e_phy_set_bw_mode_callback._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.12, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl88e_phy_set_bw_mode_callback._entry_ptr.19 = internal global ptr @rtl88e_phy_set_bw_mode_callback._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"false driver sleep or unload\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch to channel%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl88e_phy_sw_chnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8188ee: WIRELESS_MODE_G but channel>14\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sw_chnl_inprogress false schedule workitem current channel %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LCK:Start!!! currentband %x delay %d ms\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"-->IO Cmd(%#x), set_io_inprogress(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Resume DM after scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Pause DM before scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IO Type(%#x)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFR-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFW-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@_rtl88e_phy_bb8188e_config_parafile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.12, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8188ee: Write BB Reg Fail!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"_rtl88e_phy_bb8188e_config_parafile\00", [60 x i8] zeroinitializer }, align 32
@_rtl88e_phy_bb8188e_config_parafile._entry_ptr = internal global ptr @_rtl88e_phy_bb8188e_config_parafile._entry, section ".printk_index", align 4
@_rtl88e_phy_bb8188e_config_parafile._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.12, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8188ee: BB_PG Reg Fail!!\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl88e_phy_bb8188e_config_parafile._entry_ptr.38 = internal global ptr @_rtl88e_phy_bb8188e_config_parafile._entry.36, section ".printk_index", align 4
@_rtl88e_phy_bb8188e_config_parafile._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.12, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8188ee: AGC Table Fail\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl88e_phy_bb8188e_config_parafile._entry_ptr.41 = internal global ptr @_rtl88e_phy_bb8188e_config_parafile._entry.39, section ".printk_index", align 4
@RTL8188EEPHY_REG_1TARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@RTL8188EEAGCTAB_1TARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.42 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\0A\00", [33 x i8] zeroinitializer }, align 32
@RTL8188EEPHY_REG_ARRAY_PG = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][0] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][1] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][6] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][7] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][2] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][3] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][4] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][5] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][8] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][9] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][14] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][15] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][10] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][11] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][12] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][13] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read Rtl8188EMACPHY_Array\0A\00", [37 x i8] zeroinitializer }, align 32
@RTL8188EEMAC_1T_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Img:RTL8188EEMAC_1T_ARRAY LEN %d\0A\00", [62 x i8] zeroinitializer }, align 32
@_rtl88e_phy_sw_chnl_step_by_step.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8188ee: illegal channel for Zebra: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl88e_phy_sw_chnl_step_by_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.12, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtl8188ee: Invalid 'stage' = %d, Check it!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"_rtl88e_phy_sw_chnl_step_by_step\00", [63 x i8] zeroinitializer }, align 32
@_rtl88e_phy_sw_chnl_step_by_step._entry_ptr = internal global ptr @_rtl88e_phy_sw_chnl_step_by_step._entry, section ".printk_index", align 4
@__const._rtl88e_phy_iq_calibrate.adda_reg = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Tx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Rx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Path a RX iqk fail!!!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path A IQK Success!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"88ee IQK Finish!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%#x)\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set ERFON slept:%d ms\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.75 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0A ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 3584, i64 3588, i64 3592]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 3604, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 2096, i64 2100, i64 2104]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 2108, i64 2120, i64 2124, i64 2152]
@__sancov_gen_cov_switch_values.85 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 4094]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.88 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 4094]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 51, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 57, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 71, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 94, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 107, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 120, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 766, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 768, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 795, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 807, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1063, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1078, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1104, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1129, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1135, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1152, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1166, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1198, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1205, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1210, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2051, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2071, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2077, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2082, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2087, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2099, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 187, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 211, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 346, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 356, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 362, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 484, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 518, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 525, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 532, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 539, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 546, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 553, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 560, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 571, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 578, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 585, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 592, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 599, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 606, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 613, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 620, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 627, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 378, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 381, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1247, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1270, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1746, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1759, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1767, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1773, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1825, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2109, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2131, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2177, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2185, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2209, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2218, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2228, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 2269, i32 4 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @_rtl88e_phy_bb8188e_config_parafile._entry, ptr @_rtl88e_phy_bb8188e_config_parafile._entry.36, ptr @_rtl88e_phy_bb8188e_config_parafile._entry.39, ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr, ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr.38, ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr.41, ptr @_rtl88e_phy_sw_chnl_step_by_step._entry, ptr @_rtl88e_phy_sw_chnl_step_by_step._entry_ptr, ptr @rtl88e_phy_scan_operation_backup._entry, ptr @rtl88e_phy_scan_operation_backup._entry_ptr, ptr @rtl88e_phy_set_bw_mode_callback._entry, ptr @rtl88e_phy_set_bw_mode_callback._entry.18, ptr @rtl88e_phy_set_bw_mode_callback._entry_ptr, ptr @rtl88e_phy_set_bw_mode_callback._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_phy_scan_operation_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl88e_phy_set_bw_mode_callback._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_phy_bb8188e_config_parafile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_phy_bb8188e_config_parafile._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_phy_bb8188e_config_parafile._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl88e_phy_sw_chnl_step_by_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl88e_phy_query_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %bitmask) #7
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #7
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #7, !range !166
  %and = and i32 %call.i, %bitmask
  %shr = lshr i32 %and, %4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %bitmask, i32 noundef %regaddr, i32 noundef %call.i) #7
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #7
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #7, !range !166
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
  tail call void %6(ptr noundef %1, i32 noundef %regaddr, i32 noundef %data.addr.0) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_dword.exit_crit_edge, label %if.then.i

if.end.rtl_write_dword.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i15, align 4
  %call.i16 = tail call i32 %12(ptr noundef %1, i32 noundef %regaddr) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.end.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl88e_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #7
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #7
  %call = tail call fastcc i32 @_rtl88e_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr)
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #7, !range !166
  %and = and i32 %call, %bitmask
  %shr = lshr i32 %and, %2
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %call) #7
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl88e_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 2084, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cmp = icmp eq i32 %rfpath, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rfhssi_para2 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 8
  %8 = ptrtoint ptr %rfhssi_para2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfhssi_para2, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %cfg.i45 = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i45 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i45, align 8
  %ops.i46 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i46, align 4
  %get_bbreg.i47 = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %get_bbreg.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_bbreg.i47, align 4
  %call.i48 = tail call i32 %17(ptr noundef %hw, i32 noundef %9, i32 noundef -1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %tmplong2.0 = phi i32 [ %call.i48, %if.else ], [ %call.i, %entry.if.end_crit_edge ]
  %and2 = and i32 %tmplong2.0, 8388607
  %and = shl i32 %offset, 23
  %or = or i32 %and2, %and
  %or3 = or i32 %or, -2147483648
  %and4 = and i32 %call.i, 2147483647
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %cfg.i50 = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i50, align 8
  %ops.i51 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i51, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %25(ptr noundef %hw, i32 noundef 2084, i32 noundef -1, i32 noundef %and4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #7
  %rfhssi_para25 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 8
  %27 = ptrtoint ptr %rfhssi_para25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rfhssi_para25, align 4
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  %cfg.i53 = getelementptr inbounds %struct.rtl_priv, ptr %30, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i53, align 8
  %ops.i54 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i54, align 4
  %set_bbreg.i55 = getelementptr inbounds %struct.rtl_hal_ops, ptr %34, i32 0, i32 46
  %35 = ptrtoint ptr %set_bbreg.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_bbreg.i55, align 4
  tail call void %36(ptr noundef %hw, i32 noundef %28, i32 noundef -1, i32 noundef %or3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 25769760) #7
  br i1 %cmp, label %if.end.if.end16_crit_edge, label %if.else9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rfpath)
  %cmp10 = icmp eq i32 %rfpath, 1
  br i1 %cmp10, label %if.else9.if.end16_crit_edge, label %if.else9.if.else19_crit_edge

if.else9.if.else19_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %.sink = phi i32 [ 2080, %if.end.if.end16_crit_edge ], [ 2088, %if.else9.if.end16_crit_edge ]
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv, align 8
  %cfg.i62 = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i62 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i62, align 8
  %ops.i63 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i63, align 4
  %get_bbreg.i64 = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 45
  %44 = ptrtoint ptr %get_bbreg.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_bbreg.i64, align 4
  %call.i65 = tail call i32 %45(ptr noundef %hw, i32 noundef %.sink, i32 noundef 256) #7
  %rfpi_enable.0 = trunc i32 %call.i65 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rfpi_enable.0)
  %tobool.not = icmp eq i8 %rfpi_enable.0, 0
  br i1 %tobool.not, label %if.end16.if.else19_crit_edge, label %if.then17

if.end16.if.else19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %rf_rbpi = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 17
  br label %if.end21

if.else19:                                        ; preds = %if.end16.if.else19_crit_edge, %if.else9.if.else19_crit_edge
  %rf_rb = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %rf_rb.sink = phi ptr [ %rf_rb, %if.else19 ], [ %rf_rbpi, %if.then17 ]
  %46 = ptrtoint ptr %rf_rb.sink to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rf_rb.sink, align 4
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %cfg.i72 = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 32
  %50 = ptrtoint ptr %cfg.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i72, align 8
  %ops.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i73, align 4
  %get_bbreg.i74 = getelementptr inbounds %struct.rtl_hal_ops, ptr %53, i32 0, i32 45
  %54 = ptrtoint ptr %get_bbreg.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_bbreg.i74, align 4
  %call.i75 = tail call i32 %55(ptr noundef %hw, i32 noundef %47, i32 noundef 1048575) #7
  %rf_rb22 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  %56 = ptrtoint ptr %rf_rb22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rf_rb22, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.32, i32 noundef %rfpath, i32 noundef %57, i32 noundef %call.i75) #7
  ret i32 %call.i75
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #7
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, 1048575
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @_rtl88e_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr)
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #7, !range !166
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %data, %2
  %or = or i32 %and, %shl
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %phy.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 14
  %and.i = shl i32 %regaddr, 20
  %shl.i = and i32 %and.i, 267386880
  %and1.i = and i32 %data.addr.0, 1048575
  %or.i = or i32 %and1.i, %shl.i
  %rf3wire_offset.i = getelementptr [4 x %struct.bb_reg_def], ptr %phy.i, i32 0, i32 %rfpath, i32 4
  %5 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rf3wire_offset.i, align 4
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %4, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %12(ptr noundef %hw, i32 noundef %6, i32 noundef -1, i32 noundef %or.i) #7
  %13 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rf3wire_offset.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.33, i32 noundef %rfpath, i32 noundef %14, i32 noundef %or.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0, i32 noundef %rfpath) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.60) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.61, i32 noundef 180) #7
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %add2.i, %rtl_write_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8188EEMAC_1T_ARRAY, i32 %i.01.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.01.i, 1
  %arrayidx1.i = getelementptr i32, ptr @RTL8188EEMAC_1T_ARRAY, i32 %add.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv.i) #7
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %for.body.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.body.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef %3) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.body.i.rtl_write_byte.exit.i_crit_edge
  %add2.i = add nuw nsw i32 %i.01.i, 2
  %cmp.i = icmp ult i32 %i.01.i, 178
  br i1 %cmp.i, label %rtl_write_byte.exit.i.for.body.i_crit_edge, label %_rtl88e_phy_config_mac_with_headerfile.exit

rtl_write_byte.exit.i.for.body.i_crit_edge:       ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

_rtl88e_phy_config_mac_with_headerfile.exit:      ; preds = %rtl_write_byte.exit.i
  %14 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 1226, i8 noundef zeroext 11) #7
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %_rtl88e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge, label %if.then.i

_rtl88e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge: ; preds = %_rtl88e_phy_config_mac_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %_rtl88e_phy_config_mac_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 1226) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %_rtl88e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %rfintfe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 3
  %12 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe30.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %rfintfe30.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2148, ptr %rfintfe30.i, align 4
  %rf3wire_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 4
  %14 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2112, ptr %rf3wire_offset.i, align 4
  %rf3wire_offset35.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %rf3wire_offset35.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2116, ptr %rf3wire_offset35.i, align 4
  %rflssi_select.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 5
  %16 = ptrtoint ptr %rflssi_select.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2168, ptr %rflssi_select.i, align 4
  %rflssi_select40.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %rflssi_select40.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2168, ptr %rflssi_select40.i, align 4
  %rflssi_select43.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %rflssi_select43.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2172, ptr %rflssi_select43.i, align 4
  %rflssi_select46.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 5
  %19 = ptrtoint ptr %rflssi_select46.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2172, ptr %rflssi_select46.i, align 4
  %rftxgain_stage.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 6
  %20 = ptrtoint ptr %rftxgain_stage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2060, ptr %rftxgain_stage.i, align 4
  %rftxgain_stage51.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %rftxgain_stage51.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2060, ptr %rftxgain_stage51.i, align 4
  %rftxgain_stage54.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %rftxgain_stage54.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2060, ptr %rftxgain_stage54.i, align 4
  %rftxgain_stage57.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 6
  %23 = ptrtoint ptr %rftxgain_stage57.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2060, ptr %rftxgain_stage57.i, align 4
  %rfhssi_para1.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 7
  %24 = ptrtoint ptr %rfhssi_para1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2080, ptr %rfhssi_para1.i, align 4
  %rfhssi_para162.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 7
  %25 = ptrtoint ptr %rfhssi_para162.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2088, ptr %rfhssi_para162.i, align 4
  %rfhssi_para2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 8
  %26 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2084, ptr %rfhssi_para2.i, align 4
  %rfhssi_para267.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 8
  %27 = ptrtoint ptr %rfhssi_para267.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2092, ptr %rfhssi_para267.i, align 4
  %rfsw_ctrl.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 9
  %28 = ptrtoint ptr %rfsw_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2136, ptr %rfsw_ctrl.i, align 4
  %rfsw_ctrl72.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 9
  %29 = ptrtoint ptr %rfsw_ctrl72.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2136, ptr %rfsw_ctrl72.i, align 4
  %rfsw_ctrl75.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 9
  %30 = ptrtoint ptr %rfsw_ctrl75.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2140, ptr %rfsw_ctrl75.i, align 4
  %rfsw_ctrl78.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 9
  %31 = ptrtoint ptr %rfsw_ctrl78.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2140, ptr %rfsw_ctrl78.i, align 4
  %rfagc_control1.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 10
  %32 = ptrtoint ptr %rfagc_control1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3152, ptr %rfagc_control1.i, align 4
  %rfagc_control183.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 10
  %33 = ptrtoint ptr %rfagc_control183.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3160, ptr %rfagc_control183.i, align 4
  %rfagc_control186.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 10
  %34 = ptrtoint ptr %rfagc_control186.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3168, ptr %rfagc_control186.i, align 4
  %rfagc_control189.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 10
  %35 = ptrtoint ptr %rfagc_control189.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3176, ptr %rfagc_control189.i, align 4
  %rfagc_control2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 11
  %36 = ptrtoint ptr %rfagc_control2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3156, ptr %rfagc_control2.i, align 4
  %rfagc_control294.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 11
  %37 = ptrtoint ptr %rfagc_control294.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3164, ptr %rfagc_control294.i, align 4
  %rfagc_control297.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 11
  %38 = ptrtoint ptr %rfagc_control297.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3172, ptr %rfagc_control297.i, align 4
  %rfagc_control2100.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 11
  %39 = ptrtoint ptr %rfagc_control2100.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3180, ptr %rfagc_control2100.i, align 4
  %rfrxiq_imbal.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 12
  %40 = ptrtoint ptr %rfrxiq_imbal.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3092, ptr %rfrxiq_imbal.i, align 4
  %rfrxiq_imbal105.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 12
  %41 = ptrtoint ptr %rfrxiq_imbal105.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3100, ptr %rfrxiq_imbal105.i, align 4
  %rfrxiq_imbal108.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 12
  %42 = ptrtoint ptr %rfrxiq_imbal108.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3108, ptr %rfrxiq_imbal108.i, align 4
  %rfrxiq_imbal111.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 12
  %43 = ptrtoint ptr %rfrxiq_imbal111.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3116, ptr %rfrxiq_imbal111.i, align 4
  %rfrx_afe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 13
  %44 = ptrtoint ptr %rfrx_afe.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3088, ptr %rfrx_afe.i, align 4
  %rfrx_afe116.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 13
  %45 = ptrtoint ptr %rfrx_afe116.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3096, ptr %rfrx_afe116.i, align 4
  %rfrx_afe119.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 13
  %46 = ptrtoint ptr %rfrx_afe119.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3104, ptr %rfrx_afe119.i, align 4
  %rfrx_afe122.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 13
  %47 = ptrtoint ptr %rfrx_afe122.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3112, ptr %rfrx_afe122.i, align 4
  %rftxiq_imbal.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 14
  %48 = ptrtoint ptr %rftxiq_imbal.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3200, ptr %rftxiq_imbal.i, align 4
  %rftxiq_imbal127.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 14
  %49 = ptrtoint ptr %rftxiq_imbal127.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3208, ptr %rftxiq_imbal127.i, align 4
  %rftxiq_imbal130.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 2, i32 14
  %50 = ptrtoint ptr %rftxiq_imbal130.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3216, ptr %rftxiq_imbal130.i, align 4
  %rftxiq_imbal133.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 3, i32 14
  %51 = ptrtoint ptr %rftxiq_imbal133.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3224, ptr %rftxiq_imbal133.i, align 4
  %rftx_afe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 15
  %52 = ptrtoint ptr %rftx_afe.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3204, ptr %rftx_afe.i, align 4
  %rftx_afe138.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 15
  %53 = ptrtoint ptr %rftx_afe138.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3212, ptr %rftx_afe138.i, align 4
  %rf_rb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 16
  %54 = ptrtoint ptr %rf_rb.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2208, ptr %rf_rb.i, align 4
  %rf_rb143.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 16
  %55 = ptrtoint ptr %rf_rb143.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2212, ptr %rf_rb143.i, align 4
  %rf_rbpi.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 17
  %56 = ptrtoint ptr %rf_rbpi.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2232, ptr %rf_rbpi.i, align 4
  %rf_rbpi148.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 17
  %57 = ptrtoint ptr %rf_rbpi148.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2236, ptr %rf_rbpi148.i, align 4
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %58 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %59(ptr noundef %1, i32 noundef 2) #7
  %60 = or i16 %call.i, 8195
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %61 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write16_async.i, align 4
  tail call void %62(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %60) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read16_sync.i, align 4
  %call.i17 = tail call zeroext i16 %68(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %69 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write8_async.i, align 4
  tail call void %70(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #7
  %71 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i, align 8
  %write_readback.i19 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_readback.i19 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %write_readback.i19, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i20 = icmp eq i8 %74, 0
  br i1 %tobool.not.i20, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i22

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i22:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %75 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read8_sync.i, align 4
  %call.i21 = tail call zeroext i8 %76(ptr noundef %1, i32 noundef 31) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i22, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %77 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write8_async.i, align 4
  tail call void %78(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -29) #7
  %79 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i, align 8
  %write_readback.i25 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write_readback.i25 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %write_readback.i25, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i26 = icmp eq i8 %82, 0
  br i1 %tobool.not.i26, label %rtl_write_byte.exit.rtl_write_byte.exit30_crit_edge, label %if.then.i29

rtl_write_byte.exit.rtl_write_byte.exit30_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit30

if.then.i29:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i27 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %83 = ptrtoint ptr %read8_sync.i27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %read8_sync.i27, align 4
  %call.i28 = tail call zeroext i8 %84(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_byte.exit30

rtl_write_byte.exit30:                            ; preds = %if.then.i29, %rtl_write_byte.exit.rtl_write_byte.exit30_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %85 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read32_sync.i, align 4
  %call.i31 = tail call i32 %86(ptr noundef %1, i32 noundef 76) #7
  %or5 = or i32 %call.i31, 8388608
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %87 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write32_async.i, align 4
  tail call void %88(ptr noundef %1, i32 noundef 76, i32 noundef %or5) #7
  %89 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i, align 8
  %write_readback.i33 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_readback.i33 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %write_readback.i33, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i34 = icmp eq i8 %92, 0
  br i1 %tobool.not.i34, label %rtl_write_byte.exit30.rtl_write_dword.exit_crit_edge, label %if.then.i37

rtl_write_byte.exit30.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i37:                                      ; preds = %rtl_write_byte.exit30
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read32_sync.i, align 4
  %call.i36 = tail call i32 %94(ptr noundef %1, i32 noundef 76) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i37, %rtl_write_byte.exit30.rtl_write_dword.exit_crit_edge
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  tail call fastcc void @phy_config_bb_with_headerfile(ptr noundef %hw, i8 noundef zeroext 0) #7
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 17, i32 7
  %97 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool3.not.i = icmp eq i8 %98, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %rtl_write_dword.exit._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge

rtl_write_dword.exit._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_bb8188e_config_parafile.exit

if.then4.i:                                       ; preds = %rtl_write_dword.exit
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 14, i32 38
  %99 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %pwrgroup_cnt.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then4.i
  %i.016.i.i = phi i32 [ 0, %if.then4.i ], [ %add80.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @RTL8188EEPHY_REG_ARRAY_PG, i32 %i.016.i.i
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add nsw i32 %i.016.i.i, 1
  %arrayidx5.i.i = getelementptr i32, ptr @RTL8188EEPHY_REG_ARRAY_PG, i32 %add.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %101)
  %cmp6.i.i = icmp ult i32 %101, -842150451
  br i1 %cmp6.i.i, label %if.then8.i.i, label %if.else53.i.i

if.then8.i.i:                                     ; preds = %for.body.i.i
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i32 %101, label %if.then8.i.i.if.end47.i.i_crit_edge [
    i32 254, label %if.then8.i.i.while.body.i.i_crit_edge
    i32 253, label %while.body21.preheader.i.i
    i32 252, label %if.then8.i.i.if.end47thread-pre-split.sink.split.i.i_crit_edge
    i32 251, label %if.then32.i.i
    i32 250, label %if.then37.i.i
    i32 249, label %if.then42.i.i
  ]

if.then8.i.i.if.end47thread-pre-split.sink.split.i.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split.sink.split.i.i

if.then8.i.i.while.body.i.i_crit_edge:            ; preds = %if.then8.i.i
  br label %while.body.i.i

if.then8.i.i.if.end47.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i.i

while.body21.preheader.i.i:                       ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #7
  br label %if.end47thread-pre-split.sink.split.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then8.i.i.while.body.i.i_crit_edge
  %__ms.015.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 50, %if.then8.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.015.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #7
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end47thread-pre-split.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.if.end47thread-pre-split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split.i.i

if.then32.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split.sink.split.i.i

if.then37.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split.sink.split.i.i

if.then42.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47thread-pre-split.sink.split.i.i

if.end47thread-pre-split.sink.split.i.i:          ; preds = %if.then42.i.i, %if.then37.i.i, %if.then32.i.i, %while.body21.preheader.i.i, %if.then8.i.i.if.end47thread-pre-split.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 214748000, %while.body21.preheader.i.i ], [ 1073740, %if.then37.i.i ], [ 214748, %if.then42.i.i ], [ 10737400, %if.then32.i.i ], [ 214748000, %if.then8.i.i.if.end47thread-pre-split.sink.split.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef %.sink.i.i) #7
  br label %if.end47thread-pre-split.i.i

if.end47thread-pre-split.i.i:                     ; preds = %if.end47thread-pre-split.sink.split.i.i, %while.body.i.i.if.end47thread-pre-split.i.i_crit_edge
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pr.i.i = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.end47thread-pre-split.i.i, %if.then8.i.i.if.end47.i.i_crit_edge
  %110 = phi i32 [ %.pr.i.i, %if.end47thread-pre-split.i.i ], [ %101, %if.then8.i.i.if.end47.i.i_crit_edge ]
  %111 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx5.i.i, align 4
  %add51.i.i = add i32 %i.016.i.i, 2
  %arrayidx52.i.i = getelementptr i32, ptr @RTL8188EEPHY_REG_ARRAY_PG, i32 %add51.i.i
  %113 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx52.i.i, align 4
  %115 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv, align 8
  %pwrgroup_cnt.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 38
  %117 = ptrtoint ptr %pwrgroup_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %pwrgroup_cnt.i.i.i, align 2
  %conv.i.i.i = zext i8 %118 to i32
  %119 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %110, label %if.end25.i.i.i [
    i32 3584, label %if.then.i.i.i
    i32 3588, label %if.then8.i.i.i
    i32 3592, label %if.then18.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i
  br label %if.end37.sink.split.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx11.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 1
  br label %if.end37.sink.split.i.i.i

if.then18.i.i.i:                                  ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 6
  br label %if.end37.sink.split.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2156, i32 %110)
  %cmp26.i.i.i = icmp eq i32 %110, 2156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %112)
  %cmp28.i.i.i = icmp eq i32 %112, -256
  %or.cond.i.i.i = and i1 %cmp26.i.i.i, %cmp28.i.i.i
  br i1 %or.cond.i.i.i, label %if.then30.i.i.i, label %if.end25.i.i.i.if.end37.i.i.i_crit_edge

if.end25.i.i.i.if.end37.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx33.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 7
  br label %if.end37.sink.split.i.i.i

if.end37.sink.split.i.i.i:                        ; preds = %if.then30.i.i.i, %if.then18.i.i.i, %if.then8.i.i.i, %if.then.i.i.i
  %arrayidx21.sink.i.i.i = phi ptr [ %arrayidx21.i.i.i, %if.then18.i.i.i ], [ %arrayidx.i.i.i, %if.then.i.i.i ], [ %arrayidx11.i.i.i, %if.then8.i.i.i ], [ %arrayidx33.i.i.i, %if.then30.i.i.i ]
  %.str.46.sink.i.i.i = phi ptr [ @.str.46, %if.then18.i.i.i ], [ @.str.44, %if.then.i.i.i ], [ @.str.45, %if.then8.i.i.i ], [ @.str.47, %if.then30.i.i.i ]
  %cmp26316.ph.i.i.i = phi i1 [ false, %if.then18.i.i.i ], [ false, %if.then.i.i.i ], [ false, %if.then8.i.i.i ], [ true, %if.then30.i.i.i ]
  %120 = ptrtoint ptr %arrayidx21.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %114, ptr %arrayidx21.sink.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull %.str.46.sink.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %114) #7
  br label %if.end37.i.i.i

if.end37.i.i.i:                                   ; preds = %if.end37.sink.split.i.i.i, %if.end25.i.i.i.if.end37.i.i.i_crit_edge
  %cmp26316.i.i.i = phi i1 [ %cmp26.i.i.i, %if.end25.i.i.i.if.end37.i.i.i_crit_edge ], [ %cmp26316.ph.i.i.i, %if.end37.sink.split.i.i.i ]
  %121 = add i32 %110, -3600
  %122 = tail call i32 @llvm.fshl.i32(i32 %121, i32 %121, i32 30) #7
  %123 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %122, label %if.end37.i.i.i.if.end84.i.i.i_crit_edge [
    i32 0, label %if.then40.i.i.i
    i32 1, label %if.then50.i.i.i
    i32 2, label %if.end37.i.i.i.if.then60.i.i.i_crit_edge
    i32 3, label %if.end37.i.i.i.if.then70.i.i.i_crit_edge
  ]

if.end37.i.i.i.if.then70.i.i.i_crit_edge:         ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70.i.i.i

if.end37.i.i.i.if.then60.i.i.i_crit_edge:         ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i.i

if.end37.i.i.i.if.end84.i.i.i_crit_edge:          ; preds = %if.end37.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i.i.i

if.then40.i.i.i:                                  ; preds = %if.end37.i.i.i
  %arrayidx43.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 2
  %124 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %114, ptr %arrayidx43.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.48, i32 noundef %conv.i.i.i, i32 noundef %114) #7
  %125 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %110, label %if.then40.i.i.i.if.end84.i.i.i_crit_edge [
    i32 3604, label %if.end84.thread.i.i.i
    i32 3608, label %if.then40.i.i.i.if.then60.i.i.i_crit_edge
    i32 3612, label %if.then40.i.i.i.if.then70.i.i.i_crit_edge
  ]

if.then40.i.i.i.if.then70.i.i.i_crit_edge:        ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70.i.i.i

if.then40.i.i.i.if.then60.i.i.i_crit_edge:        ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i.i

if.then40.i.i.i.if.end84.i.i.i_crit_edge:         ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i.i.i

if.end84.thread.i.i.i:                            ; preds = %if.then40.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx53317.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 3
  %126 = ptrtoint ptr %arrayidx53317.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %114, ptr %arrayidx53317.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef %conv.i.i.i, i32 noundef %114) #7
  br label %if.end114.i.i.i

if.then50.i.i.i:                                  ; preds = %if.end37.i.i.i
  %arrayidx53.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 3
  %127 = ptrtoint ptr %arrayidx53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %114, ptr %arrayidx53.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef %conv.i.i.i, i32 noundef %114) #7
  %128 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %110, label %if.then50.i.i.i.if.end84.i.i.i_crit_edge [
    i32 3608, label %if.then50.i.i.i.if.then60.i.i.i_crit_edge
    i32 3612, label %if.then50.i.i.i.if.then70.i.i.i_crit_edge
  ]

if.then50.i.i.i.if.then70.i.i.i_crit_edge:        ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70.i.i.i

if.then50.i.i.i.if.then60.i.i.i_crit_edge:        ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i.i

if.then50.i.i.i.if.end84.i.i.i_crit_edge:         ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i.i.i

if.then60.i.i.i:                                  ; preds = %if.then50.i.i.i.if.then60.i.i.i_crit_edge, %if.then40.i.i.i.if.then60.i.i.i_crit_edge, %if.end37.i.i.i.if.then60.i.i.i_crit_edge
  %arrayidx63.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 4
  %129 = ptrtoint ptr %arrayidx63.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %114, ptr %arrayidx63.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.50, i32 noundef %conv.i.i.i, i32 noundef %114) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3612, i32 %110)
  %cmp68.i.i.i = icmp eq i32 %110, 3612
  br i1 %cmp68.i.i.i, label %if.then60.i.i.i.if.then70.i.i.i_crit_edge, label %if.then60.i.i.i.if.end84.i.i.i_crit_edge

if.then60.i.i.i.if.end84.i.i.i_crit_edge:         ; preds = %if.then60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84.i.i.i

if.then60.i.i.i.if.then70.i.i.i_crit_edge:        ; preds = %if.then60.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70.i.i.i

if.then70.i.i.i:                                  ; preds = %if.then60.i.i.i.if.then70.i.i.i_crit_edge, %if.then50.i.i.i.if.then70.i.i.i_crit_edge, %if.then40.i.i.i.if.then70.i.i.i_crit_edge, %if.end37.i.i.i.if.then70.i.i.i_crit_edge
  %arrayidx73.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %conv.i.i.i, i32 5
  %130 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %114, ptr %arrayidx73.i.i.i, align 4
  %rf_type.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 4
  %131 = ptrtoint ptr %rf_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %rf_type.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp75.i.i.i = icmp eq i8 %132, 0
  br i1 %cmp75.i.i.i, label %if.then77.i.i.i, label %if.then70.i.i.i.if.end80.i.i.i_crit_edge

if.then70.i.i.i.if.end80.i.i.i_crit_edge:         ; preds = %if.then70.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i.i.i

if.then77.i.i.i:                                  ; preds = %if.then70.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i.i = add nuw nsw i32 %conv.i.i.i, 1
  %conv78.i.i.i = trunc i32 %inc.i.i.i to i8
  %133 = ptrtoint ptr %pwrgroup_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv78.i.i.i, ptr %pwrgroup_cnt.i.i.i, align 2
  br label %if.end80.i.i.i

if.end80.i.i.i:                                   ; preds = %if.then77.i.i.i, %if.then70.i.i.i.if.end80.i.i.i_crit_edge
  %count.0.i.i.i = phi i32 [ %inc.i.i.i, %if.then77.i.i.i ], [ %conv.i.i.i, %if.then70.i.i.i.if.end80.i.i.i_crit_edge ]
  %arrayidx83.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.0.i.i.i, i32 5
  %134 = ptrtoint ptr %arrayidx83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx83.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef %count.0.i.i.i, i32 noundef %135) #7
  br label %if.end84.i.i.i

if.end84.i.i.i:                                   ; preds = %if.end80.i.i.i, %if.then60.i.i.i.if.end84.i.i.i_crit_edge, %if.then50.i.i.i.if.end84.i.i.i_crit_edge, %if.then40.i.i.i.if.end84.i.i.i_crit_edge, %if.end37.i.i.i.if.end84.i.i.i_crit_edge
  %count.1.i.i.i = phi i32 [ %count.0.i.i.i, %if.end80.i.i.i ], [ %conv.i.i.i, %if.then60.i.i.i.if.end84.i.i.i_crit_edge ], [ %conv.i.i.i, %if.then50.i.i.i.if.end84.i.i.i_crit_edge ], [ %conv.i.i.i, %if.then40.i.i.i.if.end84.i.i.i_crit_edge ], [ %conv.i.i.i, %if.end37.i.i.i.if.end84.i.i.i_crit_edge ]
  %136 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %110, label %if.end84.i.i.i.if.end114.i.i.i_crit_edge [
    i32 2096, label %if.then87.i.i.i
    i32 2100, label %if.then97.i.i.i
    i32 2104, label %if.then107.i.i.i
  ]

if.end84.i.i.i.if.end114.i.i.i_crit_edge:         ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.i.i.i

if.then87.i.i.i:                                  ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx90.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1.i.i.i, i32 8
  %137 = ptrtoint ptr %arrayidx90.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %114, ptr %arrayidx90.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.52, i32 noundef %count.1.i.i.i, i32 noundef %114) #7
  br label %if.end114.i.i.i

if.then97.i.i.i:                                  ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx100.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1.i.i.i, i32 9
  %138 = ptrtoint ptr %arrayidx100.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %114, ptr %arrayidx100.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.53, i32 noundef %count.1.i.i.i, i32 noundef %114) #7
  br label %if.end114.i.i.i

if.then107.i.i.i:                                 ; preds = %if.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx110.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1.i.i.i, i32 14
  %139 = ptrtoint ptr %arrayidx110.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %114, ptr %arrayidx110.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.54, i32 noundef %count.1.i.i.i, i32 noundef %114) #7
  br label %if.end114.i.i.i

if.end114.i.i.i:                                  ; preds = %if.then107.i.i.i, %if.then97.i.i.i, %if.then87.i.i.i, %if.end84.i.i.i.if.end114.i.i.i_crit_edge, %if.end84.thread.i.i.i
  %count.1319.i.i.i = phi i32 [ %conv.i.i.i, %if.end84.thread.i.i.i ], [ %count.1.i.i.i, %if.then97.i.i.i ], [ %count.1.i.i.i, %if.then87.i.i.i ], [ %count.1.i.i.i, %if.end84.i.i.i.if.end114.i.i.i_crit_edge ], [ %count.1.i.i.i, %if.then107.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %112)
  %cmp118.i.i.i = icmp eq i32 %112, 255
  %or.cond311.i.i.i = and i1 %cmp118.i.i.i, %cmp26316.i.i.i
  br i1 %or.cond311.i.i.i, label %if.then120.i.i.i, label %if.end114.i.i.i.if.end127.i.i.i_crit_edge

if.end114.i.i.i.if.end127.i.i.i_crit_edge:        ; preds = %if.end114.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127.i.i.i

if.then120.i.i.i:                                 ; preds = %if.end114.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx123.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1319.i.i.i, i32 15
  %140 = ptrtoint ptr %arrayidx123.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %114, ptr %arrayidx123.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.55, i32 noundef %count.1319.i.i.i, i32 noundef %114) #7
  br label %if.end127.i.i.i

if.end127.i.i.i:                                  ; preds = %if.then120.i.i.i, %if.end114.i.i.i.if.end127.i.i.i_crit_edge
  %141 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %110, label %if.end127.i.i.i.for.inc.i.i_crit_edge [
    i32 2108, label %if.then130.i.i.i
    i32 2120, label %if.then140.i.i.i
    i32 2124, label %if.then150.i.i.i
    i32 2152, label %if.then160.i.i.i
  ]

if.end127.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.end127.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then130.i.i.i:                                 ; preds = %if.end127.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx133.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1319.i.i.i, i32 10
  %142 = ptrtoint ptr %arrayidx133.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %114, ptr %arrayidx133.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.56, i32 noundef %count.1319.i.i.i, i32 noundef %114) #7
  br label %for.inc.i.i

if.then140.i.i.i:                                 ; preds = %if.end127.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx143.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1319.i.i.i, i32 11
  %143 = ptrtoint ptr %arrayidx143.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %114, ptr %arrayidx143.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.57, i32 noundef %count.1319.i.i.i, i32 noundef %114) #7
  br label %for.inc.i.i

if.then150.i.i.i:                                 ; preds = %if.end127.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx153.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1319.i.i.i, i32 12
  %144 = ptrtoint ptr %arrayidx153.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %114, ptr %arrayidx153.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.58, i32 noundef %count.1319.i.i.i, i32 noundef %114) #7
  br label %for.inc.i.i

if.then160.i.i.i:                                 ; preds = %if.end127.i.i.i
  %arrayidx163.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 40, i32 %count.1319.i.i.i, i32 13
  %145 = ptrtoint ptr %arrayidx163.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %114, ptr %arrayidx163.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %116, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.59, i32 noundef %count.1319.i.i.i, i32 noundef %114) #7
  %rf_type.i312.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 4
  %146 = ptrtoint ptr %rf_type.i312.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %rf_type.i312.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %cmp169.not.i.i.i = icmp eq i8 %147, 0
  br i1 %cmp169.not.i.i.i, label %if.then160.i.i.i.for.inc.i.i_crit_edge, label %if.then171.i.i.i

if.then160.i.i.i.for.inc.i.i_crit_edge:           ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then171.i.i.i:                                 ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = trunc i32 %count.1319.i.i.i to i8
  %conv173.i.i.i = add i8 %148, 1
  %149 = ptrtoint ptr %pwrgroup_cnt.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv173.i.i.i, ptr %pwrgroup_cnt.i.i.i, align 2
  br label %for.inc.i.i

if.else53.i.i:                                    ; preds = %for.body.i.i
  %150 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv, align 8
  %interface.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %151, i32 0, i32 10, i32 9
  %152 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %interface.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %101)
  %cmp.i.i.i = icmp eq i32 %101, -842150451
  br i1 %cmp.i.i.i, label %if.else53.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i

if.else53.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %if.else53.i.i
  %board_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %151, i32 0, i32 17, i32 17
  %154 = ptrtoint ptr %board_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %board_type.i.i.i, align 1
  %conv.i2.i.i = zext i8 %155 to i32
  %and4.i.i.i = and i32 %101, %conv.i2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %cmp5.i.i.i = icmp ne i32 %and4.i.i.i, 0
  %and.i.i.i = and i32 %101, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %and.i.i.i, 31
  %or.cond.i3.i.i = or i1 %cmp7.not.i.i.i, %cmp5.i.i.i
  br i1 %or.cond.i3.i.i, label %if.end10.i.i.i, label %if.end.i.i.i.if.then55.i.i_crit_edge

if.end.i.i.i.if.then55.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i

if.end10.i.i.i:                                   ; preds = %if.end.i.i.i
  %and11.i.i.i = lshr i32 %101, 8
  %shr.i.i.i = and i32 %and11.i.i.i, 255
  %and12.i.i.i = and i32 %153, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %cmp13.i.i.i = icmp ne i32 %and12.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i.i)
  %cmp16.not.i.i.i = icmp eq i32 %shr.i.i.i, 7
  %or.cond46.i.i.i = or i1 %cmp16.not.i.i.i, %cmp13.i.i.i
  br i1 %or.cond46.i.i.i, label %_rtl88e_check_condition.exit.i.i, label %if.end10.i.i.i.if.then55.i.i_crit_edge

if.end10.i.i.i.if.then55.i.i_crit_edge:           ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i

_rtl88e_check_condition.exit.i.i:                 ; preds = %if.end10.i.i.i
  %156 = and i32 %101, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp23.i.i.i = icmp ne i32 %156, 0
  %157 = and i32 %101, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %157)
  %cmp26.not.i.i.i = icmp eq i32 %157, 983040
  %or.cond47.i.i.i = or i1 %cmp23.i.i.i, %cmp26.not.i.i.i
  br i1 %or.cond47.i.i.i, label %_rtl88e_check_condition.exit.i.i.for.inc.i.i_crit_edge, label %_rtl88e_check_condition.exit.i.i.if.then55.i.i_crit_edge

_rtl88e_check_condition.exit.i.i.if.then55.i.i_crit_edge: ; preds = %_rtl88e_check_condition.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i

_rtl88e_check_condition.exit.i.i.for.inc.i.i_crit_edge: ; preds = %_rtl88e_check_condition.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then55.i.i:                                    ; preds = %_rtl88e_check_condition.exit.i.i.if.then55.i.i_crit_edge, %if.end10.i.i.i.if.then55.i.i_crit_edge, %if.end.i.i.i.if.then55.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 259, i32 %i.016.i.i)
  %cmp58.i.i = icmp sgt i32 %i.016.i.i, 259
  br i1 %cmp58.i.i, label %if.then55.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge, label %if.end61.i.i

if.then55.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_bb8188e_config_parafile.exit

if.end61.i.i:                                     ; preds = %if.then55.i.i
  %add56.i.i = add nsw i32 %i.016.i.i, 2
  %add63.i.i = add nsw i32 %i.016.i.i, 3
  %v2.0.in8.i.i = getelementptr i32, ptr @RTL8188EEPHY_REG_ARRAY_PG, i32 %add63.i.i
  %158 = ptrtoint ptr %v2.0.in8.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %v2.09.i.i = load i32, ptr %v2.0.in8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.09.i.i)
  %cmp66.not10.i.i = icmp ne i32 %v2.09.i.i, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %i.016.i.i)
  %cmp7011.i.i = icmp slt i32 %i.016.i.i, 257
  %or.cond12.i.i = select i1 %cmp66.not10.i.i, i1 %cmp7011.i.i, i1 false
  br i1 %or.cond12.i.i, label %if.end61.i.i.while.body72.i.i_crit_edge, label %if.end61.i.i.for.inc.i.i_crit_edge

if.end61.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end61.i.i.while.body72.i.i_crit_edge:          ; preds = %if.end61.i.i
  br label %while.body72.i.i

while.body72.i.i:                                 ; preds = %while.body72.i.i.while.body72.i.i_crit_edge, %if.end61.i.i.while.body72.i.i_crit_edge
  %i.113.i.i = phi i32 [ %add73.i.i, %while.body72.i.i.while.body72.i.i_crit_edge ], [ %add56.i.i, %if.end61.i.i.while.body72.i.i_crit_edge ]
  %add73.i.i = add nsw i32 %i.113.i.i, 3
  %add75.i.i = add nsw i32 %i.113.i.i, 4
  %v2.0.in.i.i = getelementptr i32, ptr @RTL8188EEPHY_REG_ARRAY_PG, i32 %add75.i.i
  %159 = ptrtoint ptr %v2.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %v2.0.i.i = load i32, ptr %v2.0.in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.0.i.i)
  %cmp66.not.i.i = icmp ne i32 %v2.0.i.i, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.113.i.i)
  %cmp70.i.i = icmp slt i32 %i.113.i.i, 256
  %or.cond.i.i = select i1 %cmp66.not.i.i, i1 %cmp70.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body72.i.i.while.body72.i.i_crit_edge, label %while.body72.i.i.for.inc.i.i_crit_edge

while.body72.i.i.for.inc.i.i_crit_edge:           ; preds = %while.body72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

while.body72.i.i.while.body72.i.i_crit_edge:      ; preds = %while.body72.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body72.i.i

for.inc.i.i:                                      ; preds = %while.body72.i.i.for.inc.i.i_crit_edge, %if.end61.i.i.for.inc.i.i_crit_edge, %_rtl88e_check_condition.exit.i.i.for.inc.i.i_crit_edge, %if.else53.i.i.for.inc.i.i_crit_edge, %if.then171.i.i.i, %if.then160.i.i.i.for.inc.i.i_crit_edge, %if.then150.i.i.i, %if.then140.i.i.i, %if.then130.i.i.i, %if.end127.i.i.i.for.inc.i.i_crit_edge
  %i.2.i.i = phi i32 [ %i.016.i.i, %_rtl88e_check_condition.exit.i.i.for.inc.i.i_crit_edge ], [ %i.016.i.i, %if.end127.i.i.i.for.inc.i.i_crit_edge ], [ %i.016.i.i, %if.then130.i.i.i ], [ %i.016.i.i, %if.then140.i.i.i ], [ %i.016.i.i, %if.then150.i.i.i ], [ %i.016.i.i, %if.then160.i.i.i.for.inc.i.i_crit_edge ], [ %i.016.i.i, %if.then171.i.i.i ], [ %i.016.i.i, %if.else53.i.i.for.inc.i.i_crit_edge ], [ %add56.i.i, %if.end61.i.i.for.inc.i.i_crit_edge ], [ %add73.i.i, %while.body72.i.i.for.inc.i.i_crit_edge ]
  %add80.i.i = add i32 %i.2.i.i, 3
  %cmp3.i.i = icmp slt i32 %add80.i.i, 264
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge

for.inc.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_bb8188e_config_parafile.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

_rtl88e_phy_bb8188e_config_parafile.exit:         ; preds = %for.inc.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge, %if.then55.i.i._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge, %rtl_write_dword.exit._rtl88e_phy_bb8188e_config_parafile.exit_crit_edge
  tail call fastcc void @phy_config_bb_with_headerfile(ptr noundef %hw, i8 noundef zeroext 1) #7
  %160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 32
  %162 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %165, i32 0, i32 45
  %166 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %167(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.i = icmp ne i32 %call.i.i, 0
  %conv.i = zext i1 %tobool27.i to i8
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 14, i32 39
  %168 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv.i, ptr %cck_high_power.i, align 1
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_rf_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rtl88e_phy_rf6052_config(ptr noundef %hw) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl88e_phy_rf6052_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 190) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %rfpath) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cond = icmp eq i32 %rfpath, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.030.i = phi i32 [ 0, %sw.bb ], [ %add87.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %i.030.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %5)
  %cmp4.i = icmp ult i32 %5, -842150451
  br i1 %cmp4.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %if.else21.i.i.i [
    i32 4094, label %if.then.i.while.body.i.i.i_crit_edge
    i32 253, label %while.body7.preheader.i.i.i
    i32 252, label %if.then.i.if.end26.sink.split.i.i.i_crit_edge
    i32 251, label %if.then14.i.i.i
    i32 250, label %if.then17.i.i.i
    i32 249, label %if.then20.i.i.i
  ]

if.then.i.if.end26.sink.split.i.i.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i.i

if.then.i.while.body.i.i.i_crit_edge:             ; preds = %if.then.i
  br label %while.body.i.i.i

while.body7.preheader.i.i.i:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  br label %if.end26.sink.split.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %if.then.i.while.body.i.i.i_crit_edge
  %__ms.03.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 50, %if.then.i.while.body.i.i.i_crit_edge ]
  %dec.i.i.i = add nsw i32 %__ms.03.i.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.for.inc.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

while.body.i.i.i.for.inc.i_crit_edge:             ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then14.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i.i

if.then17.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i.i

if.then20.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i.i

if.else21.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i32 %i.030.i, 1
  %arrayidx3.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %add.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %cfg.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %cfg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i.i.i, align 4
  %set_rfreg.i.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %19, i32 0, i32 48
  %20 = ptrtoint ptr %set_rfreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_rfreg.i.i.i.i, align 4
  tail call void %21(ptr noundef %hw, i32 noundef 0, i32 noundef %5, i32 noundef 1048575, i32 noundef %13) #7
  br label %if.end26.sink.split.i.i.i

if.end26.sink.split.i.i.i:                        ; preds = %if.else21.i.i.i, %if.then20.i.i.i, %if.then17.i.i.i, %if.then14.i.i.i, %while.body7.preheader.i.i.i, %if.then.i.if.end26.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 214748000, %while.body7.preheader.i.i.i ], [ 10737400, %if.then14.i.i.i ], [ 214748, %if.then20.i.i.i ], [ 214748, %if.else21.i.i.i ], [ 1073740, %if.then17.i.i.i ], [ 214748000, %if.then.i.if.end26.sink.split.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef %.sink.i.i.i) #7
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %i.030.i)
  %cmp7.i = icmp sgt i32 %i.030.i, 187
  br i1 %cmp7.i, label %if.else.i.for.end.i_crit_edge, label %if.end.i

if.else.i.for.end.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.i:                                         ; preds = %if.else.i
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %interface.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 10, i32 9
  %25 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %5)
  %cmp.i.i = icmp eq i32 %5, -842150451
  br i1 %cmp.i.i, label %if.end.i.while.cond43.i.preheader_crit_edge, label %if.end.i.i

if.end.i.while.cond43.i.preheader_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43.i.preheader

while.cond43.i.preheader:                         ; preds = %if.end19.i.i.while.cond43.i.preheader_crit_edge, %if.end.i.while.cond43.i.preheader_crit_edge
  br label %while.cond43.i

if.end.i.i:                                       ; preds = %if.end.i
  %board_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 17
  %27 = ptrtoint ptr %board_type.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %board_type.i.i, align 1
  %conv.i.i = zext i8 %28 to i32
  %and4.i.i = and i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.i.i = icmp ne i32 %and4.i.i, 0
  %and.i.i = and i32 %5, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i.i)
  %cmp7.not.i.i = icmp eq i32 %and.i.i, 31
  %or.cond.i.i = or i1 %cmp7.not.i.i, %cmp5.i.i
  br i1 %or.cond.i.i, label %if.end10.i.i, label %if.end.i.i.while.cond.i.preheader_crit_edge

if.end.i.i.while.cond.i.preheader_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = lshr i32 %5, 8
  %shr.i.i = and i32 %and11.i.i, 255
  %and12.i.i = and i32 %26, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %cmp13.i.i = icmp ne i32 %and12.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i)
  %cmp16.not.i.i = icmp eq i32 %shr.i.i, 7
  %or.cond46.i.i = or i1 %cmp16.not.i.i, %cmp13.i.i
  br i1 %or.cond46.i.i, label %if.end19.i.i, label %if.end10.i.i.while.cond.i.preheader_crit_edge

if.end10.i.i.while.cond.i.preheader_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end19.i.i:                                     ; preds = %if.end10.i.i
  %29 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp23.i.i = icmp ne i32 %29, 0
  %30 = and i32 %5, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %30)
  %cmp26.not.i.i = icmp eq i32 %30, 983040
  %or.cond47.i.i = or i1 %cmp23.i.i, %cmp26.not.i.i
  br i1 %or.cond47.i.i, label %if.end19.i.i.while.cond43.i.preheader_crit_edge, label %if.end19.i.i.while.cond.i.preheader_crit_edge

if.end19.i.i.while.cond.i.preheader_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end19.i.i.while.cond43.i.preheader_crit_edge:  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43.i.preheader

while.cond.i.preheader:                           ; preds = %if.end19.i.i.while.cond.i.preheader_crit_edge, %if.end10.i.i.while.cond.i.preheader_crit_edge, %if.end.i.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %add14.pn.in.i = phi i32 [ %i.1.i, %land.rhs.i.while.cond.i_crit_edge ], [ %i.030.i, %while.cond.i.preheader ]
  %add14.pn.i = add nsw i32 %add14.pn.in.i, 3
  %v2.0.in.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %add14.pn.i
  %31 = ptrtoint ptr %v2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %v2.0.i = load i32, ptr %v2.0.in.i, align 4
  %32 = zext i32 %v2.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %v2.0.i, label %land.rhs.i [
    i32 57005, label %while.cond.i.for.inc.i_crit_edge
    i32 52719, label %while.cond.i.for.inc.i_crit_edge33
    i32 52685, label %while.cond.i.for.inc.i_crit_edge34
  ]

while.cond.i.for.inc.i_crit_edge34:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i.for.inc.i_crit_edge33:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i.for.inc.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i:                                       ; preds = %while.cond.i
  %i.1.i = add nsw i32 %add14.pn.in.i, 2
  %cmp25.i = icmp slt i32 %add14.pn.in.i, 186
  br i1 %cmp25.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond43.i:                                   ; preds = %while.cond43.i.backedge, %while.cond43.i.preheader
  %add39.pn.in.i = phi i32 [ %i.030.i, %while.cond43.i.preheader ], [ %i.2.i, %while.cond43.i.backedge ]
  %i.2.i = add i32 %add39.pn.in.i, 2
  %add39.pn.i = add i32 %add39.pn.in.i, 3
  %v2.1.in.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %add39.pn.i
  %33 = ptrtoint ptr %v2.1.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %v2.1.i = load i32, ptr %v2.1.in.i, align 4
  %v1.0.in.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %i.2.i
  %34 = ptrtoint ptr %v1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %v1.0.i = load i32, ptr %v1.0.in.i, align 4
  %35 = zext i32 %v2.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %v2.1.i, label %land.rhs52.i [
    i32 57005, label %while.cond43.i.while.end66.i_crit_edge
    i32 52719, label %while.cond43.i.while.end66.i_crit_edge35
    i32 52685, label %while.cond43.i.while.end66.i_crit_edge36
  ]

while.cond43.i.while.end66.i_crit_edge36:         ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end66.i

while.cond43.i.while.end66.i_crit_edge35:         ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end66.i

while.cond43.i.while.end66.i_crit_edge:           ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end66.i

land.rhs52.i:                                     ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %i.2.i)
  %cmp55.i = icmp slt i32 %i.2.i, 188
  br i1 %cmp55.i, label %while.body58.i, label %land.rhs52.i.for.inc.i_crit_edge

land.rhs52.i.for.inc.i_crit_edge:                 ; preds = %land.rhs52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.body58.i:                                   ; preds = %land.rhs52.i
  %36 = zext i32 %v1.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %v1.0.i, label %if.else21.i.i13.i [
    i32 4094, label %while.body58.i.while.body.i.i5.i_crit_edge
    i32 253, label %while.body7.preheader.i.i1.i
    i32 252, label %while.body58.i.if.end26.sink.split.i.i15.i_crit_edge
    i32 251, label %if.then14.i.i6.i
    i32 250, label %if.then17.i.i7.i
    i32 249, label %if.then20.i.i8.i
  ]

while.body58.i.if.end26.sink.split.i.i15.i_crit_edge: ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i15.i

while.body58.i.while.body.i.i5.i_crit_edge:       ; preds = %while.body58.i
  br label %while.body.i.i5.i

while.body7.preheader.i.i1.i:                     ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #7
  br label %if.end26.sink.split.i.i15.i

while.body.i.i5.i:                                ; preds = %while.body.i.i5.i.while.body.i.i5.i_crit_edge, %while.body58.i.while.body.i.i5.i_crit_edge
  %__ms.03.i.i2.i = phi i32 [ %dec.i.i3.i, %while.body.i.i5.i.while.body.i.i5.i_crit_edge ], [ 50, %while.body58.i.while.body.i.i5.i_crit_edge ]
  %dec.i.i3.i = add nsw i32 %__ms.03.i.i2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #7
  %tobool.not.i.i4.i = icmp eq i32 %dec.i.i3.i, 0
  br i1 %tobool.not.i.i4.i, label %while.body.i.i5.i.while.cond43.i.backedge_crit_edge, label %while.body.i.i5.i.while.body.i.i5.i_crit_edge

while.body.i.i5.i.while.body.i.i5.i_crit_edge:    ; preds = %while.body.i.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i5.i

while.body.i.i5.i.while.cond43.i.backedge_crit_edge: ; preds = %while.body.i.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond43.i.backedge

if.then14.i.i6.i:                                 ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i15.i

if.then17.i.i7.i:                                 ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i15.i

if.then20.i.i8.i:                                 ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i15.i

if.else21.i.i13.i:                                ; preds = %while.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 8
  %cfg.i.i.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %43, i32 0, i32 32
  %44 = ptrtoint ptr %cfg.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.i.i.i10.i, align 8
  %ops.i.i.i11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %ops.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i.i.i11.i, align 4
  %set_rfreg.i.i.i12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %47, i32 0, i32 48
  %48 = ptrtoint ptr %set_rfreg.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_rfreg.i.i.i12.i, align 4
  tail call void %49(ptr noundef %hw, i32 noundef 0, i32 noundef %v1.0.i, i32 noundef 1048575, i32 noundef %v2.1.i) #7
  br label %if.end26.sink.split.i.i15.i

if.end26.sink.split.i.i15.i:                      ; preds = %if.else21.i.i13.i, %if.then20.i.i8.i, %if.then17.i.i7.i, %if.then14.i.i6.i, %while.body7.preheader.i.i1.i, %while.body58.i.if.end26.sink.split.i.i15.i_crit_edge
  %.sink.i.i14.i = phi i32 [ 214748000, %while.body7.preheader.i.i1.i ], [ 10737400, %if.then14.i.i6.i ], [ 214748, %if.then20.i.i8.i ], [ 214748, %if.else21.i.i13.i ], [ 1073740, %if.then17.i.i7.i ], [ 214748000, %while.body58.i.if.end26.sink.split.i.i15.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef %.sink.i.i14.i) #7
  br label %while.cond43.i.backedge

while.cond43.i.backedge:                          ; preds = %if.end26.sink.split.i.i15.i, %while.body.i.i5.i.while.cond43.i.backedge_crit_edge
  br label %while.cond43.i

while.end66.i:                                    ; preds = %while.cond43.i.while.end66.i_crit_edge, %while.cond43.i.while.end66.i_crit_edge35, %while.cond43.i.while.end66.i_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1.i)
  %cmp68.not26.i = icmp ne i32 %v2.1.i, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %i.2.i)
  %cmp7327.i = icmp slt i32 %i.2.i, 188
  %or.cond28.i = select i1 %cmp68.not26.i, i1 %cmp7327.i, i1 false
  br i1 %or.cond28.i, label %while.end66.i.do.body77.i_crit_edge, label %while.end66.i.for.inc.i_crit_edge

while.end66.i.for.inc.i_crit_edge:                ; preds = %while.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.end66.i.do.body77.i_crit_edge:              ; preds = %while.end66.i
  br label %do.body77.i

do.body77.i:                                      ; preds = %do.body77.i.do.body77.i_crit_edge, %while.end66.i.do.body77.i_crit_edge
  %i.329.i = phi i32 [ %add78.i, %do.body77.i.do.body77.i_crit_edge ], [ %i.2.i, %while.end66.i.do.body77.i_crit_edge ]
  %add78.i = add nsw i32 %i.329.i, 2
  %add80.i = add nsw i32 %i.329.i, 3
  %arrayidx81.i = getelementptr i32, ptr @RTL8188EE_RADIOA_1TARRAY, i32 %add80.i
  %51 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %52)
  %cmp68.not.i = icmp ne i32 %52, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 186, i32 %i.329.i)
  %cmp73.i = icmp slt i32 %i.329.i, 186
  %or.cond.i = select i1 %cmp68.not.i, i1 %cmp73.i, i1 false
  br i1 %or.cond.i, label %do.body77.i.do.body77.i_crit_edge, label %do.body77.i.for.inc.i_crit_edge

do.body77.i.for.inc.i_crit_edge:                  ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body77.i.do.body77.i_crit_edge:                ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body77.i

for.inc.i:                                        ; preds = %do.body77.i.for.inc.i_crit_edge, %while.end66.i.for.inc.i_crit_edge, %land.rhs52.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge, %while.cond.i.for.inc.i_crit_edge, %while.cond.i.for.inc.i_crit_edge33, %while.cond.i.for.inc.i_crit_edge34, %if.end26.sink.split.i.i.i, %while.body.i.i.i.for.inc.i_crit_edge
  %i.4.i = phi i32 [ %i.030.i, %if.end26.sink.split.i.i.i ], [ %i.2.i, %while.end66.i.for.inc.i_crit_edge ], [ %i.030.i, %while.body.i.i.i.for.inc.i_crit_edge ], [ %add78.i, %do.body77.i.for.inc.i_crit_edge ], [ %i.2.i, %land.rhs52.i.for.inc.i_crit_edge ], [ %add14.pn.in.i, %while.cond.i.for.inc.i_crit_edge ], [ %add14.pn.in.i, %while.cond.i.for.inc.i_crit_edge33 ], [ %add14.pn.in.i, %while.cond.i.for.inc.i_crit_edge34 ], [ %add14.pn.in.i, %land.rhs.i.for.inc.i_crit_edge ]
  %add87.i = add i32 %i.4.i, 2
  %cmp.i = icmp slt i32 %add87.i, 190
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.else.i.for.end.i_crit_edge
  %oem_id.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 10, i32 12
  %53 = ptrtoint ptr %oem_id.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %oem_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %54)
  %cmp89.i = icmp eq i8 %54, 27
  br i1 %cmp89.i, label %if.then91.i, label %for.end.i.sw.epilog_crit_edge

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then91.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %cfg.i.i.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i.i18.i, align 8
  %ops.i.i.i19.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i.i19.i, align 4
  %set_rfreg.i.i.i20.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 48
  %61 = ptrtoint ptr %set_rfreg.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_rfreg.i.i.i20.i, align 4
  tail call void %62(ptr noundef %hw, i32 noundef 0, i32 noundef 82, i32 noundef 1048575, i32 noundef 517309) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then91.i, %for.end.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_get_hw_reg_originalvalue(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #7
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
  %call.i52 = tail call i32 %16(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #7
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
  %call.i57 = tail call i32 %25(ptr noundef %hw, i32 noundef 3168, i32 noundef 255) #7
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
  %call.i62 = tail call i32 %34(ptr noundef %hw, i32 noundef 3176, i32 noundef 255) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.8, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #7
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
  %call.i67 = tail call i32 %49(ptr noundef %hw, i32 noundef 3128, i32 noundef 255) #7
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
  %call.i72 = tail call i32 %58(ptr noundef %hw, i32 noundef 3124, i32 noundef -1) #7
  %framesync_c34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 57
  %59 = ptrtoint ptr %framesync_c34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i72, ptr %framesync_c34, align 4
  %60 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %framesync, align 4
  %conv29 = zext i8 %61 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef 3128, i32 noundef %conv29) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl88e_phy_get_txpower_level(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %powerlevel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_cck_txpwridx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 46
  %2 = ptrtoint ptr %cur_cck_txpwridx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_cck_txpwridx, align 4
  %4 = lshr i8 %3, 1
  %div.i = zext i8 %4 to i32
  %add.i = add nsw i32 %div.i, -7
  %cur_ofdm24g_txpwridx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 47
  %5 = ptrtoint ptr %cur_ofdm24g_txpwridx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cur_ofdm24g_txpwridx, align 1
  %7 = lshr i8 %6, 1
  %div.i22 = zext i8 %7 to i32
  %add.i23 = add nsw i32 %div.i22, -8
  %8 = tail call i32 @llvm.smax.i32(i32 %add.i23, i32 %add.i)
  %9 = ptrtoint ptr %powerlevel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %powerlevel, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %cckpowerlevel = alloca [4 x i8], align 4
  %ofdmpowerlevel = alloca [4 x i8], align 4
  %bw20powerlevel = alloca [4 x i8], align 4
  %bw40powerlevel = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cckpowerlevel) #7
  %2 = ptrtoint ptr %cckpowerlevel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cckpowerlevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ofdmpowerlevel) #7
  %3 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ofdmpowerlevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw20powerlevel) #7
  %4 = ptrtoint ptr %bw20powerlevel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bw20powerlevel, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw40powerlevel) #7
  %5 = ptrtoint ptr %bw40powerlevel to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %bw40powerlevel, align 4
  %txpwr_fromeprom = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 23
  %6 = ptrtoint ptr %txpwr_fromeprom to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txpwr_fromeprom, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i8 %channel, -1
  %idxprom.i = zext i8 %sub.i to i32
  %arrayidx11.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i
  %arrayidx12.i = getelementptr inbounds i8, ptr %cckpowerlevel, i32 1
  %arrayidx15.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i
  %arrayidx19.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42, i32 1, i32 %idxprom.i
  %arrayidx22.i = getelementptr inbounds i8, ptr %bw20powerlevel, i32 1
  %arrayidx30.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 44, i32 1, i32 %idxprom.i
  %arrayidx34.i = getelementptr inbounds i8, ptr %ofdmpowerlevel, i32 1
  %arrayidx39.i = getelementptr inbounds i8, ptr %bw40powerlevel, i32 1
  %txpwr_legacyhtdiff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 44
  %arrayidx33.i.i = getelementptr [59 x i8], ptr %txpwr_legacyhtdiff.i.i, i32 0, i32 %idxprom.i
  %txpwrlevel_ht40_1s18.pn.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39
  %.pn.in.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s18.pn.i.i, i32 0, i32 %idxprom.i
  %txpwr_ht20diff.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42
  %arrayidx5.i.i = getelementptr [59 x i8], ptr %txpwr_ht20diff.i.i, i32 0, i32 %idxprom.i
  %txpwrlevel_cck.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38
  %arrayidx1.i.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i.i, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i.i, align 1
  %10 = ptrtoint ptr %cckpowerlevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cckpowerlevel, align 4
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5.i.i, align 1
  %13 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pn.i.i = load i8, ptr %.pn.in.i.i, align 1
  %storemerge.i.i = add i8 %.pn.i.i, %12
  %14 = ptrtoint ptr %bw20powerlevel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge.i.i, ptr %bw20powerlevel, align 4
  %15 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx33.i.i, align 1
  %.pn98.i.i = load i8, ptr %.pn.in.i.i, align 1
  %storemerge97.i.i = add i8 %.pn98.i.i, %16
  %17 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %storemerge97.i.i, ptr %ofdmpowerlevel, align 4
  %18 = load i8, ptr %.pn.in.i.i, align 1
  %19 = ptrtoint ptr %bw40powerlevel to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bw40powerlevel, align 4
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.i, align 1
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx12.i, align 1
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15.i, align 1
  %25 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx19.i, align 1
  %add.1.i = add i8 %26, %24
  %27 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %add.1.i, ptr %arrayidx22.i, align 1
  %28 = load i8, ptr %arrayidx15.i, align 1
  %29 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx30.i, align 1
  %add32.1.i = add i8 %30, %28
  %31 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %add32.1.i, ptr %arrayidx34.i, align 1
  %32 = load i8, ptr %arrayidx15.i, align 1
  %33 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx39.i, align 1
  %cur_cck_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 46
  %34 = ptrtoint ptr %cur_cck_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %9, ptr %cur_cck_txpwridx.i, align 4
  %cur_ofdm24g_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 47
  %35 = ptrtoint ptr %cur_ofdm24g_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %storemerge97.i.i, ptr %cur_ofdm24g_txpwridx.i, align 1
  %cur_bw20_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 48
  %36 = ptrtoint ptr %cur_bw20_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge.i.i, ptr %cur_bw20_txpwridx.i, align 2
  %cur_bw40_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 49
  %37 = ptrtoint ptr %cur_bw40_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %18, ptr %cur_bw40_txpwridx.i, align 1
  call void @rtl88e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr noundef nonnull %cckpowerlevel) #7
  call void @rtl88e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel, ptr noundef nonnull %bw20powerlevel, ptr noundef nonnull %bw40powerlevel, i8 noundef zeroext %channel) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw40powerlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw20powerlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ofdmpowerlevel) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cckpowerlevel) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_rf6052_set_cck_txpower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_rf6052_set_ofdm_txpower(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_scan_operation_backup(ptr noundef %hw, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
entry:
  %iotype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iotype) #7
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %operation, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %iotype to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %iotype, align 4
  %cfg = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 8
  %ops = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %set_hw_reg = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %set_hw_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_hw_reg, align 4
  call void %11(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #7
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %iotype to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %iotype, align 4
  %cfg4 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %13 = ptrtoint ptr %cfg4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg4, align 8
  %ops5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops5, align 4
  %set_hw_reg6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %set_hw_reg6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_hw_reg6, align 4
  call void %18(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iotype) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %cond = select i1 %cmp, ptr @.str.14, ptr @.str.15
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond) #7
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 1539) #7
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i83 = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 1090) #7
  %11 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_chan_bw, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.90)
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
  tail call void %16(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %14) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1539) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %23 = and i8 %call.i, -5
  %write8_async.i86 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %write8_async.i86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i86, align 4
  tail call void %25(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %23) #7
  %cfg.i87 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i87, align 8
  %write_readback.i88 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i88 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i88, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i89 = icmp eq i8 %29, 0
  br i1 %tobool.not.i89, label %sw.bb11.rtl_write_byte.exit93_crit_edge, label %if.then.i92

sw.bb11.rtl_write_byte.exit93_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit93

if.then.i92:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i91 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 1539) #7
  br label %rtl_write_byte.exit93

rtl_write_byte.exit93:                            ; preds = %if.then.i92, %sw.bb11.rtl_write_byte.exit93_crit_edge
  %32 = and i8 %call.i83, -112
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %33 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %34, 5
  %or17 = or i8 %shl, %32
  %35 = ptrtoint ptr %write8_async.i86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i86, align 4
  tail call void %36(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %or17) #7
  %37 = ptrtoint ptr %cfg.i87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i87, align 8
  %write_readback.i96 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i96 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i96, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i97 = icmp eq i8 %40, 0
  br i1 %tobool.not.i97, label %rtl_write_byte.exit93.sw.epilog_crit_edge, label %if.then.i100

rtl_write_byte.exit93.sw.epilog_crit_edge:        ; preds = %rtl_write_byte.exit93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i100:                                     ; preds = %rtl_write_byte.exit93
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i, align 4
  %call.i99 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 1090) #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv8) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i100, %rtl_write_byte.exit93.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %44, label %do.end38 [
    i8 0, label %sw.bb24
    i8 1, label %sw.bb25
  ]

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i102 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i102 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i102, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #7
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i104 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i104, align 8
  %ops.i105 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i105, align 4
  %set_bbreg.i106 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %set_bbreg.i106 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bbreg.i106, align 4
  tail call void %61(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #7
  br label %sw.epilog43

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i108 = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i108, align 8
  %ops.i109 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i109, align 4
  %set_bbreg.i110 = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i110 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i110, align 4
  tail call void %69(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #7
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i112 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i112, align 8
  %ops.i113 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i113, align 4
  %set_bbreg.i114 = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i114 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i114, align 4
  tail call void %77(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #7
  %cur_40_prime_sc26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %78 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cur_40_prime_sc26, align 1
  %80 = lshr i8 %79, 1
  %81 = zext i8 %80 to i32
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  %cfg.i116 = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 32
  %84 = ptrtoint ptr %cfg.i116 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg.i116, align 8
  %ops.i117 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %ops.i117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i117, align 4
  %set_bbreg.i118 = getelementptr inbounds %struct.rtl_hal_ops, ptr %87, i32 0, i32 46
  %88 = ptrtoint ptr %set_bbreg.i118 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_bbreg.i118, align 4
  tail call void %89(ptr noundef %hw, i32 noundef 2560, i32 noundef 16, i32 noundef %81) #7
  %90 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %cur_40_prime_sc26, align 1
  %conv29 = zext i8 %91 to i32
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %cfg.i120 = getelementptr inbounds %struct.rtl_priv, ptr %93, i32 0, i32 32
  %94 = ptrtoint ptr %cfg.i120 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i120, align 8
  %ops.i121 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %ops.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i121, align 4
  %set_bbreg.i122 = getelementptr inbounds %struct.rtl_hal_ops, ptr %97, i32 0, i32 46
  %98 = ptrtoint ptr %set_bbreg.i122 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_bbreg.i122, align 4
  tail call void %99(ptr noundef %hw, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv29) #7
  %100 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cur_40_prime_sc26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp32 = icmp eq i8 %101, 1
  %cond34 = select i1 %cmp32, i32 2, i32 1
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %cfg.i124 = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 32
  %104 = ptrtoint ptr %cfg.i124 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i124, align 8
  %ops.i125 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ops.i125 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i125, align 4
  %set_bbreg.i126 = getelementptr inbounds %struct.rtl_hal_ops, ptr %107, i32 0, i32 46
  %108 = ptrtoint ptr %set_bbreg.i126 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %set_bbreg.i126, align 4
  tail call void %109(ptr noundef %hw, i32 noundef 2072, i32 noundef 201326592, i32 noundef %cond34) #7
  br label %sw.epilog43

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i8 %44 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv23) #10
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %110 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl88e_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %111) #7
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %112 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 4, ptr noundef nonnull @.str.20) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl88e_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_bw_mode(ptr noundef %hw, i32 noundef %ch_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 5
  %2 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_chan_bw, align 2
  %set_bwmode_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %set_bwmode_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %set_bwmode_inprogress, align 1
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88e_phy_set_bw_mode_callback(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.21) #7
  %9 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %set_bwmode_inprogress, align 1
  %10 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %3, ptr %current_chan_bw, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_sw_chnl_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %precommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %postcommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %rfdependcmd.i = alloca [16 x %struct.swchnlcmd], align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.22, i32 noundef %conv) #7
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %sw_chnl_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 7
  %sw_chnl_stage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 8
  %sw_chnl_step = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 9
  %6 = getelementptr inbounds i8, ptr %precommoncmd.i, i32 32
  %7 = getelementptr inbounds i8, ptr %postcommoncmd.i, i32 16
  %8 = getelementptr inbounds i8, ptr %rfdependcmd.i, i32 32
  %para139.i.i = getelementptr inbounds %struct.swchnlcmd, ptr %precommoncmd.i, i32 0, i32 1
  %para139.i170.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 1
  %para240.i171.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 2
  %msdelay41.i172.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 0, i32 3
  %add.ptr.i173.i = getelementptr inbounds %struct.swchnlcmd, ptr %rfdependcmd.i, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then7.do.body_crit_edge, %do.body.preheader
  %9 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sw_chnl_inprogress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %do.body
  %11 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_channel, align 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %precommoncmd.i) #7
  %15 = call ptr @memset(ptr %6, i32 255, i32 224)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %postcommoncmd.i) #7
  %16 = call ptr @memset(ptr %7, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rfdependcmd.i) #7
  %17 = call ptr @memset(ptr %8, i32 255, i32 224)
  %num_total_rfpath1.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 14, i32 58
  %18 = ptrtoint ptr %num_total_rfpath1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_total_rfpath1.i, align 4
  %20 = ptrtoint ptr %precommoncmd.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %precommoncmd.i, align 4
  %21 = call ptr @memset(ptr %para139.i.i, i32 0, i32 28)
  %conv.i = zext i8 %12 to i32
  %22 = add i8 %12, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %22)
  %23 = icmp ult i8 %22, -14
  %24 = call ptr @memset(ptr %postcommoncmd.i, i32 0, i32 16)
  br i1 %23, label %land.rhs.i, label %if.end4.if.end40.i_crit_edge

if.end4.if.end40.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end4
  %.b163.i = load i1, ptr @_rtl88e_phy_sw_chnl_step_by_step.__already_done, align 1
  br i1 %.b163.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !168

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl88e_phy_sw_chnl_step_by_step.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1248, i32 noundef 9, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %if.end4.if.end40.i_crit_edge
  %25 = ptrtoint ptr %rfdependcmd.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %rfdependcmd.i, align 4
  %26 = ptrtoint ptr %para139.i170.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 24, ptr %para139.i170.i, align 4
  %27 = ptrtoint ptr %para240.i171.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %para240.i171.i, align 4
  %28 = ptrtoint ptr %msdelay41.i172.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %msdelay41.i172.i, align 4
  %29 = call ptr @memset(ptr %add.ptr.i173.i, i32 0, i32 16)
  %30 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr = load i8, ptr %sw_chnl_stage, align 1
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.end76.i, %if.end40.i
  %31 = phi i8 [ %inc77.i, %if.end76.i ], [ %.pr, %if.end40.i ]
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %31, label %do.end65.i [
    i8 0, label %do.body55.i.sw.epilog.i_crit_edge
    i8 1, label %sw.bb57.i
    i8 2, label %sw.bb60.i
  ]

do.body55.i.sw.epilog.i_crit_edge:                ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end65.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv56.i = zext i8 %31 to i32
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %conv56.i) #10
  br label %if.else26

sw.epilog.i:                                      ; preds = %sw.bb60.i, %sw.bb57.i, %do.body55.i.sw.epilog.i_crit_edge
  %postcommoncmd.sink.i = phi ptr [ %postcommoncmd.i, %sw.bb60.i ], [ %rfdependcmd.i, %sw.bb57.i ], [ %precommoncmd.i, %do.body55.i.sw.epilog.i_crit_edge ]
  %33 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sw_chnl_step, align 1
  %idxprom61.i = zext i8 %34 to i32
  %arrayidx62.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i
  %35 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx62.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %36, label %sw.default107.i [
    i32 0, label %if.then71.i
    i32 1, label %sw.bb80.i
    i32 3, label %sw.bb81.i
    i32 4, label %sw.bb82.i
    i32 5, label %sw.bb86.i
    i32 6, label %for.cond.preheader.i
  ]

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  %idxprom61.i.le = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp93209.not.i = icmp eq i8 %19, 0
  br i1 %cmp93209.not.i, label %for.cond.preheader.i.if.then7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then7_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %para297.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 2
  %para1102.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 1
  %wide.trip.count.i = zext i8 %19 to i32
  br label %for.body.i

if.then71.i:                                      ; preds = %sw.epilog.i
  %cmp73.i = icmp eq i8 %31, 2
  br i1 %cmp73.i, label %if.then71.i.if.else26_crit_edge, label %if.end76.i

if.then71.i.if.else26_crit_edge:                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

if.end76.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc77.i = add nuw nsw i8 %31, 1
  %38 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %inc77.i, ptr %sw_chnl_stage, align 1
  %39 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %sw_chnl_step, align 1
  br label %do.body55.i

sw.bb80.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom61.i.le159 = zext i8 %34 to i32
  tail call void @rtl88e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %12) #7
  br label %if.then7

sw.bb81.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le157 = zext i8 %34 to i32
  %para1.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 1
  %40 = ptrtoint ptr %para1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %para1.i, align 4
  %para2.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 2
  %42 = ptrtoint ptr %para2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %para2.i, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 7
  %44 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %45(ptr noundef %14, i32 noundef %41, i32 noundef %43) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i, label %sw.bb81.i.if.then7_crit_edge, label %if.then.i.i

sw.bb81.i.if.then7_crit_edge:                     ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i.i:                                      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 11
  %50 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %51(ptr noundef %14, i32 noundef %41) #7
  br label %if.then7

sw.bb82.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le155 = zext i8 %34 to i32
  %para183.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 1
  %52 = ptrtoint ptr %para183.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %para183.i, align 4
  %para284.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 2
  %54 = ptrtoint ptr %para284.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %para284.i, align 4
  %conv85.i = trunc i32 %55 to i16
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 6
  %56 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write16_async.i.i, align 4
  tail call void %57(ptr noundef %14, i32 noundef %53, i16 noundef zeroext %conv85.i) #7
  %cfg.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i177.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i177.i, align 8
  %write_readback.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i178.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i178.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i179.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i179.i, label %sw.bb82.i.if.then7_crit_edge, label %if.then.i181.i

sw.bb82.i.if.then7_crit_edge:                     ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i181.i:                                   ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 10
  %62 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i180.i = tail call zeroext i16 %63(ptr noundef %14, i32 noundef %53) #7
  br label %if.then7

sw.bb86.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le153 = zext i8 %34 to i32
  %para187.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 1
  %64 = ptrtoint ptr %para187.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %para187.i, align 4
  %para288.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 2
  %66 = ptrtoint ptr %para288.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %para288.i, align 4
  %conv89.i = trunc i32 %67 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 5
  %68 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %69(ptr noundef %14, i32 noundef %65, i8 noundef zeroext %conv89.i) #7
  %cfg.i182.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i182.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i182.i, align 8
  %write_readback.i183.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i183.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i183.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i184.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i184.i, label %sw.bb86.i.if.then7_crit_edge, label %if.then.i186.i

sw.bb86.i.if.then7_crit_edge:                     ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i186.i:                                   ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %74 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i185.i = tail call zeroext i8 %75(ptr noundef %14, i32 noundef %65) #7
  br label %if.then7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx96.i = getelementptr %struct.rtl_priv, ptr %14, i32 0, i32 14, i32 52, i32 %indvars.iv.i
  %76 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx96.i, align 4
  %and.i = and i32 %77, -1024
  %78 = ptrtoint ptr %para297.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %para297.i, align 4
  %or.i = or i32 %and.i, %79
  store i32 %or.i, ptr %arrayidx96.i, align 4
  %80 = ptrtoint ptr %para1102.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %para1102.i, align 4
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  %cfg.i187.i = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 32
  %84 = ptrtoint ptr %cfg.i187.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg.i187.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %87, i32 0, i32 48
  %88 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %89(ptr noundef %hw, i32 noundef %indvars.iv.i, i32 noundef %81, i32 noundef 1048575, i32 noundef %or.i) #7
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.then7_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.then7_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.default107.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom61.i.le161 = zext i8 %34 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %36) #7
  br label %if.then7

if.then7:                                         ; preds = %sw.default107.i, %for.body.i.if.then7_crit_edge, %if.then.i186.i, %sw.bb86.i.if.then7_crit_edge, %if.then.i181.i, %sw.bb82.i.if.then7_crit_edge, %if.then.i.i, %sw.bb81.i.if.then7_crit_edge, %sw.bb80.i, %for.cond.preheader.i.if.then7_crit_edge
  %idxprom61.i143 = phi i32 [ %idxprom61.i.le161, %sw.default107.i ], [ %idxprom61.i.le153, %if.then.i186.i ], [ %idxprom61.i.le153, %sw.bb86.i.if.then7_crit_edge ], [ %idxprom61.i.le155, %if.then.i181.i ], [ %idxprom61.i.le155, %sw.bb82.i.if.then7_crit_edge ], [ %idxprom61.i.le157, %if.then.i.i ], [ %idxprom61.i.le157, %sw.bb81.i.if.then7_crit_edge ], [ %idxprom61.i.le159, %sw.bb80.i ], [ %idxprom61.i.le, %for.cond.preheader.i.if.then7_crit_edge ], [ %idxprom61.i.le, %for.body.i.if.then7_crit_edge ]
  %msdelay.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i143, i32 3
  %90 = ptrtoint ptr %msdelay.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msdelay.i, align 4
  %92 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sw_chnl_step, align 1
  %inc112.i = add i8 %93, 1
  store i8 %inc112.i, ptr %sw_chnl_step, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #7
  %cmp.not = icmp eq i32 %91, 0
  br i1 %cmp.not, label %if.then7.do.body_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %__ms.091 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %91, %if.then7.while.body_crit_edge ]
  %dec = add i32 %__ms.091, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #7
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %while.body.do.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.else26:                                        ; preds = %if.then71.i.if.else26_crit_edge, %do.end65.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #7
  %95 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %do.end

do.end:                                           ; preds = %if.else26, %while.body.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl88e_phy_sw_chnl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sw_chnl_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 7
  %2 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sw_chnl_inprogress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_bwmode_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %4 = ptrtoint ptr %set_bwmode_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %set_bwmode_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %6 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %7)
  %cmp = icmp ugt i8 %7, 14
  br i1 %cmp, label %land.rhs, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b68 = load i1, ptr @rtl88e_phy_sw_chnl.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !168

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl88e_phy_sw_chnl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1199, i32 noundef 9, ptr noundef nonnull @.str.23) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then15, %land.rhs.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  %8 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %sw_chnl_inprogress, align 4
  %sw_chnl_stage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 8
  %9 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sw_chnl_stage, align 1
  %sw_chnl_step = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 9
  %10 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sw_chnl_step, align 2
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtl88e_phy_sw_chnl_callback(ptr noundef %hw)
  %13 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_channel, align 1
  %conv48 = zext i8 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.24, i32 noundef %conv48) #7
  br label %if.end51

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.25) #7
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then46
  %15 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end51 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext %b_recovery) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #7
  %2 = call ptr @memset(ptr %result, i32 255, i32 128)
  br i1 %b_recovery, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %uglygep262 = getelementptr inbounds i8, ptr %result, i32 96
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %3 = call ptr @memset(ptr %result, i32 0, i32 128)
  br label %for.body17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iqk_bb_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %4 = ptrtoint ptr %iqk_bb_backup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iqk_bb_backup, align 4
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %13(ptr noundef %hw, i32 noundef 3092, i32 noundef -1, i32 noundef %5) #7
  %arrayidx1.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %14 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.1, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %cfg.i.i.1 = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i.1, align 8
  %ops.i.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %ops.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i.1, align 4
  %set_bbreg.i.i.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %set_bbreg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_bbreg.i.i.1, align 4
  tail call void %23(ptr noundef %hw, i32 noundef 3100, i32 noundef -1, i32 noundef %15) #7
  %arrayidx1.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %24 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.i.2, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cfg.i.i.2 = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i.i.2, align 8
  %ops.i.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i.2, align 4
  %set_bbreg.i.i.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %set_bbreg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_bbreg.i.i.2, align 4
  tail call void %33(ptr noundef %hw, i32 noundef 3148, i32 noundef -1, i32 noundef %25) #7
  %arrayidx1.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %34 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx1.i.3, align 4
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %cfg.i.i.3 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 32
  %38 = ptrtoint ptr %cfg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i.i.3, align 8
  %ops.i.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i.3, align 4
  %set_bbreg.i.i.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %41, i32 0, i32 46
  %42 = ptrtoint ptr %set_bbreg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_bbreg.i.i.3, align 4
  tail call void %43(ptr noundef %hw, i32 noundef 3192, i32 noundef -1, i32 noundef %35) #7
  %arrayidx1.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %44 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.i.4, align 4
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i.i.4 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i.i.4, align 8
  %ops.i.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i.4, align 4
  %set_bbreg.i.i.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i.i.4, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %45) #7
  %arrayidx1.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %54 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx1.i.5, align 4
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %cfg.i.i.5 = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i.i.5, align 8
  %ops.i.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i.i.5, align 4
  %set_bbreg.i.i.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 46
  %62 = ptrtoint ptr %set_bbreg.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_bbreg.i.i.5, align 4
  tail call void %63(ptr noundef %hw, i32 noundef 3208, i32 noundef -1, i32 noundef %55) #7
  %arrayidx1.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %64 = ptrtoint ptr %arrayidx1.i.6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx1.i.6, align 4
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 8
  %cfg.i.i.6 = getelementptr inbounds %struct.rtl_priv, ptr %67, i32 0, i32 32
  %68 = ptrtoint ptr %cfg.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg.i.i.6, align 8
  %ops.i.i.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %ops.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ops.i.i.6, align 4
  %set_bbreg.i.i.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %71, i32 0, i32 46
  %72 = ptrtoint ptr %set_bbreg.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_bbreg.i.i.6, align 4
  tail call void %73(ptr noundef %hw, i32 noundef 3220, i32 noundef -1, i32 noundef %65) #7
  %arrayidx1.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %74 = ptrtoint ptr %arrayidx1.i.7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx1.i.7, align 4
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %cfg.i.i.7 = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i.i.7, align 8
  %ops.i.i.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i.7, align 4
  %set_bbreg.i.i.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 46
  %82 = ptrtoint ptr %set_bbreg.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_bbreg.i.i.7, align 4
  tail call void %83(ptr noundef %hw, i32 noundef 3228, i32 noundef -1, i32 noundef %75) #7
  %arrayidx1.i.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %84 = ptrtoint ptr %arrayidx1.i.8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx1.i.8, align 4
  %86 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv, align 8
  %cfg.i.i.8 = getelementptr inbounds %struct.rtl_priv, ptr %87, i32 0, i32 32
  %88 = ptrtoint ptr %cfg.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cfg.i.i.8, align 8
  %ops.i.i.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %ops.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i.8, align 4
  %set_bbreg.i.i.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %91, i32 0, i32 46
  %92 = ptrtoint ptr %set_bbreg.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_bbreg.i.i.8, align 4
  tail call void %93(ptr noundef %hw, i32 noundef 3232, i32 noundef -1, i32 noundef %85) #7
  br label %cleanup

for.body17:                                       ; preds = %for.body17.backedge, %for.body.preheader
  %i.1256 = phi i8 [ 0, %for.body.preheader ], [ %i.1256.be, %for.body17.backedge ]
  %94 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cmp19 = icmp eq i8 %95, 2
  call fastcc void @_rtl88e_phy_iq_calibrate(ptr noundef %hw, ptr noundef nonnull %result, i8 noundef zeroext %i.1256, i1 noundef zeroext %cmp19)
  %trunc = trunc i8 %i.1256 to i2
  %96 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.94)
  switch i2 %trunc, label %for.body17.for.body17.backedge_crit_edge [
    i2 1, label %if.then28
    i2 -2, label %if.then39
  ]

for.body17.for.body17.backedge_crit_edge:         ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.backedge

if.then28:                                        ; preds = %for.body17
  %call30 = call fastcc zeroext i1 @_rtl88e_phy_simularity_compare(ptr noundef %hw, ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call30, label %if.then28.if.end124_crit_edge, label %if.then28.for.body17.backedge_crit_edge

if.then28.for.body17.backedge_crit_edge:          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17.backedge

if.then28.if.end124_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

for.body17.backedge:                              ; preds = %if.then28.for.body17.backedge_crit_edge, %for.body17.for.body17.backedge_crit_edge
  %i.1256.be = phi i8 [ 2, %if.then28.for.body17.backedge_crit_edge ], [ 1, %for.body17.for.body17.backedge_crit_edge ]
  br label %for.body17

if.then39:                                        ; preds = %for.body17
  %call41 = call fastcc zeroext i1 @_rtl88e_phy_simularity_compare(ptr noundef %hw, ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call41, label %if.then39.if.end124_crit_edge, label %if.end45

if.then39.if.end124_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end45:                                         ; preds = %if.then39
  %call47 = call fastcc zeroext i1 @_rtl88e_phy_simularity_compare(ptr noundef %hw, ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  br i1 %call47, label %if.end45.if.end124_crit_edge, label %for.body56.preheader

if.end45.if.end124_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

for.body56.preheader:                             ; preds = %if.end45
  %97 = ptrtoint ptr %uglygep262 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %uglygep262, align 4
  %arrayidx59.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %arrayidx59.1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx59.1, align 4
  %add.1 = add i32 %100, %98
  %arrayidx59.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %101 = ptrtoint ptr %arrayidx59.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx59.2, align 4
  %add.2 = add i32 %102, %add.1
  %arrayidx59.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %103 = ptrtoint ptr %arrayidx59.3 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx59.3, align 4
  %add.3 = add i32 %104, %add.2
  %arrayidx59.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %105 = ptrtoint ptr %arrayidx59.4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx59.4, align 4
  %add.4 = add i32 %106, %add.3
  %arrayidx59.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %107 = ptrtoint ptr %arrayidx59.5 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx59.5, align 4
  %add.5 = add i32 %108, %add.4
  %arrayidx59.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %109 = ptrtoint ptr %arrayidx59.6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx59.6, align 4
  %add.6 = add i32 %110, %add.5
  %arrayidx59.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %111 = ptrtoint ptr %arrayidx59.7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx59.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %add.7)
  %cmp63.not = icmp eq i32 %112, %add.7
  br i1 %cmp63.not, label %if.end124.thread, label %for.body56.preheader.if.end124_crit_edge

for.body56.preheader.if.end124_crit_edge:         ; preds = %for.body56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.end124:                                        ; preds = %for.body56.preheader.if.end124_crit_edge, %if.end45.if.end124_crit_edge, %if.then39.if.end124_crit_edge, %if.then28.if.end124_crit_edge
  %conv96271 = phi i32 [ 0, %if.then39.if.end124_crit_edge ], [ 3, %for.body56.preheader.if.end124_crit_edge ], [ 1, %if.end45.if.end124_crit_edge ], [ 0, %if.then28.if.end124_crit_edge ]
  %arrayidx101 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271
  %113 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx101, align 4
  %arrayidx105 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 1
  %115 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx105, align 4
  %arrayidx108 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 2
  %117 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx108, align 4
  %arrayidx111 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 4
  %119 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx111, align 4
  %arrayidx114 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 5
  %121 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx114, align 4
  %reg_eb4115 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %123 = ptrtoint ptr %reg_eb4115 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %120, ptr %reg_eb4115, align 4
  %reg_ebc116 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %124 = ptrtoint ptr %reg_ebc116 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %122, ptr %reg_ebc116, align 4
  %reg_e94117 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %125 = ptrtoint ptr %reg_e94117 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %114, ptr %reg_e94117, align 4
  %reg_e9c118 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %126 = ptrtoint ptr %reg_e9c118 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %116, ptr %reg_e9c118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp125.not = icmp eq i32 %114, 0
  br i1 %cmp125.not, label %if.end124.if.end132_crit_edge, label %if.then3.i

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end124.thread:                                 ; preds = %for.body56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %reg_e94120 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %127 = ptrtoint ptr %reg_e94120 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 256, ptr %reg_e94120, align 4
  %reg_eb4121 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %128 = ptrtoint ptr %reg_eb4121 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 256, ptr %reg_eb4121, align 4
  %reg_e9c122 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %129 = ptrtoint ptr %reg_e9c122 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %reg_e9c122, align 4
  %reg_ebc123 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %130 = ptrtoint ptr %reg_ebc123 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %reg_ebc123, align 4
  br label %if.end155

if.then3.i:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp130 = icmp eq i32 %118, 0
  %131 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv, align 8
  %cfg.i.i230 = getelementptr inbounds %struct.rtl_priv, ptr %132, i32 0, i32 32
  %133 = ptrtoint ptr %cfg.i.i230 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cfg.i.i230, align 8
  %ops.i.i231 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %134, i32 0, i32 4
  %135 = ptrtoint ptr %ops.i.i231 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ops.i.i231, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %136, i32 0, i32 45
  %137 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %138(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #7
  %shr.i = lshr i32 %call.i.i, 22
  %139 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx101, align 4
  %and5.i = and i32 %140, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %140, -1024
  %spec.select.i = select i1 %cmp6.not.i, i32 %140, i32 %or.i
  %mul.i = mul i32 %spec.select.i, %shr.i
  %shr9.i = lshr i32 %mul.i, 8
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv, align 8
  %cfg.i82.i = getelementptr inbounds %struct.rtl_priv, ptr %142, i32 0, i32 32
  %143 = ptrtoint ptr %cfg.i82.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i82.i, align 8
  %ops.i83.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %ops.i83.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i83.i, align 4
  %set_bbreg.i.i233 = getelementptr inbounds %struct.rtl_hal_ops, ptr %146, i32 0, i32 46
  %147 = ptrtoint ptr %set_bbreg.i.i233 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_bbreg.i.i233, align 4
  tail call void %148(ptr noundef %hw, i32 noundef 3200, i32 noundef 1023, i32 noundef %shr9.i) #7
  %shr11.i = lshr i32 %mul.i, 7
  %and12.i = and i32 %shr11.i, 1
  %149 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv, align 8
  %cfg.i85.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 32
  %151 = ptrtoint ptr %cfg.i85.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i85.i, align 8
  %ops.i86.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %ops.i86.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i86.i, align 4
  %set_bbreg.i87.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %154, i32 0, i32 46
  %155 = ptrtoint ptr %set_bbreg.i87.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_bbreg.i87.i, align 4
  tail call void %156(ptr noundef %hw, i32 noundef 3148, i32 noundef -2147483648, i32 noundef %and12.i) #7
  %157 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx105, align 4
  %and16.i = and i32 %158, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 0
  %or20.i = or i32 %158, -1024
  %y.0.i = select i1 %cmp17.not.i, i32 %158, i32 %or20.i
  %mul22.i = mul i32 %y.0.i, %shr.i
  %shr23.i = lshr i32 %mul22.i, 8
  %and24.i = lshr i32 %mul22.i, 14
  %159 = and i32 %and24.i, 15
  %160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %priv, align 8
  %cfg.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %161, i32 0, i32 32
  %162 = ptrtoint ptr %cfg.i89.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cfg.i89.i, align 8
  %ops.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %ops.i90.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ops.i90.i, align 4
  %set_bbreg.i91.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %165, i32 0, i32 46
  %166 = ptrtoint ptr %set_bbreg.i91.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %set_bbreg.i91.i, align 4
  tail call void %167(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef %159) #7
  %and26.i = and i32 %shr23.i, 63
  %168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %priv, align 8
  %cfg.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %169, i32 0, i32 32
  %170 = ptrtoint ptr %cfg.i93.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %cfg.i93.i, align 8
  %ops.i94.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %ops.i94.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ops.i94.i, align 4
  %set_bbreg.i95.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %173, i32 0, i32 46
  %174 = ptrtoint ptr %set_bbreg.i95.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %set_bbreg.i95.i, align 4
  tail call void %175(ptr noundef %hw, i32 noundef 3200, i32 noundef 4128768, i32 noundef %and26.i) #7
  %shr28.i = lshr i32 %mul22.i, 7
  %and29.i = and i32 %shr28.i, 1
  %176 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %priv, align 8
  %cfg.i97.i = getelementptr inbounds %struct.rtl_priv, ptr %177, i32 0, i32 32
  %178 = ptrtoint ptr %cfg.i97.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cfg.i97.i, align 8
  %ops.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %179, i32 0, i32 4
  %180 = ptrtoint ptr %ops.i98.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ops.i98.i, align 4
  %set_bbreg.i99.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %181, i32 0, i32 46
  %182 = ptrtoint ptr %set_bbreg.i99.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %set_bbreg.i99.i, align 4
  tail call void %183(ptr noundef %hw, i32 noundef 3148, i32 noundef 536870912, i32 noundef %and29.i) #7
  br i1 %cmp130, label %if.then3.i.if.end132_crit_edge, label %if.end32.i

if.then3.i.if.end132_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end32.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx108, align 4
  %186 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %priv, align 8
  %cfg.i101.i = getelementptr inbounds %struct.rtl_priv, ptr %187, i32 0, i32 32
  %188 = ptrtoint ptr %cfg.i101.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i101.i, align 8
  %ops.i102.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %ops.i102.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i102.i, align 4
  %set_bbreg.i103.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %191, i32 0, i32 46
  %192 = ptrtoint ptr %set_bbreg.i103.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %set_bbreg.i103.i, align 4
  tail call void %193(ptr noundef %hw, i32 noundef 3092, i32 noundef 1023, i32 noundef %185) #7
  %arrayidx38.i = getelementptr [8 x i32], ptr %result, i32 %conv96271, i32 3
  %194 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx38.i, align 4
  %and39.i = and i32 %195, 63
  %196 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %priv, align 8
  %cfg.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %197, i32 0, i32 32
  %198 = ptrtoint ptr %cfg.i105.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg.i105.i, align 8
  %ops.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %ops.i106.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops.i106.i, align 4
  %set_bbreg.i107.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %201, i32 0, i32 46
  %202 = ptrtoint ptr %set_bbreg.i107.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %set_bbreg.i107.i, align 4
  tail call void %203(ptr noundef %hw, i32 noundef 3092, i32 noundef 64512, i32 noundef %and39.i) #7
  %204 = lshr i32 %195, 6
  %and44.i = and i32 %204, 15
  %205 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv, align 8
  %cfg.i109.i = getelementptr inbounds %struct.rtl_priv, ptr %206, i32 0, i32 32
  %207 = ptrtoint ptr %cfg.i109.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i109.i, align 8
  %ops.i110.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %ops.i110.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i110.i, align 4
  %set_bbreg.i111.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %210, i32 0, i32 46
  %211 = ptrtoint ptr %set_bbreg.i111.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %set_bbreg.i111.i, align 4
  tail call void %212(ptr noundef %hw, i32 noundef 3232, i32 noundef -268435456, i32 noundef %and44.i) #7
  br label %if.end132

if.end132:                                        ; preds = %if.end32.i, %if.then3.i.if.end132_crit_edge, %if.end124.if.end132_crit_edge
  %value = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1
  %213 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx101, align 4
  %215 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %value, align 4
  %216 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx105, align 4
  %arrayidx149.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 1
  %218 = ptrtoint ptr %arrayidx149.1 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %arrayidx149.1, align 4
  %219 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx108, align 4
  %arrayidx149.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 2
  %221 = ptrtoint ptr %arrayidx149.2 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %arrayidx149.2, align 4
  %arrayidx145.3 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 3
  %222 = ptrtoint ptr %arrayidx145.3 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx145.3, align 4
  %arrayidx149.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 3
  %224 = ptrtoint ptr %arrayidx149.3 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %arrayidx149.3, align 4
  %225 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx111, align 4
  %arrayidx149.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 4
  %227 = ptrtoint ptr %arrayidx149.4 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx149.4, align 4
  %228 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx114, align 4
  %arrayidx149.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 5
  %230 = ptrtoint ptr %arrayidx149.5 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %arrayidx149.5, align 4
  %arrayidx145.6 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 6
  %231 = ptrtoint ptr %arrayidx145.6 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx145.6, align 4
  %arrayidx149.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 6
  %233 = ptrtoint ptr %arrayidx149.6 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %arrayidx149.6, align 4
  %arrayidx145.7 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv96271, i32 7
  %234 = ptrtoint ptr %arrayidx145.7 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx145.7, align 4
  %arrayidx149.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 0, i32 1, i32 0, i32 7
  %236 = ptrtoint ptr %arrayidx149.7 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %arrayidx149.7, align 4
  %iqk_matrix153 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35
  %237 = ptrtoint ptr %iqk_matrix153 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 1, ptr %iqk_matrix153, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.end132, %if.end124.thread
  %iqk_bb_backup157 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %238 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %priv, align 8
  %cfg.i.i237 = getelementptr inbounds %struct.rtl_priv, ptr %239, i32 0, i32 32
  %240 = ptrtoint ptr %cfg.i.i237 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i.i237, align 8
  %ops.i.i238 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %ops.i.i238 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops.i.i238, align 4
  %get_bbreg.i.i239 = getelementptr inbounds %struct.rtl_hal_ops, ptr %243, i32 0, i32 45
  %244 = ptrtoint ptr %get_bbreg.i.i239 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %get_bbreg.i.i239, align 4
  %call.i.i240 = tail call i32 %245(ptr noundef %hw, i32 noundef 3092, i32 noundef -1) #7
  %246 = ptrtoint ptr %iqk_bb_backup157 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call.i.i240, ptr %iqk_bb_backup157, align 4
  %247 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %priv, align 8
  %cfg.i.i237.1 = getelementptr inbounds %struct.rtl_priv, ptr %248, i32 0, i32 32
  %249 = ptrtoint ptr %cfg.i.i237.1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %cfg.i.i237.1, align 8
  %ops.i.i238.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %ops.i.i238.1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops.i.i238.1, align 4
  %get_bbreg.i.i239.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %252, i32 0, i32 45
  %253 = ptrtoint ptr %get_bbreg.i.i239.1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %get_bbreg.i.i239.1, align 4
  %call.i.i240.1 = tail call i32 %254(ptr noundef %hw, i32 noundef 3100, i32 noundef -1) #7
  %arrayidx1.i241.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %255 = ptrtoint ptr %arrayidx1.i241.1 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %call.i.i240.1, ptr %arrayidx1.i241.1, align 4
  %256 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %priv, align 8
  %cfg.i.i237.2 = getelementptr inbounds %struct.rtl_priv, ptr %257, i32 0, i32 32
  %258 = ptrtoint ptr %cfg.i.i237.2 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cfg.i.i237.2, align 8
  %ops.i.i238.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %259, i32 0, i32 4
  %260 = ptrtoint ptr %ops.i.i238.2 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ops.i.i238.2, align 4
  %get_bbreg.i.i239.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %261, i32 0, i32 45
  %262 = ptrtoint ptr %get_bbreg.i.i239.2 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %get_bbreg.i.i239.2, align 4
  %call.i.i240.2 = tail call i32 %263(ptr noundef %hw, i32 noundef 3148, i32 noundef -1) #7
  %arrayidx1.i241.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %264 = ptrtoint ptr %arrayidx1.i241.2 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call.i.i240.2, ptr %arrayidx1.i241.2, align 4
  %265 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %priv, align 8
  %cfg.i.i237.3 = getelementptr inbounds %struct.rtl_priv, ptr %266, i32 0, i32 32
  %267 = ptrtoint ptr %cfg.i.i237.3 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cfg.i.i237.3, align 8
  %ops.i.i238.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %268, i32 0, i32 4
  %269 = ptrtoint ptr %ops.i.i238.3 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %ops.i.i238.3, align 4
  %get_bbreg.i.i239.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %270, i32 0, i32 45
  %271 = ptrtoint ptr %get_bbreg.i.i239.3 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %get_bbreg.i.i239.3, align 4
  %call.i.i240.3 = tail call i32 %272(ptr noundef %hw, i32 noundef 3192, i32 noundef -1) #7
  %arrayidx1.i241.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %273 = ptrtoint ptr %arrayidx1.i241.3 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %call.i.i240.3, ptr %arrayidx1.i241.3, align 4
  %274 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %priv, align 8
  %cfg.i.i237.4 = getelementptr inbounds %struct.rtl_priv, ptr %275, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i.i237.4 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i.i237.4, align 8
  %ops.i.i238.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %ops.i.i238.4 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i.i238.4, align 4
  %get_bbreg.i.i239.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %279, i32 0, i32 45
  %280 = ptrtoint ptr %get_bbreg.i.i239.4 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %get_bbreg.i.i239.4, align 4
  %call.i.i240.4 = tail call i32 %281(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #7
  %arrayidx1.i241.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %282 = ptrtoint ptr %arrayidx1.i241.4 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %call.i.i240.4, ptr %arrayidx1.i241.4, align 4
  %283 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %priv, align 8
  %cfg.i.i237.5 = getelementptr inbounds %struct.rtl_priv, ptr %284, i32 0, i32 32
  %285 = ptrtoint ptr %cfg.i.i237.5 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cfg.i.i237.5, align 8
  %ops.i.i238.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %286, i32 0, i32 4
  %287 = ptrtoint ptr %ops.i.i238.5 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %ops.i.i238.5, align 4
  %get_bbreg.i.i239.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %288, i32 0, i32 45
  %289 = ptrtoint ptr %get_bbreg.i.i239.5 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %get_bbreg.i.i239.5, align 4
  %call.i.i240.5 = tail call i32 %290(ptr noundef %hw, i32 noundef 3208, i32 noundef -1) #7
  %arrayidx1.i241.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %291 = ptrtoint ptr %arrayidx1.i241.5 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %call.i.i240.5, ptr %arrayidx1.i241.5, align 4
  %292 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv, align 8
  %cfg.i.i237.6 = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 32
  %294 = ptrtoint ptr %cfg.i.i237.6 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i.i237.6, align 8
  %ops.i.i238.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %ops.i.i238.6 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops.i.i238.6, align 4
  %get_bbreg.i.i239.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %297, i32 0, i32 45
  %298 = ptrtoint ptr %get_bbreg.i.i239.6 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %get_bbreg.i.i239.6, align 4
  %call.i.i240.6 = tail call i32 %299(ptr noundef %hw, i32 noundef 3220, i32 noundef -1) #7
  %arrayidx1.i241.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %300 = ptrtoint ptr %arrayidx1.i241.6 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %call.i.i240.6, ptr %arrayidx1.i241.6, align 4
  %301 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %priv, align 8
  %cfg.i.i237.7 = getelementptr inbounds %struct.rtl_priv, ptr %302, i32 0, i32 32
  %303 = ptrtoint ptr %cfg.i.i237.7 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %cfg.i.i237.7, align 8
  %ops.i.i238.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %304, i32 0, i32 4
  %305 = ptrtoint ptr %ops.i.i238.7 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ops.i.i238.7, align 4
  %get_bbreg.i.i239.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %306, i32 0, i32 45
  %307 = ptrtoint ptr %get_bbreg.i.i239.7 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %get_bbreg.i.i239.7, align 4
  %call.i.i240.7 = tail call i32 %308(ptr noundef %hw, i32 noundef 3228, i32 noundef -1) #7
  %arrayidx1.i241.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %309 = ptrtoint ptr %arrayidx1.i241.7 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %call.i.i240.7, ptr %arrayidx1.i241.7, align 4
  %310 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %priv, align 8
  %cfg.i.i237.8 = getelementptr inbounds %struct.rtl_priv, ptr %311, i32 0, i32 32
  %312 = ptrtoint ptr %cfg.i.i237.8 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cfg.i.i237.8, align 8
  %ops.i.i238.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %ops.i.i238.8 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops.i.i238.8, align 4
  %get_bbreg.i.i239.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %315, i32 0, i32 45
  %316 = ptrtoint ptr %get_bbreg.i.i239.8 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %get_bbreg.i.i239.8, align 4
  %call.i.i240.8 = tail call i32 %317(ptr noundef %hw, i32 noundef 3232, i32 noundef -1) #7
  %arrayidx1.i241.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %318 = ptrtoint ptr %arrayidx1.i241.8 to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %call.i.i240.8, ptr %arrayidx1.i241.8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl88e_phy_iq_calibrate(ptr noundef %hw, ptr nocapture noundef writeonly %result, i8 noundef zeroext %t, i1 noundef zeroext %is2t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = zext i8 %t to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %t)
  %cmp = icmp eq i8 %t, 0
  br i1 %cmp, label %if.then, label %if.end15.critedge

if.then:                                          ; preds = %entry
  %adda_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.06.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @__const._rtl88e_phy_iq_calibrate.adda_reg, i32 %i.06.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %9, i32 0, i32 45
  %10 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %hw, i32 noundef %3, i32 noundef -1) #7
  %arrayidx1.i = getelementptr i32, ptr %adda_backup, i32 %i.06.i
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i.i, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %_rtl88e_phy_save_adda_registers.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

_rtl88e_phy_save_adda_registers.exit:             ; preds = %for.body.i
  %iqk_mac_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %15 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i257 = tail call zeroext i8 %16(ptr noundef %14, i32 noundef 1314) #7
  %conv.i = zext i8 %call.i.i257 to i32
  %17 = ptrtoint ptr %iqk_mac_backup to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %iqk_mac_backup, align 4
  %18 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.1.i = tail call zeroext i8 %19(ptr noundef %14, i32 noundef 1360) #7
  %conv.1.i = zext i8 %call.i.1.i to i32
  %arrayidx1.1.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 1
  %20 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.1.i, ptr %arrayidx1.1.i, align 4
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.2.i = tail call zeroext i8 %22(ptr noundef %14, i32 noundef 1361) #7
  %conv.2.i = zext i8 %call.i.2.i to i32
  %arrayidx1.2.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 2
  %23 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.2.i, ptr %arrayidx1.2.i, align 4
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 11
  %24 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i13.i = tail call i32 %25(ptr noundef %14, i32 noundef 64) #7
  %arrayidx4.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 3
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i13.i, ptr %arrayidx4.i, align 4
  %iqk_bb_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %cfg.i.i261 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i.i261 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i.i261, align 8
  %ops.i.i262 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i.i262 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i262, align 4
  %get_bbreg.i.i263 = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %get_bbreg.i.i263 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_bbreg.i.i263, align 4
  %call.i.i264 = tail call i32 %34(ptr noundef %hw, i32 noundef 3076, i32 noundef -1) #7
  %35 = ptrtoint ptr %iqk_bb_backup to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i.i264, ptr %iqk_bb_backup, align 4
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %cfg.i.i261.1 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 32
  %38 = ptrtoint ptr %cfg.i.i261.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg.i.i261.1, align 8
  %ops.i.i262.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %ops.i.i262.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i.i262.1, align 4
  %get_bbreg.i.i263.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %41, i32 0, i32 45
  %42 = ptrtoint ptr %get_bbreg.i.i263.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_bbreg.i.i263.1, align 4
  %call.i.i264.1 = tail call i32 %43(ptr noundef %hw, i32 noundef 3080, i32 noundef -1) #7
  %arrayidx1.i265.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %44 = ptrtoint ptr %arrayidx1.i265.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call.i.i264.1, ptr %arrayidx1.i265.1, align 4
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i.i261.2 = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i.i261.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i261.2, align 8
  %ops.i.i262.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i.i262.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i262.2, align 4
  %get_bbreg.i.i263.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 45
  %51 = ptrtoint ptr %get_bbreg.i.i263.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_bbreg.i.i263.2, align 4
  %call.i.i264.2 = tail call i32 %52(ptr noundef %hw, i32 noundef 2164, i32 noundef -1) #7
  %arrayidx1.i265.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %53 = ptrtoint ptr %arrayidx1.i265.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call.i.i264.2, ptr %arrayidx1.i265.2, align 4
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i.i261.3 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i.i261.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i.i261.3, align 8
  %ops.i.i262.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i.i262.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i262.3, align 4
  %get_bbreg.i.i263.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 45
  %60 = ptrtoint ptr %get_bbreg.i.i263.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %get_bbreg.i.i263.3, align 4
  %call.i.i264.3 = tail call i32 %61(ptr noundef %hw, i32 noundef 2920, i32 noundef -1) #7
  %arrayidx1.i265.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %62 = ptrtoint ptr %arrayidx1.i265.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call.i.i264.3, ptr %arrayidx1.i265.3, align 4
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %cfg.i.i261.4 = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i.i261.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i261.4, align 8
  %ops.i.i262.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i.i262.4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i.i262.4, align 4
  %get_bbreg.i.i263.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 45
  %69 = ptrtoint ptr %get_bbreg.i.i263.4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_bbreg.i.i263.4, align 4
  %call.i.i264.4 = tail call i32 %70(ptr noundef %hw, i32 noundef 2924, i32 noundef -1) #7
  %arrayidx1.i265.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %71 = ptrtoint ptr %arrayidx1.i265.4 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i.i264.4, ptr %arrayidx1.i265.4, align 4
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %cfg.i.i261.5 = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i.i261.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i.i261.5, align 8
  %ops.i.i262.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i.i262.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i.i262.5, align 4
  %get_bbreg.i.i263.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 45
  %78 = ptrtoint ptr %get_bbreg.i.i263.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %get_bbreg.i.i263.5, align 4
  %call.i.i264.5 = tail call i32 %79(ptr noundef %hw, i32 noundef 2160, i32 noundef -1) #7
  %arrayidx1.i265.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %80 = ptrtoint ptr %arrayidx1.i265.5 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call.i.i264.5, ptr %arrayidx1.i265.5, align 4
  %81 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv, align 8
  %cfg.i.i261.6 = getelementptr inbounds %struct.rtl_priv, ptr %82, i32 0, i32 32
  %83 = ptrtoint ptr %cfg.i.i261.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i.i261.6, align 8
  %ops.i.i262.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ops.i.i262.6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i.i262.6, align 4
  %get_bbreg.i.i263.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %86, i32 0, i32 45
  %87 = ptrtoint ptr %get_bbreg.i.i263.6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %get_bbreg.i.i263.6, align 4
  %call.i.i264.6 = tail call i32 %88(ptr noundef %hw, i32 noundef 2144, i32 noundef -1) #7
  %arrayidx1.i265.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %89 = ptrtoint ptr %arrayidx1.i265.6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %call.i.i264.6, ptr %arrayidx1.i265.6, align 4
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %cfg.i.i261.7 = getelementptr inbounds %struct.rtl_priv, ptr %91, i32 0, i32 32
  %92 = ptrtoint ptr %cfg.i.i261.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i.i261.7, align 8
  %ops.i.i262.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ops.i.i262.7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i.i262.7, align 4
  %get_bbreg.i.i263.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %95, i32 0, i32 45
  %96 = ptrtoint ptr %get_bbreg.i.i263.7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_bbreg.i.i263.7, align 4
  %call.i.i264.7 = tail call i32 %97(ptr noundef %hw, i32 noundef 2148, i32 noundef -1) #7
  %arrayidx1.i265.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %98 = ptrtoint ptr %arrayidx1.i265.7 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call.i.i264.7, ptr %arrayidx1.i265.7, align 4
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 8
  %cfg.i.i261.8 = getelementptr inbounds %struct.rtl_priv, ptr %100, i32 0, i32 32
  %101 = ptrtoint ptr %cfg.i.i261.8 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i.i261.8, align 8
  %ops.i.i262.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %ops.i.i262.8 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i.i262.8, align 4
  %get_bbreg.i.i263.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %104, i32 0, i32 45
  %105 = ptrtoint ptr %get_bbreg.i.i263.8 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %get_bbreg.i.i263.8, align 4
  %call.i.i264.8 = tail call i32 %106(ptr noundef %hw, i32 noundef 2048, i32 noundef -1) #7
  %arrayidx1.i265.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %107 = ptrtoint ptr %arrayidx1.i265.8 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call.i.i264.8, ptr %arrayidx1.i265.8, align 4
  %cond.sink.i = select i1 %is2t, i32 81470884, i32 186328480
  %pathon.0.i = select i1 %is2t, i32 81470884, i32 198911392
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %cfg.i13.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %110 = ptrtoint ptr %cfg.i13.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i13.i, align 8
  %ops.i14.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i14.i, align 4
  %set_bbreg.i15.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %113, i32 0, i32 46
  %114 = ptrtoint ptr %set_bbreg.i15.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set_bbreg.i15.i, align 4
  tail call void %115(ptr noundef %hw, i32 noundef 2140, i32 noundef -1, i32 noundef %cond.sink.i) #7
  br label %for.body.i273

for.body.i273:                                    ; preds = %for.body.i273.for.body.i273_crit_edge, %_rtl88e_phy_save_adda_registers.exit
  %i.020.i = phi i32 [ 1, %_rtl88e_phy_save_adda_registers.exit ], [ %inc.i271, %for.body.i273.for.body.i273_crit_edge ]
  %arrayidx4.i270 = getelementptr i32, ptr @__const._rtl88e_phy_iq_calibrate.adda_reg, i32 %i.020.i
  %116 = ptrtoint ptr %arrayidx4.i270 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx4.i270, align 4
  %118 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %priv, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %119, i32 0, i32 32
  %120 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ops.i18.i, align 4
  %set_bbreg.i19.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %123, i32 0, i32 46
  %124 = ptrtoint ptr %set_bbreg.i19.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %set_bbreg.i19.i, align 4
  tail call void %125(ptr noundef %hw, i32 noundef %117, i32 noundef -1, i32 noundef %pathon.0.i) #7
  %inc.i271 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i272 = icmp eq i32 %inc.i271, 16
  br i1 %exitcond.not.i272, label %_rtl88e_phy_path_adda_on.exit, label %for.body.i273.for.body.i273_crit_edge

for.body.i273.for.body.i273_crit_edge:            ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i273

_rtl88e_phy_path_adda_on.exit:                    ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %127, i32 0, i32 32
  %128 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %131, i32 0, i32 45
  %132 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %133(ptr noundef %hw, i32 noundef 2080, i32 noundef 256) #7
  %conv12 = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %tobool13 = icmp ne i8 %conv12, 0
  %rfpi_enable = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 36
  %frombool14 = zext i1 %tobool13 to i8
  %134 = ptrtoint ptr %rfpi_enable to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %frombool14, ptr %rfpi_enable, align 4
  br label %if.end15

if.end15.critedge:                                ; preds = %entry
  %cond.sink.i275 = select i1 %is2t, i32 81470884, i32 186328480
  %pathon.0.i276 = select i1 %is2t, i32 81470884, i32 198911392
  %cfg.i13.i278 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %135 = ptrtoint ptr %cfg.i13.i278 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i13.i278, align 8
  %ops.i14.i279 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %ops.i14.i279 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i14.i279, align 4
  %set_bbreg.i15.i280 = getelementptr inbounds %struct.rtl_hal_ops, ptr %138, i32 0, i32 46
  %139 = ptrtoint ptr %set_bbreg.i15.i280 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_bbreg.i15.i280, align 4
  tail call void %140(ptr noundef %hw, i32 noundef 2140, i32 noundef -1, i32 noundef %cond.sink.i275) #7
  br label %for.body.i289

for.body.i289:                                    ; preds = %for.body.i289.for.body.i289_crit_edge, %if.end15.critedge
  %i.020.i282 = phi i32 [ 1, %if.end15.critedge ], [ %inc.i287, %for.body.i289.for.body.i289_crit_edge ]
  %arrayidx4.i283 = getelementptr i32, ptr @__const._rtl88e_phy_iq_calibrate.adda_reg, i32 %i.020.i282
  %141 = ptrtoint ptr %arrayidx4.i283 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx4.i283, align 4
  %143 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %priv, align 8
  %cfg.i17.i284 = getelementptr inbounds %struct.rtl_priv, ptr %144, i32 0, i32 32
  %145 = ptrtoint ptr %cfg.i17.i284 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i17.i284, align 8
  %ops.i18.i285 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %ops.i18.i285 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i18.i285, align 4
  %set_bbreg.i19.i286 = getelementptr inbounds %struct.rtl_hal_ops, ptr %148, i32 0, i32 46
  %149 = ptrtoint ptr %set_bbreg.i19.i286 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_bbreg.i19.i286, align 4
  tail call void %150(ptr noundef %hw, i32 noundef %142, i32 noundef -1, i32 noundef %pathon.0.i276) #7
  %inc.i287 = add nuw nsw i32 %i.020.i282, 1
  %exitcond.not.i288 = icmp eq i32 %inc.i287, 16
  br i1 %exitcond.not.i288, label %for.body.i289.if.end15_crit_edge, label %for.body.i289.for.body.i289_crit_edge

for.body.i289.for.body.i289_crit_edge:            ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i289

for.body.i289.if.end15_crit_edge:                 ; preds = %for.body.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %for.body.i289.if.end15_crit_edge, %_rtl88e_phy_path_adda_on.exit
  %rfpi_enable16 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 36
  %151 = ptrtoint ptr %rfpi_enable16 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %rfpi_enable16, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool17.not = icmp eq i8 %152, 0
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end19_crit_edge

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %priv, align 8
  %cfg.i.i292 = getelementptr inbounds %struct.rtl_priv, ptr %154, i32 0, i32 32
  %155 = ptrtoint ptr %cfg.i.i292 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cfg.i.i292, align 8
  %ops.i.i293 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %ops.i.i293 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i.i293, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %158, i32 0, i32 46
  %159 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %160(ptr noundef %hw, i32 noundef 2080, i32 noundef -1, i32 noundef 16777472) #7
  %161 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv, align 8
  %cfg.i4.i = getelementptr inbounds %struct.rtl_priv, ptr %162, i32 0, i32 32
  %163 = ptrtoint ptr %cfg.i4.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i4.i, align 8
  %ops.i5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops.i5.i, align 4
  %set_bbreg.i6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %166, i32 0, i32 46
  %167 = ptrtoint ptr %set_bbreg.i6.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %set_bbreg.i6.i, align 4
  tail call void %168(ptr noundef %hw, i32 noundef 2088, i32 noundef -1, i32 noundef 16777472) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end15.if.end19_crit_edge
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv, align 8
  %cfg.i295 = getelementptr inbounds %struct.rtl_priv, ptr %170, i32 0, i32 32
  %171 = ptrtoint ptr %cfg.i295 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg.i295, align 8
  %ops.i296 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %ops.i296 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i296, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %174, i32 0, i32 46
  %175 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %176(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 0) #7
  %177 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %priv, align 8
  %cfg.i298 = getelementptr inbounds %struct.rtl_priv, ptr %178, i32 0, i32 32
  %179 = ptrtoint ptr %cfg.i298 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cfg.i298, align 8
  %ops.i299 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %ops.i299 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops.i299, align 4
  %set_bbreg.i300 = getelementptr inbounds %struct.rtl_hal_ops, ptr %182, i32 0, i32 46
  %183 = ptrtoint ptr %set_bbreg.i300 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %set_bbreg.i300, align 4
  tail call void %184(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #7
  %185 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %priv, align 8
  %cfg.i302 = getelementptr inbounds %struct.rtl_priv, ptr %186, i32 0, i32 32
  %187 = ptrtoint ptr %cfg.i302 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cfg.i302, align 8
  %ops.i303 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %188, i32 0, i32 4
  %189 = ptrtoint ptr %ops.i303 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ops.i303, align 4
  %set_bbreg.i304 = getelementptr inbounds %struct.rtl_hal_ops, ptr %190, i32 0, i32 46
  %191 = ptrtoint ptr %set_bbreg.i304 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %set_bbreg.i304, align 4
  tail call void %192(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #7
  %193 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %priv, align 8
  %cfg.i306 = getelementptr inbounds %struct.rtl_priv, ptr %194, i32 0, i32 32
  %195 = ptrtoint ptr %cfg.i306 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cfg.i306, align 8
  %ops.i307 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %196, i32 0, i32 4
  %197 = ptrtoint ptr %ops.i307 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %ops.i307, align 4
  %set_bbreg.i308 = getelementptr inbounds %struct.rtl_hal_ops, ptr %198, i32 0, i32 46
  %199 = ptrtoint ptr %set_bbreg.i308 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %set_bbreg.i308, align 4
  tail call void %200(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef 572538880) #7
  %201 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %priv, align 8
  %cfg.i310 = getelementptr inbounds %struct.rtl_priv, ptr %202, i32 0, i32 32
  %203 = ptrtoint ptr %cfg.i310 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cfg.i310, align 8
  %ops.i311 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %204, i32 0, i32 4
  %205 = ptrtoint ptr %ops.i311 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops.i311, align 4
  %set_bbreg.i312 = getelementptr inbounds %struct.rtl_hal_ops, ptr %206, i32 0, i32 46
  %207 = ptrtoint ptr %set_bbreg.i312 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %set_bbreg.i312, align 4
  tail call void %208(ptr noundef %hw, i32 noundef 2160, i32 noundef 1024, i32 noundef 1) #7
  %209 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %priv, align 8
  %cfg.i314 = getelementptr inbounds %struct.rtl_priv, ptr %210, i32 0, i32 32
  %211 = ptrtoint ptr %cfg.i314 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cfg.i314, align 8
  %ops.i315 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %ops.i315 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ops.i315, align 4
  %set_bbreg.i316 = getelementptr inbounds %struct.rtl_hal_ops, ptr %214, i32 0, i32 46
  %215 = ptrtoint ptr %set_bbreg.i316 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %set_bbreg.i316, align 4
  tail call void %216(ptr noundef %hw, i32 noundef 2160, i32 noundef 67108864, i32 noundef 1) #7
  %217 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %priv, align 8
  %cfg.i318 = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i318 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i318, align 8
  %ops.i319 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %ops.i319 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops.i319, align 4
  %set_bbreg.i320 = getelementptr inbounds %struct.rtl_hal_ops, ptr %222, i32 0, i32 46
  %223 = ptrtoint ptr %set_bbreg.i320 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %set_bbreg.i320, align 4
  tail call void %224(ptr noundef %hw, i32 noundef 2144, i32 noundef 1024, i32 noundef 0) #7
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 8
  %cfg.i322 = getelementptr inbounds %struct.rtl_priv, ptr %226, i32 0, i32 32
  %227 = ptrtoint ptr %cfg.i322 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %cfg.i322, align 8
  %ops.i323 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %228, i32 0, i32 4
  %229 = ptrtoint ptr %ops.i323 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ops.i323, align 4
  %set_bbreg.i324 = getelementptr inbounds %struct.rtl_hal_ops, ptr %230, i32 0, i32 46
  %231 = ptrtoint ptr %set_bbreg.i324 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %set_bbreg.i324, align 4
  tail call void %232(ptr noundef %hw, i32 noundef 2148, i32 noundef 1024, i32 noundef 0) #7
  br i1 %is2t, label %if.then21, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %233 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %priv, align 8
  %cfg.i326 = getelementptr inbounds %struct.rtl_priv, ptr %234, i32 0, i32 32
  %235 = ptrtoint ptr %cfg.i326 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %cfg.i326, align 8
  %ops.i327 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %236, i32 0, i32 4
  %237 = ptrtoint ptr %ops.i327 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ops.i327, align 4
  %set_bbreg.i328 = getelementptr inbounds %struct.rtl_hal_ops, ptr %238, i32 0, i32 46
  %239 = ptrtoint ptr %set_bbreg.i328 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %set_bbreg.i328, align 4
  tail call void %240(ptr noundef %hw, i32 noundef 2112, i32 noundef -1, i32 noundef 65536) #7
  %241 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %priv, align 8
  %cfg.i330 = getelementptr inbounds %struct.rtl_priv, ptr %242, i32 0, i32 32
  %243 = ptrtoint ptr %cfg.i330 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cfg.i330, align 8
  %ops.i331 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %244, i32 0, i32 4
  %245 = ptrtoint ptr %ops.i331 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ops.i331, align 4
  %set_bbreg.i332 = getelementptr inbounds %struct.rtl_hal_ops, ptr %246, i32 0, i32 46
  %247 = ptrtoint ptr %set_bbreg.i332 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %set_bbreg.i332, align 4
  tail call void %248(ptr noundef %hw, i32 noundef 2116, i32 noundef -1, i32 noundef 65536) #7
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  %iqk_mac_backup24 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29
  %249 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %priv, align 8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %250, i32 0, i32 13, i32 5
  %251 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %252(ptr noundef %250, i32 noundef 1314, i8 noundef zeroext 63) #7
  %cfg.i.i334 = getelementptr inbounds %struct.rtl_priv, ptr %250, i32 0, i32 32
  %253 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i.i = icmp eq i8 %256, 0
  br i1 %tobool.not.i.i, label %if.end22.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.end22.rtl_write_byte.exit.i_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i335 = getelementptr inbounds %struct.rtl_priv, ptr %250, i32 0, i32 13, i32 9
  %257 = ptrtoint ptr %read8_sync.i.i335 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %read8_sync.i.i335, align 4
  %call.i.i336 = tail call zeroext i8 %258(ptr noundef %250, i32 noundef 1314) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.end22.rtl_write_byte.exit.i_crit_edge
  %read8_sync.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %250, i32 0, i32 13, i32 9
  %arrayidx2.i338 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 1
  %259 = ptrtoint ptr %arrayidx2.i338 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx2.i338, align 4
  %261 = trunc i32 %260 to i8
  %conv.i339 = and i8 %261, -9
  %262 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %263(ptr noundef %250, i32 noundef 1360, i8 noundef zeroext %conv.i339) #7
  %264 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i20.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %write_readback.i20.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %write_readback.i20.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool.not.i21.i = icmp eq i8 %267, 0
  br i1 %tobool.not.i21.i, label %rtl_write_byte.exit.i.rtl_write_byte.exit25.i_crit_edge, label %if.then.i24.i

rtl_write_byte.exit.i.rtl_write_byte.exit25.i_crit_edge: ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit25.i

if.then.i24.i:                                    ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %268 = ptrtoint ptr %read8_sync.i22.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %read8_sync.i22.i, align 4
  %call.i23.i = tail call zeroext i8 %269(ptr noundef %250, i32 noundef 1360) #7
  br label %rtl_write_byte.exit25.i

rtl_write_byte.exit25.i:                          ; preds = %if.then.i24.i, %rtl_write_byte.exit.i.rtl_write_byte.exit25.i_crit_edge
  %arrayidx2.1.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 2
  %270 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx2.1.i, align 4
  %272 = trunc i32 %271 to i8
  %conv.1.i341 = and i8 %272, -9
  %273 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %274(ptr noundef %250, i32 noundef 1361, i8 noundef zeroext %conv.1.i341) #7
  %275 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i20.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %276, i32 0, i32 1
  %277 = ptrtoint ptr %write_readback.i20.1.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %write_readback.i20.1.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool.not.i21.1.i = icmp eq i8 %278, 0
  br i1 %tobool.not.i21.1.i, label %rtl_write_byte.exit25.i.rtl_write_byte.exit25.1.i_crit_edge, label %if.then.i24.1.i

rtl_write_byte.exit25.i.rtl_write_byte.exit25.1.i_crit_edge: ; preds = %rtl_write_byte.exit25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit25.1.i

if.then.i24.1.i:                                  ; preds = %rtl_write_byte.exit25.i
  call void @__sanitizer_cov_trace_pc() #9
  %279 = ptrtoint ptr %read8_sync.i22.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %read8_sync.i22.i, align 4
  %call.i23.1.i = tail call zeroext i8 %280(ptr noundef %250, i32 noundef 1361) #7
  br label %rtl_write_byte.exit25.1.i

rtl_write_byte.exit25.1.i:                        ; preds = %if.then.i24.1.i, %rtl_write_byte.exit25.i.rtl_write_byte.exit25.1.i_crit_edge
  %arrayidx4.i342 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 29, i32 3
  %281 = ptrtoint ptr %arrayidx4.i342 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx4.i342, align 4
  %283 = trunc i32 %282 to i8
  %conv6.i = and i8 %283, -33
  %284 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %285(ptr noundef %250, i32 noundef 64, i8 noundef zeroext %conv6.i) #7
  %286 = ptrtoint ptr %cfg.i.i334 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %cfg.i.i334, align 8
  %write_readback.i28.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %287, i32 0, i32 1
  %288 = ptrtoint ptr %write_readback.i28.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %write_readback.i28.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool.not.i29.i = icmp eq i8 %289, 0
  br i1 %tobool.not.i29.i, label %rtl_write_byte.exit25.1.i._rtl88e_phy_mac_setting_calibration.exit_crit_edge, label %if.then.i32.i

rtl_write_byte.exit25.1.i._rtl88e_phy_mac_setting_calibration.exit_crit_edge: ; preds = %rtl_write_byte.exit25.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_mac_setting_calibration.exit

if.then.i32.i:                                    ; preds = %rtl_write_byte.exit25.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %290 = ptrtoint ptr %read8_sync.i22.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %read8_sync.i22.i, align 4
  %call.i31.i = tail call zeroext i8 %291(ptr noundef %250, i32 noundef 64) #7
  br label %_rtl88e_phy_mac_setting_calibration.exit

_rtl88e_phy_mac_setting_calibration.exit:         ; preds = %if.then.i32.i, %rtl_write_byte.exit25.1.i._rtl88e_phy_mac_setting_calibration.exit_crit_edge
  %292 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %priv, align 8
  %cfg.i344 = getelementptr inbounds %struct.rtl_priv, ptr %293, i32 0, i32 32
  %294 = ptrtoint ptr %cfg.i344 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i344, align 8
  %ops.i345 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %ops.i345 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops.i345, align 4
  %set_bbreg.i346 = getelementptr inbounds %struct.rtl_hal_ops, ptr %297, i32 0, i32 46
  %298 = ptrtoint ptr %set_bbreg.i346 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %set_bbreg.i346, align 4
  tail call void %299(ptr noundef %hw, i32 noundef 2920, i32 noundef -1, i32 noundef 257949696) #7
  br i1 %is2t, label %if.then27, label %_rtl88e_phy_mac_setting_calibration.exit.if.end28_crit_edge

_rtl88e_phy_mac_setting_calibration.exit.if.end28_crit_edge: ; preds = %_rtl88e_phy_mac_setting_calibration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %_rtl88e_phy_mac_setting_calibration.exit
  call void @__sanitizer_cov_trace_pc() #9
  %300 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %priv, align 8
  %cfg.i348 = getelementptr inbounds %struct.rtl_priv, ptr %301, i32 0, i32 32
  %302 = ptrtoint ptr %cfg.i348 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %cfg.i348, align 8
  %ops.i349 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %303, i32 0, i32 4
  %304 = ptrtoint ptr %ops.i349 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ops.i349, align 4
  %set_bbreg.i350 = getelementptr inbounds %struct.rtl_hal_ops, ptr %305, i32 0, i32 46
  %306 = ptrtoint ptr %set_bbreg.i350 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %set_bbreg.i350, align 4
  tail call void %307(ptr noundef %hw, i32 noundef 2924, i32 noundef -1, i32 noundef 257949696) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %_rtl88e_phy_mac_setting_calibration.exit.if.end28_crit_edge
  %308 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %priv, align 8
  %cfg.i352 = getelementptr inbounds %struct.rtl_priv, ptr %309, i32 0, i32 32
  %310 = ptrtoint ptr %cfg.i352 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %cfg.i352, align 8
  %ops.i353 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %311, i32 0, i32 4
  %312 = ptrtoint ptr %ops.i353 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ops.i353, align 4
  %set_bbreg.i354 = getelementptr inbounds %struct.rtl_hal_ops, ptr %313, i32 0, i32 46
  %314 = ptrtoint ptr %set_bbreg.i354 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %set_bbreg.i354, align 4
  tail call void %315(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %316 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %priv, align 8
  %cfg.i356 = getelementptr inbounds %struct.rtl_priv, ptr %317, i32 0, i32 32
  %318 = ptrtoint ptr %cfg.i356 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cfg.i356, align 8
  %ops.i357 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %ops.i357 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ops.i357, align 4
  %set_bbreg.i358 = getelementptr inbounds %struct.rtl_hal_ops, ptr %321, i32 0, i32 46
  %322 = ptrtoint ptr %set_bbreg.i358 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %set_bbreg.i358, align 4
  tail call void %323(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %324 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %priv, align 8
  %cfg.i360 = getelementptr inbounds %struct.rtl_priv, ptr %325, i32 0, i32 32
  %326 = ptrtoint ptr %cfg.i360 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %cfg.i360, align 8
  %ops.i361 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %327, i32 0, i32 4
  %328 = ptrtoint ptr %ops.i361 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ops.i361, align 4
  %set_bbreg.i362 = getelementptr inbounds %struct.rtl_hal_ops, ptr %329, i32 0, i32 46
  %330 = ptrtoint ptr %set_bbreg.i362 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %set_bbreg.i362, align 4
  tail call void %331(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef -2130688000) #7
  br label %for.body

for.cond:                                         ; preds = %for.body
  br i1 %cmp29, label %for.cond.for.body_crit_edge, label %for.cond.for.body49.preheader_crit_edge

for.cond.for.body49.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end28
  %cmp29 = phi i1 [ true, %if.end28 ], [ false, %for.cond.for.body_crit_edge ]
  %332 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %priv, align 8
  %cfg.i.i364 = getelementptr inbounds %struct.rtl_priv, ptr %333, i32 0, i32 32
  %334 = ptrtoint ptr %cfg.i.i364 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %cfg.i.i364, align 8
  %ops.i.i365 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %ops.i.i365 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %ops.i.i365, align 4
  %set_bbreg.i.i366 = getelementptr inbounds %struct.rtl_hal_ops, ptr %337, i32 0, i32 46
  %338 = ptrtoint ptr %set_bbreg.i.i366 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %set_bbreg.i.i366, align 4
  tail call void %339(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 268471324) #7
  %340 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %priv, align 8
  %cfg.i3.i = getelementptr inbounds %struct.rtl_priv, ptr %341, i32 0, i32 32
  %342 = ptrtoint ptr %cfg.i3.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cfg.i3.i, align 8
  %ops.i4.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %343, i32 0, i32 4
  %344 = ptrtoint ptr %ops.i4.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ops.i4.i, align 4
  %set_bbreg.i5.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %345, i32 0, i32 46
  %346 = ptrtoint ptr %set_bbreg.i5.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %set_bbreg.i5.i, align 4
  tail call void %347(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 805342236) #7
  %348 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %priv, align 8
  %cfg.i7.i = getelementptr inbounds %struct.rtl_priv, ptr %349, i32 0, i32 32
  %350 = ptrtoint ptr %cfg.i7.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %cfg.i7.i, align 8
  %ops.i8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %351, i32 0, i32 4
  %352 = ptrtoint ptr %ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ops.i8.i, align 4
  %set_bbreg.i9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %353, i32 0, i32 46
  %354 = ptrtoint ptr %set_bbreg.i9.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %set_bbreg.i9.i, align 4
  tail call void %355(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112617686) #7
  %356 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %priv, align 8
  %cfg.i11.i = getelementptr inbounds %struct.rtl_priv, ptr %357, i32 0, i32 32
  %358 = ptrtoint ptr %cfg.i11.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %cfg.i11.i, align 8
  %ops.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %359, i32 0, i32 4
  %360 = ptrtoint ptr %ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ops.i12.i, align 4
  %set_bbreg.i13.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %361, i32 0, i32 46
  %362 = ptrtoint ptr %set_bbreg.i13.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %set_bbreg.i13.i, align 4
  tail call void %363(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672530432) #7
  %364 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %priv, align 8
  %cfg.i15.i = getelementptr inbounds %struct.rtl_priv, ptr %365, i32 0, i32 32
  %366 = ptrtoint ptr %cfg.i15.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cfg.i15.i, align 8
  %ops.i16.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %367, i32 0, i32 4
  %368 = ptrtoint ptr %ops.i16.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ops.i16.i, align 4
  %set_bbreg.i17.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %369, i32 0, i32 46
  %370 = ptrtoint ptr %set_bbreg.i17.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %set_bbreg.i17.i, align 4
  tail call void %371(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #7
  %372 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %priv, align 8
  %cfg.i19.i = getelementptr inbounds %struct.rtl_priv, ptr %373, i32 0, i32 32
  %374 = ptrtoint ptr %cfg.i19.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %cfg.i19.i, align 8
  %ops.i20.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %375, i32 0, i32 4
  %376 = ptrtoint ptr %ops.i20.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %ops.i20.i, align 4
  %set_bbreg.i21.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %377, i32 0, i32 46
  %378 = ptrtoint ptr %set_bbreg.i21.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %set_bbreg.i21.i, align 4
  tail call void %379(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %380 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %priv, align 8
  %cfg.i23.i = getelementptr inbounds %struct.rtl_priv, ptr %381, i32 0, i32 32
  %382 = ptrtoint ptr %cfg.i23.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %cfg.i23.i, align 8
  %ops.i24.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %383, i32 0, i32 4
  %384 = ptrtoint ptr %ops.i24.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %ops.i24.i, align 4
  %set_bbreg.i25.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %385, i32 0, i32 46
  %386 = ptrtoint ptr %set_bbreg.i25.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %set_bbreg.i25.i, align 4
  tail call void %387(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %388 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %388(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %389 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %389(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %390 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %390(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %391 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %391(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %392 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %392(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %393 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %393(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %394 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %394(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %395 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %395(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %396 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %396(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %397 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %397(i32 noundef 214748000) #7
  %398 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %priv, align 8
  %cfg.i27.i = getelementptr inbounds %struct.rtl_priv, ptr %399, i32 0, i32 32
  %400 = ptrtoint ptr %cfg.i27.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %cfg.i27.i, align 8
  %ops.i28.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %401, i32 0, i32 4
  %402 = ptrtoint ptr %ops.i28.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %ops.i28.i, align 4
  %get_bbreg.i.i367 = getelementptr inbounds %struct.rtl_hal_ops, ptr %403, i32 0, i32 45
  %404 = ptrtoint ptr %get_bbreg.i.i367 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %get_bbreg.i.i367, align 4
  %call.i.i368 = tail call i32 %405(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %406 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %priv, align 8
  %cfg.i30.i = getelementptr inbounds %struct.rtl_priv, ptr %407, i32 0, i32 32
  %408 = ptrtoint ptr %cfg.i30.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %cfg.i30.i, align 8
  %ops.i31.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %409, i32 0, i32 4
  %410 = ptrtoint ptr %ops.i31.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ops.i31.i, align 4
  %get_bbreg.i32.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %411, i32 0, i32 45
  %412 = ptrtoint ptr %get_bbreg.i32.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %get_bbreg.i32.i, align 4
  %call.i33.i = tail call i32 %413(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %414 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %priv, align 8
  %cfg.i35.i = getelementptr inbounds %struct.rtl_priv, ptr %415, i32 0, i32 32
  %416 = ptrtoint ptr %cfg.i35.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %cfg.i35.i, align 8
  %ops.i36.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %417, i32 0, i32 4
  %418 = ptrtoint ptr %ops.i36.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %ops.i36.i, align 4
  %get_bbreg.i37.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %419, i32 0, i32 45
  %420 = ptrtoint ptr %get_bbreg.i37.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %get_bbreg.i37.i, align 4
  %call.i38.i = tail call i32 %421(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %422 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %priv, align 8
  %cfg.i40.i = getelementptr inbounds %struct.rtl_priv, ptr %423, i32 0, i32 32
  %424 = ptrtoint ptr %cfg.i40.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %cfg.i40.i, align 8
  %ops.i41.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %425, i32 0, i32 4
  %426 = ptrtoint ptr %ops.i41.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %ops.i41.i, align 4
  %get_bbreg.i42.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %427, i32 0, i32 45
  %428 = ptrtoint ptr %get_bbreg.i42.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %get_bbreg.i42.i, align 4
  %call.i43.i = tail call i32 %429(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and.i = and i32 %call.i.i368, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  %430 = and i32 %call.i33.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %430)
  %cmp.not.i = icmp ne i32 %430, 21102592
  %or.cond.i = select i1 %tobool4.not.i, i1 %cmp.not.i, i1 false
  %431 = and i32 %call.i38.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %431)
  %cmp9.not.i = icmp ne i32 %431, 4325376
  %or.cond1.i = select i1 %or.cond.i, i1 %cmp9.not.i, i1 false
  br i1 %or.cond1.i, label %if.then36, label %for.cond

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.66) #7
  %432 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %priv, align 8
  %cfg.i370 = getelementptr inbounds %struct.rtl_priv, ptr %433, i32 0, i32 32
  %434 = ptrtoint ptr %cfg.i370 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %cfg.i370, align 8
  %ops.i371 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %435, i32 0, i32 4
  %436 = ptrtoint ptr %ops.i371 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %ops.i371, align 4
  %get_bbreg.i372 = getelementptr inbounds %struct.rtl_hal_ops, ptr %437, i32 0, i32 45
  %438 = ptrtoint ptr %get_bbreg.i372 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %get_bbreg.i372, align 4
  %call.i373 = tail call i32 %439(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %and = lshr i32 %call.i373, 16
  %shr = and i32 %and, 1023
  %arrayidx = getelementptr [8 x i32], ptr %result, i32 %conv
  %440 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %shr, ptr %arrayidx, align 4
  %441 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %priv, align 8
  %cfg.i375 = getelementptr inbounds %struct.rtl_priv, ptr %442, i32 0, i32 32
  %443 = ptrtoint ptr %cfg.i375 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cfg.i375, align 8
  %ops.i376 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %444, i32 0, i32 4
  %445 = ptrtoint ptr %ops.i376 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %ops.i376, align 4
  %get_bbreg.i377 = getelementptr inbounds %struct.rtl_hal_ops, ptr %446, i32 0, i32 45
  %447 = ptrtoint ptr %get_bbreg.i377 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %get_bbreg.i377, align 4
  %call.i378 = tail call i32 %448(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and40 = lshr i32 %call.i378, 16
  %shr41 = and i32 %and40, 1023
  %arrayidx44 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 1
  %449 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %shr41, ptr %arrayidx44, align 4
  br label %for.body49.preheader

for.body49.preheader:                             ; preds = %if.then36, %for.cond.for.body49.preheader_crit_edge
  br label %for.body49

for.body49:                                       ; preds = %for.body49.backedge, %for.body49.preheader
  %cmp47 = phi i1 [ true, %for.body49.preheader ], [ false, %for.body49.backedge ]
  %450 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %priv, align 8
  %cfg.i.i380 = getelementptr inbounds %struct.rtl_priv, ptr %451, i32 0, i32 32
  %452 = ptrtoint ptr %cfg.i.i380 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %cfg.i.i380, align 8
  %ops.i.i381 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %453, i32 0, i32 4
  %454 = ptrtoint ptr %ops.i.i381 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %ops.i.i381, align 4
  %set_bbreg.i.i382 = getelementptr inbounds %struct.rtl_hal_ops, ptr %455, i32 0, i32 46
  %456 = ptrtoint ptr %set_bbreg.i.i382 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %set_bbreg.i.i382, align 4
  tail call void %457(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %458 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %priv, align 8
  %cfg.i3.i383 = getelementptr inbounds %struct.rtl_priv, ptr %459, i32 0, i32 32
  %460 = ptrtoint ptr %cfg.i3.i383 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %cfg.i3.i383, align 8
  %ops.i4.i384 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %461, i32 0, i32 4
  %462 = ptrtoint ptr %ops.i4.i384 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ops.i4.i384, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %463, i32 0, i32 48
  %464 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %465(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  %466 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %priv, align 8
  %cfg.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %467, i32 0, i32 32
  %468 = ptrtoint ptr %cfg.i6.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %cfg.i6.i, align 8
  %ops.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %469, i32 0, i32 4
  %470 = ptrtoint ptr %ops.i7.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ops.i7.i, align 4
  %set_rfreg.i8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %471, i32 0, i32 48
  %472 = ptrtoint ptr %set_rfreg.i8.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %set_rfreg.i8.i, align 4
  tail call void %473(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %474 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %priv, align 8
  %cfg.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %475, i32 0, i32 32
  %476 = ptrtoint ptr %cfg.i10.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %cfg.i10.i, align 8
  %ops.i11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %477, i32 0, i32 4
  %478 = ptrtoint ptr %ops.i11.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %ops.i11.i, align 4
  %set_rfreg.i12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %479, i32 0, i32 48
  %480 = ptrtoint ptr %set_rfreg.i12.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %set_rfreg.i12.i, align 4
  tail call void %481(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #7
  %482 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %priv, align 8
  %cfg.i14.i = getelementptr inbounds %struct.rtl_priv, ptr %483, i32 0, i32 32
  %484 = ptrtoint ptr %cfg.i14.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %cfg.i14.i, align 8
  %ops.i15.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %485, i32 0, i32 4
  %486 = ptrtoint ptr %ops.i15.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %ops.i15.i, align 4
  %set_rfreg.i16.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %487, i32 0, i32 48
  %488 = ptrtoint ptr %set_rfreg.i16.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %set_rfreg.i16.i, align 4
  tail call void %489(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 987515) #7
  %490 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %priv, align 8
  %cfg.i18.i = getelementptr inbounds %struct.rtl_priv, ptr %491, i32 0, i32 32
  %492 = ptrtoint ptr %cfg.i18.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %cfg.i18.i, align 8
  %ops.i19.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %493, i32 0, i32 4
  %494 = ptrtoint ptr %ops.i19.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %ops.i19.i, align 4
  %set_bbreg.i20.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %495, i32 0, i32 46
  %496 = ptrtoint ptr %set_bbreg.i20.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %set_bbreg.i20.i, align 4
  tail call void %497(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %498 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %priv, align 8
  %cfg.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %499, i32 0, i32 32
  %500 = ptrtoint ptr %cfg.i22.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %cfg.i22.i, align 8
  %ops.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %501, i32 0, i32 4
  %502 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %ops.i23.i, align 4
  %set_bbreg.i24.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %503, i32 0, i32 46
  %504 = ptrtoint ptr %set_bbreg.i24.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %set_bbreg.i24.i, align 4
  tail call void %505(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %506 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %priv, align 8
  %cfg.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %507, i32 0, i32 32
  %508 = ptrtoint ptr %cfg.i26.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %cfg.i26.i, align 8
  %ops.i27.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %509, i32 0, i32 4
  %510 = ptrtoint ptr %ops.i27.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %ops.i27.i, align 4
  %set_bbreg.i28.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %511, i32 0, i32 46
  %512 = ptrtoint ptr %set_bbreg.i28.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %set_bbreg.i28.i, align 4
  tail call void %513(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef -2130688000) #7
  %514 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %priv, align 8
  %cfg.i30.i385 = getelementptr inbounds %struct.rtl_priv, ptr %515, i32 0, i32 32
  %516 = ptrtoint ptr %cfg.i30.i385 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %cfg.i30.i385, align 8
  %ops.i31.i386 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %517, i32 0, i32 4
  %518 = ptrtoint ptr %ops.i31.i386 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %ops.i31.i386, align 4
  %set_bbreg.i32.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %519, i32 0, i32 46
  %520 = ptrtoint ptr %set_bbreg.i32.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %set_bbreg.i32.i, align 4
  tail call void %521(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 268471324) #7
  %522 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %priv, align 8
  %cfg.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %523, i32 0, i32 32
  %524 = ptrtoint ptr %cfg.i34.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %cfg.i34.i, align 8
  %ops.i35.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %525, i32 0, i32 4
  %526 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %ops.i35.i, align 4
  %set_bbreg.i36.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %527, i32 0, i32 46
  %528 = ptrtoint ptr %set_bbreg.i36.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %set_bbreg.i36.i, align 4
  tail call void %529(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 805342236) #7
  %530 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %priv, align 8
  %cfg.i38.i = getelementptr inbounds %struct.rtl_priv, ptr %531, i32 0, i32 32
  %532 = ptrtoint ptr %cfg.i38.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %cfg.i38.i, align 8
  %ops.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %533, i32 0, i32 4
  %534 = ptrtoint ptr %ops.i39.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %ops.i39.i, align 4
  %set_bbreg.i40.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %535, i32 0, i32 46
  %536 = ptrtoint ptr %set_bbreg.i40.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %set_bbreg.i40.i, align 4
  tail call void %537(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112485372) #7
  %538 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %priv, align 8
  %cfg.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %539, i32 0, i32 32
  %540 = ptrtoint ptr %cfg.i42.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %cfg.i42.i, align 8
  %ops.i43.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %541, i32 0, i32 4
  %542 = ptrtoint ptr %ops.i43.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %ops.i43.i, align 4
  %set_bbreg.i44.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %543, i32 0, i32 46
  %544 = ptrtoint ptr %set_bbreg.i44.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %set_bbreg.i44.i, align 4
  tail call void %545(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672530432) #7
  %546 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %priv, align 8
  %cfg.i46.i = getelementptr inbounds %struct.rtl_priv, ptr %547, i32 0, i32 32
  %548 = ptrtoint ptr %cfg.i46.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %cfg.i46.i, align 8
  %ops.i47.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %549, i32 0, i32 4
  %550 = ptrtoint ptr %ops.i47.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %ops.i47.i, align 4
  %set_bbreg.i48.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %551, i32 0, i32 46
  %552 = ptrtoint ptr %set_bbreg.i48.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %set_bbreg.i48.i, align 4
  tail call void %553(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  %554 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %priv, align 8
  %cfg.i50.i = getelementptr inbounds %struct.rtl_priv, ptr %555, i32 0, i32 32
  %556 = ptrtoint ptr %cfg.i50.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %cfg.i50.i, align 8
  %ops.i51.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %557, i32 0, i32 4
  %558 = ptrtoint ptr %ops.i51.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %ops.i51.i, align 4
  %set_bbreg.i52.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %559, i32 0, i32 46
  %560 = ptrtoint ptr %set_bbreg.i52.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %set_bbreg.i52.i, align 4
  tail call void %561(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %562 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %priv, align 8
  %cfg.i54.i = getelementptr inbounds %struct.rtl_priv, ptr %563, i32 0, i32 32
  %564 = ptrtoint ptr %cfg.i54.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %cfg.i54.i, align 8
  %ops.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %565, i32 0, i32 4
  %566 = ptrtoint ptr %ops.i55.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %ops.i55.i, align 4
  %set_bbreg.i56.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %567, i32 0, i32 46
  %568 = ptrtoint ptr %set_bbreg.i56.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %set_bbreg.i56.i, align 4
  tail call void %569(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %570 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %570(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %571 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %571(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %572 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %572(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %573 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %573(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %574 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %574(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %575 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %575(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %576 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %576(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %577 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %577(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %578 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %578(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %579 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %579(i32 noundef 214748000) #7
  %580 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %priv, align 8
  %cfg.i58.i = getelementptr inbounds %struct.rtl_priv, ptr %581, i32 0, i32 32
  %582 = ptrtoint ptr %cfg.i58.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %cfg.i58.i, align 8
  %ops.i59.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %583, i32 0, i32 4
  %584 = ptrtoint ptr %ops.i59.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %ops.i59.i, align 4
  %get_bbreg.i.i387 = getelementptr inbounds %struct.rtl_hal_ops, ptr %585, i32 0, i32 45
  %586 = ptrtoint ptr %get_bbreg.i.i387 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %get_bbreg.i.i387, align 4
  %call.i.i388 = tail call i32 %587(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %588 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %priv, align 8
  %cfg.i61.i = getelementptr inbounds %struct.rtl_priv, ptr %589, i32 0, i32 32
  %590 = ptrtoint ptr %cfg.i61.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %cfg.i61.i, align 8
  %ops.i62.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %591, i32 0, i32 4
  %592 = ptrtoint ptr %ops.i62.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %ops.i62.i, align 4
  %get_bbreg.i63.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %593, i32 0, i32 45
  %594 = ptrtoint ptr %get_bbreg.i63.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %get_bbreg.i63.i, align 4
  %call.i64.i = tail call i32 %595(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %596 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %priv, align 8
  %cfg.i66.i = getelementptr inbounds %struct.rtl_priv, ptr %597, i32 0, i32 32
  %598 = ptrtoint ptr %cfg.i66.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %cfg.i66.i, align 8
  %ops.i67.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %599, i32 0, i32 4
  %600 = ptrtoint ptr %ops.i67.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %ops.i67.i, align 4
  %get_bbreg.i68.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %601, i32 0, i32 45
  %602 = ptrtoint ptr %get_bbreg.i68.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %get_bbreg.i68.i, align 4
  %call.i69.i = tail call i32 %603(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and.i389 = and i32 %call.i.i388, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i389)
  %tobool3.not.i = icmp eq i32 %and.i389, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i, label %for.body49.if.else_crit_edge

for.body49.if.else_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i:                                  ; preds = %for.body49
  %and4.i = and i32 %call.i64.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i)
  %cmp.not.i390 = icmp eq i32 %and4.i, 21102592
  br i1 %cmp.not.i390, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %and6.i = lshr i32 %call.i69.i, 16
  %shr7.i = and i32 %and6.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i)
  %cmp8.not.i = icmp eq i32 %shr7.i, 66
  br i1 %cmp8.not.i, label %land.lhs.true5.i.if.else_crit_edge, label %if.then.i

land.lhs.true5.i.if.else_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i:                                        ; preds = %land.lhs.true5.i
  %or11.i = or i32 %and4.i, %shr7.i
  %or14.i = or i32 %or11.i, -2147451904
  %604 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %priv, align 8
  %cfg.i71.i = getelementptr inbounds %struct.rtl_priv, ptr %605, i32 0, i32 32
  %606 = ptrtoint ptr %cfg.i71.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %cfg.i71.i, align 8
  %ops.i72.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %607, i32 0, i32 4
  %608 = ptrtoint ptr %ops.i72.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %ops.i72.i, align 4
  %set_bbreg.i73.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %609, i32 0, i32 46
  %610 = ptrtoint ptr %set_bbreg.i73.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %set_bbreg.i73.i, align 4
  tail call void %611(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef %or14.i) #7
  %612 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %priv, align 8
  %cfg.i75.i = getelementptr inbounds %struct.rtl_priv, ptr %613, i32 0, i32 32
  %614 = ptrtoint ptr %cfg.i75.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %cfg.i75.i, align 8
  %ops.i76.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %615, i32 0, i32 4
  %616 = ptrtoint ptr %ops.i76.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %ops.i76.i, align 4
  %set_bbreg.i77.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %617, i32 0, i32 46
  %618 = ptrtoint ptr %set_bbreg.i77.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %set_bbreg.i77.i, align 4
  tail call void %619(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %620 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %priv, align 8
  %cfg.i79.i = getelementptr inbounds %struct.rtl_priv, ptr %621, i32 0, i32 32
  %622 = ptrtoint ptr %cfg.i79.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %cfg.i79.i, align 8
  %ops.i80.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %623, i32 0, i32 4
  %624 = ptrtoint ptr %ops.i80.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %ops.i80.i, align 4
  %set_rfreg.i81.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %625, i32 0, i32 48
  %626 = ptrtoint ptr %set_rfreg.i81.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %set_rfreg.i81.i, align 4
  tail call void %627(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  %628 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %priv, align 8
  %cfg.i83.i = getelementptr inbounds %struct.rtl_priv, ptr %629, i32 0, i32 32
  %630 = ptrtoint ptr %cfg.i83.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %cfg.i83.i, align 8
  %ops.i84.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %631, i32 0, i32 4
  %632 = ptrtoint ptr %ops.i84.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %ops.i84.i, align 4
  %set_rfreg.i85.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %633, i32 0, i32 48
  %634 = ptrtoint ptr %set_rfreg.i85.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %set_rfreg.i85.i, align 4
  tail call void %635(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %636 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %priv, align 8
  %cfg.i87.i = getelementptr inbounds %struct.rtl_priv, ptr %637, i32 0, i32 32
  %638 = ptrtoint ptr %cfg.i87.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %cfg.i87.i, align 8
  %ops.i88.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %639, i32 0, i32 4
  %640 = ptrtoint ptr %ops.i88.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %ops.i88.i, align 4
  %set_rfreg.i89.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %641, i32 0, i32 48
  %642 = ptrtoint ptr %set_rfreg.i89.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %set_rfreg.i89.i, align 4
  tail call void %643(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #7
  %644 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %priv, align 8
  %cfg.i91.i = getelementptr inbounds %struct.rtl_priv, ptr %645, i32 0, i32 32
  %646 = ptrtoint ptr %cfg.i91.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %cfg.i91.i, align 8
  %ops.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %647, i32 0, i32 4
  %648 = ptrtoint ptr %ops.i92.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %ops.i92.i, align 4
  %set_rfreg.i93.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %649, i32 0, i32 48
  %650 = ptrtoint ptr %set_rfreg.i93.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %set_rfreg.i93.i, align 4
  tail call void %651(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015802) #7
  %652 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %priv, align 8
  %cfg.i95.i = getelementptr inbounds %struct.rtl_priv, ptr %653, i32 0, i32 32
  %654 = ptrtoint ptr %cfg.i95.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %cfg.i95.i, align 8
  %ops.i96.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %655, i32 0, i32 4
  %656 = ptrtoint ptr %ops.i96.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %ops.i96.i, align 4
  %set_bbreg.i97.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %657, i32 0, i32 46
  %658 = ptrtoint ptr %set_bbreg.i97.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %set_bbreg.i97.i, align 4
  tail call void %659(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %660 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %priv, align 8
  %cfg.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %661, i32 0, i32 32
  %662 = ptrtoint ptr %cfg.i99.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %cfg.i99.i, align 8
  %ops.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %663, i32 0, i32 4
  %664 = ptrtoint ptr %ops.i100.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %ops.i100.i, align 4
  %set_bbreg.i101.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %665, i32 0, i32 46
  %666 = ptrtoint ptr %set_bbreg.i101.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %set_bbreg.i101.i, align 4
  tail call void %667(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %668 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %priv, align 8
  %cfg.i103.i = getelementptr inbounds %struct.rtl_priv, ptr %669, i32 0, i32 32
  %670 = ptrtoint ptr %cfg.i103.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %cfg.i103.i, align 8
  %ops.i104.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %671, i32 0, i32 4
  %672 = ptrtoint ptr %ops.i104.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %ops.i104.i, align 4
  %set_bbreg.i105.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %673, i32 0, i32 46
  %674 = ptrtoint ptr %set_bbreg.i105.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %set_bbreg.i105.i, align 4
  tail call void %675(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 805342236) #7
  %676 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %priv, align 8
  %cfg.i107.i = getelementptr inbounds %struct.rtl_priv, ptr %677, i32 0, i32 32
  %678 = ptrtoint ptr %cfg.i107.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %cfg.i107.i, align 8
  %ops.i108.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %679, i32 0, i32 4
  %680 = ptrtoint ptr %ops.i108.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %ops.i108.i, align 4
  %set_bbreg.i109.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %681, i32 0, i32 46
  %682 = ptrtoint ptr %set_bbreg.i109.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %set_bbreg.i109.i, align 4
  tail call void %683(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 268471324) #7
  %684 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %priv, align 8
  %cfg.i111.i = getelementptr inbounds %struct.rtl_priv, ptr %685, i32 0, i32 32
  %686 = ptrtoint ptr %cfg.i111.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %cfg.i111.i, align 8
  %ops.i112.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %687, i32 0, i32 4
  %688 = ptrtoint ptr %ops.i112.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %ops.i112.i, align 4
  %set_bbreg.i113.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %689, i32 0, i32 46
  %690 = ptrtoint ptr %set_bbreg.i113.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %set_bbreg.i113.i, align 4
  tail call void %691(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112484347) #7
  %692 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %priv, align 8
  %cfg.i115.i = getelementptr inbounds %struct.rtl_priv, ptr %693, i32 0, i32 32
  %694 = ptrtoint ptr %cfg.i115.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %cfg.i115.i, align 8
  %ops.i116.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %695, i32 0, i32 4
  %696 = ptrtoint ptr %ops.i116.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %ops.i116.i, align 4
  %set_bbreg.i117.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %697, i32 0, i32 46
  %698 = ptrtoint ptr %set_bbreg.i117.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %set_bbreg.i117.i, align 4
  tail call void %699(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672533509) #7
  %700 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %priv, align 8
  %cfg.i119.i = getelementptr inbounds %struct.rtl_priv, ptr %701, i32 0, i32 32
  %702 = ptrtoint ptr %cfg.i119.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %cfg.i119.i, align 8
  %ops.i120.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %703, i32 0, i32 4
  %704 = ptrtoint ptr %ops.i120.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %ops.i120.i, align 4
  %set_bbreg.i121.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %705, i32 0, i32 46
  %706 = ptrtoint ptr %set_bbreg.i121.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %set_bbreg.i121.i, align 4
  tail call void %707(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  %708 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %priv, align 8
  %cfg.i123.i = getelementptr inbounds %struct.rtl_priv, ptr %709, i32 0, i32 32
  %710 = ptrtoint ptr %cfg.i123.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %cfg.i123.i, align 8
  %ops.i124.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %711, i32 0, i32 4
  %712 = ptrtoint ptr %ops.i124.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %ops.i124.i, align 4
  %set_bbreg.i125.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %713, i32 0, i32 46
  %714 = ptrtoint ptr %set_bbreg.i125.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %set_bbreg.i125.i, align 4
  tail call void %715(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %716 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %priv, align 8
  %cfg.i127.i = getelementptr inbounds %struct.rtl_priv, ptr %717, i32 0, i32 32
  %718 = ptrtoint ptr %cfg.i127.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %cfg.i127.i, align 8
  %ops.i128.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %719, i32 0, i32 4
  %720 = ptrtoint ptr %ops.i128.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %ops.i128.i, align 4
  %set_bbreg.i129.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %721, i32 0, i32 46
  %722 = ptrtoint ptr %set_bbreg.i129.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %set_bbreg.i129.i, align 4
  tail call void %723(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %724 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %724(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %725 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %725(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %726 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %726(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %727 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %727(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %728 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %728(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %729 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %729(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %730 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %730(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %731 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %731(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %732 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %732(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %733 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %733(i32 noundef 214748000) #7
  %734 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %priv, align 8
  %cfg.i131.i = getelementptr inbounds %struct.rtl_priv, ptr %735, i32 0, i32 32
  %736 = ptrtoint ptr %cfg.i131.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %cfg.i131.i, align 8
  %ops.i132.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %737, i32 0, i32 4
  %738 = ptrtoint ptr %ops.i132.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %ops.i132.i, align 4
  %get_bbreg.i133.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %739, i32 0, i32 45
  %740 = ptrtoint ptr %get_bbreg.i133.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %get_bbreg.i133.i, align 4
  %call.i134.i = tail call i32 %741(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %742 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %priv, align 8
  %cfg.i136.i = getelementptr inbounds %struct.rtl_priv, ptr %743, i32 0, i32 32
  %744 = ptrtoint ptr %cfg.i136.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %cfg.i136.i, align 8
  %ops.i137.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %745, i32 0, i32 4
  %746 = ptrtoint ptr %ops.i137.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %ops.i137.i, align 4
  %get_bbreg.i138.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %747, i32 0, i32 45
  %748 = ptrtoint ptr %get_bbreg.i138.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %get_bbreg.i138.i, align 4
  %call.i139.i = tail call i32 %749(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %750 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %priv, align 8
  %cfg.i141.i = getelementptr inbounds %struct.rtl_priv, ptr %751, i32 0, i32 32
  %752 = ptrtoint ptr %cfg.i141.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %cfg.i141.i, align 8
  %ops.i142.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %753, i32 0, i32 4
  %754 = ptrtoint ptr %ops.i142.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %ops.i142.i, align 4
  %get_bbreg.i143.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %755, i32 0, i32 45
  %756 = ptrtoint ptr %get_bbreg.i143.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %get_bbreg.i143.i, align 4
  %call.i144.i = tail call i32 %757(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %758 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %priv, align 8
  %cfg.i146.i = getelementptr inbounds %struct.rtl_priv, ptr %759, i32 0, i32 32
  %760 = ptrtoint ptr %cfg.i146.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %cfg.i146.i, align 8
  %ops.i147.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %761, i32 0, i32 4
  %762 = ptrtoint ptr %ops.i147.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %ops.i147.i, align 4
  %get_bbreg.i148.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %763, i32 0, i32 45
  %764 = ptrtoint ptr %get_bbreg.i148.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %get_bbreg.i148.i, align 4
  %call.i149.i = tail call i32 %765(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and25.i = and i32 %call.i134.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp ne i32 %and25.i, 0
  %766 = and i32 %call.i149.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %766)
  %cmp30.not.i = icmp eq i32 %766, 20054016
  %or.cond.i391 = select i1 %tobool26.not.i, i1 true, i1 %cmp30.not.i
  %767 = and i32 %call.i134.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %767)
  %cmp35.not.i = icmp eq i32 %767, 3538944
  %or.cond1.i392 = select i1 %or.cond.i391, i1 true, i1 %cmp35.not.i
  br i1 %or.cond1.i392, label %if.else.thread, label %for.end71.thread

for.end71.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.67) #7
  %768 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %priv, align 8
  %cfg.i395 = getelementptr inbounds %struct.rtl_priv, ptr %769, i32 0, i32 32
  %770 = ptrtoint ptr %cfg.i395 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %cfg.i395, align 8
  %ops.i396 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %771, i32 0, i32 4
  %772 = ptrtoint ptr %ops.i396 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %ops.i396, align 4
  %get_bbreg.i397 = getelementptr inbounds %struct.rtl_hal_ops, ptr %773, i32 0, i32 45
  %774 = ptrtoint ptr %get_bbreg.i397 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %get_bbreg.i397, align 4
  %call.i398 = tail call i32 %775(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and57 = lshr i32 %call.i398, 16
  %shr58 = and i32 %and57, 1023
  %arrayidx61 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 2
  %776 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %776)
  store i32 %shr58, ptr %arrayidx61, align 4
  %777 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %priv, align 8
  %cfg.i400 = getelementptr inbounds %struct.rtl_priv, ptr %778, i32 0, i32 32
  %779 = ptrtoint ptr %cfg.i400 to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %cfg.i400, align 8
  %ops.i401 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %780, i32 0, i32 4
  %781 = ptrtoint ptr %ops.i401 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %ops.i401, align 4
  %get_bbreg.i402 = getelementptr inbounds %struct.rtl_hal_ops, ptr %782, i32 0, i32 45
  %783 = ptrtoint ptr %get_bbreg.i402 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %get_bbreg.i402, align 4
  %call.i403 = tail call i32 %784(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %and63 = lshr i32 %call.i403, 16
  %shr64 = and i32 %and63, 1023
  %arrayidx67 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 3
  %785 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %shr64, ptr %arrayidx67, align 4
  br label %if.end76

if.else:                                          ; preds = %land.lhs.true5.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %for.body49.if.else_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.68) #7
  br i1 %cmp47, label %if.else.for.body49.backedge_crit_edge, label %if.then75

if.else.for.body49.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.backedge

for.body49.backedge:                              ; preds = %if.else.thread.for.body49.backedge_crit_edge, %if.else.for.body49.backedge_crit_edge
  br label %for.body49

if.else.thread:                                   ; preds = %if.then.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.68) #7
  br i1 %cmp47, label %if.else.thread.for.body49.backedge_crit_edge, label %if.else.thread.if.end76_crit_edge

if.else.thread.if.end76_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.else.thread.for.body49.backedge_crit_edge:     ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.backedge

if.then75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.69) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.else.thread.if.end76_crit_edge, %for.end71.thread
  br i1 %is2t, label %if.then78, label %if.end76.if.end138_crit_edge

if.end76.if.end138_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then78:                                        ; preds = %if.end76
  %786 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %priv, align 8
  %cfg.i.i405 = getelementptr inbounds %struct.rtl_priv, ptr %787, i32 0, i32 32
  %788 = ptrtoint ptr %cfg.i.i405 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %cfg.i.i405, align 8
  %ops.i.i406 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %789, i32 0, i32 4
  %790 = ptrtoint ptr %ops.i.i406 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %ops.i.i406, align 4
  %set_bbreg.i.i407 = getelementptr inbounds %struct.rtl_hal_ops, ptr %791, i32 0, i32 46
  %792 = ptrtoint ptr %set_bbreg.i.i407 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %set_bbreg.i.i407, align 4
  tail call void %793(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %794 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %priv, align 8
  %cfg.i4.i408 = getelementptr inbounds %struct.rtl_priv, ptr %795, i32 0, i32 32
  %796 = ptrtoint ptr %cfg.i4.i408 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %cfg.i4.i408, align 8
  %ops.i5.i409 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %797, i32 0, i32 4
  %798 = ptrtoint ptr %ops.i5.i409 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %ops.i5.i409, align 4
  %set_bbreg.i6.i410 = getelementptr inbounds %struct.rtl_hal_ops, ptr %799, i32 0, i32 46
  %800 = ptrtoint ptr %set_bbreg.i6.i410 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %set_bbreg.i6.i410, align 4
  tail call void %801(ptr noundef %hw, i32 noundef 2112, i32 noundef -1, i32 noundef 65536) #7
  %802 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %priv, align 8
  %cfg.i8.i = getelementptr inbounds %struct.rtl_priv, ptr %803, i32 0, i32 32
  %804 = ptrtoint ptr %cfg.i8.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %cfg.i8.i, align 8
  %ops.i9.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %805, i32 0, i32 4
  %806 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %ops.i9.i, align 4
  %set_bbreg.i10.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %807, i32 0, i32 46
  %808 = ptrtoint ptr %set_bbreg.i10.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %set_bbreg.i10.i, align 4
  tail call void %809(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %810 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %priv, align 8
  %cfg.i13.i412 = getelementptr inbounds %struct.rtl_priv, ptr %811, i32 0, i32 32
  %812 = ptrtoint ptr %cfg.i13.i412 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %cfg.i13.i412, align 8
  %ops.i14.i413 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %813, i32 0, i32 4
  %814 = ptrtoint ptr %ops.i14.i413 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %ops.i14.i413, align 4
  %set_bbreg.i15.i414 = getelementptr inbounds %struct.rtl_hal_ops, ptr %815, i32 0, i32 46
  %816 = ptrtoint ptr %set_bbreg.i15.i414 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %set_bbreg.i15.i414, align 4
  tail call void %817(ptr noundef %hw, i32 noundef 2140, i32 noundef -1, i32 noundef 186328484) #7
  br label %for.body.i423

for.body.i423:                                    ; preds = %for.body.i423.for.body.i423_crit_edge, %if.then78
  %i.020.i416 = phi i32 [ 1, %if.then78 ], [ %inc.i421, %for.body.i423.for.body.i423_crit_edge ]
  %arrayidx4.i417 = getelementptr i32, ptr @__const._rtl88e_phy_iq_calibrate.adda_reg, i32 %i.020.i416
  %818 = ptrtoint ptr %arrayidx4.i417 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %arrayidx4.i417, align 4
  %820 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %priv, align 8
  %cfg.i17.i418 = getelementptr inbounds %struct.rtl_priv, ptr %821, i32 0, i32 32
  %822 = ptrtoint ptr %cfg.i17.i418 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %cfg.i17.i418, align 8
  %ops.i18.i419 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %823, i32 0, i32 4
  %824 = ptrtoint ptr %ops.i18.i419 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %ops.i18.i419, align 4
  %set_bbreg.i19.i420 = getelementptr inbounds %struct.rtl_hal_ops, ptr %825, i32 0, i32 46
  %826 = ptrtoint ptr %set_bbreg.i19.i420 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %set_bbreg.i19.i420, align 4
  tail call void %827(ptr noundef %hw, i32 noundef %819, i32 noundef -1, i32 noundef 186328484) #7
  %inc.i421 = add nuw nsw i32 %i.020.i416, 1
  %exitcond.not.i422 = icmp eq i32 %inc.i421, 16
  br i1 %exitcond.not.i422, label %for.cond81.preheader, label %for.body.i423.for.body.i423_crit_edge

for.body.i423.for.body.i423_crit_edge:            ; preds = %for.body.i423
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i423

for.cond81.preheader:                             ; preds = %for.body.i423
  %arrayidx126 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 4
  %arrayidx134 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 5
  br label %for.body84

for.body84:                                       ; preds = %if.end128.for.body84_crit_edge, %for.cond81.preheader
  %cmp115 = phi i1 [ false, %for.cond81.preheader ], [ true, %if.end128.for.body84_crit_edge ]
  %cmp82 = phi i1 [ true, %for.cond81.preheader ], [ false, %if.end128.for.body84_crit_edge ]
  %828 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %priv, align 8
  %cfg.i.i426 = getelementptr inbounds %struct.rtl_priv, ptr %829, i32 0, i32 32
  %830 = ptrtoint ptr %cfg.i.i426 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %cfg.i.i426, align 8
  %ops.i.i427 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %831, i32 0, i32 4
  %832 = ptrtoint ptr %ops.i.i427 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %ops.i.i427, align 4
  %set_bbreg.i.i428 = getelementptr inbounds %struct.rtl_hal_ops, ptr %833, i32 0, i32 46
  %834 = ptrtoint ptr %set_bbreg.i.i428 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %set_bbreg.i.i428, align 4
  tail call void %835(ptr noundef %hw, i32 noundef 3680, i32 noundef -1, i32 noundef 2) #7
  %836 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %priv, align 8
  %cfg.i48.i = getelementptr inbounds %struct.rtl_priv, ptr %837, i32 0, i32 32
  %838 = ptrtoint ptr %cfg.i48.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %cfg.i48.i, align 8
  %ops.i49.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %839, i32 0, i32 4
  %840 = ptrtoint ptr %ops.i49.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %ops.i49.i, align 4
  %set_bbreg.i50.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %841, i32 0, i32 46
  %842 = ptrtoint ptr %set_bbreg.i50.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %set_bbreg.i50.i, align 4
  tail call void %843(ptr noundef %hw, i32 noundef 3680, i32 noundef -1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %844 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %844(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %845 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %845(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %846 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %846(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %847 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %847(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %848 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %848(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %849 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %849(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %850 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %850(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %851 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %851(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %852 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %852(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %853 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %853(i32 noundef 214748000) #7
  %854 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %priv, align 8
  %cfg.i52.i = getelementptr inbounds %struct.rtl_priv, ptr %855, i32 0, i32 32
  %856 = ptrtoint ptr %cfg.i52.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %cfg.i52.i, align 8
  %ops.i53.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %857, i32 0, i32 4
  %858 = ptrtoint ptr %ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %ops.i53.i, align 4
  %get_bbreg.i.i429 = getelementptr inbounds %struct.rtl_hal_ops, ptr %859, i32 0, i32 45
  %860 = ptrtoint ptr %get_bbreg.i.i429 to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %get_bbreg.i.i429, align 4
  %call.i.i430 = tail call i32 %861(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %862 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %priv, align 8
  %cfg.i55.i = getelementptr inbounds %struct.rtl_priv, ptr %863, i32 0, i32 32
  %864 = ptrtoint ptr %cfg.i55.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %cfg.i55.i, align 8
  %ops.i56.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %865, i32 0, i32 4
  %866 = ptrtoint ptr %ops.i56.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %ops.i56.i, align 4
  %get_bbreg.i57.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %867, i32 0, i32 45
  %868 = ptrtoint ptr %get_bbreg.i57.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %get_bbreg.i57.i, align 4
  %call.i58.i = tail call i32 %869(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #7
  %870 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load ptr, ptr %priv, align 8
  %cfg.i60.i = getelementptr inbounds %struct.rtl_priv, ptr %871, i32 0, i32 32
  %872 = ptrtoint ptr %cfg.i60.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %cfg.i60.i, align 8
  %ops.i61.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %873, i32 0, i32 4
  %874 = ptrtoint ptr %ops.i61.i to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %ops.i61.i, align 4
  %get_bbreg.i62.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %875, i32 0, i32 45
  %876 = ptrtoint ptr %get_bbreg.i62.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %get_bbreg.i62.i, align 4
  %call.i63.i = tail call i32 %877(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #7
  %878 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load ptr, ptr %priv, align 8
  %cfg.i65.i = getelementptr inbounds %struct.rtl_priv, ptr %879, i32 0, i32 32
  %880 = ptrtoint ptr %cfg.i65.i to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %cfg.i65.i, align 8
  %ops.i66.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %881, i32 0, i32 4
  %882 = ptrtoint ptr %ops.i66.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %ops.i66.i, align 4
  %get_bbreg.i67.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %883, i32 0, i32 45
  %884 = ptrtoint ptr %get_bbreg.i67.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %get_bbreg.i67.i, align 4
  %call.i68.i = tail call i32 %885(ptr noundef %hw, i32 noundef 3780, i32 noundef -1) #7
  %886 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %priv, align 8
  %cfg.i70.i = getelementptr inbounds %struct.rtl_priv, ptr %887, i32 0, i32 32
  %888 = ptrtoint ptr %cfg.i70.i to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %cfg.i70.i, align 8
  %ops.i71.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %889, i32 0, i32 4
  %890 = ptrtoint ptr %ops.i71.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %ops.i71.i, align 4
  %get_bbreg.i72.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %891, i32 0, i32 45
  %892 = ptrtoint ptr %get_bbreg.i72.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %get_bbreg.i72.i, align 4
  %call.i73.i = tail call i32 %893(ptr noundef %hw, i32 noundef 3788, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i430)
  %tobool5.not.i = icmp slt i32 %call.i.i430, 0
  %894 = and i32 %call.i58.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %894)
  %cmp.not.i431 = icmp eq i32 %894, 21102592
  %or.cond.i432 = select i1 %tobool5.not.i, i1 true, i1 %cmp.not.i431
  %895 = and i32 %call.i63.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %895)
  %cmp10.not.i = icmp eq i32 %895, 4325376
  %or.cond44.i = select i1 %or.cond.i432, i1 true, i1 %cmp10.not.i
  br i1 %or.cond44.i, label %for.body84.if.end128_crit_edge, label %if.then.i434

for.body84.if.end128_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then.i434:                                     ; preds = %for.body84
  %and12.i = and i32 %call.i.i430, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp ne i32 %and12.i, 0
  %896 = and i32 %call.i68.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %896)
  %cmp17.not.i = icmp eq i32 %896, 20054016
  %or.cond45.i = select i1 %tobool13.not.i, i1 true, i1 %cmp17.not.i
  %897 = and i32 %call.i73.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %897)
  %cmp22.not.i = icmp eq i32 %897, 3538944
  %or.cond46.i = select i1 %or.cond45.i, i1 true, i1 %cmp22.not.i
  br i1 %or.cond46.i, label %if.else114, label %if.then89

if.then89:                                        ; preds = %if.then.i434
  call void @__sanitizer_cov_trace_pc() #9
  %898 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %priv, align 8
  %cfg.i437 = getelementptr inbounds %struct.rtl_priv, ptr %899, i32 0, i32 32
  %900 = ptrtoint ptr %cfg.i437 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %cfg.i437, align 8
  %ops.i438 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %901, i32 0, i32 4
  %902 = ptrtoint ptr %ops.i438 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %ops.i438, align 4
  %get_bbreg.i439 = getelementptr inbounds %struct.rtl_hal_ops, ptr %903, i32 0, i32 45
  %904 = ptrtoint ptr %get_bbreg.i439 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %get_bbreg.i439, align 4
  %call.i440 = tail call i32 %905(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #7
  %and91 = lshr i32 %call.i440, 16
  %shr92 = and i32 %and91, 1023
  %906 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %906)
  store i32 %shr92, ptr %arrayidx126, align 4
  %907 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %priv, align 8
  %cfg.i442 = getelementptr inbounds %struct.rtl_priv, ptr %908, i32 0, i32 32
  %909 = ptrtoint ptr %cfg.i442 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %cfg.i442, align 8
  %ops.i443 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %910, i32 0, i32 4
  %911 = ptrtoint ptr %ops.i443 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %ops.i443, align 4
  %get_bbreg.i444 = getelementptr inbounds %struct.rtl_hal_ops, ptr %912, i32 0, i32 45
  %913 = ptrtoint ptr %get_bbreg.i444 to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %get_bbreg.i444, align 4
  %call.i445 = tail call i32 %914(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #7
  %and97 = lshr i32 %call.i445, 16
  %shr98 = and i32 %and97, 1023
  %915 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 %shr98, ptr %arrayidx134, align 4
  %916 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %priv, align 8
  %cfg.i447 = getelementptr inbounds %struct.rtl_priv, ptr %917, i32 0, i32 32
  %918 = ptrtoint ptr %cfg.i447 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %cfg.i447, align 8
  %ops.i448 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %919, i32 0, i32 4
  %920 = ptrtoint ptr %ops.i448 to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %ops.i448, align 4
  %get_bbreg.i449 = getelementptr inbounds %struct.rtl_hal_ops, ptr %921, i32 0, i32 45
  %922 = ptrtoint ptr %get_bbreg.i449 to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %get_bbreg.i449, align 4
  %call.i450 = tail call i32 %923(ptr noundef %hw, i32 noundef 3780, i32 noundef -1) #7
  %and103 = lshr i32 %call.i450, 16
  %shr104 = and i32 %and103, 1023
  %arrayidx107 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 6
  %924 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %924)
  store i32 %shr104, ptr %arrayidx107, align 4
  %925 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %priv, align 8
  %cfg.i452 = getelementptr inbounds %struct.rtl_priv, ptr %926, i32 0, i32 32
  %927 = ptrtoint ptr %cfg.i452 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %cfg.i452, align 8
  %ops.i453 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %928, i32 0, i32 4
  %929 = ptrtoint ptr %ops.i453 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %ops.i453, align 4
  %get_bbreg.i454 = getelementptr inbounds %struct.rtl_hal_ops, ptr %930, i32 0, i32 45
  %931 = ptrtoint ptr %get_bbreg.i454 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %get_bbreg.i454, align 4
  %call.i455 = tail call i32 %932(ptr noundef %hw, i32 noundef 3788, i32 noundef -1) #7
  %and109 = lshr i32 %call.i455, 16
  %shr110 = and i32 %and109, 1023
  %arrayidx113 = getelementptr [8 x i32], ptr %result, i32 %conv, i32 7
  %933 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %933)
  store i32 %shr110, ptr %arrayidx113, align 4
  br label %if.end138

if.else114:                                       ; preds = %if.then.i434
  br i1 %cmp115, label %if.then120, label %if.else114.if.end128_crit_edge

if.else114.if.end128_crit_edge:                   ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then120:                                       ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  %934 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %priv, align 8
  %cfg.i457 = getelementptr inbounds %struct.rtl_priv, ptr %935, i32 0, i32 32
  %936 = ptrtoint ptr %cfg.i457 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %cfg.i457, align 8
  %ops.i458 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %937, i32 0, i32 4
  %938 = ptrtoint ptr %ops.i458 to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %ops.i458, align 4
  %get_bbreg.i459 = getelementptr inbounds %struct.rtl_hal_ops, ptr %939, i32 0, i32 45
  %940 = ptrtoint ptr %get_bbreg.i459 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %get_bbreg.i459, align 4
  %call.i460 = tail call i32 %941(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #7
  %and122 = lshr i32 %call.i460, 16
  %shr123 = and i32 %and122, 1023
  %942 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %942)
  store i32 %shr123, ptr %arrayidx126, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then120, %if.else114.if.end128_crit_edge, %for.body84.if.end128_crit_edge
  %943 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %priv, align 8
  %cfg.i462 = getelementptr inbounds %struct.rtl_priv, ptr %944, i32 0, i32 32
  %945 = ptrtoint ptr %cfg.i462 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %cfg.i462, align 8
  %ops.i463 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %946, i32 0, i32 4
  %947 = ptrtoint ptr %ops.i463 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %ops.i463, align 4
  %get_bbreg.i464 = getelementptr inbounds %struct.rtl_hal_ops, ptr %948, i32 0, i32 45
  %949 = ptrtoint ptr %get_bbreg.i464 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %get_bbreg.i464, align 4
  %call.i465 = tail call i32 %950(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #7
  %and130 = lshr i32 %call.i465, 16
  %shr131 = and i32 %and130, 1023
  %951 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %951)
  store i32 %shr131, ptr %arrayidx134, align 4
  br i1 %cmp82, label %if.end128.for.body84_crit_edge, label %if.end128.if.end138_crit_edge

if.end128.if.end138_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end128.for.body84_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body84

if.end138:                                        ; preds = %if.end128.if.end138_crit_edge, %if.then89, %if.end76.if.end138_crit_edge
  %952 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %priv, align 8
  %cfg.i467 = getelementptr inbounds %struct.rtl_priv, ptr %953, i32 0, i32 32
  %954 = ptrtoint ptr %cfg.i467 to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %cfg.i467, align 8
  %ops.i468 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %955, i32 0, i32 4
  %956 = ptrtoint ptr %ops.i468 to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %ops.i468, align 4
  %set_bbreg.i469 = getelementptr inbounds %struct.rtl_hal_ops, ptr %957, i32 0, i32 46
  %958 = ptrtoint ptr %set_bbreg.i469 to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %set_bbreg.i469, align 4
  tail call void %959(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  br i1 %cmp, label %if.end138.if.end159_crit_edge, label %if.then142

if.end138.if.end159_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then142:                                       ; preds = %if.end138
  %960 = ptrtoint ptr %rfpi_enable16 to i32
  call void @__asan_load1_noabort(i32 %960)
  %961 = load i8, ptr %rfpi_enable16, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %961)
  %tobool144.not = icmp eq i8 %961, 0
  br i1 %tobool144.not, label %if.then145, label %if.then142.if.end146_crit_edge

if.then142.if.end146_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then145:                                       ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %962 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %priv, align 8
  %cfg.i.i471 = getelementptr inbounds %struct.rtl_priv, ptr %963, i32 0, i32 32
  %964 = ptrtoint ptr %cfg.i.i471 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %cfg.i.i471, align 8
  %ops.i.i472 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %965, i32 0, i32 4
  %966 = ptrtoint ptr %ops.i.i472 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %ops.i.i472, align 4
  %set_bbreg.i.i473 = getelementptr inbounds %struct.rtl_hal_ops, ptr %967, i32 0, i32 46
  %968 = ptrtoint ptr %set_bbreg.i.i473 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %set_bbreg.i.i473, align 4
  tail call void %969(ptr noundef %hw, i32 noundef 2080, i32 noundef -1, i32 noundef 16777216) #7
  %970 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %priv, align 8
  %cfg.i4.i474 = getelementptr inbounds %struct.rtl_priv, ptr %971, i32 0, i32 32
  %972 = ptrtoint ptr %cfg.i4.i474 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %cfg.i4.i474, align 8
  %ops.i5.i475 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %973, i32 0, i32 4
  %974 = ptrtoint ptr %ops.i5.i475 to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %ops.i5.i475, align 4
  %set_bbreg.i6.i476 = getelementptr inbounds %struct.rtl_hal_ops, ptr %975, i32 0, i32 46
  %976 = ptrtoint ptr %set_bbreg.i6.i476 to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %set_bbreg.i6.i476, align 4
  tail call void %977(ptr noundef %hw, i32 noundef 2088, i32 noundef -1, i32 noundef 16777216) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.then142.if.end146_crit_edge
  %adda_backup148 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 28
  br label %for.body.i486

for.body.i486:                                    ; preds = %for.body.i486.for.body.i486_crit_edge, %if.end146
  %i.06.i478 = phi i32 [ 0, %if.end146 ], [ %inc.i484, %for.body.i486.for.body.i486_crit_edge ]
  %arrayidx.i479 = getelementptr i32, ptr @__const._rtl88e_phy_iq_calibrate.adda_reg, i32 %i.06.i478
  %978 = ptrtoint ptr %arrayidx.i479 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load i32, ptr %arrayidx.i479, align 4
  %arrayidx1.i480 = getelementptr i32, ptr %adda_backup148, i32 %i.06.i478
  %980 = ptrtoint ptr %arrayidx1.i480 to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load i32, ptr %arrayidx1.i480, align 4
  %982 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %priv, align 8
  %cfg.i.i481 = getelementptr inbounds %struct.rtl_priv, ptr %983, i32 0, i32 32
  %984 = ptrtoint ptr %cfg.i.i481 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %cfg.i.i481, align 8
  %ops.i.i482 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %985, i32 0, i32 4
  %986 = ptrtoint ptr %ops.i.i482 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %ops.i.i482, align 4
  %set_bbreg.i.i483 = getelementptr inbounds %struct.rtl_hal_ops, ptr %987, i32 0, i32 46
  %988 = ptrtoint ptr %set_bbreg.i.i483 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %set_bbreg.i.i483, align 4
  tail call void %989(ptr noundef %hw, i32 noundef %979, i32 noundef -1, i32 noundef %981) #7
  %inc.i484 = add nuw nsw i32 %i.06.i478, 1
  %exitcond.not.i485 = icmp eq i32 %inc.i484, 16
  br i1 %exitcond.not.i485, label %_rtl88e_phy_reload_adda_registers.exit, label %for.body.i486.for.body.i486_crit_edge

for.body.i486.for.body.i486_crit_edge:            ; preds = %for.body.i486
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i486

_rtl88e_phy_reload_adda_registers.exit:           ; preds = %for.body.i486
  %990 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %priv, align 8
  %write8_async.i.i488 = getelementptr inbounds %struct.rtl_priv, ptr %991, i32 0, i32 13, i32 5
  %cfg.i.i489 = getelementptr inbounds %struct.rtl_priv, ptr %991, i32 0, i32 32
  %read8_sync.i.i490 = getelementptr inbounds %struct.rtl_priv, ptr %991, i32 0, i32 13, i32 9
  %992 = ptrtoint ptr %iqk_mac_backup24 to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load i32, ptr %iqk_mac_backup24, align 4
  %conv.i491 = trunc i32 %993 to i8
  %994 = ptrtoint ptr %write8_async.i.i488 to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load ptr, ptr %write8_async.i.i488, align 4
  tail call void %995(ptr noundef %991, i32 noundef 1314, i8 noundef zeroext %conv.i491) #7
  %996 = ptrtoint ptr %cfg.i.i489 to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %cfg.i.i489, align 8
  %write_readback.i.i492 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %997, i32 0, i32 1
  %998 = ptrtoint ptr %write_readback.i.i492 to i32
  call void @__asan_load1_noabort(i32 %998)
  %999 = load i8, ptr %write_readback.i.i492, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %999)
  %tobool.not.i.i493 = icmp eq i8 %999, 0
  br i1 %tobool.not.i.i493, label %_rtl88e_phy_reload_adda_registers.exit.rtl_write_byte.exit.i499_crit_edge, label %if.then.i.i495

_rtl88e_phy_reload_adda_registers.exit.rtl_write_byte.exit.i499_crit_edge: ; preds = %_rtl88e_phy_reload_adda_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i499

if.then.i.i495:                                   ; preds = %_rtl88e_phy_reload_adda_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %1000 = ptrtoint ptr %read8_sync.i.i490 to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %read8_sync.i.i490, align 4
  %call.i.i494 = tail call zeroext i8 %1001(ptr noundef %991, i32 noundef 1314) #7
  br label %rtl_write_byte.exit.i499

rtl_write_byte.exit.i499:                         ; preds = %if.then.i.i495, %_rtl88e_phy_reload_adda_registers.exit.rtl_write_byte.exit.i499_crit_edge
  %1002 = ptrtoint ptr %arrayidx2.i338 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %arrayidx2.i338, align 4
  %conv.1.i498 = trunc i32 %1003 to i8
  %1004 = ptrtoint ptr %write8_async.i.i488 to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %write8_async.i.i488, align 4
  tail call void %1005(ptr noundef %991, i32 noundef 1360, i8 noundef zeroext %conv.1.i498) #7
  %1006 = ptrtoint ptr %cfg.i.i489 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %cfg.i.i489, align 8
  %write_readback.i.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1007, i32 0, i32 1
  %1008 = ptrtoint ptr %write_readback.i.1.i to i32
  call void @__asan_load1_noabort(i32 %1008)
  %1009 = load i8, ptr %write_readback.i.1.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1009)
  %tobool.not.i.1.i = icmp eq i8 %1009, 0
  br i1 %tobool.not.i.1.i, label %rtl_write_byte.exit.i499.rtl_write_byte.exit.1.i_crit_edge, label %if.then.i.1.i

rtl_write_byte.exit.i499.rtl_write_byte.exit.1.i_crit_edge: ; preds = %rtl_write_byte.exit.i499
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.1.i

if.then.i.1.i:                                    ; preds = %rtl_write_byte.exit.i499
  call void @__sanitizer_cov_trace_pc() #9
  %1010 = ptrtoint ptr %read8_sync.i.i490 to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %read8_sync.i.i490, align 4
  %call.i.1.i500 = tail call zeroext i8 %1011(ptr noundef %991, i32 noundef 1360) #7
  br label %rtl_write_byte.exit.1.i

rtl_write_byte.exit.1.i:                          ; preds = %if.then.i.1.i, %rtl_write_byte.exit.i499.rtl_write_byte.exit.1.i_crit_edge
  %1012 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load i32, ptr %arrayidx2.1.i, align 4
  %conv.2.i503 = trunc i32 %1013 to i8
  %1014 = ptrtoint ptr %write8_async.i.i488 to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %write8_async.i.i488, align 4
  tail call void %1015(ptr noundef %991, i32 noundef 1361, i8 noundef zeroext %conv.2.i503) #7
  %1016 = ptrtoint ptr %cfg.i.i489 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %cfg.i.i489, align 8
  %write_readback.i.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1017, i32 0, i32 1
  %1018 = ptrtoint ptr %write_readback.i.2.i to i32
  call void @__asan_load1_noabort(i32 %1018)
  %1019 = load i8, ptr %write_readback.i.2.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1019)
  %tobool.not.i.2.i = icmp eq i8 %1019, 0
  br i1 %tobool.not.i.2.i, label %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge, label %if.then.i.2.i

rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.2.i

if.then.i.2.i:                                    ; preds = %rtl_write_byte.exit.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %1020 = ptrtoint ptr %read8_sync.i.i490 to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %read8_sync.i.i490, align 4
  %call.i.2.i504 = tail call zeroext i8 %1021(ptr noundef %991, i32 noundef 1361) #7
  br label %rtl_write_byte.exit.2.i

rtl_write_byte.exit.2.i:                          ; preds = %if.then.i.2.i, %rtl_write_byte.exit.1.i.rtl_write_byte.exit.2.i_crit_edge
  %1022 = ptrtoint ptr %arrayidx4.i342 to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load i32, ptr %arrayidx4.i342, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %991, i32 0, i32 13, i32 7
  %1024 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %1025(ptr noundef %991, i32 noundef 64, i32 noundef %1023) #7
  %1026 = ptrtoint ptr %cfg.i.i489 to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %cfg.i.i489, align 8
  %write_readback.i13.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1027, i32 0, i32 1
  %1028 = ptrtoint ptr %write_readback.i13.i to i32
  call void @__asan_load1_noabort(i32 %1028)
  %1029 = load i8, ptr %write_readback.i13.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1029)
  %tobool.not.i14.i = icmp eq i8 %1029, 0
  br i1 %tobool.not.i14.i, label %rtl_write_byte.exit.2.i._rtl88e_phy_reload_mac_registers.exit_crit_edge, label %if.then.i16.i

rtl_write_byte.exit.2.i._rtl88e_phy_reload_mac_registers.exit_crit_edge: ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_reload_mac_registers.exit

if.then.i16.i:                                    ; preds = %rtl_write_byte.exit.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i507 = getelementptr inbounds %struct.rtl_priv, ptr %991, i32 0, i32 13, i32 11
  %1030 = ptrtoint ptr %read32_sync.i.i507 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %read32_sync.i.i507, align 4
  %call.i15.i = tail call i32 %1031(ptr noundef %991, i32 noundef 64) #7
  br label %_rtl88e_phy_reload_mac_registers.exit

_rtl88e_phy_reload_mac_registers.exit:            ; preds = %if.then.i16.i, %rtl_write_byte.exit.2.i._rtl88e_phy_reload_mac_registers.exit_crit_edge
  %iqk_bb_backup154 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %1032 = ptrtoint ptr %iqk_bb_backup154 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %iqk_bb_backup154, align 4
  %1034 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %priv, align 8
  %cfg.i.i512 = getelementptr inbounds %struct.rtl_priv, ptr %1035, i32 0, i32 32
  %1036 = ptrtoint ptr %cfg.i.i512 to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %cfg.i.i512, align 8
  %ops.i.i513 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1037, i32 0, i32 4
  %1038 = ptrtoint ptr %ops.i.i513 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %ops.i.i513, align 4
  %set_bbreg.i.i514 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1039, i32 0, i32 46
  %1040 = ptrtoint ptr %set_bbreg.i.i514 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %set_bbreg.i.i514, align 4
  tail call void %1041(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef %1033) #7
  %arrayidx1.i511.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %1042 = ptrtoint ptr %arrayidx1.i511.1 to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load i32, ptr %arrayidx1.i511.1, align 4
  %1044 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %priv, align 8
  %cfg.i.i512.1 = getelementptr inbounds %struct.rtl_priv, ptr %1045, i32 0, i32 32
  %1046 = ptrtoint ptr %cfg.i.i512.1 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %cfg.i.i512.1, align 8
  %ops.i.i513.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1047, i32 0, i32 4
  %1048 = ptrtoint ptr %ops.i.i513.1 to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %ops.i.i513.1, align 4
  %set_bbreg.i.i514.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1049, i32 0, i32 46
  %1050 = ptrtoint ptr %set_bbreg.i.i514.1 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %set_bbreg.i.i514.1, align 4
  tail call void %1051(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef %1043) #7
  %arrayidx1.i511.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %1052 = ptrtoint ptr %arrayidx1.i511.2 to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load i32, ptr %arrayidx1.i511.2, align 4
  %1054 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %priv, align 8
  %cfg.i.i512.2 = getelementptr inbounds %struct.rtl_priv, ptr %1055, i32 0, i32 32
  %1056 = ptrtoint ptr %cfg.i.i512.2 to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %cfg.i.i512.2, align 8
  %ops.i.i513.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1057, i32 0, i32 4
  %1058 = ptrtoint ptr %ops.i.i513.2 to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %ops.i.i513.2, align 4
  %set_bbreg.i.i514.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1059, i32 0, i32 46
  %1060 = ptrtoint ptr %set_bbreg.i.i514.2 to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %set_bbreg.i.i514.2, align 4
  tail call void %1061(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef %1053) #7
  %arrayidx1.i511.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %1062 = ptrtoint ptr %arrayidx1.i511.3 to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load i32, ptr %arrayidx1.i511.3, align 4
  %1064 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %priv, align 8
  %cfg.i.i512.3 = getelementptr inbounds %struct.rtl_priv, ptr %1065, i32 0, i32 32
  %1066 = ptrtoint ptr %cfg.i.i512.3 to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %cfg.i.i512.3, align 8
  %ops.i.i513.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1067, i32 0, i32 4
  %1068 = ptrtoint ptr %ops.i.i513.3 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load ptr, ptr %ops.i.i513.3, align 4
  %set_bbreg.i.i514.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1069, i32 0, i32 46
  %1070 = ptrtoint ptr %set_bbreg.i.i514.3 to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %set_bbreg.i.i514.3, align 4
  tail call void %1071(ptr noundef %hw, i32 noundef 2920, i32 noundef -1, i32 noundef %1063) #7
  %arrayidx1.i511.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %1072 = ptrtoint ptr %arrayidx1.i511.4 to i32
  call void @__asan_load4_noabort(i32 %1072)
  %1073 = load i32, ptr %arrayidx1.i511.4, align 4
  %1074 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %priv, align 8
  %cfg.i.i512.4 = getelementptr inbounds %struct.rtl_priv, ptr %1075, i32 0, i32 32
  %1076 = ptrtoint ptr %cfg.i.i512.4 to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %cfg.i.i512.4, align 8
  %ops.i.i513.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1077, i32 0, i32 4
  %1078 = ptrtoint ptr %ops.i.i513.4 to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %ops.i.i513.4, align 4
  %set_bbreg.i.i514.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1079, i32 0, i32 46
  %1080 = ptrtoint ptr %set_bbreg.i.i514.4 to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %set_bbreg.i.i514.4, align 4
  tail call void %1081(ptr noundef %hw, i32 noundef 2924, i32 noundef -1, i32 noundef %1073) #7
  %arrayidx1.i511.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %1082 = ptrtoint ptr %arrayidx1.i511.5 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %arrayidx1.i511.5, align 4
  %1084 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %priv, align 8
  %cfg.i.i512.5 = getelementptr inbounds %struct.rtl_priv, ptr %1085, i32 0, i32 32
  %1086 = ptrtoint ptr %cfg.i.i512.5 to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %cfg.i.i512.5, align 8
  %ops.i.i513.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1087, i32 0, i32 4
  %1088 = ptrtoint ptr %ops.i.i513.5 to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %ops.i.i513.5, align 4
  %set_bbreg.i.i514.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1089, i32 0, i32 46
  %1090 = ptrtoint ptr %set_bbreg.i.i514.5 to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %set_bbreg.i.i514.5, align 4
  tail call void %1091(ptr noundef %hw, i32 noundef 2160, i32 noundef -1, i32 noundef %1083) #7
  %arrayidx1.i511.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %1092 = ptrtoint ptr %arrayidx1.i511.6 to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load i32, ptr %arrayidx1.i511.6, align 4
  %1094 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %priv, align 8
  %cfg.i.i512.6 = getelementptr inbounds %struct.rtl_priv, ptr %1095, i32 0, i32 32
  %1096 = ptrtoint ptr %cfg.i.i512.6 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %cfg.i.i512.6, align 8
  %ops.i.i513.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1097, i32 0, i32 4
  %1098 = ptrtoint ptr %ops.i.i513.6 to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %ops.i.i513.6, align 4
  %set_bbreg.i.i514.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1099, i32 0, i32 46
  %1100 = ptrtoint ptr %set_bbreg.i.i514.6 to i32
  call void @__asan_load4_noabort(i32 %1100)
  %1101 = load ptr, ptr %set_bbreg.i.i514.6, align 4
  tail call void %1101(ptr noundef %hw, i32 noundef 2144, i32 noundef -1, i32 noundef %1093) #7
  %arrayidx1.i511.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %1102 = ptrtoint ptr %arrayidx1.i511.7 to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load i32, ptr %arrayidx1.i511.7, align 4
  %1104 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %priv, align 8
  %cfg.i.i512.7 = getelementptr inbounds %struct.rtl_priv, ptr %1105, i32 0, i32 32
  %1106 = ptrtoint ptr %cfg.i.i512.7 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %cfg.i.i512.7, align 8
  %ops.i.i513.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1107, i32 0, i32 4
  %1108 = ptrtoint ptr %ops.i.i513.7 to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %ops.i.i513.7, align 4
  %set_bbreg.i.i514.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1109, i32 0, i32 46
  %1110 = ptrtoint ptr %set_bbreg.i.i514.7 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %set_bbreg.i.i514.7, align 4
  tail call void %1111(ptr noundef %hw, i32 noundef 2148, i32 noundef -1, i32 noundef %1103) #7
  %arrayidx1.i511.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %1112 = ptrtoint ptr %arrayidx1.i511.8 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load i32, ptr %arrayidx1.i511.8, align 4
  %1114 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %priv, align 8
  %cfg.i.i512.8 = getelementptr inbounds %struct.rtl_priv, ptr %1115, i32 0, i32 32
  %1116 = ptrtoint ptr %cfg.i.i512.8 to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %cfg.i.i512.8, align 8
  %ops.i.i513.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1117, i32 0, i32 4
  %1118 = ptrtoint ptr %ops.i.i513.8 to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %ops.i.i513.8, align 4
  %set_bbreg.i.i514.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1119, i32 0, i32 46
  %1120 = ptrtoint ptr %set_bbreg.i.i514.8 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %set_bbreg.i.i514.8, align 4
  tail call void %1121(ptr noundef %hw, i32 noundef 2048, i32 noundef -1, i32 noundef %1113) #7
  %1122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %priv, align 8
  %cfg.i520 = getelementptr inbounds %struct.rtl_priv, ptr %1123, i32 0, i32 32
  %1124 = ptrtoint ptr %cfg.i520 to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %cfg.i520, align 8
  %ops.i521 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1125, i32 0, i32 4
  %1126 = ptrtoint ptr %ops.i521 to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %ops.i521, align 4
  %set_bbreg.i522 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1127, i32 0, i32 46
  %1128 = ptrtoint ptr %set_bbreg.i522 to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %set_bbreg.i522, align 4
  tail call void %1129(ptr noundef %hw, i32 noundef 2112, i32 noundef -1, i32 noundef 208595) #7
  br i1 %is2t, label %if.then157, label %_rtl88e_phy_reload_mac_registers.exit.if.end158_crit_edge

_rtl88e_phy_reload_mac_registers.exit.if.end158_crit_edge: ; preds = %_rtl88e_phy_reload_mac_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then157:                                       ; preds = %_rtl88e_phy_reload_mac_registers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %1130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %priv, align 8
  %cfg.i524 = getelementptr inbounds %struct.rtl_priv, ptr %1131, i32 0, i32 32
  %1132 = ptrtoint ptr %cfg.i524 to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %cfg.i524, align 8
  %ops.i525 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1133, i32 0, i32 4
  %1134 = ptrtoint ptr %ops.i525 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %ops.i525, align 4
  %set_bbreg.i526 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1135, i32 0, i32 46
  %1136 = ptrtoint ptr %set_bbreg.i526 to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %set_bbreg.i526, align 4
  tail call void %1137(ptr noundef %hw, i32 noundef 2116, i32 noundef -1, i32 noundef 208595) #7
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %_rtl88e_phy_reload_mac_registers.exit.if.end158_crit_edge
  %1138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %priv, align 8
  %cfg.i528 = getelementptr inbounds %struct.rtl_priv, ptr %1139, i32 0, i32 32
  %1140 = ptrtoint ptr %cfg.i528 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %cfg.i528, align 8
  %ops.i529 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1141, i32 0, i32 4
  %1142 = ptrtoint ptr %ops.i529 to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %ops.i529, align 4
  %set_bbreg.i530 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1143, i32 0, i32 46
  %1144 = ptrtoint ptr %set_bbreg.i530 to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %set_bbreg.i530, align 4
  tail call void %1145(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 16813056) #7
  %1146 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %priv, align 8
  %cfg.i532 = getelementptr inbounds %struct.rtl_priv, ptr %1147, i32 0, i32 32
  %1148 = ptrtoint ptr %cfg.i532 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %cfg.i532, align 8
  %ops.i533 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1149, i32 0, i32 4
  %1150 = ptrtoint ptr %ops.i533 to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %ops.i533, align 4
  %set_bbreg.i534 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1151, i32 0, i32 46
  %1152 = ptrtoint ptr %set_bbreg.i534 to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %set_bbreg.i534, align 4
  tail call void %1153(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 16813056) #7
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.end138.if.end159_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.70) #7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl88e_phy_simularity_compare(ptr nocapture noundef readonly %hw, ptr nocapture noundef %result, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #5 align 64 {
entry:
  %final_candidate = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %final_candidate) #7
  %2 = ptrtoint ptr %final_candidate to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %final_candidate, align 2
  %version = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 13
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 4
  %5 = and i32 %4, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %6 = icmp eq i32 %5, 32
  %bound.0 = select i1 %6, i32 8, i32 4
  %idxprom = zext i8 %c1 to i32
  %idxprom10 = zext i8 %c2 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %simularity_bitmap.0222 = phi i32 [ 0, %entry ], [ %simularity_bitmap.1, %for.inc.for.body_crit_edge ]
  %i.0219 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx9 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %i.0219
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr %result, i32 %idxprom10, i32 %i.0219
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp13 = icmp sgt i32 %8, %10
  %sub = sub i32 %8, %10
  %sub28 = sub i32 %10, %8
  %cond29 = select i1 %cmp13, i32 %sub, i32 %sub28
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond29)
  %cmp30 = icmp ugt i32 %cond29, 5
  br i1 %cmp30, label %if.then31, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %11 = zext i32 %i.0219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %i.0219, label %if.then31.if.else62_crit_edge [
    i32 2, label %if.then31.land.lhs.true_crit_edge
    i32 6, label %if.then31.land.lhs.true_crit_edge253
  ]

if.then31.land.lhs.true_crit_edge253:             ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then31.if.else62_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else62

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %if.then31.land.lhs.true_crit_edge253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.0222)
  %tobool34.not = icmp eq i32 %simularity_bitmap.0222, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true.if.else62_crit_edge

land.lhs.true.if.else62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else62

if.then35:                                        ; preds = %land.lhs.true
  %add = add nuw nsw i32 %i.0219, 1
  %arrayidx41 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %add
  %12 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx41, align 4
  %add42 = sub i32 0, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add42)
  %cmp43 = icmp eq i32 %8, %add42
  br i1 %cmp43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %div216 = lshr i32 %i.0219, 2
  %arrayidx45 = getelementptr [2 x i8], ptr %final_candidate, i32 0, i32 %div216
  %14 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %c2, ptr %arrayidx45, align 1
  br label %for.inc

if.else46:                                        ; preds = %if.then35
  %arrayidx53 = getelementptr [8 x i32], ptr %result, i32 %idxprom10, i32 %add
  %15 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx53, align 4
  %add54 = sub i32 0, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add54)
  %cmp55 = icmp eq i32 %10, %add54
  br i1 %cmp55, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %div57215 = lshr i32 %i.0219, 2
  %arrayidx58 = getelementptr [2 x i8], ptr %final_candidate, i32 0, i32 %div57215
  %17 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %c1, ptr %arrayidx58, align 1
  br label %for.inc

if.else59:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw nsw i32 1, %i.0219
  br label %for.inc

if.else62:                                        ; preds = %land.lhs.true.if.else62_crit_edge, %if.then31.if.else62_crit_edge
  %shl63 = shl nuw i32 1, %i.0219
  %or64 = or i32 %simularity_bitmap.0222, %shl63
  br label %for.inc

for.inc:                                          ; preds = %if.else62, %if.else59, %if.then56, %if.then44, %for.body.for.inc_crit_edge
  %simularity_bitmap.1 = phi i32 [ %or64, %if.else62 ], [ 0, %if.then44 ], [ 0, %if.then56 ], [ %shl, %if.else59 ], [ %simularity_bitmap.0222, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, %bound.0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1)
  %cmp67 = icmp eq i32 %simularity_bitmap.1, 0
  br i1 %cmp67, label %for.cond69.preheader, label %if.else98

for.cond69.preheader:                             ; preds = %for.end
  %div70214 = lshr exact i32 %bound.0, 2
  %umax239 = call i32 @llvm.umax.i32(i32 %div70214, i32 1)
  %18 = ptrtoint ptr %final_candidate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %final_candidate, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp74.not = icmp eq i8 %19, -1
  br i1 %cmp74.not, label %for.cond69.preheader.for.inc94_crit_edge, label %for.body83.lr.ph

for.cond69.preheader.for.inc94_crit_edge:         ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94

for.body83.lr.ph:                                 ; preds = %for.cond69.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom85 = zext i8 %19 to i32
  %arrayidx87 = getelementptr [8 x i32], ptr %result, i32 %idxprom85, i32 0
  %20 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx87, align 4
  %arrayidx89 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx89, align 4
  %arrayidx87.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom85, i32 1
  %23 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx87.1, align 4
  %arrayidx89.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx89.1, align 4
  br label %for.inc94

for.inc94:                                        ; preds = %for.body83.lr.ph, %for.cond69.preheader.for.inc94_crit_edge
  br i1 %6, label %for.body72.1, label %for.inc94.cleanup_crit_edge

for.inc94.cleanup_crit_edge:                      ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body72.1:                                     ; preds = %for.inc94
  %arrayidx73.1 = getelementptr inbounds [2 x i8], ptr %final_candidate, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx73.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp74.not.1 = icmp eq i8 %27, -1
  br i1 %cmp74.not.1, label %for.body72.1.for.inc94.1_crit_edge, label %for.body83.lr.ph.1

for.body72.1.for.inc94.1_crit_edge:               ; preds = %for.body72.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc94.1

for.body83.lr.ph.1:                               ; preds = %for.body72.1
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom85.1 = zext i8 %27 to i32
  %arrayidx87.1251 = getelementptr [8 x i32], ptr %result, i32 %idxprom85.1, i32 4
  %28 = ptrtoint ptr %arrayidx87.1251 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx87.1251, align 4
  %arrayidx89.1252 = getelementptr [8 x i32], ptr %result, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx89.1252 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx89.1252, align 4
  %arrayidx87.1.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom85.1, i32 5
  %31 = ptrtoint ptr %arrayidx87.1.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx87.1.1, align 4
  %arrayidx89.1.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 5
  %33 = ptrtoint ptr %arrayidx89.1.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx89.1.1, align 4
  br label %for.inc94.1

for.inc94.1:                                      ; preds = %for.body83.lr.ph.1, %for.body72.1.for.inc94.1_crit_edge
  %bresult.1.off0.1 = phi i1 [ %cmp74.not, %for.body72.1.for.inc94.1_crit_edge ], [ false, %for.body83.lr.ph.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax239)
  %exitcond240.not.1 = icmp eq i32 %umax239, 2
  br i1 %exitcond240.not.1, label %for.inc94.1.cleanup_crit_edge, label %for.body72.2

for.inc94.1.cleanup_crit_edge:                    ; preds = %for.inc94.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body72.2:                                     ; preds = %for.inc94.1
  %arrayidx73.2 = getelementptr inbounds [2 x i8], ptr %final_candidate, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx73.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp74.not.2 = icmp eq i8 %35, -1
  br i1 %cmp74.not.2, label %for.body72.2.cleanup_crit_edge, label %for.body83.lr.ph.2

for.body72.2.cleanup_crit_edge:                   ; preds = %for.body72.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body83.lr.ph.2:                               ; preds = %for.body72.2
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom85.2 = zext i8 %35 to i32
  %arrayidx87.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom85.2, i32 8
  %36 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx87.2, align 4
  %arrayidx89.2 = getelementptr [8 x i32], ptr %result, i32 3, i32 8
  %38 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx89.2, align 4
  %arrayidx87.1.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom85.2, i32 9
  %39 = ptrtoint ptr %arrayidx87.1.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx87.1.2, align 4
  %arrayidx89.1.2 = getelementptr [8 x i32], ptr %result, i32 3, i32 9
  %41 = ptrtoint ptr %arrayidx89.1.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx89.1.2, align 4
  br label %cleanup

if.else98:                                        ; preds = %for.end
  %and99 = and i32 %simularity_bitmap.1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else98.cleanup.sink.split_crit_edge, label %if.else114

if.else98.cleanup.sink.split_crit_edge:           ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else114:                                       ; preds = %if.else98
  %and115 = and i32 %simularity_bitmap.1, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp ne i32 %and115, 0
  %.not = xor i1 %6, true
  %brmerge = select i1 %tobool116.not, i1 true, i1 %.not
  br i1 %brmerge, label %if.else114.cleanup_crit_edge, label %if.else114.cleanup.sink.split_crit_edge

if.else114.cleanup.sink.split_crit_edge:          ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else114.cleanup_crit_edge:                     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else114.cleanup.sink.split_crit_edge, %if.else98.cleanup.sink.split_crit_edge
  %.sink250 = phi i32 [ 0, %if.else98.cleanup.sink.split_crit_edge ], [ 4, %if.else114.cleanup.sink.split_crit_edge ]
  %.sink247 = phi i32 [ 1, %if.else98.cleanup.sink.split_crit_edge ], [ 5, %if.else114.cleanup.sink.split_crit_edge ]
  %.sink244 = phi i32 [ 2, %if.else98.cleanup.sink.split_crit_edge ], [ 6, %if.else114.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 3, %if.else98.cleanup.sink.split_crit_edge ], [ 7, %if.else114.cleanup.sink.split_crit_edge ]
  %arrayidx127 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %.sink250
  %42 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx127, align 4
  %arrayidx129 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink250
  %44 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx129, align 4
  %arrayidx127.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %.sink247
  %45 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx127.1, align 4
  %arrayidx129.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink247
  %47 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx129.1, align 4
  %arrayidx127.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %.sink244
  %48 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx127.2, align 4
  %arrayidx129.2 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink244
  %50 = ptrtoint ptr %arrayidx129.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx129.2, align 4
  %arrayidx127.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 %.sink
  %51 = ptrtoint ptr %arrayidx127.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx127.3, align 4
  %arrayidx129.3 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink
  %53 = ptrtoint ptr %arrayidx129.3 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx129.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else114.cleanup_crit_edge, %for.body83.lr.ph.2, %for.body72.2.cleanup_crit_edge, %for.inc94.1.cleanup_crit_edge, %for.inc94.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else114.cleanup_crit_edge ], [ false, %cleanup.sink.split ], [ %cmp74.not, %for.inc94.cleanup_crit_edge ], [ %bresult.1.off0.1, %for.inc94.1.cleanup_crit_edge ], [ %bresult.1.off0.1, %for.body72.2.cleanup_crit_edge ], [ false, %for.body83.lr.ph.2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %final_candidate) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_lc_calibrate(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %2 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %act_scanning, align 2, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not10.not = icmp eq i8 %3, 0
  br i1 %tobool.not10.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %timecount.011 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #7
  %add = add nuw nsw i32 %timecount.011, 50
  %5 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %act_scanning, align 2, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950, i32 %timecount.011)
  %cmp = icmp ult i32 %timecount.011, 1950
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %timecount.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %lck_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 13
  %7 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %lck_inprogress, align 2
  %current_bandtype = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 53
  %8 = ptrtoint ptr %current_bandtype to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_bandtype, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 17, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef %9, i32 noundef %timecount.0.lcssa) #7
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %11, i32 noundef 3331) #7
  %14 = and i8 %call.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.end
  %and3.i = and i8 %call.i.i, -113
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %16(ptr noundef %11, i32 noundef 3331, i8 noundef zeroext %and3.i) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i2.i = tail call zeroext i8 %22(ptr noundef %11, i32 noundef 3331) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then.i.rtl_write_byte.exit.i_crit_edge
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %cfg.i3.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i3.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %get_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %get_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_rfreg.i.i, align 4
  %call.i4.i = tail call i32 %30(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #7
  %and14.i = and i32 %call.i4.i, 589823
  %or.i = or i32 %and14.i, 65536
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  %cfg.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %cfg.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i6.i, align 8
  %ops.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ops.i7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i7.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %36, i32 0, i32 48
  %37 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %38(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or.i) #7
  br label %if.end20.i

if.else.i:                                        ; preds = %while.end
  %write8_async.i8.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %write8_async.i8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i8.i, align 4
  tail call void %40(ptr noundef %11, i32 noundef 1314, i8 noundef zeroext -1) #7
  %cfg.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i9.i, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i10.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i11.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i11.i, label %if.else.i.if.end20.i_crit_edge, label %if.then.i14.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then.i14.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %46(ptr noundef %11, i32 noundef 1314) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then.i14.i, %if.else.i.if.end20.i_crit_edge, %rtl_write_byte.exit.i
  %rf_a_mode.0.i = phi i32 [ %call.i4.i, %rtl_write_byte.exit.i ], [ 0, %if.else.i.if.end20.i_crit_edge ], [ 0, %if.then.i14.i ]
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i18.i, align 4
  %get_rfreg.i19.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %get_rfreg.i19.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_rfreg.i19.i, align 4
  %call.i20.i = tail call i32 %54(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #7
  %or22.i = or i32 %call.i20.i, 32768
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %cfg.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i22.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i22.i, align 8
  %ops.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i23.i, align 4
  %set_rfreg.i24.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 48
  %61 = ptrtoint ptr %set_rfreg.i24.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_rfreg.i24.i, align 4
  tail call void %62(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or22.i) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end20.i
  %__ms.045.i = phi i32 [ 100, %if.end20.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.045.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #7
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %write8_async.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %64 = ptrtoint ptr %write8_async.i37.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i37.i, align 4
  br i1 %cmp.not.i, label %if.else32.i, label %if.then28.i

if.then28.i:                                      ; preds = %while.end.i
  tail call void %65(ptr noundef %11, i32 noundef 3331, i8 noundef zeroext %call.i.i) #7
  %cfg.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %66 = ptrtoint ptr %cfg.i26.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i26.i, align 8
  %write_readback.i27.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i27.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i27.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i28.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i28.i, label %if.then28.i.rtl_write_byte.exit32.i_crit_edge, label %if.then.i31.i

if.then28.i.rtl_write_byte.exit32.i_crit_edge:    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit32.i

if.then.i31.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i30.i = tail call zeroext i8 %71(ptr noundef %11, i32 noundef 3331) #7
  br label %rtl_write_byte.exit32.i

rtl_write_byte.exit32.i:                          ; preds = %if.then.i31.i, %if.then28.i.rtl_write_byte.exit32.i_crit_edge
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %cfg.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i34.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i34.i, align 8
  %ops.i35.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i35.i, align 4
  %set_rfreg.i36.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %set_rfreg.i36.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rfreg.i36.i, align 4
  tail call void %79(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_a_mode.0.i) #7
  br label %_rtl88e_phy_lc_calibrate.exit

if.else32.i:                                      ; preds = %while.end.i
  tail call void %65(ptr noundef %11, i32 noundef 1314, i8 noundef zeroext 0) #7
  %cfg.i38.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i38.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i38.i, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i39.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i40.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i40.i, label %if.else32.i._rtl88e_phy_lc_calibrate.exit_crit_edge, label %if.then.i43.i

if.else32.i._rtl88e_phy_lc_calibrate.exit_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_lc_calibrate.exit

if.then.i43.i:                                    ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i42.i = tail call zeroext i8 %85(ptr noundef %11, i32 noundef 1314) #7
  br label %_rtl88e_phy_lc_calibrate.exit

_rtl88e_phy_lc_calibrate.exit:                    ; preds = %if.then.i43.i, %if.else32.i._rtl88e_phy_lc_calibrate.exit_crit_edge, %rtl_write_byte.exit32.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.20) #7
  %86 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %lck_inprogress, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl88e_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext %bmain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.20) #7
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.if.else11.i_crit_edge

entry.if.else11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11.i

if.then.i:                                        ; preds = %entry
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 76) #7
  %6 = or i8 %call.i.i, -128
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 76, i8 noundef zeroext %6) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i2.i = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 76) #7
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then.i.rtl_write_byte.exit.i_crit_edge
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %cfg.i3.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i3.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %22(ptr noundef %hw, i32 noundef 2168, i32 noundef 8192, i32 noundef 1) #7
  br label %if.else11.i

if.else11.i:                                      ; preds = %rtl_write_byte.exit.i, %entry.if.else11.i_crit_edge
  %23 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i, align 8
  %cfg.i5.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i5.i, align 8
  %ops.i6.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ops.i6.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i6.i, align 4
  %set_bbreg.i7.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %set_bbreg.i7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_bbreg.i7.i, align 4
  tail call void %30(ptr noundef %hw, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #7
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 8
  %cfg.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 32
  %33 = ptrtoint ptr %cfg.i9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg.i9.i, align 8
  %ops.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %ops.i10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i10.i, align 4
  %set_bbreg.i11.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %36, i32 0, i32 46
  %37 = ptrtoint ptr %set_bbreg.i11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_bbreg.i11.i, align 4
  tail call void %38(ptr noundef %hw, i32 noundef 2324, i32 noundef 65535, i32 noundef 513) #7
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  %cfg.i13.i = getelementptr inbounds %struct.rtl_priv, ptr %40, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i13.i, align 8
  %ops.i14.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %ops.i14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i14.i, align 4
  %set_bbreg.i15.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %44, i32 0, i32 46
  %45 = ptrtoint ptr %set_bbreg.i15.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_bbreg.i15.i, align 4
  br i1 %bmain, label %if.then13.i, label %if.else18.i

if.then13.i:                                      ; preds = %if.else11.i
  tail call void %46(ptr noundef %hw, i32 noundef 2144, i32 noundef 28672, i32 noundef 0) #7
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i18.i, align 4
  %set_bbreg.i19.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 46
  %53 = ptrtoint ptr %set_bbreg.i19.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_bbreg.i19.i, align 4
  tail call void %54(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef 0) #7
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %55 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %antenna_div_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i = icmp eq i8 %56, 2
  br i1 %cmp.i, label %if.then13.i.if.end26.sink.split.i_crit_edge, label %if.then13.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge

if.then13.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_set_rfpath_switch.exit

if.then13.i.if.end26.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i

if.else18.i:                                      ; preds = %if.else11.i
  tail call void %46(ptr noundef %hw, i32 noundef 2144, i32 noundef 28672, i32 noundef 1) #7
  %57 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv.i, align 8
  %cfg.i29.i = getelementptr inbounds %struct.rtl_priv, ptr %58, i32 0, i32 32
  %59 = ptrtoint ptr %cfg.i29.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i29.i, align 8
  %ops.i30.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i30.i, align 4
  %set_bbreg.i31.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %set_bbreg.i31.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_bbreg.i31.i, align 4
  tail call void %64(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef 1) #7
  %antenna_div_type19.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %65 = ptrtoint ptr %antenna_div_type19.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %antenna_div_type19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp21.i = icmp eq i8 %66, 2
  br i1 %cmp21.i, label %if.else18.i.if.end26.sink.split.i_crit_edge, label %if.else18.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge

if.else18.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl88e_phy_set_rfpath_switch.exit

if.else18.i.if.end26.sink.split.i_crit_edge:      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %if.else18.i.if.end26.sink.split.i_crit_edge, %if.then13.i.if.end26.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then13.i.if.end26.sink.split.i_crit_edge ], [ 1, %if.else18.i.if.end26.sink.split.i_crit_edge ]
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 8
  %cfg.i21.i = getelementptr inbounds %struct.rtl_priv, ptr %68, i32 0, i32 32
  %69 = ptrtoint ptr %cfg.i21.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i21.i, align 8
  %ops.i22.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %ops.i22.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i22.i, align 4
  %set_bbreg.i23.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %72, i32 0, i32 46
  %73 = ptrtoint ptr %set_bbreg.i23.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_bbreg.i23.i, align 4
  tail call void %74(ptr noundef %hw, i32 noundef 2860, i32 noundef -2147483648, i32 noundef %.sink.i) #7
  br label %_rtl88e_phy_set_rfpath_switch.exit

_rtl88e_phy_set_rfpath_switch.exit:               ; preds = %if.end26.sink.split.i, %if.else18.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge, %if.then13.i._rtl88e_phy_set_rfpath_switch.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_set_io_cmd(ptr noundef %hw, i32 noundef %iotype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %set_io_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 12
  %2 = ptrtoint ptr %set_io_inprogress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set_io_inprogress, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.27, i32 noundef %iotype, i32 noundef %conv) #7
  %4 = zext i32 %iotype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %iotype, label %sw.default [
    i32 2, label %entry.land.lhs.true_crit_edge
    i32 0, label %sw.bb1
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %iotype) #7
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb1, %entry.land.lhs.true_crit_edge
  %.str.28.sink = phi ptr [ @.str.29, %sw.bb1 ], [ @.str.28, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull %.str.28.sink) #7
  %5 = ptrtoint ptr %set_io_inprogress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %set_io_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %set_io_inprogress to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %set_io_inprogress, align 1
  %current_io_type = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 2
  %8 = ptrtoint ptr %current_io_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %iotype, ptr %current_io_type, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %current_io_type.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 2
  %11 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %current_io_type.i, align 4
  %set_io_inprogress.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 12
  %13 = ptrtoint ptr %set_io_inprogress.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %set_io_inprogress.i, align 1
  %conv.i = zext i8 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.71, i32 noundef %12, i32 noundef %conv.i) #7
  %15 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_io_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %16, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %initgain_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %initgain_backup.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initgain_backup.i, align 4
  %conv3.i = zext i8 %19 to i32
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 9
  %20 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv3.i, ptr %cur_igvalue.i, align 4
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 10
  %21 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_channel.i, align 1
  tail call void @rtl88e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %22) #7
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 32
  %25 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %30(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 131) #7
  br label %rtl88e_phy_set_io.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %cur_igvalue5.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 9
  %31 = ptrtoint ptr %cur_igvalue5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_igvalue5.i, align 4
  %conv6.i = trunc i32 %32 to i8
  %initgain_backup7.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %initgain_backup7.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv6.i, ptr %initgain_backup7.i, align 4
  store i32 23, ptr %cur_igvalue5.i, align 4
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv, align 8
  %cfg.i31.i = getelementptr inbounds %struct.rtl_priv, ptr %35, i32 0, i32 32
  %36 = ptrtoint ptr %cfg.i31.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cfg.i31.i, align 8
  %ops.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %ops.i32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i32.i, align 4
  %set_bbreg.i33.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %39, i32 0, i32 46
  %40 = ptrtoint ptr %set_bbreg.i33.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_bbreg.i33.i, align 4
  tail call void %41(ptr noundef %hw, i32 noundef 2568, i32 noundef 16711680, i32 noundef 64) #7
  br label %rtl88e_phy_set_io.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %16) #7
  br label %rtl88e_phy_set_io.exit

rtl88e_phy_set_io.exit:                           ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %42 = ptrtoint ptr %set_io_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %set_io_inprogress.i, align 1
  %43 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %current_io_type.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.72, i32 noundef %44) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.31, i32 noundef %iotype) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl88e_phy_set_io.exit, %land.lhs.true.cleanup_crit_edge, %sw.default
  %retval.0 = phi i1 [ true, %rtl88e_phy_set_io.exit ], [ false, %sw.default ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl88e_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %rfpwr_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.98)
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
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %initializecount.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.73) #7
  %call.i = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #7
  %call.not.i = xor i1 %call.i, true
  %inc.i = add nuw nsw i32 %initializecount.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %initializecount.0.i)
  %cmp7.i = icmp ult i32 %initializecount.0.i, 9
  %or.cond.i = select i1 %call.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
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
  %call10.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.74, i32 noundef %call10.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %13 = ptrtoint ptr %last_awake_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_awake_jiffies.i, align 4
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 5
  %16 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %17(ptr noundef %15, i32 noundef 17, i8 noundef zeroext 43) #7
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.else.i.rtl_write_byte.exit.i.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %23(ptr noundef %15, i32 noundef 17) #7
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.else.i.rtl_write_byte.exit.i.i_crit_edge
  %24 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %25(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #7
  %26 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i7.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i7.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i8.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i8.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge, label %if.then.i11.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit12.i.i

if.then.i11.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i9.i.i, align 4
  %call.i10.i.i = tail call zeroext i8 %31(ptr noundef %15, i32 noundef 2) #7
  br label %rtl_write_byte.exit12.i.i

rtl_write_byte.exit12.i.i:                        ; preds = %if.then.i11.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge
  %32 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %33(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -30) #7
  %34 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i15.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i15.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i16.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i16.i.i, label %rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge, label %if.then.i19.i.i

rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge: ; preds = %rtl_write_byte.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit20.i.i

if.then.i19.i.i:                                  ; preds = %rtl_write_byte.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i17.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i17.i.i, align 4
  %call.i18.i.i = tail call zeroext i8 %39(ptr noundef %15, i32 noundef 2) #7
  br label %rtl_write_byte.exit20.i.i

rtl_write_byte.exit20.i.i:                        ; preds = %if.then.i19.i.i, %rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge
  %40 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %41(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #7
  %42 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i23.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i23.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i24.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i24.i.i, label %rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge, label %if.then.i27.i.i

rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge: ; preds = %rtl_write_byte.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit28.i.i

if.then.i27.i.i:                                  ; preds = %rtl_write_byte.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %46 = ptrtoint ptr %read8_sync.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i25.i.i, align 4
  %call.i26.i.i = tail call zeroext i8 %47(ptr noundef %15, i32 noundef 2) #7
  br label %rtl_write_byte.exit28.i.i

rtl_write_byte.exit28.i.i:                        ; preds = %if.then.i27.i.i, %rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge
  %48 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %49(ptr noundef %15, i32 noundef 1314, i8 noundef zeroext 0) #7
  %50 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i31.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i31.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i31.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i32.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i32.i.i, label %rtl_write_byte.exit28.i.i.if.end.i_crit_edge, label %if.then.i35.i.i

rtl_write_byte.exit28.i.i.if.end.i_crit_edge:     ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i35.i.i:                                  ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i33.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %54 = ptrtoint ptr %read8_sync.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i33.i.i, align 4
  %call.i34.i.i = tail call zeroext i8 %55(ptr noundef %15, i32 noundef 1314) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i35.i.i, %rtl_write_byte.exit28.i.i.if.end.i_crit_edge, %do.end.i
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %56 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp11.i = icmp eq i32 %57, 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 36
  %62 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %led_control.i, align 4
  br i1 %cmp11.i, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %63(ptr noundef %hw, i32 noundef 2) #7
  br label %if.then105.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %63(ptr noundef %hw, i32 noundef 3) #7
  br label %if.then105.i

for.body.i:                                       ; preds = %for.body.preheader.i, %if.then27.i.for.body.i_crit_edge
  %indvars.iv222.i = phi i32 [ %68, %for.body.preheader.i ], [ %indvars.iv.next223.i, %if.then27.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv222.i)
  %cmp22.i = icmp eq i32 %indvars.iv222.i, 4
  br i1 %cmp22.i, label %for.body.i.if.then27.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then27.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %qlen.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %indvars.iv222.i, i32 4, i32 1
  %64 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp25.i = icmp eq i32 %65, 0
  br i1 %cmp25.i, label %lor.lhs.false.i.if.then27.i_crit_edge, label %if.else29.i

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %for.body.i.if.then27.i_crit_edge
  %indvars.iv.next223.i = add nuw nsw i32 %indvars.iv222.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next223.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond, label %if.then27.i.for.end.i_crit_edge, label %if.then27.i.for.body.i_crit_edge

if.then27.i.for.body.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then27.i.for.end.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.else29.i:                                      ; preds = %lor.lhs.false.i
  %66 = trunc i32 %indvars.iv222.i to i8
  %add.i = add nuw nsw i32 %indvars.iv225.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef %add.i, i32 noundef %indvars.iv222.i, i32 noundef %65) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #7
  %exitcond227.i = icmp eq i32 %add.i, 64
  br i1 %exitcond227.i, label %if.then39.i, label %if.else29.i.for.cond.outer.i_crit_edge

if.else29.i.for.cond.outer.i_crit_edge:           ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.else29.i.for.cond.outer.i_crit_edge, %for.cond.preheader.i
  %indvars.iv225.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %if.else29.i.for.cond.outer.i_crit_edge ]
  %queue_id.0.ph.i = phi i8 [ 0, %for.cond.preheader.i ], [ %66, %if.else29.i.for.cond.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph.i)
  %cmp19207.i = icmp ult i8 %queue_id.0.ph.i, 9
  br i1 %cmp19207.i, label %for.body.preheader.i, label %for.cond.outer.i.for.end.i_crit_edge

for.cond.outer.i.for.end.i_crit_edge:             ; preds = %for.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.outer.i
  %68 = zext i8 %queue_id.0.ph.i to i32
  br label %for.body.i

if.then39.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef 64, i32 noundef %indvars.iv222.i, i32 noundef %70) #7
  br label %for.end.i

for.end.i:                                        ; preds = %if.then39.i, %for.cond.outer.i.for.end.i_crit_edge, %if.then27.i.for.end.i_crit_edge
  %reg_rfps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %71 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_rfps_level.i, align 4
  %and44.i = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.else49.i, label %if.then46.i

if.then46.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.77) #7
  %call47.i = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #7
  %cur_ps_level48.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %73 = ptrtoint ptr %cur_ps_level48.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_ps_level48.i, align 4
  %or.i = or i32 %74, 8
  store i32 %or.i, ptr %cur_ps_level48.i, align 4
  br label %if.then105.i

if.else49.i:                                      ; preds = %for.end.i
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %75 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rfoff_reason.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %76)
  %cmp50.i = icmp eq i32 %76, 268435456
  %cfg53.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %77 = ptrtoint ptr %cfg53.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg53.i, align 8
  %ops54.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ops54.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops54.i, align 4
  %led_control55.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %80, i32 0, i32 36
  %81 = ptrtoint ptr %led_control55.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %led_control55.i, align 4
  br i1 %cmp50.i, label %if.then52.i, label %if.else56.i

if.then52.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %82(ptr noundef %hw, i32 noundef 3) #7
  br label %if.then105.i

if.else56.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %82(ptr noundef %hw, i32 noundef 7) #7
  br label %if.then105.i

sw.bb62.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp64.i = icmp eq i32 %3, 2
  br i1 %cmp64.i, label %sw.bb62.i.if.then105.i_crit_edge, label %for.cond68.preheader.i

sw.bb62.i.if.then105.i_crit_edge:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

for.cond68.preheader.i:                           ; preds = %sw.bb62.i
  %tx_ring74.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond68.outer.i

for.cond68.outer.i:                               ; preds = %if.else83.i.for.cond68.outer.i_crit_edge, %for.cond68.preheader.i
  %indvars.iv219.i = phi i32 [ 0, %for.cond68.preheader.i ], [ %add85.i, %if.else83.i.for.cond68.outer.i_crit_edge ]
  %queue_id.1.ph.i = phi i8 [ 0, %for.cond68.preheader.i ], [ %86, %if.else83.i.for.cond68.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.1.ph.i)
  %cmp70203.i = icmp ult i8 %queue_id.1.ph.i, 9
  br i1 %cmp70203.i, label %for.body72.preheader.i, label %for.cond68.outer.i.for.end99.i_crit_edge

for.cond68.outer.i.for.end99.i_crit_edge:         ; preds = %for.cond68.outer.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

for.body72.preheader.i:                           ; preds = %for.cond68.outer.i
  %83 = zext i8 %queue_id.1.ph.i to i32
  br label %for.body72.i

for.body72.i:                                     ; preds = %if.then81.i.for.body72.i_crit_edge, %for.body72.preheader.i
  %indvars.iv.i = phi i32 [ %83, %for.body72.preheader.i ], [ %indvars.iv.next.i, %if.then81.i.for.body72.i_crit_edge ]
  %qlen.i170.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring74.i, i32 0, i32 %indvars.iv.i, i32 4, i32 1
  %84 = ptrtoint ptr %qlen.i170.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %qlen.i170.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp79.i = icmp eq i32 %85, 0
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i

if.then81.i:                                      ; preds = %for.body72.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %if.then81.i.for.end99.i_crit_edge, label %if.then81.i.for.body72.i_crit_edge

if.then81.i.for.body72.i_crit_edge:               ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body72.i

if.then81.i.for.end99.i_crit_edge:                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

if.else83.i:                                      ; preds = %for.body72.i
  %86 = trunc i32 %indvars.iv.i to i8
  %add85.i = add nuw nsw i32 %indvars.iv219.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef %add85.i, i32 noundef %indvars.iv.i, i32 noundef %85) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #7
  %exitcond221.i = icmp eq i32 %add85.i, 64
  br i1 %exitcond221.i, label %if.then94.i, label %if.else83.i.for.cond68.outer.i_crit_edge

if.else83.i.for.cond68.outer.i_crit_edge:         ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond68.outer.i

if.then94.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %qlen.i170.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i170.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %89) #7
  br label %for.end99.i

for.end99.i:                                      ; preds = %if.then94.i, %if.then81.i.for.end99.i_crit_edge, %for.cond68.outer.i.for.end99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies100.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %91 = ptrtoint ptr %last_awake_jiffies100.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %last_awake_jiffies100.i, align 4
  %sub101.i = sub i32 %90, %92
  %call102.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub101.i) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.78, i32 noundef %call102.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies103.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %94 = ptrtoint ptr %last_sleep_jiffies103.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %last_sleep_jiffies103.i, align 4
  %95 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %priv, align 8
  %write8_async.i.i174.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 5
  %97 = ptrtoint ptr %write8_async.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write8_async.i.i174.i, align 4
  tail call void %98(ptr noundef %96, i32 noundef 1314, i8 noundef zeroext -1) #7
  %cfg.i.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i.i176.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i.i176.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i177.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i177.i, label %for.end99.i.rtl_write_byte.exit.i183.i_crit_edge, label %if.then.i.i180.i

for.end99.i.rtl_write_byte.exit.i183.i_crit_edge: ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit.i183.i

if.then.i.i180.i:                                 ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %103 = ptrtoint ptr %read8_sync.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i.i178.i, align 4
  %call.i.i179.i = tail call zeroext i8 %104(ptr noundef %96, i32 noundef 1314) #7
  br label %rtl_write_byte.exit.i183.i

rtl_write_byte.exit.i183.i:                       ; preds = %if.then.i.i180.i, %for.end99.i.rtl_write_byte.exit.i183.i_crit_edge
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %cfg.i4.i.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 32
  %107 = ptrtoint ptr %cfg.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i4.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %110, i32 0, i32 48
  %111 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %112(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #7
  %113 = ptrtoint ptr %write8_async.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write8_async.i.i174.i, align 4
  tail call void %114(ptr noundef %96, i32 noundef 2, i8 noundef zeroext -30) #7
  %115 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i7.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i7.i181.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i7.i181.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i8.i182.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i8.i182.i, label %rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge, label %if.then.i11.i186.i

rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge: ; preds = %rtl_write_byte.exit.i183.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit12.i189.i

if.then.i11.i186.i:                               ; preds = %rtl_write_byte.exit.i183.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i9.i184.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %119 = ptrtoint ptr %read8_sync.i9.i184.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i9.i184.i, align 4
  %call.i10.i185.i = tail call zeroext i8 %120(ptr noundef %96, i32 noundef 2) #7
  br label %rtl_write_byte.exit12.i189.i

rtl_write_byte.exit12.i189.i:                     ; preds = %if.then.i11.i186.i, %rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge
  %121 = ptrtoint ptr %write8_async.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i.i174.i, align 4
  tail call void %122(ptr noundef %96, i32 noundef 17, i8 noundef zeroext 34) #7
  %123 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i15.i187.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i15.i187.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i15.i187.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i16.i188.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i16.i188.i, label %rtl_write_byte.exit12.i189.i.if.then105.i_crit_edge, label %if.then.i19.i192.i

rtl_write_byte.exit12.i189.i.if.then105.i_crit_edge: ; preds = %rtl_write_byte.exit12.i189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

if.then.i19.i192.i:                               ; preds = %rtl_write_byte.exit12.i189.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i17.i190.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %127 = ptrtoint ptr %read8_sync.i17.i190.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i17.i190.i, align 4
  %call.i18.i191.i = tail call zeroext i8 %128(ptr noundef %96, i32 noundef 17) #7
  br label %if.then105.i

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.30, i32 noundef %rfpwr_state) #7
  br label %cleanup

if.then105.i:                                     ; preds = %if.then.i19.i192.i, %rtl_write_byte.exit12.i189.i.if.then105.i_crit_edge, %sw.bb62.i.if.then105.i_crit_edge, %if.else56.i, %if.then52.i, %if.then46.i, %if.else13.i, %if.then12.i
  %129 = ptrtoint ptr %rfpwr_state1 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %rfpwr_state, ptr %rfpwr_state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then105.i, %sw.epilog.i, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then105.i ], [ false, %sw.epilog.i ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_config_bb_with_headerfile(ptr noundef %hw, i8 noundef zeroext %configtype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %configtype)
  %cmp = icmp eq i8 %configtype, 0
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %if.then5

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.023.i = phi i32 [ %add86.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %i.023.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %1)
  %cmp3.i = icmp ult i32 %1, -842150451
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %1, label %if.else21.i.i [
    i32 254, label %if.then.i.while.body.i.i_crit_edge
    i32 253, label %while.body7.preheader.i.i
    i32 252, label %if.then.i.if.end26.sink.split.i.i_crit_edge
    i32 251, label %if.then14.i.i
    i32 250, label %if.then17.i.i
    i32 249, label %if.then20.i.i
  ]

if.then.i.if.end26.sink.split.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

while.body7.preheader.i.i:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  br label %if.end26.sink.split.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %__ms.035.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 50, %if.then.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.035.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.for.inc.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.for.inc.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then14.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.then17.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.then20.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i.i

if.else21.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nsw i32 %i.023.i, 1
  %arrayidx2.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %add.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.i, align 4
  %10 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_bbreg.i.i.i, align 4
  tail call void %17(ptr noundef %hw, i32 noundef %1, i32 noundef -1, i32 noundef %9) #7
  br label %if.end26.sink.split.i.i

if.end26.sink.split.i.i:                          ; preds = %if.else21.i.i, %if.then20.i.i, %if.then17.i.i, %if.then14.i.i, %while.body7.preheader.i.i, %if.then.i.if.end26.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 214748000, %while.body7.preheader.i.i ], [ 10737400, %if.then14.i.i ], [ 214748, %if.then20.i.i ], [ 214748, %if.else21.i.i ], [ 1073740, %if.then17.i.i ], [ 214748000, %if.then.i.if.end26.sink.split.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef %.sink.i.i) #7
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 379, i32 %i.023.i)
  %cmp6.i = icmp sgt i32 %i.023.i, 379
  br i1 %cmp6.i, label %if.else.i.if.end6_crit_edge, label %if.end.i

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %if.else.i
  %19 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i, align 8
  %interface.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 10, i32 9
  %21 = ptrtoint ptr %interface.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %interface.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %1)
  %cmp.i.i = icmp eq i32 %1, -842150451
  br i1 %cmp.i.i, label %if.end.i.while.cond42.i.preheader_crit_edge, label %if.end.i.i

if.end.i.while.cond42.i.preheader_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.i.preheader

while.cond42.i.preheader:                         ; preds = %if.end19.i.i.while.cond42.i.preheader_crit_edge, %if.end.i.while.cond42.i.preheader_crit_edge
  br label %while.cond42.i

if.end.i.i:                                       ; preds = %if.end.i
  %board_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %20, i32 0, i32 17, i32 17
  %23 = ptrtoint ptr %board_type.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %board_type.i.i, align 1
  %conv.i.i = zext i8 %24 to i32
  %and4.i.i = and i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp5.i.i = icmp ne i32 %and4.i.i, 0
  %and.i.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i.i)
  %cmp7.not.i.i = icmp eq i32 %and.i.i, 31
  %or.cond.i.i = or i1 %cmp7.not.i.i, %cmp5.i.i
  br i1 %or.cond.i.i, label %if.end10.i.i, label %if.end.i.i.while.cond.i.preheader_crit_edge

if.end.i.i.while.cond.i.preheader_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = lshr i32 %1, 8
  %shr.i.i = and i32 %and11.i.i, 255
  %and12.i.i = and i32 %22, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %cmp13.i.i = icmp ne i32 %and12.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i)
  %cmp16.not.i.i = icmp eq i32 %shr.i.i, 7
  %or.cond46.i.i = or i1 %cmp16.not.i.i, %cmp13.i.i
  br i1 %or.cond46.i.i, label %if.end19.i.i, label %if.end10.i.i.while.cond.i.preheader_crit_edge

if.end10.i.i.while.cond.i.preheader_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end19.i.i:                                     ; preds = %if.end10.i.i
  %25 = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp23.i.i = icmp ne i32 %25, 0
  %26 = and i32 %1, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %26)
  %cmp26.not.i.i = icmp eq i32 %26, 983040
  %or.cond47.i.i = or i1 %cmp23.i.i, %cmp26.not.i.i
  br i1 %or.cond47.i.i, label %if.end19.i.i.while.cond42.i.preheader_crit_edge, label %if.end19.i.i.while.cond.i.preheader_crit_edge

if.end19.i.i.while.cond.i.preheader_crit_edge:    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

if.end19.i.i.while.cond42.i.preheader_crit_edge:  ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.i.preheader

while.cond.i.preheader:                           ; preds = %if.end19.i.i.while.cond.i.preheader_crit_edge, %if.end10.i.i.while.cond.i.preheader_crit_edge, %if.end.i.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %add13.pn.in.i = phi i32 [ %i.1.i, %land.rhs.i.while.cond.i_crit_edge ], [ %i.023.i, %while.cond.i.preheader ]
  %add13.pn.i = add nsw i32 %add13.pn.in.i, 3
  %v2.0.in.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %add13.pn.i
  %27 = ptrtoint ptr %v2.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %v2.0.i = load i32, ptr %v2.0.in.i, align 4
  %28 = zext i32 %v2.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %v2.0.i, label %land.rhs.i [
    i32 57005, label %while.cond.i.for.inc.i_crit_edge
    i32 52719, label %while.cond.i.for.inc.i_crit_edge103
    i32 52685, label %while.cond.i.for.inc.i_crit_edge104
  ]

while.cond.i.for.inc.i_crit_edge104:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i.for.inc.i_crit_edge103:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.cond.i.for.inc.i_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i:                                       ; preds = %while.cond.i
  %i.1.i = add nsw i32 %add13.pn.in.i, 2
  %cmp24.i = icmp slt i32 %add13.pn.in.i, 378
  br i1 %cmp24.i, label %land.rhs.i.while.cond.i_crit_edge, label %land.rhs.i.for.inc.i_crit_edge

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.rhs.i.while.cond.i_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond42.i:                                   ; preds = %while.cond42.i.backedge, %while.cond42.i.preheader
  %add38.pn.in.i = phi i32 [ %i.023.i, %while.cond42.i.preheader ], [ %i.2.i, %while.cond42.i.backedge ]
  %i.2.i = add i32 %add38.pn.in.i, 2
  %add38.pn.i = add i32 %add38.pn.in.i, 3
  %v2.1.in.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %add38.pn.i
  %29 = ptrtoint ptr %v2.1.in.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %v2.1.i = load i32, ptr %v2.1.in.i, align 4
  %v1.0.in.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %i.2.i
  %30 = ptrtoint ptr %v1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %v1.0.i = load i32, ptr %v1.0.in.i, align 4
  %31 = zext i32 %v2.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %v2.1.i, label %land.rhs51.i [
    i32 57005, label %while.cond42.i.while.end65.i_crit_edge
    i32 52719, label %while.cond42.i.while.end65.i_crit_edge105
    i32 52685, label %while.cond42.i.while.end65.i_crit_edge106
  ]

while.cond42.i.while.end65.i_crit_edge106:        ; preds = %while.cond42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end65.i

while.cond42.i.while.end65.i_crit_edge105:        ; preds = %while.cond42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end65.i

while.cond42.i.while.end65.i_crit_edge:           ; preds = %while.cond42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end65.i

land.rhs51.i:                                     ; preds = %while.cond42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %i.2.i)
  %cmp54.i = icmp slt i32 %i.2.i, 380
  br i1 %cmp54.i, label %while.body57.i, label %land.rhs51.i.for.inc.i_crit_edge

land.rhs51.i.for.inc.i_crit_edge:                 ; preds = %land.rhs51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.body57.i:                                   ; preds = %land.rhs51.i
  %32 = zext i32 %v1.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %v1.0.i, label %if.else21.i13.i [
    i32 254, label %while.body57.i.while.body.i5.i_crit_edge
    i32 253, label %while.body7.preheader.i1.i
    i32 252, label %while.body57.i.if.end26.sink.split.i15.i_crit_edge
    i32 251, label %if.then14.i6.i
    i32 250, label %if.then17.i7.i
    i32 249, label %if.then20.i8.i
  ]

while.body57.i.if.end26.sink.split.i15.i_crit_edge: ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i15.i

while.body57.i.while.body.i5.i_crit_edge:         ; preds = %while.body57.i
  br label %while.body.i5.i

while.body7.preheader.i1.i:                       ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #7
  br label %if.end26.sink.split.i15.i

while.body.i5.i:                                  ; preds = %while.body.i5.i.while.body.i5.i_crit_edge, %while.body57.i.while.body.i5.i_crit_edge
  %__ms.035.i2.i = phi i32 [ %dec.i3.i, %while.body.i5.i.while.body.i5.i_crit_edge ], [ 50, %while.body57.i.while.body.i5.i_crit_edge ]
  %dec.i3.i = add nsw i32 %__ms.035.i2.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #7
  %tobool.not.i4.i = icmp eq i32 %dec.i3.i, 0
  br i1 %tobool.not.i4.i, label %while.body.i5.i.while.cond42.i.backedge_crit_edge, label %while.body.i5.i.while.body.i5.i_crit_edge

while.body.i5.i.while.body.i5.i_crit_edge:        ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i5.i

while.body.i5.i.while.cond42.i.backedge_crit_edge: ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.i.backedge

if.then14.i6.i:                                   ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i15.i

if.then17.i7.i:                                   ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i15.i

if.then20.i8.i:                                   ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split.i15.i

if.else21.i13.i:                                  ; preds = %while.body57.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i.i, align 8
  %cfg.i.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i.i10.i, align 8
  %ops.i.i11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i11.i, align 4
  %set_bbreg.i.i12.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 46
  %44 = ptrtoint ptr %set_bbreg.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_bbreg.i.i12.i, align 4
  tail call void %45(ptr noundef %hw, i32 noundef %v1.0.i, i32 noundef -1, i32 noundef %v2.1.i) #7
  br label %if.end26.sink.split.i15.i

if.end26.sink.split.i15.i:                        ; preds = %if.else21.i13.i, %if.then20.i8.i, %if.then17.i7.i, %if.then14.i6.i, %while.body7.preheader.i1.i, %while.body57.i.if.end26.sink.split.i15.i_crit_edge
  %.sink.i14.i = phi i32 [ 214748000, %while.body7.preheader.i1.i ], [ 10737400, %if.then14.i6.i ], [ 214748, %if.then20.i8.i ], [ 214748, %if.else21.i13.i ], [ 1073740, %if.then17.i7.i ], [ 214748000, %while.body57.i.if.end26.sink.split.i15.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef %.sink.i14.i) #7
  br label %while.cond42.i.backedge

while.cond42.i.backedge:                          ; preds = %if.end26.sink.split.i15.i, %while.body.i5.i.while.cond42.i.backedge_crit_edge
  br label %while.cond42.i

while.end65.i:                                    ; preds = %while.cond42.i.while.end65.i_crit_edge, %while.cond42.i.while.end65.i_crit_edge105, %while.cond42.i.while.end65.i_crit_edge106
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1.i)
  %cmp67.not19.i = icmp ne i32 %v2.1.i, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %i.2.i)
  %cmp7220.i = icmp slt i32 %i.2.i, 380
  %or.cond21.i = select i1 %cmp67.not19.i, i1 %cmp7220.i, i1 false
  br i1 %or.cond21.i, label %while.end65.i.do.body76.i_crit_edge, label %while.end65.i.for.inc.i_crit_edge

while.end65.i.for.inc.i_crit_edge:                ; preds = %while.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

while.end65.i.do.body76.i_crit_edge:              ; preds = %while.end65.i
  br label %do.body76.i

do.body76.i:                                      ; preds = %do.body76.i.do.body76.i_crit_edge, %while.end65.i.do.body76.i_crit_edge
  %i.322.i = phi i32 [ %add77.i, %do.body76.i.do.body76.i_crit_edge ], [ %i.2.i, %while.end65.i.do.body76.i_crit_edge ]
  %add77.i = add nsw i32 %i.322.i, 2
  %add79.i = add nsw i32 %i.322.i, 3
  %arrayidx80.i = getelementptr i32, ptr @RTL8188EEPHY_REG_1TARRAY, i32 %add79.i
  %47 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %48)
  %cmp67.not.i = icmp ne i32 %48, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 378, i32 %i.322.i)
  %cmp72.i = icmp slt i32 %i.322.i, 378
  %or.cond.i = select i1 %cmp67.not.i, i1 %cmp72.i, i1 false
  br i1 %or.cond.i, label %do.body76.i.do.body76.i_crit_edge, label %do.body76.i.for.inc.i_crit_edge

do.body76.i.for.inc.i_crit_edge:                  ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.body76.i.do.body76.i_crit_edge:                ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76.i

for.inc.i:                                        ; preds = %do.body76.i.for.inc.i_crit_edge, %while.end65.i.for.inc.i_crit_edge, %land.rhs51.i.for.inc.i_crit_edge, %land.rhs.i.for.inc.i_crit_edge, %while.cond.i.for.inc.i_crit_edge, %while.cond.i.for.inc.i_crit_edge103, %while.cond.i.for.inc.i_crit_edge104, %if.end26.sink.split.i.i, %while.body.i.i.for.inc.i_crit_edge
  %i.4.i = phi i32 [ %i.023.i, %if.end26.sink.split.i.i ], [ %i.2.i, %while.end65.i.for.inc.i_crit_edge ], [ %i.023.i, %while.body.i.i.for.inc.i_crit_edge ], [ %add77.i, %do.body76.i.for.inc.i_crit_edge ], [ %i.2.i, %land.rhs51.i.for.inc.i_crit_edge ], [ %add13.pn.in.i, %while.cond.i.for.inc.i_crit_edge ], [ %add13.pn.in.i, %while.cond.i.for.inc.i_crit_edge103 ], [ %add13.pn.in.i, %while.cond.i.for.inc.i_crit_edge104 ], [ %add13.pn.in.i, %land.rhs.i.for.inc.i_crit_edge ]
  %add86.i = add i32 %i.4.i, 2
  %cmp.i = icmp slt i32 %add86.i, 382
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then5:                                         ; preds = %entry
  %49 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i.i, align 8
  br label %for.body.i3

for.body.i3:                                      ; preds = %for.inc.i42.for.body.i3_crit_edge, %if.then5
  %i.011.i = phi i32 [ 0, %if.then5 ], [ %add95.i, %for.inc.i42.for.body.i3_crit_edge ]
  %arrayidx.i1 = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %i.011.i
  %51 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %52)
  %cmp3.i2 = icmp ult i32 %52, -842150451
  br i1 %cmp3.i2, label %if.then.i6, label %if.else.i7

if.then.i6:                                       ; preds = %for.body.i3
  call void @__sanitizer_cov_trace_pc() #9
  %add.i4 = add nsw i32 %i.011.i, 1
  %arrayidx2.i5 = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %add.i4
  %53 = ptrtoint ptr %arrayidx2.i5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2.i5, align 4
  %55 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 46
  %61 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %62(ptr noundef %hw, i32 noundef %52, i32 noundef -1, i32 noundef %54) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748) #7
  br label %for.inc.i42

if.else.i7:                                       ; preds = %for.body.i3
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %i.011.i)
  %cmp9.i = icmp sgt i32 %i.011.i, 253
  br i1 %cmp9.i, label %if.else.i7.if.end6_crit_edge, label %if.end.i10

if.else.i7.if.end6_crit_edge:                     ; preds = %if.else.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i10:                                       ; preds = %if.else.i7
  %64 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i.i, align 8
  %interface.i.i8 = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 10, i32 9
  %66 = ptrtoint ptr %interface.i.i8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %interface.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %52)
  %cmp.i.i9 = icmp eq i32 %52, -842150451
  br i1 %cmp.i.i9, label %if.end.i10.while.cond45.i.preheader_crit_edge, label %if.end.i.i18

if.end.i10.while.cond45.i.preheader_crit_edge:    ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond45.i.preheader

while.cond45.i.preheader:                         ; preds = %if.end19.i.i29.while.cond45.i.preheader_crit_edge, %if.end.i10.while.cond45.i.preheader_crit_edge
  br label %while.cond45.i

if.end.i.i18:                                     ; preds = %if.end.i10
  %board_type.i.i11 = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 17, i32 17
  %68 = ptrtoint ptr %board_type.i.i11 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %board_type.i.i11, align 1
  %conv.i.i12 = zext i8 %69 to i32
  %and4.i.i13 = and i32 %52, %conv.i.i12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i13)
  %cmp5.i.i14 = icmp ne i32 %and4.i.i13, 0
  %and.i.i15 = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i.i15)
  %cmp7.not.i.i16 = icmp eq i32 %and.i.i15, 31
  %or.cond.i.i17 = or i1 %cmp7.not.i.i16, %cmp5.i.i14
  br i1 %or.cond.i.i17, label %if.end10.i.i25, label %if.end.i.i18.while.cond.i33.preheader_crit_edge

if.end.i.i18.while.cond.i33.preheader_crit_edge:  ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i33.preheader

if.end10.i.i25:                                   ; preds = %if.end.i.i18
  %and11.i.i19 = lshr i32 %52, 8
  %shr.i.i20 = and i32 %and11.i.i19, 255
  %and12.i.i21 = and i32 %67, %shr.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i21)
  %cmp13.i.i22 = icmp ne i32 %and12.i.i21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i.i20)
  %cmp16.not.i.i23 = icmp eq i32 %shr.i.i20, 7
  %or.cond46.i.i24 = or i1 %cmp16.not.i.i23, %cmp13.i.i22
  br i1 %or.cond46.i.i24, label %if.end19.i.i29, label %if.end10.i.i25.while.cond.i33.preheader_crit_edge

if.end10.i.i25.while.cond.i33.preheader_crit_edge: ; preds = %if.end10.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i33.preheader

if.end19.i.i29:                                   ; preds = %if.end10.i.i25
  %70 = and i32 %52, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp23.i.i26 = icmp ne i32 %70, 0
  %71 = and i32 %52, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %71)
  %cmp26.not.i.i27 = icmp eq i32 %71, 983040
  %or.cond47.i.i28 = or i1 %cmp23.i.i26, %cmp26.not.i.i27
  br i1 %or.cond47.i.i28, label %if.end19.i.i29.while.cond45.i.preheader_crit_edge, label %if.end19.i.i29.while.cond.i33.preheader_crit_edge

if.end19.i.i29.while.cond.i33.preheader_crit_edge: ; preds = %if.end19.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i33.preheader

if.end19.i.i29.while.cond45.i.preheader_crit_edge: ; preds = %if.end19.i.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond45.i.preheader

while.cond.i33.preheader:                         ; preds = %if.end19.i.i29.while.cond.i33.preheader_crit_edge, %if.end10.i.i25.while.cond.i33.preheader_crit_edge, %if.end.i.i18.while.cond.i33.preheader_crit_edge
  br label %while.cond.i33

while.cond.i33:                                   ; preds = %land.rhs.i35.while.cond.i33_crit_edge, %while.cond.i33.preheader
  %add16.pn.in.i = phi i32 [ %i.1.i34, %land.rhs.i35.while.cond.i33_crit_edge ], [ %i.011.i, %while.cond.i33.preheader ]
  %add16.pn.i = add nsw i32 %add16.pn.in.i, 3
  %v2.0.in.i31 = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %add16.pn.i
  %72 = ptrtoint ptr %v2.0.in.i31 to i32
  call void @__asan_load4_noabort(i32 %72)
  %v2.0.i32 = load i32, ptr %v2.0.in.i31, align 4
  %73 = zext i32 %v2.0.i32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %v2.0.i32, label %land.rhs.i35 [
    i32 57005, label %while.cond.i33.if.end91.i_crit_edge
    i32 52719, label %while.cond.i33.if.end91.i_crit_edge107
    i32 52685, label %while.cond.i33.if.end91.i_crit_edge108
  ]

while.cond.i33.if.end91.i_crit_edge108:           ; preds = %while.cond.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

while.cond.i33.if.end91.i_crit_edge107:           ; preds = %while.cond.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

while.cond.i33.if.end91.i_crit_edge:              ; preds = %while.cond.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

land.rhs.i35:                                     ; preds = %while.cond.i33
  %i.1.i34 = add nsw i32 %add16.pn.in.i, 2
  %cmp27.i = icmp slt i32 %add16.pn.in.i, 252
  br i1 %cmp27.i, label %land.rhs.i35.while.cond.i33_crit_edge, label %land.rhs.i35.if.end91.i_crit_edge

land.rhs.i35.if.end91.i_crit_edge:                ; preds = %land.rhs.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

land.rhs.i35.while.cond.i33_crit_edge:            ; preds = %land.rhs.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i33

while.cond45.i:                                   ; preds = %while.body60.i, %while.cond45.i.preheader
  %add41.pn.in.i = phi i32 [ %i.2.i36, %while.body60.i ], [ %i.011.i, %while.cond45.i.preheader ]
  %i.2.i36 = add nsw i32 %add41.pn.in.i, 2
  %add41.pn.i = add nsw i32 %add41.pn.in.i, 3
  %v2.1.in.i37 = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %add41.pn.i
  %74 = ptrtoint ptr %v2.1.in.i37 to i32
  call void @__asan_load4_noabort(i32 %74)
  %v2.1.i38 = load i32, ptr %v2.1.in.i37, align 4
  %75 = zext i32 %v2.1.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %v2.1.i38, label %land.rhs54.i [
    i32 57005, label %while.cond45.i.while.end71.i_crit_edge
    i32 52719, label %while.cond45.i.while.end71.i_crit_edge109
    i32 52685, label %while.cond45.i.while.end71.i_crit_edge110
  ]

while.cond45.i.while.end71.i_crit_edge110:        ; preds = %while.cond45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end71.i

while.cond45.i.while.end71.i_crit_edge109:        ; preds = %while.cond45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end71.i

while.cond45.i.while.end71.i_crit_edge:           ; preds = %while.cond45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end71.i

land.rhs54.i:                                     ; preds = %while.cond45.i
  %cmp57.i = icmp slt i32 %add41.pn.in.i, 252
  br i1 %cmp57.i, label %while.body60.i, label %land.rhs54.i.if.end91.i_crit_edge

land.rhs54.i.if.end91.i_crit_edge:                ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

while.body60.i:                                   ; preds = %land.rhs54.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx61.i = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %i.2.i36
  %76 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx61.i, align 4
  %78 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i.i, align 8
  %cfg.i3.i = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i3.i, align 8
  %ops.i4.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i4.i, align 4
  %set_bbreg.i5.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %set_bbreg.i5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_bbreg.i5.i, align 4
  tail call void %85(ptr noundef %hw, i32 noundef %77, i32 noundef -1, i32 noundef %v2.1.i38) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #7
  br label %while.cond45.i

while.end71.i:                                    ; preds = %while.cond45.i.while.end71.i_crit_edge, %while.cond45.i.while.end71.i_crit_edge109, %while.cond45.i.while.end71.i_crit_edge110
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1.i38)
  %cmp73.not7.i = icmp ne i32 %v2.1.i38, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %add41.pn.in.i)
  %cmp788.i = icmp slt i32 %add41.pn.in.i, 252
  %or.cond9.i = select i1 %cmp73.not7.i, i1 %cmp788.i, i1 false
  br i1 %or.cond9.i, label %while.end71.i.do.body82.i_crit_edge, label %while.end71.i.if.end91.i_crit_edge

while.end71.i.if.end91.i_crit_edge:               ; preds = %while.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

while.end71.i.do.body82.i_crit_edge:              ; preds = %while.end71.i
  br label %do.body82.i

do.body82.i:                                      ; preds = %do.body82.i.do.body82.i_crit_edge, %while.end71.i.do.body82.i_crit_edge
  %i.310.i = phi i32 [ %add83.i, %do.body82.i.do.body82.i_crit_edge ], [ %i.2.i36, %while.end71.i.do.body82.i_crit_edge ]
  %add83.i = add nsw i32 %i.310.i, 2
  %add85.i = add nsw i32 %i.310.i, 3
  %arrayidx86.i = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %add85.i
  %87 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %88)
  %cmp73.not.i = icmp ne i32 %88, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %i.310.i)
  %cmp78.i = icmp slt i32 %i.310.i, 252
  %or.cond.i39 = select i1 %cmp73.not.i, i1 %cmp78.i, i1 false
  br i1 %or.cond.i39, label %do.body82.i.do.body82.i_crit_edge, label %do.body82.i.if.end91.i_crit_edge

do.body82.i.if.end91.i_crit_edge:                 ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91.i

do.body82.i.do.body82.i_crit_edge:                ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body82.i

if.end91.i:                                       ; preds = %do.body82.i.if.end91.i_crit_edge, %while.end71.i.if.end91.i_crit_edge, %land.rhs54.i.if.end91.i_crit_edge, %land.rhs.i35.if.end91.i_crit_edge, %while.cond.i33.if.end91.i_crit_edge, %while.cond.i33.if.end91.i_crit_edge107, %while.cond.i33.if.end91.i_crit_edge108
  %i.4.i40 = phi i32 [ %i.2.i36, %while.end71.i.if.end91.i_crit_edge ], [ %add83.i, %do.body82.i.if.end91.i_crit_edge ], [ %i.2.i36, %land.rhs54.i.if.end91.i_crit_edge ], [ %add16.pn.in.i, %while.cond.i33.if.end91.i_crit_edge ], [ %add16.pn.in.i, %while.cond.i33.if.end91.i_crit_edge107 ], [ %add16.pn.in.i, %while.cond.i33.if.end91.i_crit_edge108 ], [ %add16.pn.in.i, %land.rhs.i35.if.end91.i_crit_edge ]
  %arrayidx92.i = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %i.4.i40
  %89 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx92.i, align 4
  %add93.i = add i32 %i.4.i40, 1
  %arrayidx94.i = getelementptr i32, ptr @RTL8188EEAGCTAB_1TARRAY, i32 %add93.i
  %91 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx94.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %50, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.42, i32 noundef %90, i32 noundef %92) #7
  br label %for.inc.i42

for.inc.i42:                                      ; preds = %if.end91.i, %if.then.i6
  %i.5.i = phi i32 [ %i.011.i, %if.then.i6 ], [ %i.4.i40, %if.end91.i ]
  %add95.i = add i32 %i.5.i, 2
  %cmp.i41 = icmp slt i32 %add95.i, 256
  br i1 %cmp.i41, label %for.inc.i42.for.body.i3_crit_edge, label %for.inc.i42.if.end6_crit_edge

for.inc.i42.if.end6_crit_edge:                    ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.inc.i42.for.body.i3_crit_edge:                ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i3

if.end6:                                          ; preds = %for.inc.i42.if.end6_crit_edge, %if.else.i7.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.else.i.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !127, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 57, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 71, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 94, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 107, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 120, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 766, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 768, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 795, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 807, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1063, i32 4}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl88e_phy_scan_operation_backup._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl88e_phy_scan_operation_backup._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1078, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1104, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rtl88e_phy_set_bw_mode_callback._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rtl88e_phy_set_bw_mode_callback._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @rtl88e_phy_set_bw_mode_callback._entry.18, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1129, i32 3}
!37 = !{ptr @rtl88e_phy_set_bw_mode_callback._entry_ptr.19, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1135, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1152, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1166, i32 2}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1198, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1205, i32 3}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1210, i32 3}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2051, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2071, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2077, i32 4}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2082, i32 4}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2087, i32 4}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2099, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 187, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 211, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 346, i32 3}
!69 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 356, i32 3}
!74 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 362, i32 3}
!78 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @_rtl88e_phy_bb8188e_config_parafile._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 484, i32 3}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 693, i32 3}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 518, i32 3}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 525, i32 3}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 532, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 539, i32 3}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 546, i32 3}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 553, i32 3}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 560, i32 3}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 571, i32 3}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 578, i32 3}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 585, i32 3}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 592, i32 3}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 599, i32 3}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 606, i32 3}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 613, i32 3}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 620, i32 3}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 627, i32 3}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 378, i32 2}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 381, i32 2}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1247, i32 2}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1270, i32 4}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @_rtl88e_phy_sw_chnl_step_by_step._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @_rtl88e_phy_sw_chnl_step_by_step._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1334, i32 3}
!130 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1746, i32 4}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1759, i32 4}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1767, i32 4}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1773, i32 3}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 1825, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2109, i32 2}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2131, i32 2}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2177, i32 5}
!147 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2185, i32 4}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2209, i32 5}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2218, i32 5}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2228, i32 4}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8188ee/phy.c", i32 2269, i32 4}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i32 0, i32 33}
!167 = !{i8 0, i8 2}
!168 = !{!"branch_weights", i32 2000, i32 1}
