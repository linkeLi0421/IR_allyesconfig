; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c"
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@RTL8723BE_RADIOA_1TARRAY = external dso_local global [0 x i32], align 4
@RTL8723BE_RADIOA_1TARRAYLEN = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl8723be_phy_scan_operation_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8723be: Unknown Scan Backup operation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl8723be_phy_scan_operation_backup\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl8723be_phy_scan_operation_backup._entry_ptr = internal global ptr @rtl8723be_phy_scan_operation_backup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl8723be_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 1217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8723be: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtl8723be_phy_set_bw_mode_callback\00", [61 x i8] zeroinitializer }, align 32
@rtl8723be_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl8723be_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl8723be_phy_set_bw_mode_callback._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8723be_phy_set_bw_mode_callback._entry_ptr.16 = internal global ptr @rtl8723be_phy_set_bw_mode_callback._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"false driver sleep or unload\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch to channel%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8723be_phy_sw_chnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8723be: WIRELESS_MODE_G but channel>14\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sw_chnl_inprogress false schedule workitem current channel %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", [47 x i8] zeroinitializer }, align 32
@__const.rtl8723be_phy_iq_calibrate.iqk_bb_reg = private unnamed_addr constant [9 x i32] [i32 3092, i32 3100, i32 3148, i32 3192, i32 3200, i32 3208, i32 3220, i32 3228, i32 3232], align 4
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LCK:Start!!! currentband %x delay %d ms\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"-->IO Cmd(%#x), set_io_inprogress(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Resume DM after scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Pause DM before scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IO Type(%#x)\0A\00", [18 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_bb8723b_config_parafile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.9, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8723be: Write BB Reg Fail!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"_rtl8723be_phy_bb8723b_config_parafile\00", [57 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_bb8723b_config_parafile._entry_ptr = internal global ptr @_rtl8723be_phy_bb8723b_config_parafile._entry, section ".printk_index", align 4
@_rtl8723be_phy_bb8723b_config_parafile._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.9, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8723be: BB_PG Reg Fail!!\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.32 = internal global ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.30, section ".printk_index", align 4
@_rtl8723be_phy_bb8723b_config_parafile._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.9, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8723be: AGC Table Fail\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.35 = internal global ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.33, section ".printk_index", align 4
@RTL8723BEPHY_REG_1TARRAY = external dso_local global [0 x i32], align 4
@RTL8723BEPHY_REG_1TARRAYLEN = external dso_local local_unnamed_addr global i32, align 4
@RTL8723BEAGCTAB_1TARRAY = external dso_local global [0 x i32], align 4
@RTL8723BEAGCTAB_1TARRAYLEN = external dso_local local_unnamed_addr global i32, align 4
@RTL8723BEPHY_REG_ARRAY_PGLEN = external dso_local local_unnamed_addr global i32, align 4
@RTL8723BEPHY_REG_ARRAY_PG = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid Band %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid RfPath %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid TxNum %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<===%s\0A\00", [24 x i8] zeroinitializer }, align 32
@__func__._rtl8723be_phy_convert_txpower_dbm_to_relative_value = private unnamed_addr constant [53 x i8] c"_rtl8723be_phy_convert_txpower_dbm_to_relative_value\00", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Read rtl8723beMACPHY_Array\0A\00", [36 x i8] zeroinitializer }, align 32
@RTL8723BEMAC_1T_ARRAY = external dso_local global [0 x i32], align 4
@RTL8723BEMAC_1T_ARRAYLEN = external dso_local local_unnamed_addr global i32, align 4
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"===> [8812A] CheckPositive (cond1, cond2) = (0x%X 0x%X)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"===> [8812A] CheckPositive (driver1, driver2) = (0x%X 0x%X)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(Platform, Interface) = (0x%X, 0x%X)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(Board, Package) = (0x%X, 0x%X)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Illegal channel!\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl8723be_get_txpower_by_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl8723be: Rate_Section is Illegal\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_get_ratesection_intxpower_byrate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid Rate!!\0A\00", [16 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_sw_chnl_step_by_step.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8723be: illegal channel for Zebra: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_sw_chnl_step_by_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.9, i32 1388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtl8723be: Invalid 'stage' = %d, Check it!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"_rtl8723be_phy_sw_chnl_step_by_step\00", [60 x i8] zeroinitializer }, align 32
@_rtl8723be_phy_sw_chnl_step_by_step._entry_ptr = internal global ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry, section ".printk_index", align 4
@__const._rtl8723be_phy_iq_calibrate.adda_reg = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@__const._rtl8723be_phy_iq_calibrate.iqk_mac_reg = private unnamed_addr constant [4 x i32] [i32 1314, i32 1360, i32 1361, i32 64], align 4
@__const._rtl8723be_phy_iq_calibrate.iqk_bb_reg = private unnamed_addr constant [9 x i32] [i32 3076, i32 3080, i32 2164, i32 2920, i32 2924, i32 2160, i32 2144, i32 2148, i32 2564], align 4
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Tx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path A Tx IQK Fail!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Rx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path A Rx IQK Fail!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Path A IQK Fail!!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path B Tx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path B Tx IQK Fail!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path B Rx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path B Rx IQK Fail!!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"8723be IQK Finish!!\0A\00", [43 x i8] zeroinitializer }, align 32
@__const._get_right_chnl_place_for_iqk.channel_all = private unnamed_addr constant [59 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$&(*,.02468:<>@dfhjlnprtvxz|~\80\82\84\86\88\8A\8C\95\97\99\9B\9D\9F\A1\A3\A5", align 1
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%#x)\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set ERFON slept:%d ms\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.74 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 4094]
@__sancov_gen_cov_switch_values.78 = internal global [17 x i64] [i64 15, i64 32, i64 2096, i64 2100, i64 2104, i64 2108, i64 2120, i64 2124, i64 2152, i64 2156, i64 3584, i64 3588, i64 3592, i64 3600, i64 3604, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 4094]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.84 = internal global [28 x i64] [i64 26, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.85 = internal global [26 x i64] [i64 24, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 37, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 49, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 62, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 750, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 765, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 786, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 798, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1175, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1190, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1216, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1241, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1247, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1264, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1278, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1312, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1319, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1324, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2401, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2421, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2427, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2432, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2449, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 510, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 521, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 527, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 687, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 691, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 696, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 480, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 591, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 161, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 164, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 168, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 170, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 953, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 933, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1102, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1363, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1387, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2061, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2069, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2077, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2085, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2090, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2097, i32 5 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2107, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2114, i32 5 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2124, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2153, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2459, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2481, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2525, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2531, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2558, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2567, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2577, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 2619, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @_rtl8723be_phy_bb8723b_config_parafile._entry, ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.30, ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.33, ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr, ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.32, ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.35, ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry, ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry_ptr, ptr @rtl8723be_phy_scan_operation_backup._entry, ptr @rtl8723be_phy_scan_operation_backup._entry_ptr, ptr @rtl8723be_phy_set_bw_mode_callback._entry, ptr @rtl8723be_phy_set_bw_mode_callback._entry.15, ptr @rtl8723be_phy_set_bw_mode_callback._entry_ptr, ptr @rtl8723be_phy_set_bw_mode_callback._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_phy_scan_operation_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723be_phy_set_bw_mode_callback._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_phy_bb8723b_config_parafile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723be_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #7
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #7
  %call = tail call i32 @rtl8723_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #7
  %call1 = tail call i32 @rtl8723_phy_calculate_bit_shift(i32 noundef %bitmask) #7
  %and = and i32 %call, %bitmask
  %shr = lshr i32 %and, %call1
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %call) #7
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723_phy_rf_serial_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723_phy_calculate_bit_shift(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_set_rf_reg(ptr noundef %hw, i32 noundef %path, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %path) #7
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
  %call = tail call i32 @rtl8723_phy_rf_serial_read(ptr noundef %hw, i32 noundef %path, i32 noundef %regaddr) #7
  %call1 = tail call i32 @rtl8723_phy_calculate_bit_shift(i32 noundef %bitmask) #7
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %data, %call1
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then ], [ %data, %entry.if.end_crit_edge ]
  tail call void @rtl8723_phy_rf_serial_write(ptr noundef %hw, i32 noundef %path, i32 noundef %regaddr, i32 noundef %data.addr.0) #7
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0, i32 noundef %path) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_mac_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.47) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @RTL8723BEMAC_1T_ARRAYLEN to i32))
  %2 = load i32, ptr @RTL8723BEMAC_1T_ARRAYLEN, align 4
  %conv.i = trunc i32 %2 to i16
  tail call fastcc void @rtl8723be_phy_config_with_headerfile(ptr noundef %hw, ptr noundef nonnull @RTL8723BEMAC_1T_ARRAY, i16 noundef zeroext %conv.i, ptr noundef nonnull @rtl_write_byte_with_val32) #7
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %3 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write8_async.i, align 4
  tail call void %4(ptr noundef %1, i32 noundef 1226, i8 noundef zeroext 11) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 1226) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %crystalcap1 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 58
  %2 = ptrtoint ptr %crystalcap1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %crystalcap1, align 2
  tail call void @rtl8723_phy_init_bb_rf_reg_def(ptr noundef %hw) #7
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %4 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %5(ptr noundef %1, i32 noundef 2) #7
  %6 = or i16 %call.i, 8195
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %7 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write16_async.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %6) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read16_sync.i, align 4
  %call.i28 = tail call zeroext i16 %14(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #7
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i30 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i30, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i31 = icmp eq i8 %20, 0
  br i1 %tobool.not.i31, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i33

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i33:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i32 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 31) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i33, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %23 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write8_async.i, align 4
  tail call void %24(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -29) #7
  %25 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cfg.i, align 8
  %write_readback.i36 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %write_readback.i36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_readback.i36, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i37 = icmp eq i8 %28, 0
  br i1 %tobool.not.i37, label %rtl_write_byte.exit.rtl_write_byte.exit41_crit_edge, label %if.then.i40

rtl_write_byte.exit.rtl_write_byte.exit41_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit41

if.then.i40:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i38 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %29 = ptrtoint ptr %read8_sync.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read8_sync.i38, align 4
  %call.i39 = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 2) #7
  br label %rtl_write_byte.exit41

rtl_write_byte.exit41:                            ; preds = %if.then.i40, %rtl_write_byte.exit.rtl_write_byte.exit41_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %31 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32_sync.i, align 4
  %call.i42 = tail call i32 %32(ptr noundef %1, i32 noundef 76) #7
  %or6 = or i32 %call.i42, 8388608
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32_async.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef 76, i32 noundef %or6) #7
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i, align 8
  %write_readback.i44 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i44 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i44, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i45 = icmp eq i8 %38, 0
  br i1 %tobool.not.i45, label %rtl_write_byte.exit41.rtl_write_dword.exit_crit_edge, label %if.then.i48

rtl_write_byte.exit41.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_dword.exit

if.then.i48:                                      ; preds = %rtl_write_byte.exit41
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32_sync.i, align 4
  %call.i47 = tail call i32 %40(ptr noundef %1, i32 noundef 76) #7
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i48, %rtl_write_byte.exit41.rtl_write_dword.exit_crit_edge
  %41 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write8_async.i, align 4
  tail call void %42(ptr noundef %1, i32 noundef 37, i8 noundef zeroext -128) #7
  %43 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg.i, align 8
  %write_readback.i51 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %write_readback.i51 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %write_readback.i51, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i52 = icmp eq i8 %46, 0
  br i1 %tobool.not.i52, label %rtl_write_dword.exit.rtl_write_byte.exit56_crit_edge, label %if.then.i55

rtl_write_dword.exit.rtl_write_byte.exit56_crit_edge: ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit56

if.then.i55:                                      ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i53 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %47 = ptrtoint ptr %read8_sync.i53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read8_sync.i53, align 4
  %call.i54 = tail call zeroext i8 %48(ptr noundef %1, i32 noundef 37) #7
  br label %rtl_write_byte.exit56

rtl_write_byte.exit56:                            ; preds = %if.then.i55, %rtl_write_dword.exit.rtl_write_byte.exit56_crit_edge
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %interface.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 10, i32 9
  %51 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i = icmp eq i32 %52, 1
  br i1 %cmp.i, label %if.then.i57, label %if.else.i

if.then.i57:                                      ; preds = %rtl_write_byte.exit56
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 7
  %53 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32_async.i.i, align 4
  tail call void %54(ptr noundef %50, i32 noundef 2376, i32 noundef 0) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %if.then.i57.if.end6.i_crit_edge, label %if.then.i57.if.end6.sink.split.i_crit_edge

if.then.i57.if.end6.sink.split.i_crit_edge:       ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split.i

if.then.i57.if.end6.i_crit_edge:                  ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.else.i:                                        ; preds = %rtl_write_byte.exit56
  %single_ant_path.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 49, i32 1, i32 3
  %59 = ptrtoint ptr %single_ant_path.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %single_ant_path.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %cmp2.i = icmp eq i8 %60, 0
  %write32_async.i1.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 7
  %61 = ptrtoint ptr %write32_async.i1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write32_async.i1.i, align 4
  br i1 %cmp2.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  tail call void %62(ptr noundef %50, i32 noundef 2376, i32 noundef 640) #7
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i2.i, align 8
  %write_readback.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write_readback.i3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %write_readback.i3.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i4.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i4.i, label %if.then4.i.if.end6.i_crit_edge, label %if.then4.i.if.end6.sink.split.i_crit_edge

if.then4.i.if.end6.sink.split.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split.i

if.then4.i.if.end6.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.else5.i:                                       ; preds = %if.else.i
  tail call void %62(ptr noundef %50, i32 noundef 2376, i32 noundef 0) #7
  %cfg.i10.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 32
  %67 = ptrtoint ptr %cfg.i10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i10.i, align 8
  %write_readback.i11.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write_readback.i11.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_readback.i11.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i12.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i12.i, label %if.else5.i.if.end6.i_crit_edge, label %if.else5.i.if.end6.sink.split.i_crit_edge

if.else5.i.if.end6.sink.split.i_crit_edge:        ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.sink.split.i

if.else5.i.if.end6.i_crit_edge:                   ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.sink.split.i:                             ; preds = %if.else5.i.if.end6.sink.split.i_crit_edge, %if.then4.i.if.end6.sink.split.i_crit_edge, %if.then.i57.if.end6.sink.split.i_crit_edge
  %read32_sync.i13.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 13, i32 11
  %71 = ptrtoint ptr %read32_sync.i13.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read32_sync.i13.i, align 4
  %call.i14.i = tail call i32 %72(ptr noundef %50, i32 noundef 2376) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.else5.i.if.end6.i_crit_edge, %if.then4.i.if.end6.i_crit_edge, %if.then.i57.if.end6.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @RTL8723BEPHY_REG_1TARRAYLEN to i32))
  %73 = load i32, ptr @RTL8723BEPHY_REG_1TARRAYLEN, align 4
  %conv2.i.i = trunc i32 %73 to i16
  tail call fastcc void @rtl8723be_phy_config_with_headerfile(ptr noundef %hw, ptr noundef nonnull @RTL8723BEPHY_REG_1TARRAY, i16 noundef zeroext %conv2.i.i, ptr noundef nonnull @_rtl8723be_config_bb_reg) #7
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 8
  %uglygep.i.i = getelementptr i8, ptr %75, i32 7592
  %76 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 48)
  %uglygep.1.i.i = getelementptr i8, ptr %75, i32 7928
  %77 = call ptr @memset(ptr %uglygep.1.i.i, i32 0, i32 48)
  %uglygep.2.i.i = getelementptr i8, ptr %75, i32 8264
  %78 = call ptr @memset(ptr %uglygep.2.i.i, i32 0, i32 48)
  %uglygep.3.i.i = getelementptr i8, ptr %75, i32 8600
  %79 = call ptr @memset(ptr %uglygep.3.i.i, i32 0, i32 48)
  %uglygep.151.i.i = getelementptr i8, ptr %75, i32 8936
  %80 = call ptr @memset(ptr %uglygep.151.i.i, i32 0, i32 48)
  %uglygep.1.1.i.i = getelementptr i8, ptr %75, i32 9272
  %81 = call ptr @memset(ptr %uglygep.1.1.i.i, i32 0, i32 48)
  %uglygep.2.1.i.i = getelementptr i8, ptr %75, i32 9608
  %82 = call ptr @memset(ptr %uglygep.2.1.i.i, i32 0, i32 48)
  %uglygep.3.1.i.i = getelementptr i8, ptr %75, i32 9944
  %83 = call ptr @memset(ptr %uglygep.3.1.i.i, i32 0, i32 48)
  %uglygep.253.i.i = getelementptr i8, ptr %75, i32 10280
  %84 = call ptr @memset(ptr %uglygep.253.i.i, i32 0, i32 48)
  %uglygep.1.2.i.i = getelementptr i8, ptr %75, i32 10616
  %85 = call ptr @memset(ptr %uglygep.1.2.i.i, i32 0, i32 48)
  %uglygep.2.2.i.i = getelementptr i8, ptr %75, i32 10952
  %86 = call ptr @memset(ptr %uglygep.2.2.i.i, i32 0, i32 48)
  %uglygep.3.2.i.i = getelementptr i8, ptr %75, i32 11288
  %87 = call ptr @memset(ptr %uglygep.3.2.i.i, i32 0, i32 48)
  %uglygep.355.i.i = getelementptr i8, ptr %75, i32 11624
  %88 = call ptr @memset(ptr %uglygep.355.i.i, i32 0, i32 48)
  %uglygep.1.3.i.i = getelementptr i8, ptr %75, i32 11960
  %89 = call ptr @memset(ptr %uglygep.1.3.i.i, i32 0, i32 48)
  %uglygep.2.3.i.i = getelementptr i8, ptr %75, i32 12296
  %90 = call ptr @memset(ptr %uglygep.2.3.i.i, i32 0, i32 48)
  %uglygep.3.3.i.i = getelementptr i8, ptr %75, i32 12632
  %91 = call ptr @memset(ptr %uglygep.3.3.i.i, i32 0, i32 48)
  %uglygep.157.i.i = getelementptr i8, ptr %75, i32 12968
  %92 = call ptr @memset(ptr %uglygep.157.i.i, i32 0, i32 48)
  %uglygep.1.159.i.i = getelementptr i8, ptr %75, i32 13304
  %93 = call ptr @memset(ptr %uglygep.1.159.i.i, i32 0, i32 48)
  %uglygep.2.161.i.i = getelementptr i8, ptr %75, i32 13640
  %94 = call ptr @memset(ptr %uglygep.2.161.i.i, i32 0, i32 48)
  %uglygep.3.163.i.i = getelementptr i8, ptr %75, i32 13976
  %95 = call ptr @memset(ptr %uglygep.3.163.i.i, i32 0, i32 48)
  %uglygep.151.1.i.i = getelementptr i8, ptr %75, i32 14312
  %96 = call ptr @memset(ptr %uglygep.151.1.i.i, i32 0, i32 48)
  %uglygep.1.1.1.i.i = getelementptr i8, ptr %75, i32 14648
  %97 = call ptr @memset(ptr %uglygep.1.1.1.i.i, i32 0, i32 48)
  %uglygep.2.1.1.i.i = getelementptr i8, ptr %75, i32 14984
  %98 = call ptr @memset(ptr %uglygep.2.1.1.i.i, i32 0, i32 48)
  %uglygep.3.1.1.i.i = getelementptr i8, ptr %75, i32 15320
  %99 = call ptr @memset(ptr %uglygep.3.1.1.i.i, i32 0, i32 48)
  %uglygep.253.1.i.i = getelementptr i8, ptr %75, i32 15656
  %100 = call ptr @memset(ptr %uglygep.253.1.i.i, i32 0, i32 48)
  %uglygep.1.2.1.i.i = getelementptr i8, ptr %75, i32 15992
  %101 = call ptr @memset(ptr %uglygep.1.2.1.i.i, i32 0, i32 48)
  %uglygep.2.2.1.i.i = getelementptr i8, ptr %75, i32 16328
  %102 = call ptr @memset(ptr %uglygep.2.2.1.i.i, i32 0, i32 48)
  %uglygep.3.2.1.i.i = getelementptr i8, ptr %75, i32 16664
  %103 = call ptr @memset(ptr %uglygep.3.2.1.i.i, i32 0, i32 48)
  %uglygep.355.1.i.i = getelementptr i8, ptr %75, i32 17000
  %104 = call ptr @memset(ptr %uglygep.355.1.i.i, i32 0, i32 48)
  %uglygep.1.3.1.i.i = getelementptr i8, ptr %75, i32 17336
  %105 = call ptr @memset(ptr %uglygep.1.3.1.i.i, i32 0, i32 48)
  %uglygep.2.3.1.i.i = getelementptr i8, ptr %75, i32 17672
  %106 = call ptr @memset(ptr %uglygep.2.3.1.i.i, i32 0, i32 48)
  %uglygep.3.3.1.i.i = getelementptr i8, ptr %75, i32 18008
  %107 = call ptr @memset(ptr %uglygep.3.3.1.i.i, i32 0, i32 48)
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 17, i32 7
  %108 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool10.not.i = icmp eq i8 %109, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end6.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge

if.end6.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_bb8723b_config_parafile.exit

if.then11.i:                                      ; preds = %if.end6.i
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 14, i32 38
  %110 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %pwrgroup_cnt.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @RTL8723BEPHY_REG_ARRAY_PGLEN to i32))
  %111 = load i32, ptr @RTL8723BEPHY_REG_ARRAY_PGLEN, align 4
  %conv3.i.i = and i32 %111, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i.i)
  %cmp42.not.i.i = icmp eq i32 %conv3.i.i, 0
  br i1 %cmp42.not.i.i, label %if.then11.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge, label %if.then11.i.for.body.i.i_crit_edge

if.then11.i.for.body.i.i_crit_edge:               ; preds = %if.then11.i
  br label %for.body.i.i

if.then11.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_bb8723b_config_parafile.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then11.i.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %add26.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then11.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @RTL8723BEPHY_REG_ARRAY_PG, i32 %i.03.i.i
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = or i32 %i.03.i.i, 1
  %arrayidx6.i.i = getelementptr i32, ptr @RTL8723BEPHY_REG_ARRAY_PG, i32 %add.i.i
  %114 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx6.i.i, align 4
  %add7.i.i = add nuw nsw i32 %i.03.i.i, 2
  %arrayidx8.i.i = getelementptr i32, ptr @RTL8723BEPHY_REG_ARRAY_PG, i32 %add7.i.i
  %116 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx8.i.i, align 4
  %add9.i.i = add nuw nsw i32 %i.03.i.i, 3
  %arrayidx10.i.i = getelementptr i32, ptr @RTL8723BEPHY_REG_ARRAY_PG, i32 %add9.i.i
  %118 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx10.i.i, align 4
  %add13.i.i = add nuw nsw i32 %i.03.i.i, 5
  %arrayidx14.i.i = getelementptr i32, ptr @RTL8723BEPHY_REG_ARRAY_PG, i32 %add13.i.i
  %120 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %113)
  %cmp15.i.i = icmp ult i32 %113, -842150451
  br i1 %cmp15.i.i, label %if.then17.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then17.i.i:                                    ; preds = %for.body.i.i
  %122 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values)
  switch i32 %113, label %if.else.i.i [
    i32 254, label %if.then17.i.i.while.body.i.i.preheader_crit_edge
    i32 4094, label %if.then17.i.i.while.body.i.i.preheader_crit_edge60
  ]

if.then17.i.i.while.body.i.i.preheader_crit_edge60: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.preheader

if.then17.i.i.while.body.i.i.preheader_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.then17.i.i.while.body.i.i.preheader_crit_edge, %if.then17.i.i.while.body.i.i.preheader_crit_edge60
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %__ms.01.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 50, %while.body.i.i.preheader ]
  %dec.i.i = add nsw i32 %__ms.01.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #7
  %tobool.not.i18.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i18.i, label %while.body.i.i.for.inc.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.for.inc.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %if.then17.i.i
  %124 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %priv, align 8
  %126 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %119, label %sw.default.i.i.i.i [
    i32 3584, label %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge
    i32 3588, label %sw.bb1.i.i.i.i
    i32 3592, label %sw.bb2.i.i.i.i
    i32 2156, label %sw.bb3.i.i.i.i
    i32 3600, label %sw.bb4.i.i.i.i
    i32 3604, label %sw.bb5.i.i.i.i
    i32 3608, label %sw.bb6.i.i.i.i
    i32 3612, label %sw.bb7.i.i.i.i
    i32 2096, label %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge61
    i32 2100, label %sw.bb9.i.i.i.i
    i32 2104, label %sw.bb10.i.i.i.i
    i32 2108, label %sw.bb11.i.i.i.i
    i32 2120, label %sw.bb12.i.i.i.i
    i32 2124, label %sw.bb13.i.i.i.i
    i32 2152, label %sw.bb14.i.i.i.i
  ]

if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge61: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb2.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb3.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb4.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb6.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb7.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb9.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb10.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb11.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb12.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb13.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.bb14.i.i.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.else.i.i
  %and.i.i.i.i = and i32 %119, 4095
  %127 = add nsw i32 %and.i.i.i.i, -3104
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %127)
  %128 = icmp ult i32 %127, 45
  br i1 %128, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = add i32 %119, 992
  %div34.i.i.i.i = lshr i32 %sub.i.i.i.i, 2
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.default.i.i.i.i
  %129 = add nsw i32 %and.i.i.i.i, -3616
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %129)
  %130 = icmp ult i32 %129, 45
  br i1 %130, label %if.then21.i.i.i.i, label %if.else.i.i.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge

if.else.i.i.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

if.then21.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub22.i.i.i.i = add i32 %119, 480
  %div2333.i.i.i.i = lshr i32 %sub22.i.i.i.i, 2
  br label %_rtl8723be_get_rate_section_index.exit.i.i.i

_rtl8723be_get_rate_section_index.exit.i.i.i:     ; preds = %if.then21.i.i.i.i, %if.else.i.i.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge, %if.then.i.i.i.i, %sw.bb14.i.i.i.i, %sw.bb13.i.i.i.i, %sw.bb12.i.i.i.i, %sw.bb11.i.i.i.i, %sw.bb10.i.i.i.i, %sw.bb9.i.i.i.i, %sw.bb7.i.i.i.i, %sw.bb6.i.i.i.i, %sw.bb5.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb3.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge, %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge61
  %index.0.i.i.i.i = phi i32 [ %div34.i.i.i.i, %if.then.i.i.i.i ], [ %div2333.i.i.i.i, %if.then21.i.i.i.i ], [ 0, %if.else.i.i.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge ], [ 7, %sw.bb14.i.i.i.i ], [ 6, %sw.bb13.i.i.i.i ], [ 5, %sw.bb12.i.i.i.i ], [ 4, %sw.bb11.i.i.i.i ], [ 2, %sw.bb10.i.i.i.i ], [ 1, %sw.bb9.i.i.i.i ], [ 7, %sw.bb7.i.i.i.i ], [ 6, %sw.bb6.i.i.i.i ], [ 5, %sw.bb5.i.i.i.i ], [ 4, %sw.bb4.i.i.i.i ], [ 3, %sw.bb3.i.i.i.i ], [ 2, %sw.bb2.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i ], [ 0, %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge ], [ 0, %if.else.i.i._rtl8723be_get_rate_section_index.exit.i.i.i_crit_edge61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %switch.i.i.i = icmp ult i32 %113, 2
  br i1 %switch.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_rtl8723be_get_rate_section_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %125, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.37, i32 noundef %113) #7
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %_rtl8723be_get_rate_section_index.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp2.i.i.i = icmp ugt i32 %115, 3
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %125, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.38, i32 noundef %115) #7
  br label %for.inc.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %117)
  %cmp5.i.i.i = icmp ugt i32 %117, 3
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end7.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %125, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.39, i32 noundef %117) #7
  br label %for.inc.i.i

if.end7.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i.i.i = and i32 %index.0.i.i.i.i, 255
  %arrayidx10.i.i.i = getelementptr %struct.rtl_priv, ptr %125, i32 0, i32 14, i32 42, i32 %113, i32 %115, i32 %117, i32 %idxprom.i.i.i
  %131 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %121, ptr %arrayidx10.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.i, %if.then6.i.i.i, %if.then3.i.i.i, %if.then.i.i.i, %while.body.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %add26.i.i = add nuw nsw i32 %i.03.i.i, 6
  %cmp4.i.i = icmp ult i32 %add26.i.i, %conv3.i.i
  br i1 %cmp4.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge

for.inc.i.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_bb8723b_config_parafile.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

_rtl8723be_phy_bb8723b_config_parafile.exit:      ; preds = %for.inc.i.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge, %if.then11.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge, %if.end6.i._rtl8723be_phy_bb8723b_config_parafile.exit_crit_edge
  %132 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv, align 8
  %arrayidx25.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 3
  %arrayidx7.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 3
  %134 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx7.i.i.i, align 4
  %shr.i.i.i = lshr i32 %135, 24
  %136 = lshr i32 %135, 28
  %mul.i.i.i = mul nuw nsw i32 %136, 10
  %and14.i.i.i = and i32 %shr.i.i.i, 15
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %and14.i.i.i
  %conv15.i.i.i = trunc i32 %add.i.i.i to i8
  %arrayidx9.i.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 43, i32 0, i32 0
  %137 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv15.i.i.i, ptr %arrayidx9.i.i.i.i, align 2
  %arrayidx44.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx44.i.i.i, align 4
  %shr45.i.i.i = lshr i32 %139, 24
  %140 = lshr i32 %139, 28
  %mul52.i.i.i = mul nuw nsw i32 %140, 10
  %and54.i.i.i = and i32 %shr45.i.i.i, 15
  %add55.i.i.i = add nuw nsw i32 %mul52.i.i.i, %and54.i.i.i
  %conv56.i.i.i = trunc i32 %add55.i.i.i to i8
  %141 = load ptr, ptr %priv, align 8
  %arrayidx17.i.i.i.i = getelementptr %struct.rtl_priv, ptr %141, i32 0, i32 14, i32 43, i32 0, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv56.i.i.i, ptr %arrayidx17.i.i.i.i, align 1
  %arrayidx62.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 5
  %143 = ptrtoint ptr %arrayidx62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx62.i.i.i, align 4
  %shr63.i.i.i = lshr i32 %144, 24
  %145 = lshr i32 %144, 28
  %mul70.i.i.i = mul nuw nsw i32 %145, 10
  %and72.i.i.i = and i32 %shr63.i.i.i, 15
  %add73.i.i.i = add nuw nsw i32 %mul70.i.i.i, %and72.i.i.i
  %conv74.i.i.i = trunc i32 %add73.i.i.i to i8
  %146 = load ptr, ptr %priv, align 8
  %arrayidx24.i.i.i.i = getelementptr %struct.rtl_priv, ptr %146, i32 0, i32 14, i32 43, i32 0, i32 0, i32 2
  %147 = ptrtoint ptr %arrayidx24.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv74.i.i.i, ptr %arrayidx24.i.i.i.i, align 2
  %arrayidx80.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 0, i32 1, i32 7
  %148 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx80.i.i.i, align 4
  %shr81.i.i.i = lshr i32 %149, 24
  %150 = lshr i32 %149, 28
  %mul88.i.i.i = mul nuw nsw i32 %150, 10
  %and90.i.i.i = and i32 %shr81.i.i.i, 15
  %add91.i.i.i = add nuw nsw i32 %mul88.i.i.i, %and90.i.i.i
  %conv92.i.i.i = trunc i32 %add91.i.i.i to i8
  %151 = load ptr, ptr %priv, align 8
  %arrayidx31.i.i.i.i = getelementptr %struct.rtl_priv, ptr %151, i32 0, i32 14, i32 43, i32 0, i32 1, i32 3
  %152 = ptrtoint ptr %arrayidx31.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv92.i.i.i, ptr %arrayidx31.i.i.i.i, align 1
  %153 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx25.i.i.i, align 4
  %conv30.1.i.i.i = lshr i32 %154, 4
  %155 = and i32 %conv30.1.i.i.i, 15
  %mul33.1.i.i.i = mul nuw nsw i32 %155, 10
  %and35.1.i.i.i = and i32 %154, 15
  %add36.1.i.i.i = add nuw nsw i32 %mul33.1.i.i.i, %and35.1.i.i.i
  %conv37.1.i.i.i = trunc i32 %add36.1.i.i.i to i8
  %156 = load ptr, ptr %priv, align 8
  %arrayidx9.i133.1.i.i.i = getelementptr %struct.rtl_priv, ptr %156, i32 0, i32 14, i32 43, i32 1, i32 0
  %157 = ptrtoint ptr %arrayidx9.i133.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv37.1.i.i.i, ptr %arrayidx9.i133.1.i.i.i, align 2
  %arrayidx44.1.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx44.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx44.1.i.i.i, align 4
  %shr45.1.i.i.i = lshr i32 %159, 24
  %160 = lshr i32 %159, 28
  %mul52.1.i.i.i = mul nuw nsw i32 %160, 10
  %and54.1.i.i.i = and i32 %shr45.1.i.i.i, 15
  %add55.1.i.i.i = add nuw nsw i32 %mul52.1.i.i.i, %and54.1.i.i.i
  %conv56.1.i.i.i = trunc i32 %add55.1.i.i.i to i8
  %161 = load ptr, ptr %priv, align 8
  %arrayidx17.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %161, i32 0, i32 14, i32 43, i32 1, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx17.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv56.1.i.i.i, ptr %arrayidx17.i.1.i.i.i, align 1
  %arrayidx62.1.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 5
  %163 = ptrtoint ptr %arrayidx62.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx62.1.i.i.i, align 4
  %shr63.1.i.i.i = lshr i32 %164, 24
  %165 = lshr i32 %164, 28
  %mul70.1.i.i.i = mul nuw nsw i32 %165, 10
  %and72.1.i.i.i = and i32 %shr63.1.i.i.i, 15
  %add73.1.i.i.i = add nuw nsw i32 %mul70.1.i.i.i, %and72.1.i.i.i
  %conv74.1.i.i.i = trunc i32 %add73.1.i.i.i to i8
  %166 = load ptr, ptr %priv, align 8
  %arrayidx24.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %166, i32 0, i32 14, i32 43, i32 1, i32 0, i32 2
  %167 = ptrtoint ptr %arrayidx24.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv74.1.i.i.i, ptr %arrayidx24.i.1.i.i.i, align 2
  %arrayidx80.1.i.i.i = getelementptr %struct.rtl_priv, ptr %133, i32 0, i32 14, i32 42, i32 0, i32 1, i32 1, i32 7
  %168 = ptrtoint ptr %arrayidx80.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx80.1.i.i.i, align 4
  %shr81.1.i.i.i = lshr i32 %169, 24
  %170 = lshr i32 %169, 28
  %mul88.1.i.i.i = mul nuw nsw i32 %170, 10
  %and90.1.i.i.i = and i32 %shr81.1.i.i.i, 15
  %add91.1.i.i.i = add nuw nsw i32 %mul88.1.i.i.i, %and90.1.i.i.i
  %conv92.1.i.i.i = trunc i32 %add91.1.i.i.i to i8
  %171 = load ptr, ptr %priv, align 8
  %arrayidx31.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %171, i32 0, i32 14, i32 43, i32 1, i32 1, i32 3
  %172 = ptrtoint ptr %arrayidx31.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv92.1.i.i.i, ptr %arrayidx31.i.1.i.i.i, align 1
  %173 = load ptr, ptr %priv, align 8
  %txpwr_by_rate_base_24g.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 43
  %174 = ptrtoint ptr %txpwr_by_rate_base_24g.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %txpwr_by_rate_base_24g.i.i.i.i, align 2
  %tx_power_by_rate_offset.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42
  %arrayidx3.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 2
  %conv25.i.i.i.i = zext i8 %175 to i32
  %176 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx3.i.i.i, align 4
  %shr36.2.i.i.i.i = lshr i32 %177, 8
  %conv13.2.i.i.i.i = and i32 %shr36.2.i.i.i.i, 15
  %shr16.2.i.i.i.i = lshr i32 %177, 12
  %conv18.2.i.i.i.i = and i32 %shr16.2.i.i.i.i, 15
  %mul20.2.i.i.i.i = mul nuw nsw i32 %conv18.2.i.i.i.i, 10
  %add22.2.i.i.i.i = add nuw nsw i32 %mul20.2.i.i.i.i, %conv13.2.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.2.i.i.i.i = icmp ugt i32 %add22.2.i.i.i.i, %conv25.i.i.i.i
  %sub.2.i.i.i.i = sub nsw i32 %add22.2.i.i.i.i, %conv25.i.i.i.i
  %sub32.2.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.2.i.i.i.i
  %cond.2.i.i.i.i = select i1 %cmp26.2.i.i.i.i, i32 %sub.2.i.i.i.i, i32 %sub32.2.i.i.i.i
  %conv41.2.i.i.i.i = shl nsw i32 %cond.2.i.i.i.i, 8
  %178 = and i32 %conv41.2.i.i.i.i, 65280
  %shl.3.i.i.i.i = and i32 %177, -65281
  %or.3.i.i.i.i = or i32 %178, %shl.3.i.i.i.i
  %179 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.3.i.i.i.i, ptr %arrayidx3.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 3
  %180 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx9.i.i.i, align 4
  %shr36.i80.i.i.i = lshr i32 %181, 24
  %conv13.i.i.i.i = and i32 %shr36.i80.i.i.i, 15
  %shr16.i.i.i.i = lshr i32 %181, 28
  %mul20.i.i.i.i = mul nuw nsw i32 %shr16.i.i.i.i, 10
  %add22.i.i.i.i = add nuw nsw i32 %mul20.i.i.i.i, %conv13.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.i.i.i.i = icmp ugt i32 %add22.i.i.i.i, %conv25.i.i.i.i
  %sub.i.i.i20.i = sub nsw i32 %add22.i.i.i.i, %conv25.i.i.i.i
  %sub32.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.i.i.i.i
  %cond.i.i.i.i = select i1 %cmp26.i.i.i.i, i32 %sub.i.i.i20.i, i32 %sub32.i.i.i.i
  %shr36.1.i81.i.i.i = lshr i32 %181, 16
  %conv13.1.i.i.i.i = and i32 %shr36.1.i81.i.i.i, 15
  %shr16.1.i.i.i.i = lshr i32 %181, 20
  %conv18.1.i.i.i.i = and i32 %shr16.1.i.i.i.i, 15
  %mul20.1.i.i.i.i = mul nuw nsw i32 %conv18.1.i.i.i.i, 10
  %add22.1.i.i.i.i = add nuw nsw i32 %mul20.1.i.i.i.i, %conv13.1.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.1.i.i.i.i = icmp ugt i32 %add22.1.i.i.i.i, %conv25.i.i.i.i
  %sub.1.i.i.i.i = sub nsw i32 %add22.1.i.i.i.i, %conv25.i.i.i.i
  %sub32.1.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.1.i.i.i.i
  %cond.1.i.i.i.i = select i1 %cmp26.1.i.i.i.i, i32 %sub.1.i.i.i.i, i32 %sub32.1.i.i.i.i
  %shr36.2.i82.i.i.i = lshr i32 %181, 8
  %conv13.2.i83.i.i.i = and i32 %shr36.2.i82.i.i.i, 15
  %shr16.2.i84.i.i.i = lshr i32 %181, 12
  %conv18.2.i85.i.i.i = and i32 %shr16.2.i84.i.i.i, 15
  %mul20.2.i86.i.i.i = mul nuw nsw i32 %conv18.2.i85.i.i.i, 10
  %add22.2.i87.i.i.i = add nuw nsw i32 %mul20.2.i86.i.i.i, %conv13.2.i83.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i87.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.2.i88.i.i.i = icmp ugt i32 %add22.2.i87.i.i.i, %conv25.i.i.i.i
  %sub.2.i89.i.i.i = sub nsw i32 %add22.2.i87.i.i.i, %conv25.i.i.i.i
  %sub32.2.i90.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.2.i87.i.i.i
  %cond.2.i91.i.i.i = select i1 %cmp26.2.i88.i.i.i, i32 %sub.2.i89.i.i.i, i32 %sub32.2.i90.i.i.i
  %182 = shl i32 %cond.i.i.i.i, 24
  %conv41.1.i92.i.i.i = shl nsw i32 %cond.1.i.i.i.i, 16
  %183 = and i32 %conv41.1.i92.i.i.i, 16711680
  %184 = or i32 %183, %182
  %conv41.2.i93.i.i.i = shl nsw i32 %cond.2.i91.i.i.i, 8
  %185 = and i32 %conv41.2.i93.i.i.i, 65280
  %shl.3.i94.i.i.i = or i32 %184, %185
  %conv41.3.i95.i.i.i = and i32 %181, 255
  %or.3.i96.i.i.i = or i32 %shl.3.i94.i.i.i, %conv41.3.i95.i.i.i
  %186 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or.3.i96.i.i.i, ptr %arrayidx9.i.i.i, align 4
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 8
  %arrayidx17.i.i3.i.i = getelementptr %struct.rtl_priv, ptr %188, i32 0, i32 14, i32 43, i32 0, i32 0, i32 1
  %189 = ptrtoint ptr %arrayidx17.i.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx17.i.i3.i.i, align 1
  %conv25.i98.i.i.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %tx_power_by_rate_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_power_by_rate_offset.i.i.i, align 4
  %shr36.i99.i.i.i = lshr i32 %192, 24
  %conv13.i100.i.i.i = and i32 %shr36.i99.i.i.i, 15
  %shr16.i101.i.i.i = lshr i32 %192, 28
  %mul20.i102.i.i.i = mul nuw nsw i32 %shr16.i101.i.i.i, 10
  %add22.i103.i.i.i = add nuw nsw i32 %mul20.i102.i.i.i, %conv13.i100.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i103.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.i104.i.i.i = icmp ugt i32 %add22.i103.i.i.i, %conv25.i98.i.i.i
  %sub.i105.i.i.i = sub nsw i32 %add22.i103.i.i.i, %conv25.i98.i.i.i
  %sub32.i106.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.i103.i.i.i
  %cond.i107.i.i.i = select i1 %cmp26.i104.i.i.i, i32 %sub.i105.i.i.i, i32 %sub32.i106.i.i.i
  %shr36.1.i108.i.i.i = lshr i32 %192, 16
  %conv13.1.i109.i.i.i = and i32 %shr36.1.i108.i.i.i, 15
  %shr16.1.i110.i.i.i = lshr i32 %192, 20
  %conv18.1.i111.i.i.i = and i32 %shr16.1.i110.i.i.i, 15
  %mul20.1.i112.i.i.i = mul nuw nsw i32 %conv18.1.i111.i.i.i, 10
  %add22.1.i113.i.i.i = add nuw nsw i32 %mul20.1.i112.i.i.i, %conv13.1.i109.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i113.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.1.i114.i.i.i = icmp ugt i32 %add22.1.i113.i.i.i, %conv25.i98.i.i.i
  %sub.1.i115.i.i.i = sub nsw i32 %add22.1.i113.i.i.i, %conv25.i98.i.i.i
  %sub32.1.i116.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.1.i113.i.i.i
  %cond.1.i117.i.i.i = select i1 %cmp26.1.i114.i.i.i, i32 %sub.1.i115.i.i.i, i32 %sub32.1.i116.i.i.i
  %shr36.2.i118.i.i.i = lshr i32 %192, 8
  %conv13.2.i119.i.i.i = and i32 %shr36.2.i118.i.i.i, 15
  %shr16.2.i120.i.i.i = lshr i32 %192, 12
  %conv18.2.i121.i.i.i = and i32 %shr16.2.i120.i.i.i, 15
  %mul20.2.i122.i.i.i = mul nuw nsw i32 %conv18.2.i121.i.i.i, 10
  %add22.2.i123.i.i.i = add nuw nsw i32 %mul20.2.i122.i.i.i, %conv13.2.i119.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i123.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.2.i124.i.i.i = icmp ugt i32 %add22.2.i123.i.i.i, %conv25.i98.i.i.i
  %sub.2.i125.i.i.i = sub nsw i32 %add22.2.i123.i.i.i, %conv25.i98.i.i.i
  %sub32.2.i126.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.2.i123.i.i.i
  %cond.2.i127.i.i.i = select i1 %cmp26.2.i124.i.i.i, i32 %sub.2.i125.i.i.i, i32 %sub32.2.i126.i.i.i
  %conv13.3.i.i.i.i = and i32 %192, 15
  %shr16.3.i.i.i.i = lshr i32 %192, 4
  %conv18.3.i.i.i.i = and i32 %shr16.3.i.i.i.i, 15
  %mul20.3.i.i.i.i = mul nuw nsw i32 %conv18.3.i.i.i.i, 10
  %add22.3.i.i.i.i = add nuw nsw i32 %mul20.3.i.i.i.i, %conv13.3.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.3.i.i.i.i = icmp ugt i32 %add22.3.i.i.i.i, %conv25.i98.i.i.i
  %sub.3.i.i.i.i = sub nsw i32 %add22.3.i.i.i.i, %conv25.i98.i.i.i
  %sub32.3.i.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.3.i.i.i.i
  %cond.3.i.i.i.i = select i1 %cmp26.3.i.i.i.i, i32 %sub.3.i.i.i.i, i32 %sub32.3.i.i.i.i
  %193 = shl i32 %cond.i107.i.i.i, 24
  %conv41.1.i128.i.i.i = shl nsw i32 %cond.1.i117.i.i.i, 16
  %194 = and i32 %conv41.1.i128.i.i.i, 16711680
  %195 = or i32 %194, %193
  %conv41.2.i129.i.i.i = shl nsw i32 %cond.2.i127.i.i.i, 8
  %196 = and i32 %conv41.2.i129.i.i.i, 65280
  %shl.3.i130.i.i.i = or i32 %195, %196
  %conv41.3.i131.i.i.i = and i32 %cond.3.i.i.i.i, 255
  %or.3.i132.i.i.i = or i32 %shl.3.i130.i.i.i, %conv41.3.i131.i.i.i
  %197 = ptrtoint ptr %tx_power_by_rate_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or.3.i132.i.i.i, ptr %tx_power_by_rate_offset.i.i.i, align 4
  %arrayidx22.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 1
  %198 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx22.i.i.i, align 4
  %shr36.i134.i.i.i = lshr i32 %199, 24
  %conv13.i135.i.i.i = and i32 %shr36.i134.i.i.i, 15
  %shr16.i136.i.i.i = lshr i32 %199, 28
  %mul20.i137.i.i.i = mul nuw nsw i32 %shr16.i136.i.i.i, 10
  %add22.i138.i.i.i = add nuw nsw i32 %mul20.i137.i.i.i, %conv13.i135.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i138.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.i139.i.i.i = icmp ugt i32 %add22.i138.i.i.i, %conv25.i98.i.i.i
  %sub.i140.i.i.i = sub nsw i32 %add22.i138.i.i.i, %conv25.i98.i.i.i
  %sub32.i141.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.i138.i.i.i
  %cond.i142.i.i.i = select i1 %cmp26.i139.i.i.i, i32 %sub.i140.i.i.i, i32 %sub32.i141.i.i.i
  %shr36.1.i143.i.i.i = lshr i32 %199, 16
  %conv13.1.i144.i.i.i = and i32 %shr36.1.i143.i.i.i, 15
  %shr16.1.i145.i.i.i = lshr i32 %199, 20
  %conv18.1.i146.i.i.i = and i32 %shr16.1.i145.i.i.i, 15
  %mul20.1.i147.i.i.i = mul nuw nsw i32 %conv18.1.i146.i.i.i, 10
  %add22.1.i148.i.i.i = add nuw nsw i32 %mul20.1.i147.i.i.i, %conv13.1.i144.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i148.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.1.i149.i.i.i = icmp ugt i32 %add22.1.i148.i.i.i, %conv25.i98.i.i.i
  %sub.1.i150.i.i.i = sub nsw i32 %add22.1.i148.i.i.i, %conv25.i98.i.i.i
  %sub32.1.i151.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.1.i148.i.i.i
  %cond.1.i152.i.i.i = select i1 %cmp26.1.i149.i.i.i, i32 %sub.1.i150.i.i.i, i32 %sub32.1.i151.i.i.i
  %shr36.2.i153.i.i.i = lshr i32 %199, 8
  %conv13.2.i154.i.i.i = and i32 %shr36.2.i153.i.i.i, 15
  %shr16.2.i155.i.i.i = lshr i32 %199, 12
  %conv18.2.i156.i.i.i = and i32 %shr16.2.i155.i.i.i, 15
  %mul20.2.i157.i.i.i = mul nuw nsw i32 %conv18.2.i156.i.i.i, 10
  %add22.2.i158.i.i.i = add nuw nsw i32 %mul20.2.i157.i.i.i, %conv13.2.i154.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i158.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.2.i159.i.i.i = icmp ugt i32 %add22.2.i158.i.i.i, %conv25.i98.i.i.i
  %sub.2.i160.i.i.i = sub nsw i32 %add22.2.i158.i.i.i, %conv25.i98.i.i.i
  %sub32.2.i161.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.2.i158.i.i.i
  %cond.2.i162.i.i.i = select i1 %cmp26.2.i159.i.i.i, i32 %sub.2.i160.i.i.i, i32 %sub32.2.i161.i.i.i
  %conv13.3.i163.i.i.i = and i32 %199, 15
  %shr16.3.i164.i.i.i = lshr i32 %199, 4
  %conv18.3.i165.i.i.i = and i32 %shr16.3.i164.i.i.i, 15
  %mul20.3.i166.i.i.i = mul nuw nsw i32 %conv18.3.i165.i.i.i, 10
  %add22.3.i167.i.i.i = add nuw nsw i32 %mul20.3.i166.i.i.i, %conv13.3.i163.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i167.i.i.i, i32 %conv25.i98.i.i.i)
  %cmp26.3.i168.i.i.i = icmp ugt i32 %add22.3.i167.i.i.i, %conv25.i98.i.i.i
  %sub.3.i169.i.i.i = sub nsw i32 %add22.3.i167.i.i.i, %conv25.i98.i.i.i
  %sub32.3.i170.i.i.i = sub nsw i32 %conv25.i98.i.i.i, %add22.3.i167.i.i.i
  %cond.3.i171.i.i.i = select i1 %cmp26.3.i168.i.i.i, i32 %sub.3.i169.i.i.i, i32 %sub32.3.i170.i.i.i
  %200 = shl i32 %cond.i142.i.i.i, 24
  %conv41.1.i172.i.i.i = shl nsw i32 %cond.1.i152.i.i.i, 16
  %201 = and i32 %conv41.1.i172.i.i.i, 16711680
  %202 = or i32 %201, %200
  %conv41.2.i173.i.i.i = shl nsw i32 %cond.2.i162.i.i.i, 8
  %203 = and i32 %conv41.2.i173.i.i.i, 65280
  %shl.3.i174.i.i.i = or i32 %202, %203
  %conv41.3.i175.i.i.i = and i32 %cond.3.i171.i.i.i, 255
  %or.3.i176.i.i.i = or i32 %shl.3.i174.i.i.i, %conv41.3.i175.i.i.i
  %204 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or.3.i176.i.i.i, ptr %arrayidx22.i.i.i, align 4
  %205 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv, align 8
  %arrayidx24.i.i4.i.i = getelementptr %struct.rtl_priv, ptr %206, i32 0, i32 14, i32 43, i32 0, i32 0, i32 2
  %207 = ptrtoint ptr %arrayidx24.i.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %arrayidx24.i.i4.i.i, align 2
  %arrayidx29.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 4
  %conv25.i178.i.i.i = zext i8 %208 to i32
  %209 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx29.i.i.i, align 4
  %shr36.i179.i.i.i = lshr i32 %210, 24
  %conv13.i180.i.i.i = and i32 %shr36.i179.i.i.i, 15
  %shr16.i181.i.i.i = lshr i32 %210, 28
  %mul20.i182.i.i.i = mul nuw nsw i32 %shr16.i181.i.i.i, 10
  %add22.i183.i.i.i = add nuw nsw i32 %mul20.i182.i.i.i, %conv13.i180.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i183.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.i184.i.i.i = icmp ugt i32 %add22.i183.i.i.i, %conv25.i178.i.i.i
  %sub.i185.i.i.i = sub nsw i32 %add22.i183.i.i.i, %conv25.i178.i.i.i
  %sub32.i186.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.i183.i.i.i
  %cond.i187.i.i.i = select i1 %cmp26.i184.i.i.i, i32 %sub.i185.i.i.i, i32 %sub32.i186.i.i.i
  %shr36.1.i188.i.i.i = lshr i32 %210, 16
  %conv13.1.i189.i.i.i = and i32 %shr36.1.i188.i.i.i, 15
  %shr16.1.i190.i.i.i = lshr i32 %210, 20
  %conv18.1.i191.i.i.i = and i32 %shr16.1.i190.i.i.i, 15
  %mul20.1.i192.i.i.i = mul nuw nsw i32 %conv18.1.i191.i.i.i, 10
  %add22.1.i193.i.i.i = add nuw nsw i32 %mul20.1.i192.i.i.i, %conv13.1.i189.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i193.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.1.i194.i.i.i = icmp ugt i32 %add22.1.i193.i.i.i, %conv25.i178.i.i.i
  %sub.1.i195.i.i.i = sub nsw i32 %add22.1.i193.i.i.i, %conv25.i178.i.i.i
  %sub32.1.i196.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.1.i193.i.i.i
  %cond.1.i197.i.i.i = select i1 %cmp26.1.i194.i.i.i, i32 %sub.1.i195.i.i.i, i32 %sub32.1.i196.i.i.i
  %shr36.2.i198.i.i.i = lshr i32 %210, 8
  %conv13.2.i199.i.i.i = and i32 %shr36.2.i198.i.i.i, 15
  %shr16.2.i200.i.i.i = lshr i32 %210, 12
  %conv18.2.i201.i.i.i = and i32 %shr16.2.i200.i.i.i, 15
  %mul20.2.i202.i.i.i = mul nuw nsw i32 %conv18.2.i201.i.i.i, 10
  %add22.2.i203.i.i.i = add nuw nsw i32 %mul20.2.i202.i.i.i, %conv13.2.i199.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i203.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.2.i204.i.i.i = icmp ugt i32 %add22.2.i203.i.i.i, %conv25.i178.i.i.i
  %sub.2.i205.i.i.i = sub nsw i32 %add22.2.i203.i.i.i, %conv25.i178.i.i.i
  %sub32.2.i206.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.2.i203.i.i.i
  %cond.2.i207.i.i.i = select i1 %cmp26.2.i204.i.i.i, i32 %sub.2.i205.i.i.i, i32 %sub32.2.i206.i.i.i
  %conv13.3.i208.i.i.i = and i32 %210, 15
  %shr16.3.i209.i.i.i = lshr i32 %210, 4
  %conv18.3.i210.i.i.i = and i32 %shr16.3.i209.i.i.i, 15
  %mul20.3.i211.i.i.i = mul nuw nsw i32 %conv18.3.i210.i.i.i, 10
  %add22.3.i212.i.i.i = add nuw nsw i32 %mul20.3.i211.i.i.i, %conv13.3.i208.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i212.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.3.i213.i.i.i = icmp ugt i32 %add22.3.i212.i.i.i, %conv25.i178.i.i.i
  %sub.3.i214.i.i.i = sub nsw i32 %add22.3.i212.i.i.i, %conv25.i178.i.i.i
  %sub32.3.i215.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.3.i212.i.i.i
  %cond.3.i216.i.i.i = select i1 %cmp26.3.i213.i.i.i, i32 %sub.3.i214.i.i.i, i32 %sub32.3.i215.i.i.i
  %211 = shl i32 %cond.i187.i.i.i, 24
  %conv41.1.i217.i.i.i = shl nsw i32 %cond.1.i197.i.i.i, 16
  %212 = and i32 %conv41.1.i217.i.i.i, 16711680
  %213 = or i32 %212, %211
  %conv41.2.i218.i.i.i = shl nsw i32 %cond.2.i207.i.i.i, 8
  %214 = and i32 %conv41.2.i218.i.i.i, 65280
  %shl.3.i219.i.i.i = or i32 %213, %214
  %conv41.3.i220.i.i.i = and i32 %cond.3.i216.i.i.i, 255
  %or.3.i221.i.i.i = or i32 %shl.3.i219.i.i.i, %conv41.3.i220.i.i.i
  %215 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or.3.i221.i.i.i, ptr %arrayidx29.i.i.i, align 4
  %arrayidx35.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 5
  %216 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx35.i.i.i, align 4
  %shr36.i223.i.i.i = lshr i32 %217, 24
  %conv13.i224.i.i.i = and i32 %shr36.i223.i.i.i, 15
  %shr16.i225.i.i.i = lshr i32 %217, 28
  %mul20.i226.i.i.i = mul nuw nsw i32 %shr16.i225.i.i.i, 10
  %add22.i227.i.i.i = add nuw nsw i32 %mul20.i226.i.i.i, %conv13.i224.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i227.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.i228.i.i.i = icmp ugt i32 %add22.i227.i.i.i, %conv25.i178.i.i.i
  %sub.i229.i.i.i = sub nsw i32 %add22.i227.i.i.i, %conv25.i178.i.i.i
  %sub32.i230.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.i227.i.i.i
  %cond.i231.i.i.i = select i1 %cmp26.i228.i.i.i, i32 %sub.i229.i.i.i, i32 %sub32.i230.i.i.i
  %shr36.1.i232.i.i.i = lshr i32 %217, 16
  %conv13.1.i233.i.i.i = and i32 %shr36.1.i232.i.i.i, 15
  %shr16.1.i234.i.i.i = lshr i32 %217, 20
  %conv18.1.i235.i.i.i = and i32 %shr16.1.i234.i.i.i, 15
  %mul20.1.i236.i.i.i = mul nuw nsw i32 %conv18.1.i235.i.i.i, 10
  %add22.1.i237.i.i.i = add nuw nsw i32 %mul20.1.i236.i.i.i, %conv13.1.i233.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i237.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.1.i238.i.i.i = icmp ugt i32 %add22.1.i237.i.i.i, %conv25.i178.i.i.i
  %sub.1.i239.i.i.i = sub nsw i32 %add22.1.i237.i.i.i, %conv25.i178.i.i.i
  %sub32.1.i240.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.1.i237.i.i.i
  %cond.1.i241.i.i.i = select i1 %cmp26.1.i238.i.i.i, i32 %sub.1.i239.i.i.i, i32 %sub32.1.i240.i.i.i
  %shr36.2.i242.i.i.i = lshr i32 %217, 8
  %conv13.2.i243.i.i.i = and i32 %shr36.2.i242.i.i.i, 15
  %shr16.2.i244.i.i.i = lshr i32 %217, 12
  %conv18.2.i245.i.i.i = and i32 %shr16.2.i244.i.i.i, 15
  %mul20.2.i246.i.i.i = mul nuw nsw i32 %conv18.2.i245.i.i.i, 10
  %add22.2.i247.i.i.i = add nuw nsw i32 %mul20.2.i246.i.i.i, %conv13.2.i243.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i247.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.2.i248.i.i.i = icmp ugt i32 %add22.2.i247.i.i.i, %conv25.i178.i.i.i
  %sub.2.i249.i.i.i = sub nsw i32 %add22.2.i247.i.i.i, %conv25.i178.i.i.i
  %sub32.2.i250.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.2.i247.i.i.i
  %cond.2.i251.i.i.i = select i1 %cmp26.2.i248.i.i.i, i32 %sub.2.i249.i.i.i, i32 %sub32.2.i250.i.i.i
  %conv13.3.i252.i.i.i = and i32 %217, 15
  %shr16.3.i253.i.i.i = lshr i32 %217, 4
  %conv18.3.i254.i.i.i = and i32 %shr16.3.i253.i.i.i, 15
  %mul20.3.i255.i.i.i = mul nuw nsw i32 %conv18.3.i254.i.i.i, 10
  %add22.3.i256.i.i.i = add nuw nsw i32 %mul20.3.i255.i.i.i, %conv13.3.i252.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i256.i.i.i, i32 %conv25.i178.i.i.i)
  %cmp26.3.i257.i.i.i = icmp ugt i32 %add22.3.i256.i.i.i, %conv25.i178.i.i.i
  %sub.3.i258.i.i.i = sub nsw i32 %add22.3.i256.i.i.i, %conv25.i178.i.i.i
  %sub32.3.i259.i.i.i = sub nsw i32 %conv25.i178.i.i.i, %add22.3.i256.i.i.i
  %cond.3.i260.i.i.i = select i1 %cmp26.3.i257.i.i.i, i32 %sub.3.i258.i.i.i, i32 %sub32.3.i259.i.i.i
  %218 = shl i32 %cond.i231.i.i.i, 24
  %conv41.1.i261.i.i.i = shl nsw i32 %cond.1.i241.i.i.i, 16
  %219 = and i32 %conv41.1.i261.i.i.i, 16711680
  %220 = or i32 %219, %218
  %conv41.2.i262.i.i.i = shl nsw i32 %cond.2.i251.i.i.i, 8
  %221 = and i32 %conv41.2.i262.i.i.i, 65280
  %shl.3.i263.i.i.i = or i32 %220, %221
  %conv41.3.i264.i.i.i = and i32 %cond.3.i260.i.i.i, 255
  %or.3.i265.i.i.i = or i32 %shl.3.i263.i.i.i, %conv41.3.i264.i.i.i
  %222 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or.3.i265.i.i.i, ptr %arrayidx35.i.i.i, align 4
  %223 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv, align 8
  %arrayidx31.i.i5.i.i = getelementptr %struct.rtl_priv, ptr %224, i32 0, i32 14, i32 43, i32 0, i32 1, i32 3
  %225 = ptrtoint ptr %arrayidx31.i.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx31.i.i5.i.i, align 1
  %arrayidx42.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 1, i32 6
  %conv25.i267.i.i.i = zext i8 %226 to i32
  %227 = ptrtoint ptr %arrayidx42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %arrayidx42.i.i.i, align 4
  %shr36.i268.i.i.i = lshr i32 %228, 24
  %conv13.i269.i.i.i = and i32 %shr36.i268.i.i.i, 15
  %shr16.i270.i.i.i = lshr i32 %228, 28
  %mul20.i271.i.i.i = mul nuw nsw i32 %shr16.i270.i.i.i, 10
  %add22.i272.i.i.i = add nuw nsw i32 %mul20.i271.i.i.i, %conv13.i269.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i272.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.i273.i.i.i = icmp ugt i32 %add22.i272.i.i.i, %conv25.i267.i.i.i
  %sub.i274.i.i.i = sub nsw i32 %add22.i272.i.i.i, %conv25.i267.i.i.i
  %sub32.i275.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.i272.i.i.i
  %cond.i276.i.i.i = select i1 %cmp26.i273.i.i.i, i32 %sub.i274.i.i.i, i32 %sub32.i275.i.i.i
  %shr36.1.i277.i.i.i = lshr i32 %228, 16
  %conv13.1.i278.i.i.i = and i32 %shr36.1.i277.i.i.i, 15
  %shr16.1.i279.i.i.i = lshr i32 %228, 20
  %conv18.1.i280.i.i.i = and i32 %shr16.1.i279.i.i.i, 15
  %mul20.1.i281.i.i.i = mul nuw nsw i32 %conv18.1.i280.i.i.i, 10
  %add22.1.i282.i.i.i = add nuw nsw i32 %mul20.1.i281.i.i.i, %conv13.1.i278.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i282.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.1.i283.i.i.i = icmp ugt i32 %add22.1.i282.i.i.i, %conv25.i267.i.i.i
  %sub.1.i284.i.i.i = sub nsw i32 %add22.1.i282.i.i.i, %conv25.i267.i.i.i
  %sub32.1.i285.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.1.i282.i.i.i
  %cond.1.i286.i.i.i = select i1 %cmp26.1.i283.i.i.i, i32 %sub.1.i284.i.i.i, i32 %sub32.1.i285.i.i.i
  %shr36.2.i287.i.i.i = lshr i32 %228, 8
  %conv13.2.i288.i.i.i = and i32 %shr36.2.i287.i.i.i, 15
  %shr16.2.i289.i.i.i = lshr i32 %228, 12
  %conv18.2.i290.i.i.i = and i32 %shr16.2.i289.i.i.i, 15
  %mul20.2.i291.i.i.i = mul nuw nsw i32 %conv18.2.i290.i.i.i, 10
  %add22.2.i292.i.i.i = add nuw nsw i32 %mul20.2.i291.i.i.i, %conv13.2.i288.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i292.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.2.i293.i.i.i = icmp ugt i32 %add22.2.i292.i.i.i, %conv25.i267.i.i.i
  %sub.2.i294.i.i.i = sub nsw i32 %add22.2.i292.i.i.i, %conv25.i267.i.i.i
  %sub32.2.i295.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.2.i292.i.i.i
  %cond.2.i296.i.i.i = select i1 %cmp26.2.i293.i.i.i, i32 %sub.2.i294.i.i.i, i32 %sub32.2.i295.i.i.i
  %conv13.3.i297.i.i.i = and i32 %228, 15
  %shr16.3.i298.i.i.i = lshr i32 %228, 4
  %conv18.3.i299.i.i.i = and i32 %shr16.3.i298.i.i.i, 15
  %mul20.3.i300.i.i.i = mul nuw nsw i32 %conv18.3.i299.i.i.i, 10
  %add22.3.i301.i.i.i = add nuw nsw i32 %mul20.3.i300.i.i.i, %conv13.3.i297.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i301.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.3.i302.i.i.i = icmp ugt i32 %add22.3.i301.i.i.i, %conv25.i267.i.i.i
  %sub.3.i303.i.i.i = sub nsw i32 %add22.3.i301.i.i.i, %conv25.i267.i.i.i
  %sub32.3.i304.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.3.i301.i.i.i
  %cond.3.i305.i.i.i = select i1 %cmp26.3.i302.i.i.i, i32 %sub.3.i303.i.i.i, i32 %sub32.3.i304.i.i.i
  %229 = shl i32 %cond.i276.i.i.i, 24
  %conv41.1.i306.i.i.i = shl nsw i32 %cond.1.i286.i.i.i, 16
  %230 = and i32 %conv41.1.i306.i.i.i, 16711680
  %231 = or i32 %230, %229
  %conv41.2.i307.i.i.i = shl nsw i32 %cond.2.i296.i.i.i, 8
  %232 = and i32 %conv41.2.i307.i.i.i, 65280
  %shl.3.i308.i.i.i = or i32 %231, %232
  %conv41.3.i309.i.i.i = and i32 %cond.3.i305.i.i.i, 255
  %or.3.i310.i.i.i = or i32 %shl.3.i308.i.i.i, %conv41.3.i309.i.i.i
  %233 = ptrtoint ptr %arrayidx42.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %or.3.i310.i.i.i, ptr %arrayidx42.i.i.i, align 4
  %arrayidx48.i.i.i = getelementptr %struct.rtl_priv, ptr %173, i32 0, i32 14, i32 42, i32 0, i32 0, i32 1, i32 7
  %234 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx48.i.i.i, align 4
  %shr36.i312.i.i.i = lshr i32 %235, 24
  %conv13.i313.i.i.i = and i32 %shr36.i312.i.i.i, 15
  %shr16.i314.i.i.i = lshr i32 %235, 28
  %mul20.i315.i.i.i = mul nuw nsw i32 %shr16.i314.i.i.i, 10
  %add22.i316.i.i.i = add nuw nsw i32 %mul20.i315.i.i.i, %conv13.i313.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i316.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.i317.i.i.i = icmp ugt i32 %add22.i316.i.i.i, %conv25.i267.i.i.i
  %sub.i318.i.i.i = sub nsw i32 %add22.i316.i.i.i, %conv25.i267.i.i.i
  %sub32.i319.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.i316.i.i.i
  %cond.i320.i.i.i = select i1 %cmp26.i317.i.i.i, i32 %sub.i318.i.i.i, i32 %sub32.i319.i.i.i
  %shr36.1.i321.i.i.i = lshr i32 %235, 16
  %conv13.1.i322.i.i.i = and i32 %shr36.1.i321.i.i.i, 15
  %shr16.1.i323.i.i.i = lshr i32 %235, 20
  %conv18.1.i324.i.i.i = and i32 %shr16.1.i323.i.i.i, 15
  %mul20.1.i325.i.i.i = mul nuw nsw i32 %conv18.1.i324.i.i.i, 10
  %add22.1.i326.i.i.i = add nuw nsw i32 %mul20.1.i325.i.i.i, %conv13.1.i322.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i326.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.1.i327.i.i.i = icmp ugt i32 %add22.1.i326.i.i.i, %conv25.i267.i.i.i
  %sub.1.i328.i.i.i = sub nsw i32 %add22.1.i326.i.i.i, %conv25.i267.i.i.i
  %sub32.1.i329.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.1.i326.i.i.i
  %cond.1.i330.i.i.i = select i1 %cmp26.1.i327.i.i.i, i32 %sub.1.i328.i.i.i, i32 %sub32.1.i329.i.i.i
  %shr36.2.i331.i.i.i = lshr i32 %235, 8
  %conv13.2.i332.i.i.i = and i32 %shr36.2.i331.i.i.i, 15
  %shr16.2.i333.i.i.i = lshr i32 %235, 12
  %conv18.2.i334.i.i.i = and i32 %shr16.2.i333.i.i.i, 15
  %mul20.2.i335.i.i.i = mul nuw nsw i32 %conv18.2.i334.i.i.i, 10
  %add22.2.i336.i.i.i = add nuw nsw i32 %mul20.2.i335.i.i.i, %conv13.2.i332.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i336.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.2.i337.i.i.i = icmp ugt i32 %add22.2.i336.i.i.i, %conv25.i267.i.i.i
  %sub.2.i338.i.i.i = sub nsw i32 %add22.2.i336.i.i.i, %conv25.i267.i.i.i
  %sub32.2.i339.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.2.i336.i.i.i
  %cond.2.i340.i.i.i = select i1 %cmp26.2.i337.i.i.i, i32 %sub.2.i338.i.i.i, i32 %sub32.2.i339.i.i.i
  %conv13.3.i341.i.i.i = and i32 %235, 15
  %shr16.3.i342.i.i.i = lshr i32 %235, 4
  %conv18.3.i343.i.i.i = and i32 %shr16.3.i342.i.i.i, 15
  %mul20.3.i344.i.i.i = mul nuw nsw i32 %conv18.3.i343.i.i.i, 10
  %add22.3.i345.i.i.i = add nuw nsw i32 %mul20.3.i344.i.i.i, %conv13.3.i341.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i345.i.i.i, i32 %conv25.i267.i.i.i)
  %cmp26.3.i346.i.i.i = icmp ugt i32 %add22.3.i345.i.i.i, %conv25.i267.i.i.i
  %sub.3.i347.i.i.i = sub nsw i32 %add22.3.i345.i.i.i, %conv25.i267.i.i.i
  %sub32.3.i348.i.i.i = sub nsw i32 %conv25.i267.i.i.i, %add22.3.i345.i.i.i
  %cond.3.i349.i.i.i = select i1 %cmp26.3.i346.i.i.i, i32 %sub.3.i347.i.i.i, i32 %sub32.3.i348.i.i.i
  %236 = shl i32 %cond.i320.i.i.i, 24
  %conv41.1.i350.i.i.i = shl nsw i32 %cond.1.i330.i.i.i, 16
  %237 = and i32 %conv41.1.i350.i.i.i, 16711680
  %238 = or i32 %237, %236
  %conv41.2.i351.i.i.i = shl nsw i32 %cond.2.i340.i.i.i, 8
  %239 = and i32 %conv41.2.i351.i.i.i, 65280
  %shl.3.i352.i.i.i = or i32 %238, %239
  %conv41.3.i353.i.i.i = and i32 %cond.3.i349.i.i.i, 255
  %or.3.i354.i.i.i = or i32 %shl.3.i352.i.i.i, %conv41.3.i353.i.i.i
  %240 = ptrtoint ptr %arrayidx48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %or.3.i354.i.i.i, ptr %arrayidx48.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %173, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__._rtl8723be_phy_convert_txpower_dbm_to_relative_value) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @RTL8723BEAGCTAB_1TARRAYLEN to i32))
  %241 = load i32, ptr @RTL8723BEAGCTAB_1TARRAYLEN, align 4
  %conv7.i.i = trunc i32 %241 to i16
  tail call fastcc void @rtl8723be_phy_config_with_headerfile(ptr noundef %hw, ptr noundef nonnull @RTL8723BEAGCTAB_1TARRAY, i16 noundef zeroext %conv7.i.i, ptr noundef nonnull @rtl_set_bbreg_with_dwmask) #7
  %242 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %priv, align 8
  %cfg.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 32
  %244 = ptrtoint ptr %cfg.i22.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cfg.i22.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %245, i32 0, i32 4
  %246 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %247, i32 0, i32 45
  %248 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i23.i = tail call i32 %249(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool34.i = icmp ne i32 %call.i23.i, 0
  %conv35.i = zext i1 %tobool34.i to i8
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %50, i32 0, i32 14, i32 39
  %250 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %conv35.i, ptr %cck_high_power.i, align 1
  %251 = and i8 %3, 63
  %conv12 = zext i8 %251 to i32
  %or14 = mul nuw nsw i32 %conv12, 65
  %252 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %priv, align 8
  %cfg.i59 = getelementptr inbounds %struct.rtl_priv, ptr %253, i32 0, i32 32
  %254 = ptrtoint ptr %cfg.i59 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %cfg.i59, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %255, i32 0, i32 4
  %256 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %257, i32 0, i32 46
  %258 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %259(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or14) #7
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_init_bb_rf_reg_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_rf_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rtl8723be_phy_rf6052_config(ptr noundef %hw) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723be_phy_rf6052_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %rfpath) #7
  %2 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %rfpath, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @RTL8723BE_RADIOA_1TARRAYLEN to i32))
  %3 = load i32, ptr @RTL8723BE_RADIOA_1TARRAYLEN, align 4
  %conv = trunc i32 %3 to i16
  tail call fastcc void @rtl8723be_phy_config_with_headerfile(ptr noundef %hw, ptr noundef nonnull @RTL8723BE_RADIOA_1TARRAY, i16 noundef zeroext %conv, ptr noundef nonnull @_rtl8723be_config_rf_radio_a)
  %oem_id = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 12
  %4 = ptrtoint ptr %oem_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %oem_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %5)
  %cmp = icmp eq i8 %5, 27
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %13(ptr noundef %hw, i32 noundef 0, i32 noundef 82, i32 noundef 1048575, i32 noundef 517309) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef 3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723be_phy_config_with_headerfile(ptr noundef %hw, ptr nocapture noundef readonly %array_table, i16 noundef zeroext %arraylen, ptr nocapture noundef readonly %set_reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %arraylen to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %arraylen)
  %cmp10 = icmp ugt i16 %arraylen, 1
  br i1 %cmp10, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  %add14 = phi i32 [ 1, %while.body.lr.ph ], [ %add, %if.end40.while.body_crit_edge ]
  %skipped.0.off013 = phi i1 [ false, %while.body.lr.ph ], [ %skipped.1.off0, %if.end40.while.body_crit_edge ]
  %matched.0.off012 = phi i1 [ true, %while.body.lr.ph ], [ %matched.1.off0, %if.end40.while.body_crit_edge ]
  %i.011 = phi i32 [ 0, %while.body.lr.ph ], [ %add41, %if.end40.while.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %array_table, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr i32, ptr %array_table, i32 %add14
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %1)
  %tobool.not = icmp ult i32 %1, 1073741824
  br i1 %tobool.not, label %if.else36, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool5.not = icmp sgt i32 %1, -1
  br i1 %tobool5.not, label %if.then.if.end40_crit_edge, label %if.then6

if.then.if.end40_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then6:                                         ; preds = %if.then
  %and7 = lshr i32 %1, 28
  %conv8 = and i32 %and7, 3
  %4 = zext i32 %conv8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %conv8, label %if.else21 [
    i32 3, label %if.then6.if.end40_crit_edge
    i32 2, label %if.then16
  ]

if.then6.if.end40_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then16:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %not.skipped.0.off0 = xor i1 %skipped.0.off013, true
  br label %if.end40

if.else21:                                        ; preds = %if.then6
  br i1 %skipped.0.off013, label %if.else21.if.end40_crit_edge, label %if.else24

if.else21.if.end40_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.else24:                                        ; preds = %if.else21
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %version.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version.i, align 4
  %interface.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 9
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp eq i32 %10, 1
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  %board_type2.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 15
  %11 = ptrtoint ptr %board_type2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %board_type2.i, align 1
  %and3.i = lshr i8 %12, 4
  %shr4.i = and i8 %and3.i, 1
  %13 = lshr i8 %12, 2
  %shl9.i = and i8 %13, 2
  %or.i = or i8 %shr4.i, %shl9.i
  %14 = lshr i8 %12, 5
  %shl14.i = and i8 %14, 4
  %or15.i = or i8 %or.i, %shl14.i
  %15 = lshr i8 %12, 3
  %shl20.i = and i8 %15, 8
  %or21.i = or i8 %or15.i, %shl20.i
  %16 = shl i8 %12, 2
  %shl26.i = and i8 %16, 16
  %or27.i = or i8 %or21.i, %shl26.i
  %17 = shl i32 %8, 12
  %shl29.i = and i32 %17, 251658240
  %package_type.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 16
  %18 = ptrtoint ptr %package_type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %package_type.i, align 2
  %conv32.i = zext i8 %19 to i32
  %shl33.i = shl nuw nsw i32 %conv32.i, 12
  %or31.i = or i32 %shl29.i, %shl33.i
  %shl35.i = shl nuw nsw i32 %cond.i, 8
  %or34.i = or i32 %or31.i, %shl35.i
  %conv37.i = zext i8 %or27.i to i32
  %or36.i = or i32 %or34.i, %conv37.i
  %or38.i = or i32 %or36.i, 262144
  %type_glna.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 27
  %20 = ptrtoint ptr %type_glna.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type_glna.i, align 1
  %conv39.i = zext i8 %21 to i32
  %type_gpa.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 28
  %22 = ptrtoint ptr %type_gpa.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type_gpa.i, align 2
  %conv41.i = zext i8 %23 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 8
  %or43.i = or i32 %shl42.i, %conv39.i
  %type_alna.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 29
  %24 = ptrtoint ptr %type_alna.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type_alna.i, align 1
  %conv44.i = zext i8 %25 to i32
  %shl45.i = shl nuw nsw i32 %conv44.i, 16
  %or46.i = or i32 %or43.i, %shl45.i
  %type_apa.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 10, i32 30
  %26 = ptrtoint ptr %type_apa.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type_apa.i, align 8
  %conv47.i = zext i8 %27 to i32
  %shl48.i = shl nuw i32 %conv47.i, 24
  %or49.i = or i32 %or46.i, %shl48.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef %3) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef %or38.i, i32 noundef %or49.i) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.50, i32 noundef 4, i32 noundef %cond.i) #7
  %28 = ptrtoint ptr %board_type2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %board_type2.i, align 1
  %conv51.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %package_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %package_type.i, align 2
  %conv53.i = zext i8 %31 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %6, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef %conv51.i, i32 noundef %conv53.i) #7
  %and54.i = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %cmp55.not.i = icmp eq i32 %and54.i, 0
  %and58.i = and i32 %shl33.i, 61440
  call void @__sanitizer_cov_trace_cmp4(i32 %and54.i, i32 %and58.i)
  %cmp59.not.i = icmp eq i32 %and54.i, %and58.i
  %or.cond.i = select i1 %cmp55.not.i, i1 true, i1 %cmp59.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.else24.if.end40_crit_edge

if.else24.if.end40_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end.i:                                         ; preds = %if.else24
  %and61.i = and i32 %1, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %cmp62.not.i = icmp eq i32 %and61.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and61.i, i32 %shl29.i)
  %cmp67.not.i = icmp eq i32 %and61.i, %shl29.i
  %or.cond162.i = select i1 %cmp62.not.i, i1 true, i1 %cmp67.not.i
  br i1 %or.cond162.i, label %if.end70.i, label %if.end.i.if.end40_crit_edge

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end70.i:                                       ; preds = %if.end.i
  %32 = and i32 %or36.i, 721919
  %33 = xor i32 %32, 16453631
  %34 = and i32 %33, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp74.i = icmp eq i32 %34, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.end70.i.if.end40_crit_edge

if.end70.i.if.end40_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then76.i:                                      ; preds = %if.end70.i
  %and77.i = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %cmp78.i = icmp eq i32 %and77.i, 0
  br i1 %cmp78.i, label %if.then76.i.if.end40_crit_edge, label %if.end81.i

if.then76.i.if.end40_crit_edge:                   ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end81.i:                                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #9
  %and82.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %cmp83.not.i = icmp eq i32 %and82.i, 0
  %spec.select.i = select i1 %cmp83.not.i, i32 0, i32 255
  %and88.i = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %cmp89.not.i = icmp eq i32 %and88.i, 0
  %or92.i = or i32 %spec.select.i, 65280
  %mask.1.i = select i1 %cmp89.not.i, i32 %spec.select.i, i32 %or92.i
  %and94.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %cmp95.not.i = icmp eq i32 %and94.i, 0
  %or98.i = or i32 %mask.1.i, 16711680
  %mask.2.i = select i1 %cmp95.not.i, i32 %mask.1.i, i32 %or98.i
  %and100.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %cmp101.not.i = icmp eq i32 %and100.i, 0
  %or104.i = or i32 %mask.2.i, -16777216
  %mask.3.i = select i1 %cmp101.not.i, i32 %mask.2.i, i32 %or104.i
  %35 = xor i32 %or49.i, %3
  %36 = and i32 %35, %mask.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp108.i = icmp eq i32 %36, 0
  br label %if.end40

if.else36:                                        ; preds = %while.body
  br i1 %matched.0.off012, label %if.then38, label %if.else36.if.end40_crit_edge

if.else36.if.end40_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %set_reg(ptr noundef %hw, i32 noundef %1, i32 noundef %3) #7, !callees !168
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.else36.if.end40_crit_edge, %if.end81.i, %if.then76.i.if.end40_crit_edge, %if.end70.i.if.end40_crit_edge, %if.end.i.if.end40_crit_edge, %if.else24.if.end40_crit_edge, %if.else21.if.end40_crit_edge, %if.then16, %if.then6.if.end40_crit_edge, %if.then.if.end40_crit_edge
  %matched.1.off0 = phi i1 [ %not.skipped.0.off0, %if.then16 ], [ true, %if.then38 ], [ false, %if.else36.if.end40_crit_edge ], [ true, %if.then6.if.end40_crit_edge ], [ false, %if.else21.if.end40_crit_edge ], [ %matched.0.off012, %if.then.if.end40_crit_edge ], [ false, %if.else24.if.end40_crit_edge ], [ false, %if.end.i.if.end40_crit_edge ], [ true, %if.then76.i.if.end40_crit_edge ], [ false, %if.end70.i.if.end40_crit_edge ], [ %cmp108.i, %if.end81.i ]
  %skipped.1.off0 = phi i1 [ %skipped.0.off013, %if.then16 ], [ %skipped.0.off013, %if.then38 ], [ %skipped.0.off013, %if.else36.if.end40_crit_edge ], [ false, %if.then6.if.end40_crit_edge ], [ true, %if.else21.if.end40_crit_edge ], [ %skipped.0.off013, %if.then.if.end40_crit_edge ], [ false, %if.else24.if.end40_crit_edge ], [ false, %if.end.i.if.end40_crit_edge ], [ true, %if.then76.i.if.end40_crit_edge ], [ false, %if.end70.i.if.end40_crit_edge ], [ %cmp108.i, %if.end81.i ]
  %add41 = add nuw nsw i32 %i.011, 2
  %add = or i32 %add41, 1
  %cmp = icmp ult i32 %add, %conv
  br i1 %cmp, label %if.end40.while.body_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end40.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl8723be_config_rf_radio_a(ptr noundef %hw, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %addr, label %if.else.i [
    i32 254, label %entry.while.body.i.preheader_crit_edge
    i32 4094, label %entry.while.body.i.preheader_crit_edge2
  ]

entry.while.body.i.preheader_crit_edge2:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %entry.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.01.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 50, %while.body.i.preheader ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #7
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i._rtl8723be_config_rf_reg.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i._rtl8723be_config_rf_reg.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_config_rf_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %9(ptr noundef %hw, i32 noundef 0, i32 noundef %addr, i32 noundef 1048575, i32 noundef %data) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #7
  br label %_rtl8723be_config_rf_reg.exit

_rtl8723be_config_rf_reg.exit:                    ; preds = %if.else.i, %while.body.i._rtl8723be_config_rf_reg.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_get_hw_reg_originalvalue(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.6, i32 noundef 3128, i32 noundef %conv29) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpwr_fromeprom = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 23
  %2 = ptrtoint ptr %txpwr_fromeprom to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpwr_fromeprom, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %current_chan_bw = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 14, i32 5
  %6 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %current_chan_bw, align 2
  %call = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 0, i8 noundef zeroext %7, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call, i8 noundef zeroext 0)
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %current_chan_bw.1 = getelementptr inbounds %struct.rtl_priv, ptr %9, i32 0, i32 14, i32 5
  %10 = ptrtoint ptr %current_chan_bw.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_chan_bw.1, align 2
  %call.1 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 1, i8 noundef zeroext %11, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call.1, i8 noundef zeroext 1)
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %current_chan_bw.2 = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 14, i32 5
  %14 = ptrtoint ptr %current_chan_bw.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_chan_bw.2, align 2
  %call.2 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 2, i8 noundef zeroext %15, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call.2, i8 noundef zeroext 2)
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %current_chan_bw.3 = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 5
  %18 = ptrtoint ptr %current_chan_bw.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %current_chan_bw.3, align 2
  %call.3 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 3, i8 noundef zeroext %19, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call.3, i8 noundef zeroext 3)
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 8
  %current_chan_bw14 = getelementptr inbounds %struct.rtl_priv, ptr %21, i32 0, i32 14, i32 5
  %22 = ptrtoint ptr %current_chan_bw14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %current_chan_bw14, align 2
  %call15 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 4, i8 noundef zeroext %23, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15, i8 noundef zeroext 4)
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  %current_chan_bw14.1 = getelementptr inbounds %struct.rtl_priv, ptr %25, i32 0, i32 14, i32 5
  %26 = ptrtoint ptr %current_chan_bw14.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %current_chan_bw14.1, align 2
  %call15.1 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 5, i8 noundef zeroext %27, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.1, i8 noundef zeroext 5)
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %current_chan_bw14.2 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 14, i32 5
  %30 = ptrtoint ptr %current_chan_bw14.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %current_chan_bw14.2, align 2
  %call15.2 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 6, i8 noundef zeroext %31, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.2, i8 noundef zeroext 6)
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %current_chan_bw14.3 = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 14, i32 5
  %34 = ptrtoint ptr %current_chan_bw14.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %current_chan_bw14.3, align 2
  %call15.3 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 7, i8 noundef zeroext %35, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.3, i8 noundef zeroext 7)
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 8
  %current_chan_bw14.4 = getelementptr inbounds %struct.rtl_priv, ptr %37, i32 0, i32 14, i32 5
  %38 = ptrtoint ptr %current_chan_bw14.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %current_chan_bw14.4, align 2
  %call15.4 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 8, i8 noundef zeroext %39, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.4, i8 noundef zeroext 8)
  %40 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv, align 8
  %current_chan_bw14.5 = getelementptr inbounds %struct.rtl_priv, ptr %41, i32 0, i32 14, i32 5
  %42 = ptrtoint ptr %current_chan_bw14.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %current_chan_bw14.5, align 2
  %call15.5 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 9, i8 noundef zeroext %43, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.5, i8 noundef zeroext 9)
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %current_chan_bw14.6 = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 14, i32 5
  %46 = ptrtoint ptr %current_chan_bw14.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %current_chan_bw14.6, align 2
  %call15.6 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 10, i8 noundef zeroext %47, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.6, i8 noundef zeroext 10)
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 8
  %current_chan_bw14.7 = getelementptr inbounds %struct.rtl_priv, ptr %49, i32 0, i32 14, i32 5
  %50 = ptrtoint ptr %current_chan_bw14.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %current_chan_bw14.7, align 2
  %call15.7 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 11, i8 noundef zeroext %51, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call15.7, i8 noundef zeroext 11)
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %current_chan_bw30 = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 14, i32 5
  %54 = ptrtoint ptr %current_chan_bw30 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %current_chan_bw30, align 2
  %call31 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 12, i8 noundef zeroext %55, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31, i8 noundef zeroext 12)
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 8
  %current_chan_bw30.1 = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 14, i32 5
  %58 = ptrtoint ptr %current_chan_bw30.1 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %current_chan_bw30.1, align 2
  %call31.1 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 13, i8 noundef zeroext %59, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.1, i8 noundef zeroext 13)
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %current_chan_bw30.2 = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 14, i32 5
  %62 = ptrtoint ptr %current_chan_bw30.2 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %current_chan_bw30.2, align 2
  %call31.2 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 14, i8 noundef zeroext %63, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.2, i8 noundef zeroext 14)
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv, align 8
  %current_chan_bw30.3 = getelementptr inbounds %struct.rtl_priv, ptr %65, i32 0, i32 14, i32 5
  %66 = ptrtoint ptr %current_chan_bw30.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %current_chan_bw30.3, align 2
  %call31.3 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 15, i8 noundef zeroext %67, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.3, i8 noundef zeroext 15)
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %current_chan_bw30.4 = getelementptr inbounds %struct.rtl_priv, ptr %69, i32 0, i32 14, i32 5
  %70 = ptrtoint ptr %current_chan_bw30.4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %current_chan_bw30.4, align 2
  %call31.4 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 16, i8 noundef zeroext %71, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.4, i8 noundef zeroext 16)
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %current_chan_bw30.5 = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 14, i32 5
  %74 = ptrtoint ptr %current_chan_bw30.5 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %current_chan_bw30.5, align 2
  %call31.5 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 17, i8 noundef zeroext %75, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.5, i8 noundef zeroext 17)
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %current_chan_bw30.6 = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 14, i32 5
  %78 = ptrtoint ptr %current_chan_bw30.6 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %current_chan_bw30.6, align 2
  %call31.6 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 18, i8 noundef zeroext %79, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.6, i8 noundef zeroext 18)
  %80 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv, align 8
  %current_chan_bw30.7 = getelementptr inbounds %struct.rtl_priv, ptr %81, i32 0, i32 14, i32 5
  %82 = ptrtoint ptr %current_chan_bw30.7 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %current_chan_bw30.7, align 2
  %call31.7 = tail call fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr noundef %hw, i8 noundef zeroext 19, i8 noundef zeroext %83, i8 noundef zeroext %channel)
  tail call fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %call31.7, i8 noundef zeroext 19)
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @_rtl8723be_get_txpower_index(ptr nocapture noundef readonly %hw, i8 noundef zeroext %rate, i8 noundef zeroext %bandwidth, i8 noundef zeroext %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sub = add i8 %channel, -1
  %2 = add i8 %channel, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %2)
  %3 = icmp ult i8 %2, -14
  br i1 %3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 131072, i32 noundef 4, ptr noundef nonnull @.str.52) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.0 = phi i8 [ 0, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %rate)
  %switch = icmp ult i8 %rate, 4
  %txpwrlevel_cck = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38
  %idxprom24 = zext i8 %index.0 to i32
  %arrayidx25 = getelementptr [14 x i8], ptr %txpwrlevel_cck, i32 0, i32 %idxprom24
  %txpwrlevel_ht40_1s = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39
  %arrayidx33 = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s, i32 0, i32 %idxprom24
  %txpower.0.in = select i1 %switch, ptr %arrayidx25, ptr %arrayidx33
  %4 = ptrtoint ptr %txpower.0.in to i32
  call void @__asan_load1_noabort(i32 %4)
  %txpower.0 = load i8, ptr %txpower.0.in, align 1
  %5 = add i8 %rate, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %5)
  %6 = icmp ult i8 %5, 8
  br i1 %6, label %if.then59, label %if.end.if.end65_crit_edge

if.end.if.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %txpwr_legacyhtdiff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 44
  %7 = ptrtoint ptr %txpwr_legacyhtdiff to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txpwr_legacyhtdiff, align 4
  %add = add i8 %8, %txpower.0
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %if.end.if.end65_crit_edge
  %txpower.1 = phi i8 [ %add, %if.then59 ], [ %txpower.0, %if.end.if.end65_crit_edge ]
  %9 = zext i8 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %bandwidth, label %if.end65.if.end138_crit_edge [
    i8 0, label %if.then69
    i8 1, label %if.then105
  ]

if.end65.if.end138_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then69:                                        ; preds = %if.end65
  %10 = add i8 %rate, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %10)
  %11 = icmp ult i8 %10, 16
  br i1 %11, label %if.end84, label %if.then69.if.end138_crit_edge

if.then69.if.end138_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end84:                                         ; preds = %if.then69
  %txpwr_ht20diff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42
  %12 = ptrtoint ptr %txpwr_ht20diff to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txpwr_ht20diff, align 4
  %add82 = add i8 %13, %txpower.1
  %14 = add nsw i8 %rate, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %15 = icmp ult i8 %14, 8
  br i1 %15, label %if.then92, label %if.end84.if.end138_crit_edge

if.end84.if.end138_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then92:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx95 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 42, i32 0, i32 1
  br label %if.end138.sink.split

if.then105:                                       ; preds = %if.end65
  %16 = add i8 %rate, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %17 = icmp ult i8 %16, 16
  br i1 %17, label %if.end120, label %if.then105.if.end138_crit_edge

if.then105.if.end138_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end120:                                        ; preds = %if.then105
  %txpwr_ht40diff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 43
  %18 = ptrtoint ptr %txpwr_ht40diff to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %txpwr_ht40diff, align 4
  %add118 = add i8 %19, %txpower.1
  %20 = add nsw i8 %rate, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %21 = icmp ult i8 %20, 8
  br i1 %21, label %if.then128, label %if.end120.if.end138_crit_edge

if.end120.if.end138_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then128:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx131 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 43, i32 0, i32 1
  br label %if.end138.sink.split

if.end138.sink.split:                             ; preds = %if.then128, %if.then92
  %arrayidx131.sink = phi ptr [ %arrayidx131, %if.then128 ], [ %arrayidx95, %if.then92 ]
  %add118.sink = phi i8 [ %add118, %if.then128 ], [ %add82, %if.then92 ]
  %22 = ptrtoint ptr %arrayidx131.sink to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx131.sink, align 1
  %add134 = add i8 %23, %add118.sink
  br label %if.end138

if.end138:                                        ; preds = %if.end138.sink.split, %if.end120.if.end138_crit_edge, %if.then105.if.end138_crit_edge, %if.end84.if.end138_crit_edge, %if.then69.if.end138_crit_edge, %if.end65.if.end138_crit_edge
  %txpower.4 = phi i8 [ %add82, %if.end84.if.end138_crit_edge ], [ %add118, %if.end120.if.end138_crit_edge ], [ %txpower.1, %if.end65.if.end138_crit_edge ], [ %txpower.1, %if.then69.if.end138_crit_edge ], [ %txpower.1, %if.then105.if.end138_crit_edge ], [ %add134, %if.end138.sink.split ]
  %eeprom_regulatory = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 54
  %24 = ptrtoint ptr %eeprom_regulatory to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %eeprom_regulatory, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp140.not = icmp eq i8 %25, 2
  br i1 %cmp140.not, label %if.end138.if.end144_crit_edge, label %if.then142

if.end138.if.end144_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then142:                                       ; preds = %if.end138
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %28 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %rate, label %land.end.i.i [
    i8 0, label %if.then142.sw.bb11.i_crit_edge
    i8 1, label %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge
    i8 2, label %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge8
    i8 3, label %if.then142.sw.bb13.i_crit_edge
    i8 4, label %if.then142.sw.bb8.i.i_crit_edge
    i8 5, label %if.then142.sw.bb8.i.i_crit_edge9
    i8 6, label %if.then142.sw.bb8.i.i_crit_edge10
    i8 7, label %if.then142.sw.bb8.i.i_crit_edge11
    i8 8, label %if.then142.sw.bb9.i.i_crit_edge
    i8 9, label %if.then142.sw.bb9.i.i_crit_edge12
    i8 10, label %if.then142.sw.bb9.i.i_crit_edge13
    i8 11, label %if.then142.sw.bb9.i.i_crit_edge14
    i8 12, label %if.then142.sw.bb10.i.i_crit_edge
    i8 13, label %if.then142.sw.bb10.i.i_crit_edge15
    i8 14, label %if.then142.sw.bb10.i.i_crit_edge16
    i8 15, label %if.then142.sw.bb10.i.i_crit_edge17
    i8 16, label %if.then142.sw.bb11.i.i_crit_edge
    i8 17, label %if.then142.sw.bb11.i.i_crit_edge18
    i8 18, label %if.then142.sw.bb11.i.i_crit_edge19
    i8 19, label %if.then142.sw.bb11.i.i_crit_edge20
    i8 20, label %if.then142.sw.bb12.i.i_crit_edge
    i8 21, label %if.then142.sw.bb12.i.i_crit_edge21
    i8 22, label %if.then142.sw.bb12.i.i_crit_edge22
    i8 23, label %if.then142.sw.bb12.i.i_crit_edge23
    i8 24, label %if.then142.sw.bb13.i.i_crit_edge
    i8 25, label %if.then142.sw.bb13.i.i_crit_edge24
    i8 26, label %if.then142.sw.bb13.i.i_crit_edge25
    i8 27, label %if.then142.sw.bb13.i.i_crit_edge26
  ]

if.then142.sw.bb13.i.i_crit_edge26:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then142.sw.bb13.i.i_crit_edge25:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then142.sw.bb13.i.i_crit_edge24:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then142.sw.bb13.i.i_crit_edge:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then142.sw.bb12.i.i_crit_edge23:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

if.then142.sw.bb12.i.i_crit_edge22:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

if.then142.sw.bb12.i.i_crit_edge21:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

if.then142.sw.bb12.i.i_crit_edge:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i.i

if.then142.sw.bb11.i.i_crit_edge20:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i.i

if.then142.sw.bb11.i.i_crit_edge19:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i.i

if.then142.sw.bb11.i.i_crit_edge18:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i.i

if.then142.sw.bb11.i.i_crit_edge:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i.i

if.then142.sw.bb10.i.i_crit_edge17:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

if.then142.sw.bb10.i.i_crit_edge16:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

if.then142.sw.bb10.i.i_crit_edge15:               ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

if.then142.sw.bb10.i.i_crit_edge:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10.i.i

if.then142.sw.bb9.i.i_crit_edge14:                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

if.then142.sw.bb9.i.i_crit_edge13:                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

if.then142.sw.bb9.i.i_crit_edge12:                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

if.then142.sw.bb9.i.i_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9.i.i

if.then142.sw.bb8.i.i_crit_edge11:                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

if.then142.sw.bb8.i.i_crit_edge10:                ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

if.then142.sw.bb8.i.i_crit_edge9:                 ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

if.then142.sw.bb8.i.i_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i.i

if.then142.sw.bb13.i_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge8: ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge: ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

if.then142.sw.bb11.i_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

sw.bb8.i.i:                                       ; preds = %if.then142.sw.bb8.i.i_crit_edge, %if.then142.sw.bb8.i.i_crit_edge9, %if.then142.sw.bb8.i.i_crit_edge10, %if.then142.sw.bb8.i.i_crit_edge11
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

sw.bb9.i.i:                                       ; preds = %if.then142.sw.bb9.i.i_crit_edge, %if.then142.sw.bb9.i.i_crit_edge12, %if.then142.sw.bb9.i.i_crit_edge13, %if.then142.sw.bb9.i.i_crit_edge14
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

sw.bb10.i.i:                                      ; preds = %if.then142.sw.bb10.i.i_crit_edge, %if.then142.sw.bb10.i.i_crit_edge15, %if.then142.sw.bb10.i.i_crit_edge16, %if.then142.sw.bb10.i.i_crit_edge17
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

sw.bb11.i.i:                                      ; preds = %if.then142.sw.bb11.i.i_crit_edge, %if.then142.sw.bb11.i.i_crit_edge18, %if.then142.sw.bb11.i.i_crit_edge19, %if.then142.sw.bb11.i.i_crit_edge20
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

sw.bb12.i.i:                                      ; preds = %if.then142.sw.bb12.i.i_crit_edge, %if.then142.sw.bb12.i.i_crit_edge21, %if.then142.sw.bb12.i.i_crit_edge22, %if.then142.sw.bb12.i.i_crit_edge23
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

sw.bb13.i.i:                                      ; preds = %if.then142.sw.bb13.i.i_crit_edge, %if.then142.sw.bb13.i.i_crit_edge24, %if.then142.sw.bb13.i.i_crit_edge25, %if.then142.sw.bb13.i.i_crit_edge26
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

land.end.i.i:                                     ; preds = %if.then142
  %.b1.i.i = load i1, ptr @_rtl8723be_phy_get_ratesection_intxpower_byrate.__already_done, align 1
  br i1 %.b1.i.i, label %land.end.i.i._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge, label %if.then19.i.i, !prof !169

land.end.i.i._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

if.then19.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl8723be_phy_get_ratesection_intxpower_byrate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 868, i32 noundef 9, ptr noundef nonnull @.str.54) #7
  br label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i: ; preds = %if.then19.i.i, %land.end.i.i._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %sw.bb10.i.i, %sw.bb9.i.i, %sw.bb8.i.i, %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge, %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge8
  %rate_section.0.i.i = phi i8 [ 7, %sw.bb13.i.i ], [ 6, %sw.bb12.i.i ], [ 5, %sw.bb11.i.i ], [ 4, %sw.bb10.i.i ], [ 1, %sw.bb9.i.i ], [ 0, %sw.bb8.i.i ], [ 0, %if.then19.i.i ], [ 0, %land.end.i.i._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge ], [ 3, %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge ], [ 3, %if.then142._rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i_crit_edge8 ]
  %29 = add i8 %rate, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %30 = icmp ult i8 %29, 8
  %tx_num.0.i = zext i1 %30 to i32
  %31 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %rate, label %land.end.i [
    i8 4, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge
    i8 8, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27
    i8 12, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28
    i8 16, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29
    i8 20, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30
    i8 24, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31
    i8 27, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge
    i8 1, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge
    i8 5, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge32
    i8 9, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge33
    i8 13, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge34
    i8 17, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge35
    i8 21, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge36
    i8 25, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge37
    i8 2, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge
    i8 6, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge38
    i8 10, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge39
    i8 14, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge40
    i8 18, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge41
    i8 22, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge42
    i8 26, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge43
    i8 23, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge44
    i8 7, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge45
    i8 11, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge46
    i8 15, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge47
    i8 19, label %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge48
  ]

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge48: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge47: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge46: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge45: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge44: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge43: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge42: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge41: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge40: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge39: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge38: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge37: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge36: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge35: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge34: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge33: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge32: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb11.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge: ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

sw.bb11.i:                                        ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge32, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge33, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge34, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge35, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge36, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge37, %if.then142.sw.bb11.i_crit_edge
  %tx_num.09.i = phi i32 [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge32 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge33 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge34 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge35 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge36 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge37 ], [ 0, %if.then142.sw.bb11.i_crit_edge ]
  %rate_section.0.i7.i = phi i8 [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge32 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge33 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge34 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge35 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge36 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb11.i_crit_edge37 ], [ 2, %if.then142.sw.bb11.i_crit_edge ]
  br label %_rtl8723be_get_txpower_by_rate.exit

sw.bb12.i:                                        ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge38, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge39, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge40, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge41, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge42, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb12.i_crit_edge43
  br label %_rtl8723be_get_txpower_by_rate.exit

sw.bb13.i:                                        ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge44, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge45, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge46, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge47, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge48, %if.then142.sw.bb13.i_crit_edge
  %tx_num.018.i = phi i32 [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge44 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge45 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge46 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge47 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge48 ], [ 0, %if.then142.sw.bb13.i_crit_edge ]
  %rate_section.0.i17.i = phi i8 [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge44 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge45 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge46 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge47 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i.sw.bb13.i_crit_edge48 ], [ %rate, %if.then142.sw.bb13.i_crit_edge ]
  br label %_rtl8723be_get_txpower_by_rate.exit

land.end.i:                                       ; preds = %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i
  %.b1.i = load i1, ptr @_rtl8723be_get_txpower_by_rate.__already_done, align 1
  br i1 %.b1.i, label %land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge, label %if.then19.i, !prof !169

land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_get_txpower_by_rate.exit

if.then19.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl8723be_get_txpower_by_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 933, i32 noundef 9, ptr noundef nonnull @.str.54) #7
  br label %_rtl8723be_get_txpower_by_rate.exit

_rtl8723be_get_txpower_by_rate.exit:              ; preds = %if.then19.i, %land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31
  %tx_num.010.i = phi i32 [ %tx_num.018.i, %sw.bb13.i ], [ %tx_num.0.i, %sw.bb12.i ], [ %tx_num.09.i, %sw.bb11.i ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30 ], [ %tx_num.0.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31 ], [ %tx_num.0.i, %if.then19.i ], [ %tx_num.0.i, %land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ]
  %rate_section.0.i8.i = phi i8 [ %rate_section.0.i17.i, %sw.bb13.i ], [ %rate_section.0.i.i, %sw.bb12.i ], [ %rate_section.0.i7.i, %sw.bb11.i ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30 ], [ %rate_section.0.i.i, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31 ], [ %rate_section.0.i.i, %if.then19.i ], [ %rate_section.0.i.i, %land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ]
  %shift.0.i = phi i32 [ 24, %sw.bb13.i ], [ 16, %sw.bb12.i ], [ 8, %sw.bb11.i ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge27 ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge28 ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge29 ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge30 ], [ 0, %_rtl8723be_phy_get_ratesection_intxpower_byrate.exit.i._rtl8723be_get_txpower_by_rate.exit_crit_edge31 ], [ 0, %if.then19.i ], [ 0, %land.end.i._rtl8723be_get_txpower_by_rate.exit_crit_edge ]
  %tx_power_by_rate_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 14, i32 42
  %idxprom51.i = zext i8 %rate_section.0.i8.i to i32
  %arrayidx52.i = getelementptr [4 x [84 x i32]], ptr %tx_power_by_rate_offset.i, i32 0, i32 %tx_num.010.i, i32 %idxprom51.i
  %32 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx52.i, align 4
  %shr.i = lshr i32 %33, %shift.0.i
  %conv56.i = trunc i32 %shr.i to i8
  br label %if.end144

if.end144:                                        ; preds = %_rtl8723be_get_txpower_by_rate.exit, %if.end138.if.end144_crit_edge
  %power_diff_byrate.0 = phi i8 [ %conv56.i, %_rtl8723be_get_txpower_by_rate.exit ], [ 0, %if.end138.if.end144_crit_edge ]
  %add147 = add i8 %power_diff_byrate.0, %txpower.4
  %34 = tail call i8 @llvm.umin.i8(i8 %add147, i8 63)
  ret i8 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl8723be_phy_set_txpower_index(ptr noundef %hw, i8 noundef zeroext %power_index, i8 noundef zeroext %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %rate, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
    i8 2, label %sw.bb6
    i8 3, label %sw.bb8
    i8 4, label %sw.bb10
    i8 5, label %sw.bb12
    i8 6, label %sw.bb14
    i8 7, label %sw.bb16
    i8 8, label %sw.bb18
    i8 9, label %sw.bb20
    i8 10, label %sw.bb22
    i8 11, label %sw.bb24
    i8 12, label %sw.bb26
    i8 13, label %sw.bb28
    i8 14, label %sw.bb30
    i8 15, label %sw.bb32
    i8 16, label %sw.bb34
    i8 17, label %sw.bb36
    i8 18, label %sw.bb38
    i8 19, label %sw.bb40
    i8 20, label %sw.bb42
    i8 21, label %sw.bb44
    i8 22, label %sw.bb46
    i8 23, label %sw.bb48
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3592, i32 noundef 65280, i32 noundef %conv3) #7
  br label %if.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv5 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2156, i32 noundef 65280, i32 noundef %conv5) #7
  br label %if.end

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2156, i32 noundef 16711680, i32 noundef %conv7) #7
  br label %if.end

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 2156, i32 noundef -16777216, i32 noundef %conv9) #7
  br label %if.end

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3584, i32 noundef 255, i32 noundef %conv11) #7
  br label %if.end

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3584, i32 noundef 65280, i32 noundef %conv13) #7
  br label %if.end

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3584, i32 noundef 16711680, i32 noundef %conv15) #7
  br label %if.end

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv17 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3584, i32 noundef -16777216, i32 noundef %conv17) #7
  br label %if.end

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv19 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3588, i32 noundef 255, i32 noundef %conv19) #7
  br label %if.end

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3588, i32 noundef 65280, i32 noundef %conv21) #7
  br label %if.end

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv23 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3588, i32 noundef 16711680, i32 noundef %conv23) #7
  br label %if.end

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv25 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3588, i32 noundef -16777216, i32 noundef %conv25) #7
  br label %if.end

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv27 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3600, i32 noundef 255, i32 noundef %conv27) #7
  br label %if.end

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv29 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3600, i32 noundef 65280, i32 noundef %conv29) #7
  br label %if.end

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv31 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3600, i32 noundef 16711680, i32 noundef %conv31) #7
  br label %if.end

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv33 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3600, i32 noundef -16777216, i32 noundef %conv33) #7
  br label %if.end

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv35 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3604, i32 noundef 255, i32 noundef %conv35) #7
  br label %if.end

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv37 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3604, i32 noundef 65280, i32 noundef %conv37) #7
  br label %if.end

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv39 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3604, i32 noundef 16711680, i32 noundef %conv39) #7
  br label %if.end

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv41 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3604, i32 noundef -16777216, i32 noundef %conv41) #7
  br label %if.end

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv43 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3608, i32 noundef 255, i32 noundef %conv43) #7
  br label %if.end

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv45 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3608, i32 noundef 65280, i32 noundef %conv45) #7
  br label %if.end

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv47 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3608, i32 noundef 16711680, i32 noundef %conv47) #7
  br label %if.end

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv49 = zext i8 %power_index to i32
  tail call void @rtl8723_phy_set_bb_reg(ptr noundef %hw, i32 noundef 3608, i32 noundef -16777216, i32 noundef %conv49) #7
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %2, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.55) #7
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb48, %sw.bb46, %sw.bb44, %sw.bb42, %sw.bb40, %sw.bb38, %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_scan_operation_backup(ptr noundef %hw, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
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
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iotype) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %cond = select i1 %cmp, ptr @.str.11, ptr @.str.12
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #7
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.87)
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
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv8) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i100, %rtl_write_byte.exit93.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.88)
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
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv23) #10
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %110 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl8723be_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %111) #7
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %112 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 4, ptr noundef nonnull @.str.17) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723be_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_set_bw_mode(ptr noundef %hw, i32 noundef %ch_type) local_unnamed_addr #0 align 64 {
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
  tail call void @rtl8723be_phy_set_bw_mode_callback(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.18) #7
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
define dso_local void @rtl8723be_phy_sw_chnl_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.19, i32 noundef %conv) #7
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
  br label %do.body

do.body:                                          ; preds = %if.then7.do.body_crit_edge, %do.body.preheader
  %6 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_chnl_inprogress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %do.body
  %8 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %current_channel, align 1
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %precommoncmd.i) #7
  %12 = call ptr @memset(ptr %precommoncmd.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %postcommoncmd.i) #7
  %13 = call ptr @memset(ptr %postcommoncmd.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rfdependcmd.i) #7
  %14 = call ptr @memset(ptr %rfdependcmd.i, i32 255, i32 256)
  %num_total_rfpath1.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 14, i32 58
  %15 = ptrtoint ptr %num_total_rfpath1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_total_rfpath1.i, align 4
  %call.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %precommoncmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %call4.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %precommoncmd.i, i32 noundef 1, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %call7.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %postcommoncmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %conv.i = zext i8 %9 to i32
  %17 = add i8 %9, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %17)
  %18 = icmp ult i8 %17, -14
  br i1 %18, label %land.rhs.i, label %if.end4.if.end40.i_crit_edge

if.end4.if.end40.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end4
  %.b162.i = load i1, ptr @_rtl8723be_phy_sw_chnl_step_by_step.__already_done, align 1
  br i1 %.b162.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !169

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @_rtl8723be_phy_sw_chnl_step_by_step.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1364, i32 noundef 9, ptr noundef nonnull @.str.57, i32 noundef %conv.i) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %if.end4.if.end40.i_crit_edge
  %call51.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %rfdependcmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 6, i32 noundef 24, i32 noundef %conv.i, i32 noundef 10) #7
  %call54.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %rfdependcmd.i, i32 noundef 1, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %19 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_load1_noabort(i32 %19)
  %.pr = load i8, ptr %sw_chnl_stage, align 1
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.else.i, %if.end40.i
  %20 = phi i8 [ %inc76.i, %if.else.i ], [ %.pr, %if.end40.i ]
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %20, label %do.end65.i [
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
  %conv56.i = zext i8 %20 to i32
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv56.i) #10
  br label %if.else26

sw.epilog.i:                                      ; preds = %sw.bb60.i, %sw.bb57.i, %do.body55.i.sw.epilog.i_crit_edge
  %postcommoncmd.sink.i = phi ptr [ %postcommoncmd.i, %sw.bb60.i ], [ %rfdependcmd.i, %sw.bb57.i ], [ %precommoncmd.i, %do.body55.i.sw.epilog.i_crit_edge ]
  %22 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sw_chnl_step, align 1
  %idxprom61.i = zext i8 %23 to i32
  %arrayidx62.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i
  %24 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %25, label %sw.default106.i [
    i32 0, label %if.then71.i
    i32 1, label %sw.bb79.i
    i32 3, label %sw.bb80.i
    i32 4, label %sw.bb81.i
    i32 5, label %sw.bb85.i
    i32 6, label %for.cond.preheader.i
  ]

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  %idxprom61.i.le = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp92195.not.i = icmp eq i8 %16, 0
  br i1 %cmp92195.not.i, label %for.cond.preheader.i.if.then7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then7_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %para296.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 2
  %para1101.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 1
  %wide.trip.count.i = zext i8 %16 to i32
  br label %for.body.i

if.then71.i:                                      ; preds = %sw.epilog.i
  %cmp73.i = icmp eq i8 %20, 2
  br i1 %cmp73.i, label %if.then71.i.if.else26_crit_edge, label %if.else.i

if.then71.i.if.else26_crit_edge:                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else26

if.else.i:                                        ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc76.i = add nuw nsw i8 %20, 1
  %27 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %inc76.i, ptr %sw_chnl_stage, align 1
  %28 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %sw_chnl_step, align 1
  br label %do.body55.i

sw.bb79.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom61.i.le159 = zext i8 %23 to i32
  call void @rtl8723be_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %9) #7
  br label %if.then7

sw.bb80.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le157 = zext i8 %23 to i32
  %para1.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 1
  %29 = ptrtoint ptr %para1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %para1.i, align 4
  %para2.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 2
  %31 = ptrtoint ptr %para2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %para2.i, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write32_async.i.i, align 4
  call void %34(ptr noundef %11, i32 noundef %30, i32 noundef %32) #7
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %35 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %write_readback.i.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %sw.bb80.i.if.then7_crit_edge, label %if.then.i.i

sw.bb80.i.if.then7_crit_edge:                     ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #9
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 11
  %39 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = call i32 %40(ptr noundef %11, i32 noundef %30) #7
  br label %if.then7

sw.bb81.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le155 = zext i8 %23 to i32
  %para182.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 1
  %41 = ptrtoint ptr %para182.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %para182.i, align 4
  %para283.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 2
  %43 = ptrtoint ptr %para283.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %para283.i, align 4
  %conv84.i = trunc i32 %44 to i16
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 6
  %45 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write16_async.i.i, align 4
  call void %46(ptr noundef %11, i32 noundef %42, i16 noundef zeroext %conv84.i) #7
  %cfg.i163.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i163.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i163.i, align 8
  %write_readback.i164.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %write_readback.i164.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %write_readback.i164.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i165.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i165.i, label %sw.bb81.i.if.then7_crit_edge, label %if.then.i167.i

sw.bb81.i.if.then7_crit_edge:                     ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i167.i:                                   ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 10
  %51 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i166.i = call zeroext i16 %52(ptr noundef %11, i32 noundef %42) #7
  br label %if.then7

sw.bb85.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le153 = zext i8 %23 to i32
  %para186.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 1
  %53 = ptrtoint ptr %para186.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %para186.i, align 4
  %para287.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 2
  %55 = ptrtoint ptr %para287.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %para287.i, align 4
  %conv88.i = trunc i32 %56 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %57 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i.i, align 4
  call void %58(ptr noundef %11, i32 noundef %54, i8 noundef zeroext %conv88.i) #7
  %cfg.i168.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %59 = ptrtoint ptr %cfg.i168.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i168.i, align 8
  %write_readback.i169.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i169.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i169.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i170.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i170.i, label %sw.bb85.i.if.then7_crit_edge, label %if.then.i172.i

sw.bb85.i.if.then7_crit_edge:                     ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.i172.i:                                   ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 9
  %63 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i171.i = call zeroext i8 %64(ptr noundef %11, i32 noundef %54) #7
  br label %if.then7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx95.i = getelementptr %struct.rtl_priv, ptr %11, i32 0, i32 14, i32 52, i32 %indvars.iv.i
  %65 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx95.i, align 4
  %and.i = and i32 %66, -1024
  %67 = ptrtoint ptr %para296.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %para296.i, align 4
  %or.i = or i32 %and.i, %68
  store i32 %or.i, ptr %arrayidx95.i, align 4
  %69 = ptrtoint ptr %para1101.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %para1101.i, align 4
  %71 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %priv, align 8
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %72, i32 0, i32 32
  %73 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cfg.i173.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %76, i32 0, i32 48
  %77 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_rfreg.i.i, align 4
  call void %78(ptr noundef %hw, i32 noundef %indvars.iv.i, i32 noundef %70, i32 noundef 1048575, i32 noundef %or.i) #7
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.then7_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.then7_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.default106.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom61.i.le161 = zext i8 %23 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %25) #7
  br label %if.then7

if.then7:                                         ; preds = %sw.default106.i, %for.body.i.if.then7_crit_edge, %if.then.i172.i, %sw.bb85.i.if.then7_crit_edge, %if.then.i167.i, %sw.bb81.i.if.then7_crit_edge, %if.then.i.i, %sw.bb80.i.if.then7_crit_edge, %sw.bb79.i, %for.cond.preheader.i.if.then7_crit_edge
  %idxprom61.i143 = phi i32 [ %idxprom61.i.le161, %sw.default106.i ], [ %idxprom61.i.le153, %if.then.i172.i ], [ %idxprom61.i.le153, %sw.bb85.i.if.then7_crit_edge ], [ %idxprom61.i.le155, %if.then.i167.i ], [ %idxprom61.i.le155, %sw.bb81.i.if.then7_crit_edge ], [ %idxprom61.i.le157, %if.then.i.i ], [ %idxprom61.i.le157, %sw.bb80.i.if.then7_crit_edge ], [ %idxprom61.i.le159, %sw.bb79.i ], [ %idxprom61.i.le, %for.cond.preheader.i.if.then7_crit_edge ], [ %idxprom61.i.le, %for.body.i.if.then7_crit_edge ]
  %msdelay.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i143, i32 3
  %79 = ptrtoint ptr %msdelay.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msdelay.i, align 4
  %81 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sw_chnl_step, align 1
  %inc111.i = add i8 %82, 1
  store i8 %inc111.i, ptr %sw_chnl_step, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #7
  %cmp.not = icmp eq i32 %80, 0
  br i1 %cmp.not, label %if.then7.do.body_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %__ms.091 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %80, %if.then7.while.body_crit_edge ]
  %dec = add i32 %__ms.091, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #7
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
  %84 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %do.end

do.end:                                           ; preds = %if.else26, %while.body.do.end_crit_edge, %do.body.do.end_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.17) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8723be_phy_sw_chnl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  %.b68 = load i1, ptr @rtl8723be_phy_sw_chnl.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !169

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rtl8723be_phy_sw_chnl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1313, i32 noundef 9, ptr noundef nonnull @.str.20) #7
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
  tail call void @rtl8723be_phy_sw_chnl_callback(ptr noundef %hw)
  %13 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_channel, align 1
  %conv48 = zext i8 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %conv48) #7
  br label %if.end51

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.22) #7
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
define dso_local void @rtl8723be_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext %b_recovery) local_unnamed_addr #0 align 64 {
entry:
  %adda_reg.i = alloca [16 x i32], align 4
  %iqk_mac_reg.i = alloca [4 x i32], align 4
  %iqk_bb_reg.i = alloca [9 x i32], align 4
  %result = alloca [4 x [8 x i32]], align 4
  %iqk_bb_reg = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #7
  %2 = call ptr @memset(ptr %result, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iqk_bb_reg) #7
  %3 = call ptr @memcpy(ptr %iqk_bb_reg, ptr @__const.rtl8723be_phy_iq_calibrate.iqk_bb_reg, i32 36)
  %lck_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 13
  %4 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lck_inprogress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iqk_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 13
  tail call void @_raw_spin_lock(ptr noundef %iqk_lock) #7
  %6 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %lck_inprogress, align 2
  tail call void @_raw_spin_unlock(ptr noundef %iqk_lock) #7
  br i1 %b_recovery, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %iqk_bb_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  call void @rtl8723_phy_reload_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg, ptr noundef %iqk_bb_backup, i32 noundef 9) #7
  br label %label_done

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %get_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 45
  %13 = ptrtoint ptr %get_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_bbreg.i, align 4
  %call.i = tail call i32 %14(ptr noundef %hw, i32 noundef 2376, i32 noundef -1) #7
  %uglygep296 = getelementptr inbounds i8, ptr %result, i32 96
  %15 = call ptr @memset(ptr %result, i32 0, i32 128)
  br label %for.body23

for.body23:                                       ; preds = %for.inc69.for.body23_crit_edge, %if.end7
  %i.1286 = phi i8 [ %inc70, %for.inc69.for.body23_crit_edge ], [ 0, %if.end7 ]
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %adda_reg.i) #7
  %18 = call ptr @memcpy(ptr %adda_reg.i, ptr @__const._rtl8723be_phy_iq_calibrate.adda_reg, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #7
  %19 = call ptr @memcpy(ptr %iqk_mac_reg.i, ptr @__const._rtl8723be_phy_iq_calibrate.iqk_mac_reg, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %iqk_bb_reg.i) #7
  %20 = call ptr @memcpy(ptr %iqk_bb_reg.i, ptr @__const._rtl8723be_phy_iq_calibrate.iqk_bb_reg, i32 36)
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %26(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #7
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 32
  %29 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i2.i, align 8
  %ops.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i3.i, align 4
  %get_bbreg.i4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %32, i32 0, i32 45
  %33 = ptrtoint ptr %get_bbreg.i4.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_bbreg.i4.i, align 4
  %call.i5.i = call i32 %34(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #7
  %conv3.i = zext i8 %i.1286 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.1286)
  %cmp.i = icmp eq i8 %i.1286, 0
  br i1 %cmp.i, label %if.then.i, label %if.end19.critedge.i

if.then.i:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  %adda_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 28
  call void @rtl8723_save_adda_registers(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, ptr noundef %adda_backup.i, i32 noundef 16) #7
  %iqk_mac_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 29
  call void @rtl8723_phy_save_mac_registers(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup.i) #7
  %iqk_bb_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 30
  call void @rtl8723_save_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg.i, ptr noundef %iqk_bb_backup.i, i32 noundef 9) #7
  call void @rtl8723_phy_path_adda_on(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %cfg.i7.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i7.i, align 8
  %ops.i8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i8.i, align 4
  %get_bbreg.i9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 45
  %41 = ptrtoint ptr %get_bbreg.i9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_bbreg.i9.i, align 4
  %call.i10.i = call i32 %42(ptr noundef %hw, i32 noundef 2080, i32 noundef 256) #7
  %conv16.i = trunc i32 %call.i10.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16.i)
  %tobool17.i = icmp ne i8 %conv16.i, 0
  %rfpi_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 36
  %frombool18.i = zext i1 %tobool17.i to i8
  %43 = ptrtoint ptr %rfpi_enable.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool18.i, ptr %rfpi_enable.i, align 4
  br label %if.end19.i

if.end19.critedge.i:                              ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtl8723_phy_path_adda_on(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, i1 noundef zeroext true, i1 noundef zeroext true) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.critedge.i, %if.then.i
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %cfg.i12.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i12.i, align 8
  %ops.i13.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops.i13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i13.i, align 4
  %get_bbreg.i14.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 45
  %50 = ptrtoint ptr %get_bbreg.i14.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_bbreg.i14.i, align 4
  %call.i15.i = call i32 %51(ptr noundef %hw, i32 noundef 2376, i32 noundef -1) #7
  %iqk_mac_backup22.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 29
  call void @rtl8723_phy_mac_setting_calibration(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup22.i) #7
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %53, i32 0, i32 32
  %54 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i18.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %57, i32 0, i32 46
  %58 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %59(ptr noundef %hw, i32 noundef 2564, i32 noundef 251658240, i32 noundef 15) #7
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 8
  %cfg.i20.i = getelementptr inbounds %struct.rtl_priv, ptr %61, i32 0, i32 32
  %62 = ptrtoint ptr %cfg.i20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i20.i, align 8
  %ops.i21.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ops.i21.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops.i21.i, align 4
  %set_bbreg.i22.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %65, i32 0, i32 46
  %66 = ptrtoint ptr %set_bbreg.i22.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_bbreg.i22.i, align 4
  call void %67(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #7
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 8
  %cfg.i24.i = getelementptr inbounds %struct.rtl_priv, ptr %69, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i24.i, align 8
  %ops.i25.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %ops.i25.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i25.i, align 4
  %set_bbreg.i26.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %73, i32 0, i32 46
  %74 = ptrtoint ptr %set_bbreg.i26.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %set_bbreg.i26.i, align 4
  call void %75(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #7
  %76 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv, align 8
  %cfg.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %77, i32 0, i32 32
  %78 = ptrtoint ptr %cfg.i28.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg.i28.i, align 8
  %ops.i29.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops.i29.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i29.i, align 4
  %set_bbreg.i30.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 46
  %82 = ptrtoint ptr %set_bbreg.i30.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_bbreg.i30.i, align 4
  call void %83(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef 572538880) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.else.i.for.body.i_crit_edge, %if.end19.i
  %cmp24.i = phi i1 [ true, %if.end19.i ], [ false, %if.else.i.for.body.i_crit_edge ]
  %84 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %85, i32 0, i32 32
  %86 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %89, i32 0, i32 46
  %90 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %91(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %92 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv, align 8
  %cfg.i78.i.i = getelementptr inbounds %struct.rtl_priv, ptr %93, i32 0, i32 32
  %94 = ptrtoint ptr %cfg.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i78.i.i, align 8
  %ops.i79.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %ops.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i79.i.i, align 4
  %set_bbreg.i80.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %97, i32 0, i32 46
  %98 = ptrtoint ptr %set_bbreg.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %set_bbreg.i80.i.i, align 4
  call void %99(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef 0) #7
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %cfg.i82.i.i = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %102 = ptrtoint ptr %cfg.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i82.i.i, align 8
  %ops.i83.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %ops.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i83.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %105, i32 0, i32 48
  %106 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_rfreg.i.i.i, align 4
  call void %107(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 8
  %cfg.i85.i.i = getelementptr inbounds %struct.rtl_priv, ptr %109, i32 0, i32 32
  %110 = ptrtoint ptr %cfg.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cfg.i85.i.i, align 8
  %ops.i86.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %ops.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i86.i.i, align 4
  %set_rfreg.i87.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %113, i32 0, i32 48
  %114 = ptrtoint ptr %set_rfreg.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %set_rfreg.i87.i.i, align 4
  call void %115(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 131072) #7
  %116 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv, align 8
  %cfg.i89.i.i = getelementptr inbounds %struct.rtl_priv, ptr %117, i32 0, i32 32
  %118 = ptrtoint ptr %cfg.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg.i89.i.i, align 8
  %ops.i90.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %ops.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i90.i.i, align 4
  %set_rfreg.i91.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %121, i32 0, i32 48
  %122 = ptrtoint ptr %set_rfreg.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %set_rfreg.i91.i.i, align 4
  call void %123(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 63) #7
  %124 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %priv, align 8
  %cfg.i93.i.i = getelementptr inbounds %struct.rtl_priv, ptr %125, i32 0, i32 32
  %126 = ptrtoint ptr %cfg.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cfg.i93.i.i, align 8
  %ops.i94.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %127, i32 0, i32 4
  %128 = ptrtoint ptr %ops.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i94.i.i, align 4
  %set_rfreg.i95.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %129, i32 0, i32 48
  %130 = ptrtoint ptr %set_rfreg.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %set_rfreg.i95.i.i, align 4
  call void %131(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 819079) #7
  %132 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %priv, align 8
  %cfg.i97.i.i = getelementptr inbounds %struct.rtl_priv, ptr %133, i32 0, i32 32
  %134 = ptrtoint ptr %cfg.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cfg.i97.i.i, align 8
  %ops.i98.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %ops.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i98.i.i, align 4
  %set_bbreg.i99.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %137, i32 0, i32 46
  %138 = ptrtoint ptr %set_bbreg.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %set_bbreg.i99.i.i, align 4
  call void %139(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %140 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv, align 8
  %cfg.i101.i.i = getelementptr inbounds %struct.rtl_priv, ptr %141, i32 0, i32 32
  %142 = ptrtoint ptr %cfg.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cfg.i101.i.i, align 8
  %ops.i102.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %ops.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i102.i.i, align 4
  %set_bbreg.i103.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %145, i32 0, i32 46
  %146 = ptrtoint ptr %set_bbreg.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %set_bbreg.i103.i.i, align 4
  call void %147(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %148 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv, align 8
  %cfg.i105.i.i = getelementptr inbounds %struct.rtl_priv, ptr %149, i32 0, i32 32
  %150 = ptrtoint ptr %cfg.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cfg.i105.i.i, align 8
  %ops.i106.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %ops.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ops.i106.i.i, align 4
  %set_bbreg.i107.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %153, i32 0, i32 46
  %154 = ptrtoint ptr %set_bbreg.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %set_bbreg.i107.i.i, align 4
  call void %155(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #7
  %156 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv, align 8
  %cfg.i109.i.i = getelementptr inbounds %struct.rtl_priv, ptr %157, i32 0, i32 32
  %158 = ptrtoint ptr %cfg.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cfg.i109.i.i, align 8
  %ops.i110.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %ops.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i110.i.i, align 4
  %set_bbreg.i111.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %161, i32 0, i32 46
  %162 = ptrtoint ptr %set_bbreg.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %set_bbreg.i111.i.i, align 4
  call void %163(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #7
  %164 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %priv, align 8
  %cfg.i113.i.i = getelementptr inbounds %struct.rtl_priv, ptr %165, i32 0, i32 32
  %166 = ptrtoint ptr %cfg.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cfg.i113.i.i, align 8
  %ops.i114.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %ops.i114.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ops.i114.i.i, align 4
  %set_bbreg.i115.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %169, i32 0, i32 46
  %170 = ptrtoint ptr %set_bbreg.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %set_bbreg.i115.i.i, align 4
  call void %171(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %172 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %priv, align 8
  %cfg.i117.i.i = getelementptr inbounds %struct.rtl_priv, ptr %173, i32 0, i32 32
  %174 = ptrtoint ptr %cfg.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %cfg.i117.i.i, align 8
  %ops.i118.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %175, i32 0, i32 4
  %176 = ptrtoint ptr %ops.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ops.i118.i.i, align 4
  %set_bbreg.i119.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %177, i32 0, i32 46
  %178 = ptrtoint ptr %set_bbreg.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %set_bbreg.i119.i.i, align 4
  call void %179(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv, align 8
  %cfg.i121.i.i = getelementptr inbounds %struct.rtl_priv, ptr %181, i32 0, i32 32
  %182 = ptrtoint ptr %cfg.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cfg.i121.i.i, align 8
  %ops.i122.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %183, i32 0, i32 4
  %184 = ptrtoint ptr %ops.i122.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i122.i.i, align 4
  %set_bbreg.i123.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %185, i32 0, i32 46
  %186 = ptrtoint ptr %set_bbreg.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %set_bbreg.i123.i.i, align 4
  call void %187(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112617494) #7
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  %cfg.i125.i.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 32
  %190 = ptrtoint ptr %cfg.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cfg.i125.i.i, align 8
  %ops.i126.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %ops.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i126.i.i, align 4
  %set_bbreg.i127.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %193, i32 0, i32 46
  %194 = ptrtoint ptr %set_bbreg.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %set_bbreg.i127.i.i, align 4
  call void %195(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672530432) #7
  %196 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %priv, align 8
  %cfg.i129.i.i = getelementptr inbounds %struct.rtl_priv, ptr %197, i32 0, i32 32
  %198 = ptrtoint ptr %cfg.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cfg.i129.i.i, align 8
  %ops.i130.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %ops.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops.i130.i.i, align 4
  %set_bbreg.i131.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %201, i32 0, i32 46
  %202 = ptrtoint ptr %set_bbreg.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %set_bbreg.i131.i.i, align 4
  call void %203(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %204 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %priv, align 8
  %cfg.i133.i.i = getelementptr inbounds %struct.rtl_priv, ptr %205, i32 0, i32 32
  %206 = ptrtoint ptr %cfg.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cfg.i133.i.i, align 8
  %ops.i134.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %ops.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ops.i134.i.i, align 4
  %set_bbreg.i135.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %209, i32 0, i32 46
  %210 = ptrtoint ptr %set_bbreg.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %set_bbreg.i135.i.i, align 4
  call void %211(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %212 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %priv, align 8
  %cfg.i137.i.i = getelementptr inbounds %struct.rtl_priv, ptr %213, i32 0, i32 32
  %214 = ptrtoint ptr %cfg.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cfg.i137.i.i, align 8
  %ops.i138.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %215, i32 0, i32 4
  %216 = ptrtoint ptr %ops.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ops.i138.i.i, align 4
  %set_bbreg.i139.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %217, i32 0, i32 46
  %218 = ptrtoint ptr %set_bbreg.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %set_bbreg.i139.i.i, align 4
  call void %219(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #7
  %220 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %priv, align 8
  %cfg.i141.i.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 32
  %222 = ptrtoint ptr %cfg.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i141.i.i, align 8
  %ops.i142.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %ops.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops.i142.i.i, align 4
  %set_bbreg.i143.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %225, i32 0, i32 46
  %226 = ptrtoint ptr %set_bbreg.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %set_bbreg.i143.i.i, align 4
  call void %227(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %228 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %priv, align 8
  %cfg.i145.i.i = getelementptr inbounds %struct.rtl_priv, ptr %229, i32 0, i32 32
  %230 = ptrtoint ptr %cfg.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cfg.i145.i.i, align 8
  %ops.i146.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %231, i32 0, i32 4
  %232 = ptrtoint ptr %ops.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ops.i146.i.i, align 4
  %set_bbreg.i147.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %233, i32 0, i32 46
  %234 = ptrtoint ptr %set_bbreg.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %set_bbreg.i147.i.i, align 4
  call void %235(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %236 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %priv, align 8
  %cfg.i149.i.i = getelementptr inbounds %struct.rtl_priv, ptr %237, i32 0, i32 32
  %238 = ptrtoint ptr %cfg.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cfg.i149.i.i, align 8
  %ops.i150.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %ops.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ops.i150.i.i, align 4
  %set_bbreg.i151.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %241, i32 0, i32 46
  %242 = ptrtoint ptr %set_bbreg.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %set_bbreg.i151.i.i, align 4
  call void %243(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %244 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %244(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %245 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %245(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %246(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %247 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %247(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %248 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %248(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %249 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %249(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %250 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %250(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %251 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %251(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %252 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %252(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %253 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %253(i32 noundef 214748000) #7
  %254 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %priv, align 8
  %cfg.i153.i.i = getelementptr inbounds %struct.rtl_priv, ptr %255, i32 0, i32 32
  %256 = ptrtoint ptr %cfg.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cfg.i153.i.i, align 8
  %ops.i154.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %257, i32 0, i32 4
  %258 = ptrtoint ptr %ops.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ops.i154.i.i, align 4
  %set_bbreg.i155.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %259, i32 0, i32 46
  %260 = ptrtoint ptr %set_bbreg.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %set_bbreg.i155.i.i, align 4
  call void %261(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %262 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %priv, align 8
  %cfg.i157.i.i = getelementptr inbounds %struct.rtl_priv, ptr %263, i32 0, i32 32
  %264 = ptrtoint ptr %cfg.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg.i157.i.i, align 8
  %ops.i158.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %ops.i158.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ops.i158.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %267, i32 0, i32 45
  %268 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = call i32 %269(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %270 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %priv, align 8
  %cfg.i160.i.i = getelementptr inbounds %struct.rtl_priv, ptr %271, i32 0, i32 32
  %272 = ptrtoint ptr %cfg.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cfg.i160.i.i, align 8
  %ops.i161.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %273, i32 0, i32 4
  %274 = ptrtoint ptr %ops.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ops.i161.i.i, align 4
  %get_bbreg.i162.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %275, i32 0, i32 45
  %276 = ptrtoint ptr %get_bbreg.i162.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %get_bbreg.i162.i.i, align 4
  %call.i163.i.i = call i32 %277(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %278 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv, align 8
  %cfg.i165.i.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 32
  %280 = ptrtoint ptr %cfg.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cfg.i165.i.i, align 8
  %ops.i166.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %ops.i166.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ops.i166.i.i, align 4
  %get_bbreg.i167.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %283, i32 0, i32 45
  %284 = ptrtoint ptr %get_bbreg.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %get_bbreg.i167.i.i, align 4
  %call.i168.i.i = call i32 %285(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and.i.i = and i32 %call.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %286 = and i32 %call.i163.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %286)
  %cmp.not.i.i = icmp ne i32 %286, 21102592
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp.not.i.i, i1 false
  %287 = and i32 %call.i168.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %287)
  %cmp8.not.i.i = icmp ne i32 %287, 4325376
  %or.cond76.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  br i1 %or.cond76.i.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.60) #7
  %288 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %priv, align 8
  %cfg.i32.i = getelementptr inbounds %struct.rtl_priv, ptr %289, i32 0, i32 32
  %290 = ptrtoint ptr %cfg.i32.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %cfg.i32.i, align 8
  %ops.i33.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %291, i32 0, i32 4
  %292 = ptrtoint ptr %ops.i33.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %ops.i33.i, align 4
  %get_bbreg.i34.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %293, i32 0, i32 45
  %294 = ptrtoint ptr %get_bbreg.i34.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %get_bbreg.i34.i, align 4
  %call.i35.i = call i32 %295(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %and.i = lshr i32 %call.i35.i, 16
  %shr.i = and i32 %and.i, 1023
  %arrayidx.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i
  %296 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %shr.i, ptr %arrayidx.i, align 4
  %297 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %priv, align 8
  %cfg.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %298, i32 0, i32 32
  %299 = ptrtoint ptr %cfg.i37.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %cfg.i37.i, align 8
  %ops.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %300, i32 0, i32 4
  %301 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ops.i38.i, align 4
  %get_bbreg.i39.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %302, i32 0, i32 45
  %303 = ptrtoint ptr %get_bbreg.i39.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %get_bbreg.i39.i, align 4
  %call.i40.i = call i32 %304(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and34.i = lshr i32 %call.i40.i, 16
  %shr35.i = and i32 %and34.i, 1023
  %arrayidx38.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 1
  %305 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %shr35.i, ptr %arrayidx38.i, align 4
  br label %for.body43.i.preheader

if.else.i:                                        ; preds = %for.body.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.61) #7
  br i1 %cmp24.i, label %if.else.i.for.body.i_crit_edge, label %if.else.i.for.body43.i.preheader_crit_edge

if.else.i.for.body43.i.preheader_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.i.preheader

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body43.i.preheader:                           ; preds = %if.else.i.for.body43.i.preheader_crit_edge, %if.then30.i
  br label %for.body43.i

for.body43.i:                                     ; preds = %if.end61.i.for.body43.i_crit_edge, %for.body43.i.preheader
  %cmp41.i = phi i1 [ false, %if.end61.i.for.body43.i_crit_edge ], [ true, %for.body43.i.preheader ]
  %306 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %priv, align 8
  %cfg.i.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 32
  %308 = ptrtoint ptr %cfg.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cfg.i.i42.i, align 8
  %ops.i.i43.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %309, i32 0, i32 4
  %310 = ptrtoint ptr %ops.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops.i.i43.i, align 4
  %set_bbreg.i.i44.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %311, i32 0, i32 46
  %312 = ptrtoint ptr %set_bbreg.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %set_bbreg.i.i44.i, align 4
  call void %313(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %314 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %priv, align 8
  %cfg.i185.i.i = getelementptr inbounds %struct.rtl_priv, ptr %315, i32 0, i32 32
  %316 = ptrtoint ptr %cfg.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cfg.i185.i.i, align 8
  %ops.i186.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %317, i32 0, i32 4
  %318 = ptrtoint ptr %ops.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ops.i186.i.i, align 4
  %set_bbreg.i187.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %319, i32 0, i32 46
  %320 = ptrtoint ptr %set_bbreg.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %set_bbreg.i187.i.i, align 4
  call void %321(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef 0) #7
  %322 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %priv, align 8
  %cfg.i189.i.i = getelementptr inbounds %struct.rtl_priv, ptr %323, i32 0, i32 32
  %324 = ptrtoint ptr %cfg.i189.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i189.i.i, align 8
  %ops.i190.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %ops.i190.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ops.i190.i.i, align 4
  %set_rfreg.i.i45.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %327, i32 0, i32 48
  %328 = ptrtoint ptr %set_rfreg.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %set_rfreg.i.i45.i, align 4
  call void %329(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #7
  %330 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %priv, align 8
  %cfg.i192.i.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 32
  %332 = ptrtoint ptr %cfg.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cfg.i192.i.i, align 8
  %ops.i193.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %333, i32 0, i32 4
  %334 = ptrtoint ptr %ops.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ops.i193.i.i, align 4
  %set_rfreg.i194.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %335, i32 0, i32 48
  %336 = ptrtoint ptr %set_rfreg.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %set_rfreg.i194.i.i, align 4
  call void %337(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %338 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %priv, align 8
  %cfg.i196.i.i = getelementptr inbounds %struct.rtl_priv, ptr %339, i32 0, i32 32
  %340 = ptrtoint ptr %cfg.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cfg.i196.i.i, align 8
  %ops.i197.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %341, i32 0, i32 4
  %342 = ptrtoint ptr %ops.i197.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ops.i197.i.i, align 4
  %set_rfreg.i198.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %343, i32 0, i32 48
  %344 = ptrtoint ptr %set_rfreg.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %set_rfreg.i198.i.i, align 4
  call void %345(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #7
  %346 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %priv, align 8
  %cfg.i200.i.i = getelementptr inbounds %struct.rtl_priv, ptr %347, i32 0, i32 32
  %348 = ptrtoint ptr %cfg.i200.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i200.i.i, align 8
  %ops.i201.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 4
  %350 = ptrtoint ptr %ops.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ops.i201.i.i, align 4
  %set_rfreg.i202.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %351, i32 0, i32 48
  %352 = ptrtoint ptr %set_rfreg.i202.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %set_rfreg.i202.i.i, align 4
  call void %353(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015735) #7
  %354 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %priv, align 8
  %cfg.i204.i.i = getelementptr inbounds %struct.rtl_priv, ptr %355, i32 0, i32 32
  %356 = ptrtoint ptr %cfg.i204.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cfg.i204.i.i, align 8
  %ops.i205.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %357, i32 0, i32 4
  %358 = ptrtoint ptr %ops.i205.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ops.i205.i.i, align 4
  %set_bbreg.i206.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %359, i32 0, i32 46
  %360 = ptrtoint ptr %set_bbreg.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %set_bbreg.i206.i.i, align 4
  call void %361(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %362 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %priv, align 8
  %cfg.i208.i.i = getelementptr inbounds %struct.rtl_priv, ptr %363, i32 0, i32 32
  %364 = ptrtoint ptr %cfg.i208.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %cfg.i208.i.i, align 8
  %ops.i209.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %365, i32 0, i32 4
  %366 = ptrtoint ptr %ops.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ops.i209.i.i, align 4
  %set_bbreg.i210.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %367, i32 0, i32 46
  %368 = ptrtoint ptr %set_bbreg.i210.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %set_bbreg.i210.i.i, align 4
  call void %369(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %370 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %priv, align 8
  %cfg.i212.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 32
  %372 = ptrtoint ptr %cfg.i212.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cfg.i212.i.i, align 8
  %ops.i213.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %373, i32 0, i32 4
  %374 = ptrtoint ptr %ops.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ops.i213.i.i, align 4
  %set_bbreg.i214.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %375, i32 0, i32 46
  %376 = ptrtoint ptr %set_bbreg.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %set_bbreg.i214.i.i, align 4
  call void %377(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %priv, align 8
  %cfg.i216.i.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 32
  %380 = ptrtoint ptr %cfg.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i216.i.i, align 8
  %ops.i217.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 4
  %382 = ptrtoint ptr %ops.i217.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ops.i217.i.i, align 4
  %set_bbreg.i218.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %383, i32 0, i32 46
  %384 = ptrtoint ptr %set_bbreg.i218.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %set_bbreg.i218.i.i, align 4
  call void %385(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #7
  %386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %priv, align 8
  %cfg.i220.i.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 32
  %388 = ptrtoint ptr %cfg.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i220.i.i, align 8
  %ops.i221.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %ops.i221.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops.i221.i.i, align 4
  %set_bbreg.i222.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %391, i32 0, i32 46
  %392 = ptrtoint ptr %set_bbreg.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %set_bbreg.i222.i.i, align 4
  call void %393(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #7
  %394 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %priv, align 8
  %cfg.i224.i.i = getelementptr inbounds %struct.rtl_priv, ptr %395, i32 0, i32 32
  %396 = ptrtoint ptr %cfg.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i224.i.i, align 8
  %ops.i225.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %ops.i225.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %ops.i225.i.i, align 4
  %set_bbreg.i226.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %399, i32 0, i32 46
  %400 = ptrtoint ptr %set_bbreg.i226.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %set_bbreg.i226.i.i, align 4
  call void %401(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %402 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %priv, align 8
  %cfg.i228.i.i = getelementptr inbounds %struct.rtl_priv, ptr %403, i32 0, i32 32
  %404 = ptrtoint ptr %cfg.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %cfg.i228.i.i, align 8
  %ops.i229.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %405, i32 0, i32 4
  %406 = ptrtoint ptr %ops.i229.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %ops.i229.i.i, align 4
  %set_bbreg.i230.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %407, i32 0, i32 46
  %408 = ptrtoint ptr %set_bbreg.i230.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %set_bbreg.i230.i.i, align 4
  call void %409(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %410 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %priv, align 8
  %cfg.i232.i.i = getelementptr inbounds %struct.rtl_priv, ptr %411, i32 0, i32 32
  %412 = ptrtoint ptr %cfg.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cfg.i232.i.i, align 8
  %ops.i233.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %413, i32 0, i32 4
  %414 = ptrtoint ptr %ops.i233.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ops.i233.i.i, align 4
  %set_bbreg.i234.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %415, i32 0, i32 46
  %416 = ptrtoint ptr %set_bbreg.i234.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %set_bbreg.i234.i.i, align 4
  call void %417(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112483344) #7
  %418 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %priv, align 8
  %cfg.i236.i.i = getelementptr inbounds %struct.rtl_priv, ptr %419, i32 0, i32 32
  %420 = ptrtoint ptr %cfg.i236.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %cfg.i236.i.i, align 8
  %ops.i237.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %421, i32 0, i32 4
  %422 = ptrtoint ptr %ops.i237.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ops.i237.i.i, align 4
  %set_bbreg.i238.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %423, i32 0, i32 46
  %424 = ptrtoint ptr %set_bbreg.i238.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %set_bbreg.i238.i.i, align 4
  call void %425(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #7
  %426 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %priv, align 8
  %cfg.i240.i.i = getelementptr inbounds %struct.rtl_priv, ptr %427, i32 0, i32 32
  %428 = ptrtoint ptr %cfg.i240.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %cfg.i240.i.i, align 8
  %ops.i241.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %429, i32 0, i32 4
  %430 = ptrtoint ptr %ops.i241.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %ops.i241.i.i, align 4
  %set_bbreg.i242.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %431, i32 0, i32 46
  %432 = ptrtoint ptr %set_bbreg.i242.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %set_bbreg.i242.i.i, align 4
  call void %433(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %434 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %priv, align 8
  %cfg.i244.i.i = getelementptr inbounds %struct.rtl_priv, ptr %435, i32 0, i32 32
  %436 = ptrtoint ptr %cfg.i244.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %cfg.i244.i.i, align 8
  %ops.i245.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %437, i32 0, i32 4
  %438 = ptrtoint ptr %ops.i245.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %ops.i245.i.i, align 4
  %set_bbreg.i246.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %439, i32 0, i32 46
  %440 = ptrtoint ptr %set_bbreg.i246.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %set_bbreg.i246.i.i, align 4
  call void %441(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %442 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %priv, align 8
  %cfg.i248.i.i = getelementptr inbounds %struct.rtl_priv, ptr %443, i32 0, i32 32
  %444 = ptrtoint ptr %cfg.i248.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %cfg.i248.i.i, align 8
  %ops.i249.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %445, i32 0, i32 4
  %446 = ptrtoint ptr %ops.i249.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %ops.i249.i.i, align 4
  %set_bbreg.i250.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %447, i32 0, i32 46
  %448 = ptrtoint ptr %set_bbreg.i250.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %set_bbreg.i250.i.i, align 4
  call void %449(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  %450 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %priv, align 8
  %cfg.i252.i.i = getelementptr inbounds %struct.rtl_priv, ptr %451, i32 0, i32 32
  %452 = ptrtoint ptr %cfg.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %cfg.i252.i.i, align 8
  %ops.i253.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %453, i32 0, i32 4
  %454 = ptrtoint ptr %ops.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %ops.i253.i.i, align 4
  %set_bbreg.i254.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %455, i32 0, i32 46
  %456 = ptrtoint ptr %set_bbreg.i254.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %set_bbreg.i254.i.i, align 4
  call void %457(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %458 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %priv, align 8
  %cfg.i256.i.i = getelementptr inbounds %struct.rtl_priv, ptr %459, i32 0, i32 32
  %460 = ptrtoint ptr %cfg.i256.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %cfg.i256.i.i, align 8
  %ops.i257.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %461, i32 0, i32 4
  %462 = ptrtoint ptr %ops.i257.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ops.i257.i.i, align 4
  %set_bbreg.i258.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %463, i32 0, i32 46
  %464 = ptrtoint ptr %set_bbreg.i258.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %set_bbreg.i258.i.i, align 4
  call void %465(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %466 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %priv, align 8
  %cfg.i260.i.i = getelementptr inbounds %struct.rtl_priv, ptr %467, i32 0, i32 32
  %468 = ptrtoint ptr %cfg.i260.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %cfg.i260.i.i, align 8
  %ops.i261.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %469, i32 0, i32 4
  %470 = ptrtoint ptr %ops.i261.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ops.i261.i.i, align 4
  %set_bbreg.i262.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %471, i32 0, i32 46
  %472 = ptrtoint ptr %set_bbreg.i262.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %set_bbreg.i262.i.i, align 4
  call void %473(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %474 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %474(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %475 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %475(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %476 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %476(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %477 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %477(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %478 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %478(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %479 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %479(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %480 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %480(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %481 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %481(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %482 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %482(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %483 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %483(i32 noundef 214748000) #7
  %484 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %priv, align 8
  %cfg.i264.i.i = getelementptr inbounds %struct.rtl_priv, ptr %485, i32 0, i32 32
  %486 = ptrtoint ptr %cfg.i264.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %cfg.i264.i.i, align 8
  %ops.i265.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %487, i32 0, i32 4
  %488 = ptrtoint ptr %ops.i265.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %ops.i265.i.i, align 4
  %set_bbreg.i266.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %489, i32 0, i32 46
  %490 = ptrtoint ptr %set_bbreg.i266.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %set_bbreg.i266.i.i, align 4
  call void %491(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %492 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %priv, align 8
  %cfg.i268.i.i = getelementptr inbounds %struct.rtl_priv, ptr %493, i32 0, i32 32
  %494 = ptrtoint ptr %cfg.i268.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %cfg.i268.i.i, align 8
  %ops.i269.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %495, i32 0, i32 4
  %496 = ptrtoint ptr %ops.i269.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %ops.i269.i.i, align 4
  %get_bbreg.i.i46.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %497, i32 0, i32 45
  %498 = ptrtoint ptr %get_bbreg.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %get_bbreg.i.i46.i, align 4
  %call.i.i47.i = call i32 %499(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %500 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %priv, align 8
  %cfg.i271.i.i = getelementptr inbounds %struct.rtl_priv, ptr %501, i32 0, i32 32
  %502 = ptrtoint ptr %cfg.i271.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %cfg.i271.i.i, align 8
  %ops.i272.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %503, i32 0, i32 4
  %504 = ptrtoint ptr %ops.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %ops.i272.i.i, align 4
  %get_bbreg.i273.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %505, i32 0, i32 45
  %506 = ptrtoint ptr %get_bbreg.i273.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %get_bbreg.i273.i.i, align 4
  %call.i274.i.i = call i32 %507(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %508 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %priv, align 8
  %cfg.i276.i.i = getelementptr inbounds %struct.rtl_priv, ptr %509, i32 0, i32 32
  %510 = ptrtoint ptr %cfg.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %cfg.i276.i.i, align 8
  %ops.i277.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %511, i32 0, i32 4
  %512 = ptrtoint ptr %ops.i277.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ops.i277.i.i, align 4
  %get_bbreg.i278.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %513, i32 0, i32 45
  %514 = ptrtoint ptr %get_bbreg.i278.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %get_bbreg.i278.i.i, align 4
  %call.i279.i.i = call i32 %515(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and.i48.i = and i32 %call.i.i47.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48.i)
  %tobool3.not.i49.i = icmp eq i32 %and.i48.i, 0
  br i1 %tobool3.not.i49.i, label %land.lhs.true.i.i, label %for.body43.i.if.end61.i_crit_edge

for.body43.i.if.end61.i_crit_edge:                ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

land.lhs.true.i.i:                                ; preds = %for.body43.i
  %and4.i.i = and i32 %call.i274.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i.i)
  %cmp.not.i50.i = icmp eq i32 %and4.i.i, 21102592
  br i1 %cmp.not.i50.i, label %land.lhs.true.i.i.if.end61.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end61.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %and6.i.i = lshr i32 %call.i279.i.i, 16
  %shr7.i.i = and i32 %and6.i.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i.i)
  %cmp8.not.i51.i = icmp eq i32 %shr7.i.i, 66
  br i1 %cmp8.not.i51.i, label %land.lhs.true5.i.i.if.end61.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.if.end61.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  %516 = and i32 %call.i279.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %516)
  %cmp13.not.i.i = icmp eq i32 %516, 0
  %sub.i.i = sub nuw nsw i32 1024, %shr7.i.i
  %spec.select.i.i = select i1 %cmp13.not.i.i, i32 %shr7.i.i, i32 %sub.i.i
  %517 = add nsw i32 %and4.i.i, -15728641
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %517)
  %518 = icmp ult i32 %517, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i.i)
  %cmp30.i.i = icmp ult i32 %spec.select.i.i, 15
  %or.cond176.i.i = select i1 %518, i1 %cmp30.i.i, i1 false
  br i1 %or.cond176.i.i, label %if.then32.i.i, label %if.then.i.i.if.end61.i_crit_edge

if.then.i.i.if.end61.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.then32.i.i:                                    ; preds = %if.then.i.i
  %or39.i.i = or i32 %and4.i.i, %shr7.i.i
  %or42.i.i = or i32 %or39.i.i, -2147451904
  %519 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %priv, align 8
  %cfg.i281.i.i = getelementptr inbounds %struct.rtl_priv, ptr %520, i32 0, i32 32
  %521 = ptrtoint ptr %cfg.i281.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %cfg.i281.i.i, align 8
  %ops.i282.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %522, i32 0, i32 4
  %523 = ptrtoint ptr %ops.i282.i.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %ops.i282.i.i, align 4
  %set_bbreg.i283.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %524, i32 0, i32 46
  %525 = ptrtoint ptr %set_bbreg.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %set_bbreg.i283.i.i, align 4
  call void %526(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef %or42.i.i) #7
  %527 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %priv, align 8
  %cfg.i285.i.i = getelementptr inbounds %struct.rtl_priv, ptr %528, i32 0, i32 32
  %529 = ptrtoint ptr %cfg.i285.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %cfg.i285.i.i, align 8
  %ops.i286.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %530, i32 0, i32 4
  %531 = ptrtoint ptr %ops.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %ops.i286.i.i, align 4
  %set_bbreg.i287.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %532, i32 0, i32 46
  %533 = ptrtoint ptr %set_bbreg.i287.i.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %set_bbreg.i287.i.i, align 4
  call void %534(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %535 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %priv, align 8
  %cfg.i289.i.i = getelementptr inbounds %struct.rtl_priv, ptr %536, i32 0, i32 32
  %537 = ptrtoint ptr %cfg.i289.i.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %cfg.i289.i.i, align 8
  %ops.i290.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %538, i32 0, i32 4
  %539 = ptrtoint ptr %ops.i290.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %ops.i290.i.i, align 4
  %set_rfreg.i291.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %540, i32 0, i32 48
  %541 = ptrtoint ptr %set_rfreg.i291.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %set_rfreg.i291.i.i, align 4
  call void %542(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #7
  %543 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %priv, align 8
  %cfg.i293.i.i = getelementptr inbounds %struct.rtl_priv, ptr %544, i32 0, i32 32
  %545 = ptrtoint ptr %cfg.i293.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %cfg.i293.i.i, align 8
  %ops.i294.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %546, i32 0, i32 4
  %547 = ptrtoint ptr %ops.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %ops.i294.i.i, align 4
  %set_rfreg.i295.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %548, i32 0, i32 48
  %549 = ptrtoint ptr %set_rfreg.i295.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %set_rfreg.i295.i.i, align 4
  call void %550(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %551 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %priv, align 8
  %cfg.i297.i.i = getelementptr inbounds %struct.rtl_priv, ptr %552, i32 0, i32 32
  %553 = ptrtoint ptr %cfg.i297.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %cfg.i297.i.i, align 8
  %ops.i298.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %554, i32 0, i32 4
  %555 = ptrtoint ptr %ops.i298.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %ops.i298.i.i, align 4
  %set_rfreg.i299.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %556, i32 0, i32 48
  %557 = ptrtoint ptr %set_rfreg.i299.i.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %set_rfreg.i299.i.i, align 4
  call void %558(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #7
  %559 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %priv, align 8
  %cfg.i301.i.i = getelementptr inbounds %struct.rtl_priv, ptr %560, i32 0, i32 32
  %561 = ptrtoint ptr %cfg.i301.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %cfg.i301.i.i, align 8
  %ops.i302.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %562, i32 0, i32 4
  %563 = ptrtoint ptr %ops.i302.i.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %ops.i302.i.i, align 4
  %set_rfreg.i303.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %564, i32 0, i32 48
  %565 = ptrtoint ptr %set_rfreg.i303.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %set_rfreg.i303.i.i, align 4
  call void %566(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015159) #7
  %567 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %priv, align 8
  %cfg.i305.i.i = getelementptr inbounds %struct.rtl_priv, ptr %568, i32 0, i32 32
  %569 = ptrtoint ptr %cfg.i305.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %cfg.i305.i.i, align 8
  %ops.i306.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %570, i32 0, i32 4
  %571 = ptrtoint ptr %ops.i306.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %ops.i306.i.i, align 4
  %set_rfreg.i307.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %572, i32 0, i32 48
  %573 = ptrtoint ptr %set_rfreg.i307.i.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %set_rfreg.i307.i.i, align 4
  call void %574(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 3968) #7
  %575 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %priv, align 8
  %cfg.i309.i.i = getelementptr inbounds %struct.rtl_priv, ptr %576, i32 0, i32 32
  %577 = ptrtoint ptr %cfg.i309.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %cfg.i309.i.i, align 8
  %ops.i310.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %578, i32 0, i32 4
  %579 = ptrtoint ptr %ops.i310.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %ops.i310.i.i, align 4
  %set_rfreg.i311.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %580, i32 0, i32 48
  %581 = ptrtoint ptr %set_rfreg.i311.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %set_rfreg.i311.i.i, align 4
  call void %582(ptr noundef %hw, i32 noundef 0, i32 noundef 85, i32 noundef 1048575, i32 noundef 262687) #7
  %583 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %priv, align 8
  %cfg.i313.i.i = getelementptr inbounds %struct.rtl_priv, ptr %584, i32 0, i32 32
  %585 = ptrtoint ptr %cfg.i313.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %cfg.i313.i.i, align 8
  %ops.i314.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %586, i32 0, i32 4
  %587 = ptrtoint ptr %ops.i314.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %ops.i314.i.i, align 4
  %set_bbreg.i315.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %588, i32 0, i32 46
  %589 = ptrtoint ptr %set_bbreg.i315.i.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %set_bbreg.i315.i.i, align 4
  call void %590(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %591 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %priv, align 8
  %cfg.i317.i.i = getelementptr inbounds %struct.rtl_priv, ptr %592, i32 0, i32 32
  %593 = ptrtoint ptr %cfg.i317.i.i to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %cfg.i317.i.i, align 8
  %ops.i318.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %594, i32 0, i32 4
  %595 = ptrtoint ptr %ops.i318.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %ops.i318.i.i, align 4
  %set_bbreg.i319.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %596, i32 0, i32 46
  %597 = ptrtoint ptr %set_bbreg.i319.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %set_bbreg.i319.i.i, align 4
  call void %598(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #7
  %599 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %priv, align 8
  %cfg.i321.i.i = getelementptr inbounds %struct.rtl_priv, ptr %600, i32 0, i32 32
  %601 = ptrtoint ptr %cfg.i321.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %cfg.i321.i.i, align 8
  %ops.i322.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %602, i32 0, i32 4
  %603 = ptrtoint ptr %ops.i322.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %ops.i322.i.i, align 4
  %set_bbreg.i323.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %604, i32 0, i32 46
  %605 = ptrtoint ptr %set_bbreg.i323.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %set_bbreg.i323.i.i, align 4
  call void %606(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #7
  %607 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %priv, align 8
  %cfg.i325.i.i = getelementptr inbounds %struct.rtl_priv, ptr %608, i32 0, i32 32
  %609 = ptrtoint ptr %cfg.i325.i.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %cfg.i325.i.i, align 8
  %ops.i326.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %610, i32 0, i32 4
  %611 = ptrtoint ptr %ops.i326.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %ops.i326.i.i, align 4
  %set_bbreg.i327.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %612, i32 0, i32 46
  %613 = ptrtoint ptr %set_bbreg.i327.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %set_bbreg.i327.i.i, align 4
  call void %614(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %615 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %priv, align 8
  %cfg.i329.i.i = getelementptr inbounds %struct.rtl_priv, ptr %616, i32 0, i32 32
  %617 = ptrtoint ptr %cfg.i329.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %cfg.i329.i.i, align 8
  %ops.i330.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %618, i32 0, i32 4
  %619 = ptrtoint ptr %ops.i330.i.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %ops.i330.i.i, align 4
  %set_bbreg.i331.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %620, i32 0, i32 46
  %621 = ptrtoint ptr %set_bbreg.i331.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %set_bbreg.i331.i.i, align 4
  call void %622(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %623 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %priv, align 8
  %cfg.i333.i.i = getelementptr inbounds %struct.rtl_priv, ptr %624, i32 0, i32 32
  %625 = ptrtoint ptr %cfg.i333.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %cfg.i333.i.i, align 8
  %ops.i334.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %626, i32 0, i32 4
  %627 = ptrtoint ptr %ops.i334.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %ops.i334.i.i, align 4
  %set_bbreg.i335.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %628, i32 0, i32 46
  %629 = ptrtoint ptr %set_bbreg.i335.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %set_bbreg.i335.i.i, align 4
  call void %630(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112815104) #7
  %631 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %priv, align 8
  %cfg.i337.i.i = getelementptr inbounds %struct.rtl_priv, ptr %632, i32 0, i32 32
  %633 = ptrtoint ptr %cfg.i337.i.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %cfg.i337.i.i, align 8
  %ops.i338.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %634, i32 0, i32 4
  %635 = ptrtoint ptr %ops.i338.i.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %ops.i338.i.i, align 4
  %set_bbreg.i339.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %636, i32 0, i32 46
  %637 = ptrtoint ptr %set_bbreg.i339.i.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %set_bbreg.i339.i.i, align 4
  call void %638(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672530463) #7
  %639 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %priv, align 8
  %cfg.i341.i.i = getelementptr inbounds %struct.rtl_priv, ptr %640, i32 0, i32 32
  %641 = ptrtoint ptr %cfg.i341.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %cfg.i341.i.i, align 8
  %ops.i342.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %642, i32 0, i32 4
  %643 = ptrtoint ptr %ops.i342.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %ops.i342.i.i, align 4
  %set_bbreg.i343.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %644, i32 0, i32 46
  %645 = ptrtoint ptr %set_bbreg.i343.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %set_bbreg.i343.i.i, align 4
  call void %646(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %647 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %priv, align 8
  %cfg.i345.i.i = getelementptr inbounds %struct.rtl_priv, ptr %648, i32 0, i32 32
  %649 = ptrtoint ptr %cfg.i345.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %cfg.i345.i.i, align 8
  %ops.i346.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %650, i32 0, i32 4
  %651 = ptrtoint ptr %ops.i346.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %ops.i346.i.i, align 4
  %set_bbreg.i347.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %652, i32 0, i32 46
  %653 = ptrtoint ptr %set_bbreg.i347.i.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %set_bbreg.i347.i.i, align 4
  call void %654(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %655 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %priv, align 8
  %cfg.i349.i.i = getelementptr inbounds %struct.rtl_priv, ptr %656, i32 0, i32 32
  %657 = ptrtoint ptr %cfg.i349.i.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %cfg.i349.i.i, align 8
  %ops.i350.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %658, i32 0, i32 4
  %659 = ptrtoint ptr %ops.i350.i.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %ops.i350.i.i, align 4
  %set_bbreg.i351.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %660, i32 0, i32 46
  %661 = ptrtoint ptr %set_bbreg.i351.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %set_bbreg.i351.i.i, align 4
  call void %662(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630737) #7
  %663 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %priv, align 8
  %cfg.i353.i.i = getelementptr inbounds %struct.rtl_priv, ptr %664, i32 0, i32 32
  %665 = ptrtoint ptr %cfg.i353.i.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %cfg.i353.i.i, align 8
  %ops.i354.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %666, i32 0, i32 4
  %667 = ptrtoint ptr %ops.i354.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %ops.i354.i.i, align 4
  %set_bbreg.i355.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %668, i32 0, i32 46
  %669 = ptrtoint ptr %set_bbreg.i355.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %set_bbreg.i355.i.i, align 4
  call void %670(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %671 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %priv, align 8
  %cfg.i357.i.i = getelementptr inbounds %struct.rtl_priv, ptr %672, i32 0, i32 32
  %673 = ptrtoint ptr %cfg.i357.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %cfg.i357.i.i, align 8
  %ops.i358.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %674, i32 0, i32 4
  %675 = ptrtoint ptr %ops.i358.i.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %ops.i358.i.i, align 4
  %set_bbreg.i359.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %676, i32 0, i32 46
  %677 = ptrtoint ptr %set_bbreg.i359.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %set_bbreg.i359.i.i, align 4
  call void %678(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %679 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %priv, align 8
  %cfg.i361.i.i = getelementptr inbounds %struct.rtl_priv, ptr %680, i32 0, i32 32
  %681 = ptrtoint ptr %cfg.i361.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %cfg.i361.i.i, align 8
  %ops.i362.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %682, i32 0, i32 4
  %683 = ptrtoint ptr %ops.i362.i.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %ops.i362.i.i, align 4
  %set_bbreg.i363.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %684, i32 0, i32 46
  %685 = ptrtoint ptr %set_bbreg.i363.i.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %set_bbreg.i363.i.i, align 4
  call void %686(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %687 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %687(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %688 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %688(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %689 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %689(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %690 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %690(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %691 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %691(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %692 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %692(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %693 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %693(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %694 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %694(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %695 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %695(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %696 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %696(i32 noundef 214748000) #7
  %697 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %priv, align 8
  %cfg.i365.i.i = getelementptr inbounds %struct.rtl_priv, ptr %698, i32 0, i32 32
  %699 = ptrtoint ptr %cfg.i365.i.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %cfg.i365.i.i, align 8
  %ops.i366.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %700, i32 0, i32 4
  %701 = ptrtoint ptr %ops.i366.i.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %ops.i366.i.i, align 4
  %set_bbreg.i367.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %702, i32 0, i32 46
  %703 = ptrtoint ptr %set_bbreg.i367.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %set_bbreg.i367.i.i, align 4
  call void %704(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %705 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %priv, align 8
  %cfg.i369.i.i = getelementptr inbounds %struct.rtl_priv, ptr %706, i32 0, i32 32
  %707 = ptrtoint ptr %cfg.i369.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %cfg.i369.i.i, align 8
  %ops.i370.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %708, i32 0, i32 4
  %709 = ptrtoint ptr %ops.i370.i.i to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %ops.i370.i.i, align 4
  %get_bbreg.i371.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %710, i32 0, i32 45
  %711 = ptrtoint ptr %get_bbreg.i371.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load ptr, ptr %get_bbreg.i371.i.i, align 4
  %call.i372.i.i = call i32 %712(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %713 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %priv, align 8
  %cfg.i374.i.i = getelementptr inbounds %struct.rtl_priv, ptr %714, i32 0, i32 32
  %715 = ptrtoint ptr %cfg.i374.i.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %cfg.i374.i.i, align 8
  %ops.i375.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %716, i32 0, i32 4
  %717 = ptrtoint ptr %ops.i375.i.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %ops.i375.i.i, align 4
  %get_bbreg.i376.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %718, i32 0, i32 45
  %719 = ptrtoint ptr %get_bbreg.i376.i.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %get_bbreg.i376.i.i, align 4
  %call.i377.i.i = call i32 %720(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %721 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %priv, align 8
  %cfg.i379.i.i = getelementptr inbounds %struct.rtl_priv, ptr %722, i32 0, i32 32
  %723 = ptrtoint ptr %cfg.i379.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %cfg.i379.i.i, align 8
  %ops.i380.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %724, i32 0, i32 4
  %725 = ptrtoint ptr %ops.i380.i.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %ops.i380.i.i, align 4
  %set_bbreg.i381.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %726, i32 0, i32 46
  %727 = ptrtoint ptr %set_bbreg.i381.i.i to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %set_bbreg.i381.i.i, align 4
  call void %728(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %729 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %priv, align 8
  %cfg.i383.i.i = getelementptr inbounds %struct.rtl_priv, ptr %730, i32 0, i32 32
  %731 = ptrtoint ptr %cfg.i383.i.i to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %cfg.i383.i.i, align 8
  %ops.i384.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %732, i32 0, i32 4
  %733 = ptrtoint ptr %ops.i384.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %ops.i384.i.i, align 4
  %set_rfreg.i385.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %734, i32 0, i32 48
  %735 = ptrtoint ptr %set_rfreg.i385.i.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %set_rfreg.i385.i.i, align 4
  call void %736(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 1920) #7
  %and51.i.i = lshr i32 %call.i372.i.i, 16
  %shr52.i.i = and i32 %and51.i.i, 1023
  %and59.i.i = and i32 %call.i372.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i.i)
  %tobool60.not.i.i = icmp ne i32 %and59.i.i, 0
  %737 = and i32 %call.i377.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %737)
  %cmp64.not.i.i = icmp ne i32 %737, 20054016
  %not.tobool60.not.i.i = xor i1 %tobool60.not.i.i, true
  %or.cond178.i.i = select i1 %not.tobool60.not.i.i, i1 %cmp64.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %shr52.i.i)
  %cmp69.not.i.i = icmp ne i32 %shr52.i.i, 54
  %or.cond179.i.i = select i1 %or.cond178.i.i, i1 %cmp69.not.i.i, i1 false
  %brmerge.i.i = select i1 %or.cond179.i.i, i1 true, i1 %tobool60.not.i.i
  br i1 %brmerge.i.i, label %_rtl8723be_phy_path_a_rx_iqk.exit.i, label %land.lhs.true78.i.i

land.lhs.true78.i.i:                              ; preds = %if.then32.i.i
  %738 = and i32 %call.i372.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %738)
  %cmp54.not.i.i = icmp eq i32 %738, 0
  %sub57.i.i = sub nuw nsw i32 1024, %shr52.i.i
  %spec.select177.i.i = select i1 %cmp54.not.i.i, i32 %shr52.i.i, i32 %sub57.i.i
  %and79.i.i = lshr i32 %call.i377.i.i, 16
  %shr80.i.i = and i32 %and79.i.i, 1023
  %739 = add nsw i32 %shr80.i.i, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %739)
  %740 = icmp ult i32 %739, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select177.i.i)
  %cmp89.i.i = icmp ult i32 %spec.select177.i.i, 15
  %or.cond182.i.i = select i1 %740, i1 %cmp89.i.i, i1 false
  br i1 %or.cond182.i.i, label %land.lhs.true78.i.i.for.end64.thread.i_crit_edge, label %land.lhs.true78.i.i.if.end61.i_crit_edge

land.lhs.true78.i.i.if.end61.i_crit_edge:         ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

land.lhs.true78.i.i.for.end64.thread.i_crit_edge: ; preds = %land.lhs.true78.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64.thread.i

_rtl8723be_phy_path_a_rx_iqk.exit.i:              ; preds = %if.then32.i.i
  br i1 %or.cond179.i.i, label %_rtl8723be_phy_path_a_rx_iqk.exit.i.for.end64.thread.i_crit_edge, label %_rtl8723be_phy_path_a_rx_iqk.exit.i.if.end61.i_crit_edge

_rtl8723be_phy_path_a_rx_iqk.exit.i.if.end61.i_crit_edge: ; preds = %_rtl8723be_phy_path_a_rx_iqk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

_rtl8723be_phy_path_a_rx_iqk.exit.i.for.end64.thread.i_crit_edge: ; preds = %_rtl8723be_phy_path_a_rx_iqk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end64.thread.i

for.end64.thread.i:                               ; preds = %_rtl8723be_phy_path_a_rx_iqk.exit.i.for.end64.thread.i_crit_edge, %land.lhs.true78.i.i.for.end64.thread.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.62) #7
  %741 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %priv, align 8
  %cfg.i54.i = getelementptr inbounds %struct.rtl_priv, ptr %742, i32 0, i32 32
  %743 = ptrtoint ptr %cfg.i54.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %cfg.i54.i, align 8
  %ops.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %744, i32 0, i32 4
  %745 = ptrtoint ptr %ops.i55.i to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %ops.i55.i, align 4
  %get_bbreg.i56.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %746, i32 0, i32 45
  %747 = ptrtoint ptr %get_bbreg.i56.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %get_bbreg.i56.i, align 4
  %call.i57.i = call i32 %748(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and50.i = lshr i32 %call.i57.i, 16
  %shr51.i = and i32 %and50.i, 1023
  %arrayidx54.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 2
  %749 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %shr51.i, ptr %arrayidx54.i, align 4
  %750 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %priv, align 8
  %cfg.i59.i = getelementptr inbounds %struct.rtl_priv, ptr %751, i32 0, i32 32
  %752 = ptrtoint ptr %cfg.i59.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %cfg.i59.i, align 8
  %ops.i60.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %753, i32 0, i32 4
  %754 = ptrtoint ptr %ops.i60.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %ops.i60.i, align 4
  %get_bbreg.i61.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %755, i32 0, i32 45
  %756 = ptrtoint ptr %get_bbreg.i61.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %get_bbreg.i61.i, align 4
  %call.i62.i = call i32 %757(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %and56.i = lshr i32 %call.i62.i, 16
  %shr57.i = and i32 %and56.i, 1023
  %arrayidx60.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 3
  %758 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store4_noabort(i32 %758)
  store i32 %shr57.i, ptr %arrayidx60.i, align 4
  br label %for.body75.i.preheader

if.end61.i:                                       ; preds = %_rtl8723be_phy_path_a_rx_iqk.exit.i.if.end61.i_crit_edge, %land.lhs.true78.i.i.if.end61.i_crit_edge, %if.then.i.i.if.end61.i_crit_edge, %land.lhs.true5.i.i.if.end61.i_crit_edge, %land.lhs.true.i.i.if.end61.i_crit_edge, %for.body43.i.if.end61.i_crit_edge
  %cmp66.i = phi i1 [ false, %land.lhs.true78.i.i.if.end61.i_crit_edge ], [ false, %if.then.i.i.if.end61.i_crit_edge ], [ true, %for.body43.i.if.end61.i_crit_edge ], [ true, %land.lhs.true.i.i.if.end61.i_crit_edge ], [ true, %land.lhs.true5.i.i.if.end61.i_crit_edge ], [ false, %_rtl8723be_phy_path_a_rx_iqk.exit.i.if.end61.i_crit_edge ]
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.63) #7
  br i1 %cmp41.i, label %if.end61.i.for.body43.i_crit_edge, label %for.end64.i

if.end61.i.for.body43.i_crit_edge:                ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43.i

for.end64.i:                                      ; preds = %if.end61.i
  br i1 %cmp66.i, label %if.then68.i, label %for.end64.i.for.body75.i.preheader_crit_edge

for.end64.i.for.body75.i.preheader_crit_edge:     ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75.i.preheader

if.then68.i:                                      ; preds = %for.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.64) #7
  br label %for.body75.i.preheader

for.body75.i.preheader:                           ; preds = %if.then68.i, %for.end64.i.for.body75.i.preheader_crit_edge, %for.end64.thread.i
  br label %for.body75.i

for.body75.i:                                     ; preds = %if.end93.i.for.body75.i_crit_edge, %for.body75.i.preheader
  %cmp73.i = phi i1 [ false, %if.end93.i.for.body75.i_crit_edge ], [ true, %for.body75.i.preheader ]
  %759 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %priv, align 8
  %cfg.i.i64.i = getelementptr inbounds %struct.rtl_priv, ptr %760, i32 0, i32 32
  %761 = ptrtoint ptr %cfg.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %cfg.i.i64.i, align 8
  %ops.i.i65.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %762, i32 0, i32 4
  %763 = ptrtoint ptr %ops.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %ops.i.i65.i, align 4
  %set_bbreg.i.i66.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %764, i32 0, i32 46
  %765 = ptrtoint ptr %set_bbreg.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %set_bbreg.i.i66.i, align 4
  call void %766(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %767 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load ptr, ptr %priv, align 8
  %cfg.i76.i.i = getelementptr inbounds %struct.rtl_priv, ptr %768, i32 0, i32 32
  %769 = ptrtoint ptr %cfg.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %cfg.i76.i.i, align 8
  %ops.i77.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %770, i32 0, i32 4
  %771 = ptrtoint ptr %ops.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %ops.i77.i.i, align 4
  %set_bbreg.i78.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %772, i32 0, i32 46
  %773 = ptrtoint ptr %set_bbreg.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %set_bbreg.i78.i.i, align 4
  call void %774(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #7
  %775 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %priv, align 8
  %cfg.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %776, i32 0, i32 32
  %777 = ptrtoint ptr %cfg.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %cfg.i80.i.i, align 8
  %ops.i81.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %778, i32 0, i32 4
  %779 = ptrtoint ptr %ops.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %ops.i81.i.i, align 4
  %set_rfreg.i.i67.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %780, i32 0, i32 48
  %781 = ptrtoint ptr %set_rfreg.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %set_rfreg.i.i67.i, align 4
  call void %782(ptr noundef %hw, i32 noundef 0, i32 noundef 237, i32 noundef 1048575, i32 noundef 32) #7
  %783 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %priv, align 8
  %cfg.i83.i.i = getelementptr inbounds %struct.rtl_priv, ptr %784, i32 0, i32 32
  %785 = ptrtoint ptr %cfg.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %cfg.i83.i.i, align 8
  %ops.i84.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %786, i32 0, i32 4
  %787 = ptrtoint ptr %ops.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %ops.i84.i.i, align 4
  %set_rfreg.i85.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %788, i32 0, i32 48
  %789 = ptrtoint ptr %set_rfreg.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %set_rfreg.i85.i.i, align 4
  call void %790(ptr noundef %hw, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 266177) #7
  %791 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %priv, align 8
  %cfg.i87.i.i = getelementptr inbounds %struct.rtl_priv, ptr %792, i32 0, i32 32
  %793 = ptrtoint ptr %cfg.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %cfg.i87.i.i, align 8
  %ops.i88.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %794, i32 0, i32 4
  %795 = ptrtoint ptr %ops.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %ops.i88.i.i, align 4
  %set_bbreg.i89.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %796, i32 0, i32 46
  %797 = ptrtoint ptr %set_bbreg.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %set_bbreg.i89.i.i, align 4
  call void %798(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %799 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %priv, align 8
  %cfg.i91.i.i = getelementptr inbounds %struct.rtl_priv, ptr %800, i32 0, i32 32
  %801 = ptrtoint ptr %cfg.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load ptr, ptr %cfg.i91.i.i, align 8
  %ops.i92.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %802, i32 0, i32 4
  %803 = ptrtoint ptr %ops.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %ops.i92.i.i, align 4
  %set_bbreg.i93.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %804, i32 0, i32 46
  %805 = ptrtoint ptr %set_bbreg.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %set_bbreg.i93.i.i, align 4
  call void %806(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %807 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %priv, align 8
  %cfg.i95.i.i = getelementptr inbounds %struct.rtl_priv, ptr %808, i32 0, i32 32
  %809 = ptrtoint ptr %cfg.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %cfg.i95.i.i, align 8
  %ops.i96.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %810, i32 0, i32 4
  %811 = ptrtoint ptr %ops.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %ops.i96.i.i, align 4
  %set_bbreg.i97.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %812, i32 0, i32 46
  %813 = ptrtoint ptr %set_bbreg.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %set_bbreg.i97.i.i, align 4
  call void %814(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #7
  %815 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %priv, align 8
  %cfg.i99.i.i = getelementptr inbounds %struct.rtl_priv, ptr %816, i32 0, i32 32
  %817 = ptrtoint ptr %cfg.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %cfg.i99.i.i, align 8
  %ops.i100.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %818, i32 0, i32 4
  %819 = ptrtoint ptr %ops.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %ops.i100.i.i, align 4
  %set_bbreg.i101.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %820, i32 0, i32 46
  %821 = ptrtoint ptr %set_bbreg.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %set_bbreg.i101.i.i, align 4
  call void %822(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #7
  %823 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %priv, align 8
  %cfg.i103.i.i = getelementptr inbounds %struct.rtl_priv, ptr %824, i32 0, i32 32
  %825 = ptrtoint ptr %cfg.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %cfg.i103.i.i, align 8
  %ops.i104.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %826, i32 0, i32 4
  %827 = ptrtoint ptr %ops.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %ops.i104.i.i, align 4
  %set_bbreg.i105.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %828, i32 0, i32 46
  %829 = ptrtoint ptr %set_bbreg.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %set_bbreg.i105.i.i, align 4
  call void %830(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %831 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %priv, align 8
  %cfg.i107.i.i = getelementptr inbounds %struct.rtl_priv, ptr %832, i32 0, i32 32
  %833 = ptrtoint ptr %cfg.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %cfg.i107.i.i, align 8
  %ops.i108.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %834, i32 0, i32 4
  %835 = ptrtoint ptr %ops.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %ops.i108.i.i, align 4
  %set_bbreg.i109.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %836, i32 0, i32 46
  %837 = ptrtoint ptr %set_bbreg.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %set_bbreg.i109.i.i, align 4
  call void %838(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %839 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %priv, align 8
  %cfg.i111.i.i = getelementptr inbounds %struct.rtl_priv, ptr %840, i32 0, i32 32
  %841 = ptrtoint ptr %cfg.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %cfg.i111.i.i, align 8
  %ops.i112.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %842, i32 0, i32 4
  %843 = ptrtoint ptr %ops.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %ops.i112.i.i, align 4
  %set_bbreg.i113.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %844, i32 0, i32 46
  %845 = ptrtoint ptr %set_bbreg.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %set_bbreg.i113.i.i, align 4
  call void %846(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112617494) #7
  %847 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %priv, align 8
  %cfg.i115.i.i = getelementptr inbounds %struct.rtl_priv, ptr %848, i32 0, i32 32
  %849 = ptrtoint ptr %cfg.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %cfg.i115.i.i, align 8
  %ops.i116.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %850, i32 0, i32 4
  %851 = ptrtoint ptr %ops.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load ptr, ptr %ops.i116.i.i, align 4
  %set_bbreg.i117.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %852, i32 0, i32 46
  %853 = ptrtoint ptr %set_bbreg.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %set_bbreg.i117.i.i, align 4
  call void %854(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #7
  %855 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %priv, align 8
  %cfg.i119.i.i = getelementptr inbounds %struct.rtl_priv, ptr %856, i32 0, i32 32
  %857 = ptrtoint ptr %cfg.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %cfg.i119.i.i, align 8
  %ops.i120.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %858, i32 0, i32 4
  %859 = ptrtoint ptr %ops.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %ops.i120.i.i, align 4
  %set_bbreg.i121.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %860, i32 0, i32 46
  %861 = ptrtoint ptr %set_bbreg.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %set_bbreg.i121.i.i, align 4
  call void %862(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %863 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %priv, align 8
  %cfg.i123.i.i = getelementptr inbounds %struct.rtl_priv, ptr %864, i32 0, i32 32
  %865 = ptrtoint ptr %cfg.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %cfg.i123.i.i, align 8
  %ops.i124.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %866, i32 0, i32 4
  %867 = ptrtoint ptr %ops.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %ops.i124.i.i, align 4
  %set_bbreg.i125.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %868, i32 0, i32 46
  %869 = ptrtoint ptr %set_bbreg.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %set_bbreg.i125.i.i, align 4
  call void %870(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %871 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %priv, align 8
  %cfg.i127.i.i = getelementptr inbounds %struct.rtl_priv, ptr %872, i32 0, i32 32
  %873 = ptrtoint ptr %cfg.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %cfg.i127.i.i, align 8
  %ops.i128.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %874, i32 0, i32 4
  %875 = ptrtoint ptr %ops.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %ops.i128.i.i, align 4
  %set_bbreg.i129.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %876, i32 0, i32 46
  %877 = ptrtoint ptr %set_bbreg.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %set_bbreg.i129.i.i, align 4
  call void %878(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #7
  %879 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %priv, align 8
  %cfg.i131.i.i = getelementptr inbounds %struct.rtl_priv, ptr %880, i32 0, i32 32
  %881 = ptrtoint ptr %cfg.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %cfg.i131.i.i, align 8
  %ops.i132.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %882, i32 0, i32 4
  %883 = ptrtoint ptr %ops.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %ops.i132.i.i, align 4
  %set_bbreg.i133.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %884, i32 0, i32 46
  %885 = ptrtoint ptr %set_bbreg.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %set_bbreg.i133.i.i, align 4
  call void %886(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %887 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %priv, align 8
  %cfg.i135.i.i = getelementptr inbounds %struct.rtl_priv, ptr %888, i32 0, i32 32
  %889 = ptrtoint ptr %cfg.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %cfg.i135.i.i, align 8
  %ops.i136.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %890, i32 0, i32 4
  %891 = ptrtoint ptr %ops.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %ops.i136.i.i, align 4
  %set_bbreg.i137.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %892, i32 0, i32 46
  %893 = ptrtoint ptr %set_bbreg.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %set_bbreg.i137.i.i, align 4
  call void %894(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %895 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %priv, align 8
  %cfg.i139.i.i = getelementptr inbounds %struct.rtl_priv, ptr %896, i32 0, i32 32
  %897 = ptrtoint ptr %cfg.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %cfg.i139.i.i, align 8
  %ops.i140.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %898, i32 0, i32 4
  %899 = ptrtoint ptr %ops.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %ops.i140.i.i, align 4
  %set_bbreg.i141.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %900, i32 0, i32 46
  %901 = ptrtoint ptr %set_bbreg.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %set_bbreg.i141.i.i, align 4
  call void %902(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %903 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %903(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %904 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %904(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %905 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %905(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %906 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %906(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %907 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %907(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %908 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %908(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %909 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %909(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %910 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %910(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %911 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %911(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %912 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %912(i32 noundef 214748000) #7
  %913 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %priv, align 8
  %cfg.i143.i.i = getelementptr inbounds %struct.rtl_priv, ptr %914, i32 0, i32 32
  %915 = ptrtoint ptr %cfg.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %cfg.i143.i.i, align 8
  %ops.i144.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %916, i32 0, i32 4
  %917 = ptrtoint ptr %ops.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %ops.i144.i.i, align 4
  %set_bbreg.i145.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %918, i32 0, i32 46
  %919 = ptrtoint ptr %set_bbreg.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %set_bbreg.i145.i.i, align 4
  call void %920(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %921 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %priv, align 8
  %cfg.i147.i.i = getelementptr inbounds %struct.rtl_priv, ptr %922, i32 0, i32 32
  %923 = ptrtoint ptr %cfg.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %cfg.i147.i.i, align 8
  %ops.i148.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %924, i32 0, i32 4
  %925 = ptrtoint ptr %ops.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %ops.i148.i.i, align 4
  %get_bbreg.i.i68.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %926, i32 0, i32 45
  %927 = ptrtoint ptr %get_bbreg.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %get_bbreg.i.i68.i, align 4
  %call.i.i69.i = call i32 %928(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %929 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %priv, align 8
  %cfg.i150.i.i = getelementptr inbounds %struct.rtl_priv, ptr %930, i32 0, i32 32
  %931 = ptrtoint ptr %cfg.i150.i.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %cfg.i150.i.i, align 8
  %ops.i151.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %932, i32 0, i32 4
  %933 = ptrtoint ptr %ops.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %ops.i151.i.i, align 4
  %get_bbreg.i152.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %934, i32 0, i32 45
  %935 = ptrtoint ptr %get_bbreg.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %get_bbreg.i152.i.i, align 4
  %call.i153.i.i = call i32 %936(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %937 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %priv, align 8
  %cfg.i155.i.i = getelementptr inbounds %struct.rtl_priv, ptr %938, i32 0, i32 32
  %939 = ptrtoint ptr %cfg.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %cfg.i155.i.i, align 8
  %ops.i156.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %940, i32 0, i32 4
  %941 = ptrtoint ptr %ops.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %ops.i156.i.i, align 4
  %get_bbreg.i157.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %942, i32 0, i32 45
  %943 = ptrtoint ptr %get_bbreg.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %get_bbreg.i157.i.i, align 4
  %call.i158.i.i = call i32 %944(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and.i70.i = and i32 %call.i.i69.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i)
  %tobool3.not.i71.i = icmp eq i32 %and.i70.i, 0
  %945 = and i32 %call.i153.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %945)
  %cmp.not.i72.i = icmp ne i32 %945, 21102592
  %or.cond.i73.i = select i1 %tobool3.not.i71.i, i1 %cmp.not.i72.i, i1 false
  %946 = and i32 %call.i158.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %946)
  %cmp8.not.i74.i = icmp ne i32 %946, 4325376
  %or.cond74.i.i = select i1 %or.cond.i73.i, i1 %cmp8.not.i74.i, i1 false
  br i1 %or.cond74.i.i, label %if.then80.i, label %if.end93.i

if.then80.i:                                      ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.65) #7
  %947 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %priv, align 8
  %cfg.i77.i = getelementptr inbounds %struct.rtl_priv, ptr %948, i32 0, i32 32
  %949 = ptrtoint ptr %cfg.i77.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %cfg.i77.i, align 8
  %ops.i78.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %950, i32 0, i32 4
  %951 = ptrtoint ptr %ops.i78.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %ops.i78.i, align 4
  %get_bbreg.i79.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %952, i32 0, i32 45
  %953 = ptrtoint ptr %get_bbreg.i79.i to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %get_bbreg.i79.i, align 4
  %call.i80.i = call i32 %954(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %and82.i = lshr i32 %call.i80.i, 16
  %shr83.i = and i32 %and82.i, 1023
  %arrayidx86.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 4
  %955 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %955)
  store i32 %shr83.i, ptr %arrayidx86.i, align 4
  %956 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %priv, align 8
  %cfg.i82.i = getelementptr inbounds %struct.rtl_priv, ptr %957, i32 0, i32 32
  %958 = ptrtoint ptr %cfg.i82.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %cfg.i82.i, align 8
  %ops.i83.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %959, i32 0, i32 4
  %960 = ptrtoint ptr %ops.i83.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %ops.i83.i, align 4
  %get_bbreg.i84.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %961, i32 0, i32 45
  %962 = ptrtoint ptr %get_bbreg.i84.i to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %get_bbreg.i84.i, align 4
  %call.i85.i = call i32 %963(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and88.i = lshr i32 %call.i85.i, 16
  %shr89.i = and i32 %and88.i, 1023
  %arrayidx92.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 5
  %964 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store4_noabort(i32 %964)
  store i32 %shr89.i, ptr %arrayidx92.i, align 4
  br label %for.body100.i.preheader

if.end93.i:                                       ; preds = %for.body75.i
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.66) #7
  br i1 %cmp73.i, label %if.end93.i.for.body75.i_crit_edge, label %if.end93.i.for.body100.i.preheader_crit_edge

if.end93.i.for.body100.i.preheader_crit_edge:     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100.i.preheader

if.end93.i.for.body75.i_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body75.i

for.body100.i.preheader:                          ; preds = %if.end93.i.for.body100.i.preheader_crit_edge, %if.then80.i
  br label %for.body100.i

for.body100.i:                                    ; preds = %if.end118.i.for.body100.i_crit_edge, %for.body100.i.preheader
  %cmp98.i = phi i1 [ false, %if.end118.i.for.body100.i_crit_edge ], [ true, %for.body100.i.preheader ]
  %965 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %priv, align 8
  %cfg.i.i87.i = getelementptr inbounds %struct.rtl_priv, ptr %966, i32 0, i32 32
  %967 = ptrtoint ptr %cfg.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %cfg.i.i87.i, align 8
  %ops.i.i88.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %968, i32 0, i32 4
  %969 = ptrtoint ptr %ops.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %ops.i.i88.i, align 4
  %set_bbreg.i.i89.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %970, i32 0, i32 46
  %971 = ptrtoint ptr %set_bbreg.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %set_bbreg.i.i89.i, align 4
  call void %972(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %973 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %priv, align 8
  %cfg.i185.i90.i = getelementptr inbounds %struct.rtl_priv, ptr %974, i32 0, i32 32
  %975 = ptrtoint ptr %cfg.i185.i90.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %cfg.i185.i90.i, align 8
  %ops.i186.i91.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %976, i32 0, i32 4
  %977 = ptrtoint ptr %ops.i186.i91.i to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %ops.i186.i91.i, align 4
  %set_bbreg.i187.i92.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %978, i32 0, i32 46
  %979 = ptrtoint ptr %set_bbreg.i187.i92.i to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %set_bbreg.i187.i92.i, align 4
  call void %980(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef 640) #7
  %981 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load ptr, ptr %priv, align 8
  %cfg.i189.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %982, i32 0, i32 32
  %983 = ptrtoint ptr %cfg.i189.i93.i to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %cfg.i189.i93.i, align 8
  %ops.i190.i94.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %984, i32 0, i32 4
  %985 = ptrtoint ptr %ops.i190.i94.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %ops.i190.i94.i, align 4
  %set_rfreg.i.i95.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %986, i32 0, i32 48
  %987 = ptrtoint ptr %set_rfreg.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %set_rfreg.i.i95.i, align 4
  call void %988(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #7
  %989 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %priv, align 8
  %cfg.i192.i96.i = getelementptr inbounds %struct.rtl_priv, ptr %990, i32 0, i32 32
  %991 = ptrtoint ptr %cfg.i192.i96.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %cfg.i192.i96.i, align 8
  %ops.i193.i97.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %992, i32 0, i32 4
  %993 = ptrtoint ptr %ops.i193.i97.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %ops.i193.i97.i, align 4
  %set_rfreg.i194.i98.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %994, i32 0, i32 48
  %995 = ptrtoint ptr %set_rfreg.i194.i98.i to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %set_rfreg.i194.i98.i, align 4
  call void %996(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %997 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %priv, align 8
  %cfg.i196.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %998, i32 0, i32 32
  %999 = ptrtoint ptr %cfg.i196.i99.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %cfg.i196.i99.i, align 8
  %ops.i197.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1000, i32 0, i32 4
  %1001 = ptrtoint ptr %ops.i197.i100.i to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %ops.i197.i100.i, align 4
  %set_rfreg.i198.i101.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1002, i32 0, i32 48
  %1003 = ptrtoint ptr %set_rfreg.i198.i101.i to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %set_rfreg.i198.i101.i, align 4
  call void %1004(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #7
  %1005 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %priv, align 8
  %cfg.i200.i102.i = getelementptr inbounds %struct.rtl_priv, ptr %1006, i32 0, i32 32
  %1007 = ptrtoint ptr %cfg.i200.i102.i to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %cfg.i200.i102.i, align 8
  %ops.i201.i103.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1008, i32 0, i32 4
  %1009 = ptrtoint ptr %ops.i201.i103.i to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %ops.i201.i103.i, align 4
  %set_rfreg.i202.i104.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1010, i32 0, i32 48
  %1011 = ptrtoint ptr %set_rfreg.i202.i104.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %set_rfreg.i202.i104.i, align 4
  call void %1012(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015799) #7
  %1013 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load ptr, ptr %priv, align 8
  %cfg.i204.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %1014, i32 0, i32 32
  %1015 = ptrtoint ptr %cfg.i204.i105.i to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %cfg.i204.i105.i, align 8
  %ops.i205.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1016, i32 0, i32 4
  %1017 = ptrtoint ptr %ops.i205.i106.i to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %ops.i205.i106.i, align 4
  %set_rfreg.i206.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1018, i32 0, i32 48
  %1019 = ptrtoint ptr %set_rfreg.i206.i.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %set_rfreg.i206.i.i, align 4
  call void %1020(ptr noundef %hw, i32 noundef 0, i32 noundef 237, i32 noundef 1048575, i32 noundef 32) #7
  %1021 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %priv, align 8
  %cfg.i208.i107.i = getelementptr inbounds %struct.rtl_priv, ptr %1022, i32 0, i32 32
  %1023 = ptrtoint ptr %cfg.i208.i107.i to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load ptr, ptr %cfg.i208.i107.i, align 8
  %ops.i209.i108.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1024, i32 0, i32 4
  %1025 = ptrtoint ptr %ops.i209.i108.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %ops.i209.i108.i, align 4
  %set_rfreg.i210.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1026, i32 0, i32 48
  %1027 = ptrtoint ptr %set_rfreg.i210.i.i to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %set_rfreg.i210.i.i, align 4
  call void %1028(ptr noundef %hw, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 397293) #7
  %1029 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load ptr, ptr %priv, align 8
  %cfg.i212.i109.i = getelementptr inbounds %struct.rtl_priv, ptr %1030, i32 0, i32 32
  %1031 = ptrtoint ptr %cfg.i212.i109.i to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %cfg.i212.i109.i, align 8
  %ops.i213.i110.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1032, i32 0, i32 4
  %1033 = ptrtoint ptr %ops.i213.i110.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load ptr, ptr %ops.i213.i110.i, align 4
  %set_bbreg.i214.i111.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1034, i32 0, i32 46
  %1035 = ptrtoint ptr %set_bbreg.i214.i111.i to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %set_bbreg.i214.i111.i, align 4
  call void %1036(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #7
  %1037 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %priv, align 8
  %cfg.i216.i112.i = getelementptr inbounds %struct.rtl_priv, ptr %1038, i32 0, i32 32
  %1039 = ptrtoint ptr %cfg.i216.i112.i to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %cfg.i216.i112.i, align 8
  %ops.i217.i113.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1040, i32 0, i32 4
  %1041 = ptrtoint ptr %ops.i217.i113.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %ops.i217.i113.i, align 4
  %set_bbreg.i218.i114.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1042, i32 0, i32 46
  %1043 = ptrtoint ptr %set_bbreg.i218.i114.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load ptr, ptr %set_bbreg.i218.i114.i, align 4
  call void %1044(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %1045 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load ptr, ptr %priv, align 8
  %cfg.i220.i115.i = getelementptr inbounds %struct.rtl_priv, ptr %1046, i32 0, i32 32
  %1047 = ptrtoint ptr %cfg.i220.i115.i to i32
  call void @__asan_load4_noabort(i32 %1047)
  %1048 = load ptr, ptr %cfg.i220.i115.i, align 8
  %ops.i221.i116.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1048, i32 0, i32 4
  %1049 = ptrtoint ptr %ops.i221.i116.i to i32
  call void @__asan_load4_noabort(i32 %1049)
  %1050 = load ptr, ptr %ops.i221.i116.i, align 4
  %set_bbreg.i222.i117.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1050, i32 0, i32 46
  %1051 = ptrtoint ptr %set_bbreg.i222.i117.i to i32
  call void @__asan_load4_noabort(i32 %1051)
  %1052 = load ptr, ptr %set_bbreg.i222.i117.i, align 4
  call void %1052(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #7
  %1053 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load ptr, ptr %priv, align 8
  %cfg.i224.i118.i = getelementptr inbounds %struct.rtl_priv, ptr %1054, i32 0, i32 32
  %1055 = ptrtoint ptr %cfg.i224.i118.i to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load ptr, ptr %cfg.i224.i118.i, align 8
  %ops.i225.i119.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1056, i32 0, i32 4
  %1057 = ptrtoint ptr %ops.i225.i119.i to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %ops.i225.i119.i, align 4
  %set_bbreg.i226.i120.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1058, i32 0, i32 46
  %1059 = ptrtoint ptr %set_bbreg.i226.i120.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %set_bbreg.i226.i120.i, align 4
  call void %1060(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #7
  %1061 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %priv, align 8
  %cfg.i228.i121.i = getelementptr inbounds %struct.rtl_priv, ptr %1062, i32 0, i32 32
  %1063 = ptrtoint ptr %cfg.i228.i121.i to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %cfg.i228.i121.i, align 8
  %ops.i229.i122.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1064, i32 0, i32 4
  %1065 = ptrtoint ptr %ops.i229.i122.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load ptr, ptr %ops.i229.i122.i, align 4
  %set_bbreg.i230.i123.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1066, i32 0, i32 46
  %1067 = ptrtoint ptr %set_bbreg.i230.i123.i to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %set_bbreg.i230.i123.i, align 4
  call void %1068(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %1069 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load ptr, ptr %priv, align 8
  %cfg.i232.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %1070, i32 0, i32 32
  %1071 = ptrtoint ptr %cfg.i232.i124.i to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %cfg.i232.i124.i, align 8
  %ops.i233.i125.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1072, i32 0, i32 4
  %1073 = ptrtoint ptr %ops.i233.i125.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %ops.i233.i125.i, align 4
  %set_bbreg.i234.i126.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1074, i32 0, i32 46
  %1075 = ptrtoint ptr %set_bbreg.i234.i126.i to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load ptr, ptr %set_bbreg.i234.i126.i, align 4
  call void %1076(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %1077 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %priv, align 8
  %cfg.i236.i127.i = getelementptr inbounds %struct.rtl_priv, ptr %1078, i32 0, i32 32
  %1079 = ptrtoint ptr %cfg.i236.i127.i to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %cfg.i236.i127.i, align 8
  %ops.i237.i128.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1080, i32 0, i32 4
  %1081 = ptrtoint ptr %ops.i237.i128.i to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %ops.i237.i128.i, align 4
  %set_bbreg.i238.i129.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1082, i32 0, i32 46
  %1083 = ptrtoint ptr %set_bbreg.i238.i129.i to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load ptr, ptr %set_bbreg.i238.i129.i, align 4
  call void %1084(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112483344) #7
  %1085 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %priv, align 8
  %cfg.i240.i130.i = getelementptr inbounds %struct.rtl_priv, ptr %1086, i32 0, i32 32
  %1087 = ptrtoint ptr %cfg.i240.i130.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load ptr, ptr %cfg.i240.i130.i, align 8
  %ops.i241.i131.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1088, i32 0, i32 4
  %1089 = ptrtoint ptr %ops.i241.i131.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load ptr, ptr %ops.i241.i131.i, align 4
  %set_bbreg.i242.i132.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1090, i32 0, i32 46
  %1091 = ptrtoint ptr %set_bbreg.i242.i132.i to i32
  call void @__asan_load4_noabort(i32 %1091)
  %1092 = load ptr, ptr %set_bbreg.i242.i132.i, align 4
  call void %1092(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672202752) #7
  %1093 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load ptr, ptr %priv, align 8
  %cfg.i244.i133.i = getelementptr inbounds %struct.rtl_priv, ptr %1094, i32 0, i32 32
  %1095 = ptrtoint ptr %cfg.i244.i133.i to i32
  call void @__asan_load4_noabort(i32 %1095)
  %1096 = load ptr, ptr %cfg.i244.i133.i, align 8
  %ops.i245.i134.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1096, i32 0, i32 4
  %1097 = ptrtoint ptr %ops.i245.i134.i to i32
  call void @__asan_load4_noabort(i32 %1097)
  %1098 = load ptr, ptr %ops.i245.i134.i, align 4
  %set_bbreg.i246.i135.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1098, i32 0, i32 46
  %1099 = ptrtoint ptr %set_bbreg.i246.i135.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %set_bbreg.i246.i135.i, align 4
  call void %1100(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %1101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %priv, align 8
  %cfg.i248.i136.i = getelementptr inbounds %struct.rtl_priv, ptr %1102, i32 0, i32 32
  %1103 = ptrtoint ptr %cfg.i248.i136.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %cfg.i248.i136.i, align 8
  %ops.i249.i137.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1104, i32 0, i32 4
  %1105 = ptrtoint ptr %ops.i249.i137.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %ops.i249.i137.i, align 4
  %set_bbreg.i250.i138.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1106, i32 0, i32 46
  %1107 = ptrtoint ptr %set_bbreg.i250.i138.i to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %set_bbreg.i250.i138.i, align 4
  call void %1108(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %1109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %priv, align 8
  %cfg.i252.i139.i = getelementptr inbounds %struct.rtl_priv, ptr %1110, i32 0, i32 32
  %1111 = ptrtoint ptr %cfg.i252.i139.i to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %cfg.i252.i139.i, align 8
  %ops.i253.i140.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1112, i32 0, i32 4
  %1113 = ptrtoint ptr %ops.i253.i140.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %ops.i253.i140.i, align 4
  %set_bbreg.i254.i141.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1114, i32 0, i32 46
  %1115 = ptrtoint ptr %set_bbreg.i254.i141.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %set_bbreg.i254.i141.i, align 4
  call void %1116(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #7
  %1117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %priv, align 8
  %cfg.i256.i142.i = getelementptr inbounds %struct.rtl_priv, ptr %1118, i32 0, i32 32
  %1119 = ptrtoint ptr %cfg.i256.i142.i to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load ptr, ptr %cfg.i256.i142.i, align 8
  %ops.i257.i143.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1120, i32 0, i32 4
  %1121 = ptrtoint ptr %ops.i257.i143.i to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %ops.i257.i143.i, align 4
  %set_bbreg.i258.i144.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1122, i32 0, i32 46
  %1123 = ptrtoint ptr %set_bbreg.i258.i144.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %set_bbreg.i258.i144.i, align 4
  call void %1124(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %1125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %priv, align 8
  %cfg.i260.i145.i = getelementptr inbounds %struct.rtl_priv, ptr %1126, i32 0, i32 32
  %1127 = ptrtoint ptr %cfg.i260.i145.i to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load ptr, ptr %cfg.i260.i145.i, align 8
  %ops.i261.i146.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1128, i32 0, i32 4
  %1129 = ptrtoint ptr %ops.i261.i146.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load ptr, ptr %ops.i261.i146.i, align 4
  %set_bbreg.i262.i147.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1130, i32 0, i32 46
  %1131 = ptrtoint ptr %set_bbreg.i262.i147.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load ptr, ptr %set_bbreg.i262.i147.i, align 4
  call void %1132(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %1133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1133)
  %1134 = load ptr, ptr %priv, align 8
  %cfg.i264.i148.i = getelementptr inbounds %struct.rtl_priv, ptr %1134, i32 0, i32 32
  %1135 = ptrtoint ptr %cfg.i264.i148.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %1136 = load ptr, ptr %cfg.i264.i148.i, align 8
  %ops.i265.i149.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1136, i32 0, i32 4
  %1137 = ptrtoint ptr %ops.i265.i149.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load ptr, ptr %ops.i265.i149.i, align 4
  %set_bbreg.i266.i150.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1138, i32 0, i32 46
  %1139 = ptrtoint ptr %set_bbreg.i266.i150.i to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load ptr, ptr %set_bbreg.i266.i150.i, align 4
  call void %1140(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1141(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1142(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1143(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1144(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1145 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1145(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1146(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1147(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1148(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1149(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1150(i32 noundef 214748000) #7
  %1151 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load ptr, ptr %priv, align 8
  %cfg.i268.i151.i = getelementptr inbounds %struct.rtl_priv, ptr %1152, i32 0, i32 32
  %1153 = ptrtoint ptr %cfg.i268.i151.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load ptr, ptr %cfg.i268.i151.i, align 8
  %ops.i269.i152.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1154, i32 0, i32 4
  %1155 = ptrtoint ptr %ops.i269.i152.i to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load ptr, ptr %ops.i269.i152.i, align 4
  %set_bbreg.i270.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1156, i32 0, i32 46
  %1157 = ptrtoint ptr %set_bbreg.i270.i.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %set_bbreg.i270.i.i, align 4
  call void %1158(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %1159 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load ptr, ptr %priv, align 8
  %cfg.i272.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1160, i32 0, i32 32
  %1161 = ptrtoint ptr %cfg.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %1162 = load ptr, ptr %cfg.i272.i.i, align 8
  %ops.i273.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1162, i32 0, i32 4
  %1163 = ptrtoint ptr %ops.i273.i.i to i32
  call void @__asan_load4_noabort(i32 %1163)
  %1164 = load ptr, ptr %ops.i273.i.i, align 4
  %get_bbreg.i.i153.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1164, i32 0, i32 45
  %1165 = ptrtoint ptr %get_bbreg.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %1165)
  %1166 = load ptr, ptr %get_bbreg.i.i153.i, align 4
  %call.i.i154.i = call i32 %1166(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %1167 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %priv, align 8
  %cfg.i275.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1168, i32 0, i32 32
  %1169 = ptrtoint ptr %cfg.i275.i.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %cfg.i275.i.i, align 8
  %ops.i276.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1170, i32 0, i32 4
  %1171 = ptrtoint ptr %ops.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load ptr, ptr %ops.i276.i.i, align 4
  %get_bbreg.i277.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1172, i32 0, i32 45
  %1173 = ptrtoint ptr %get_bbreg.i277.i.i to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %get_bbreg.i277.i.i, align 4
  %call.i278.i.i = call i32 %1174(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #7
  %1175 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load ptr, ptr %priv, align 8
  %cfg.i280.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1176, i32 0, i32 32
  %1177 = ptrtoint ptr %cfg.i280.i.i to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load ptr, ptr %cfg.i280.i.i, align 8
  %ops.i281.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1178, i32 0, i32 4
  %1179 = ptrtoint ptr %ops.i281.i.i to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load ptr, ptr %ops.i281.i.i, align 4
  %get_bbreg.i282.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1180, i32 0, i32 45
  %1181 = ptrtoint ptr %get_bbreg.i282.i.i to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load ptr, ptr %get_bbreg.i282.i.i, align 4
  %call.i283.i.i = call i32 %1182(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #7
  %and.i155.i = and i32 %call.i.i154.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155.i)
  %tobool3.not.i156.i = icmp eq i32 %and.i155.i, 0
  br i1 %tobool3.not.i156.i, label %land.lhs.true.i159.i, label %for.body100.i.if.end118.i_crit_edge

for.body100.i.if.end118.i_crit_edge:              ; preds = %for.body100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true.i159.i:                             ; preds = %for.body100.i
  %and4.i157.i = and i32 %call.i278.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i157.i)
  %cmp.not.i158.i = icmp eq i32 %and4.i157.i, 21102592
  br i1 %cmp.not.i158.i, label %land.lhs.true.i159.i.if.end118.i_crit_edge, label %land.lhs.true5.i163.i

land.lhs.true.i159.i.if.end118.i_crit_edge:       ; preds = %land.lhs.true.i159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true5.i163.i:                            ; preds = %land.lhs.true.i159.i
  %and6.i160.i = lshr i32 %call.i283.i.i, 16
  %shr7.i161.i = and i32 %and6.i160.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i161.i)
  %cmp8.not.i162.i = icmp eq i32 %shr7.i161.i, 66
  br i1 %cmp8.not.i162.i, label %land.lhs.true5.i163.i.if.end118.i_crit_edge, label %if.then.i169.i

land.lhs.true5.i163.i.if.end118.i_crit_edge:      ; preds = %land.lhs.true5.i163.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then.i169.i:                                   ; preds = %land.lhs.true5.i163.i
  %1183 = and i32 %call.i283.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1183)
  %cmp13.not.i164.i = icmp eq i32 %1183, 0
  %sub.i165.i = sub nuw nsw i32 1024, %shr7.i161.i
  %spec.select.i166.i = select i1 %cmp13.not.i164.i, i32 %shr7.i161.i, i32 %sub.i165.i
  %1184 = add nsw i32 %and4.i157.i, -15728641
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %1184)
  %1185 = icmp ult i32 %1184, 2097151
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i166.i)
  %cmp30.i167.i = icmp ult i32 %spec.select.i166.i, 15
  %or.cond178.i168.i = select i1 %1185, i1 %cmp30.i167.i, i1 false
  br i1 %or.cond178.i168.i, label %if.then32.i242.i, label %if.then.i169.i.if.end118.i_crit_edge

if.then.i169.i.if.end118.i_crit_edge:             ; preds = %if.then.i169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

if.then32.i242.i:                                 ; preds = %if.then.i169.i
  %or39.i170.i = or i32 %and4.i157.i, %shr7.i161.i
  %or42.i171.i = or i32 %or39.i170.i, -2147451904
  %1186 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %priv, align 8
  %cfg.i285.i172.i = getelementptr inbounds %struct.rtl_priv, ptr %1187, i32 0, i32 32
  %1188 = ptrtoint ptr %cfg.i285.i172.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %cfg.i285.i172.i, align 8
  %ops.i286.i173.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1189, i32 0, i32 4
  %1190 = ptrtoint ptr %ops.i286.i173.i to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %ops.i286.i173.i, align 4
  %set_bbreg.i287.i174.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1191, i32 0, i32 46
  %1192 = ptrtoint ptr %set_bbreg.i287.i174.i to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %set_bbreg.i287.i174.i, align 4
  call void %1193(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef %or42.i171.i) #7
  %1194 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %priv, align 8
  %cfg.i289.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %1195, i32 0, i32 32
  %1196 = ptrtoint ptr %cfg.i289.i175.i to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %cfg.i289.i175.i, align 8
  %ops.i290.i176.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1197, i32 0, i32 4
  %1198 = ptrtoint ptr %ops.i290.i176.i to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %ops.i290.i176.i, align 4
  %set_bbreg.i291.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1199, i32 0, i32 46
  %1200 = ptrtoint ptr %set_bbreg.i291.i.i to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %set_bbreg.i291.i.i, align 4
  call void %1201(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %1202 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %priv, align 8
  %cfg.i293.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %1203, i32 0, i32 32
  %1204 = ptrtoint ptr %cfg.i293.i177.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %cfg.i293.i177.i, align 8
  %ops.i294.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1205, i32 0, i32 4
  %1206 = ptrtoint ptr %ops.i294.i178.i to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %ops.i294.i178.i, align 4
  %set_rfreg.i295.i179.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1207, i32 0, i32 48
  %1208 = ptrtoint ptr %set_rfreg.i295.i179.i to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %set_rfreg.i295.i179.i, align 4
  call void %1209(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 1) #7
  %1210 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %priv, align 8
  %cfg.i297.i180.i = getelementptr inbounds %struct.rtl_priv, ptr %1211, i32 0, i32 32
  %1212 = ptrtoint ptr %cfg.i297.i180.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %cfg.i297.i180.i, align 8
  %ops.i298.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1213, i32 0, i32 4
  %1214 = ptrtoint ptr %ops.i298.i181.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %ops.i298.i181.i, align 4
  %set_rfreg.i299.i182.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1215, i32 0, i32 48
  %1216 = ptrtoint ptr %set_rfreg.i299.i182.i to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %set_rfreg.i299.i182.i, align 4
  call void %1217(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #7
  %1218 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %priv, align 8
  %cfg.i301.i183.i = getelementptr inbounds %struct.rtl_priv, ptr %1219, i32 0, i32 32
  %1220 = ptrtoint ptr %cfg.i301.i183.i to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %cfg.i301.i183.i, align 8
  %ops.i302.i184.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1221, i32 0, i32 4
  %1222 = ptrtoint ptr %ops.i302.i184.i to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %ops.i302.i184.i, align 4
  %set_rfreg.i303.i185.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1223, i32 0, i32 48
  %1224 = ptrtoint ptr %set_rfreg.i303.i185.i to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %set_rfreg.i303.i185.i, align 4
  call void %1225(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 31) #7
  %1226 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load ptr, ptr %priv, align 8
  %cfg.i305.i186.i = getelementptr inbounds %struct.rtl_priv, ptr %1227, i32 0, i32 32
  %1228 = ptrtoint ptr %cfg.i305.i186.i to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %cfg.i305.i186.i, align 8
  %ops.i306.i187.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1229, i32 0, i32 4
  %1230 = ptrtoint ptr %ops.i306.i187.i to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %ops.i306.i187.i, align 4
  %set_rfreg.i307.i188.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1231, i32 0, i32 48
  %1232 = ptrtoint ptr %set_rfreg.i307.i188.i to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %set_rfreg.i307.i188.i, align 4
  call void %1233(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015159) #7
  %1234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %priv, align 8
  %cfg.i309.i189.i = getelementptr inbounds %struct.rtl_priv, ptr %1235, i32 0, i32 32
  %1236 = ptrtoint ptr %cfg.i309.i189.i to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load ptr, ptr %cfg.i309.i189.i, align 8
  %ops.i310.i190.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1237, i32 0, i32 4
  %1238 = ptrtoint ptr %ops.i310.i190.i to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %ops.i310.i190.i, align 4
  %set_rfreg.i311.i191.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1239, i32 0, i32 48
  %1240 = ptrtoint ptr %set_rfreg.i311.i191.i to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %set_rfreg.i311.i191.i, align 4
  call void %1241(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 524288, i32 noundef 0) #7
  %1242 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load ptr, ptr %priv, align 8
  %cfg.i313.i192.i = getelementptr inbounds %struct.rtl_priv, ptr %1243, i32 0, i32 32
  %1244 = ptrtoint ptr %cfg.i313.i192.i to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %cfg.i313.i192.i, align 8
  %ops.i314.i193.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1245, i32 0, i32 4
  %1246 = ptrtoint ptr %ops.i314.i193.i to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %ops.i314.i193.i, align 4
  %set_rfreg.i315.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1247, i32 0, i32 48
  %1248 = ptrtoint ptr %set_rfreg.i315.i.i to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %set_rfreg.i315.i.i, align 4
  call void %1249(ptr noundef %hw, i32 noundef 0, i32 noundef 237, i32 noundef 1048575, i32 noundef 32) #7
  %1250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1250)
  %1251 = load ptr, ptr %priv, align 8
  %cfg.i317.i194.i = getelementptr inbounds %struct.rtl_priv, ptr %1251, i32 0, i32 32
  %1252 = ptrtoint ptr %cfg.i317.i194.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %cfg.i317.i194.i, align 8
  %ops.i318.i195.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1253, i32 0, i32 4
  %1254 = ptrtoint ptr %ops.i318.i195.i to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %ops.i318.i195.i, align 4
  %set_rfreg.i319.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1255, i32 0, i32 48
  %1256 = ptrtoint ptr %set_rfreg.i319.i.i to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load ptr, ptr %set_rfreg.i319.i.i, align 4
  call void %1257(ptr noundef %hw, i32 noundef 0, i32 noundef 67, i32 noundef 1048575, i32 noundef 397245) #7
  %1258 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load ptr, ptr %priv, align 8
  %cfg.i321.i196.i = getelementptr inbounds %struct.rtl_priv, ptr %1259, i32 0, i32 32
  %1260 = ptrtoint ptr %cfg.i321.i196.i to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %cfg.i321.i196.i, align 8
  %ops.i322.i197.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1261, i32 0, i32 4
  %1262 = ptrtoint ptr %ops.i322.i197.i to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %ops.i322.i197.i, align 4
  %set_bbreg.i323.i198.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1263, i32 0, i32 46
  %1264 = ptrtoint ptr %set_bbreg.i323.i198.i to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %set_bbreg.i323.i198.i, align 4
  call void %1265(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #7
  %1266 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %priv, align 8
  %cfg.i325.i199.i = getelementptr inbounds %struct.rtl_priv, ptr %1267, i32 0, i32 32
  %1268 = ptrtoint ptr %cfg.i325.i199.i to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %cfg.i325.i199.i, align 8
  %ops.i326.i200.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1269, i32 0, i32 4
  %1270 = ptrtoint ptr %ops.i326.i200.i to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %ops.i326.i200.i, align 4
  %set_bbreg.i327.i201.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1271, i32 0, i32 46
  %1272 = ptrtoint ptr %set_bbreg.i327.i201.i to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load ptr, ptr %set_bbreg.i327.i201.i, align 4
  call void %1273(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #7
  %1274 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1274)
  %1275 = load ptr, ptr %priv, align 8
  %cfg.i329.i202.i = getelementptr inbounds %struct.rtl_priv, ptr %1275, i32 0, i32 32
  %1276 = ptrtoint ptr %cfg.i329.i202.i to i32
  call void @__asan_load4_noabort(i32 %1276)
  %1277 = load ptr, ptr %cfg.i329.i202.i, align 8
  %ops.i330.i203.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1277, i32 0, i32 4
  %1278 = ptrtoint ptr %ops.i330.i203.i to i32
  call void @__asan_load4_noabort(i32 %1278)
  %1279 = load ptr, ptr %ops.i330.i203.i, align 4
  %set_bbreg.i331.i204.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1279, i32 0, i32 46
  %1280 = ptrtoint ptr %set_bbreg.i331.i204.i to i32
  call void @__asan_load4_noabort(i32 %1280)
  %1281 = load ptr, ptr %set_bbreg.i331.i204.i, align 4
  call void %1281(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #7
  %1282 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1282)
  %1283 = load ptr, ptr %priv, align 8
  %cfg.i333.i205.i = getelementptr inbounds %struct.rtl_priv, ptr %1283, i32 0, i32 32
  %1284 = ptrtoint ptr %cfg.i333.i205.i to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load ptr, ptr %cfg.i333.i205.i, align 8
  %ops.i334.i206.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1285, i32 0, i32 4
  %1286 = ptrtoint ptr %ops.i334.i206.i to i32
  call void @__asan_load4_noabort(i32 %1286)
  %1287 = load ptr, ptr %ops.i334.i206.i, align 4
  %set_bbreg.i335.i207.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1287, i32 0, i32 46
  %1288 = ptrtoint ptr %set_bbreg.i335.i207.i to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load ptr, ptr %set_bbreg.i335.i207.i, align 4
  call void %1289(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #7
  %1290 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load ptr, ptr %priv, align 8
  %cfg.i337.i208.i = getelementptr inbounds %struct.rtl_priv, ptr %1291, i32 0, i32 32
  %1292 = ptrtoint ptr %cfg.i337.i208.i to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load ptr, ptr %cfg.i337.i208.i, align 8
  %ops.i338.i209.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1293, i32 0, i32 4
  %1294 = ptrtoint ptr %ops.i338.i209.i to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %ops.i338.i209.i, align 4
  %set_bbreg.i339.i210.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1295, i32 0, i32 46
  %1296 = ptrtoint ptr %set_bbreg.i339.i210.i to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load ptr, ptr %set_bbreg.i339.i210.i, align 4
  call void %1297(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #7
  %1298 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load ptr, ptr %priv, align 8
  %cfg.i341.i211.i = getelementptr inbounds %struct.rtl_priv, ptr %1299, i32 0, i32 32
  %1300 = ptrtoint ptr %cfg.i341.i211.i to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %cfg.i341.i211.i, align 8
  %ops.i342.i212.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1301, i32 0, i32 4
  %1302 = ptrtoint ptr %ops.i342.i212.i to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load ptr, ptr %ops.i342.i212.i, align 4
  %set_bbreg.i343.i213.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1303, i32 0, i32 46
  %1304 = ptrtoint ptr %set_bbreg.i343.i213.i to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %set_bbreg.i343.i213.i, align 4
  call void %1305(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112815104) #7
  %1306 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %priv, align 8
  %cfg.i345.i214.i = getelementptr inbounds %struct.rtl_priv, ptr %1307, i32 0, i32 32
  %1308 = ptrtoint ptr %cfg.i345.i214.i to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load ptr, ptr %cfg.i345.i214.i, align 8
  %ops.i346.i215.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1309, i32 0, i32 4
  %1310 = ptrtoint ptr %ops.i346.i215.i to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %ops.i346.i215.i, align 4
  %set_bbreg.i347.i216.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1311, i32 0, i32 46
  %1312 = ptrtoint ptr %set_bbreg.i347.i216.i to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load ptr, ptr %set_bbreg.i347.i216.i, align 4
  call void %1313(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672530463) #7
  %1314 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load ptr, ptr %priv, align 8
  %cfg.i349.i217.i = getelementptr inbounds %struct.rtl_priv, ptr %1315, i32 0, i32 32
  %1316 = ptrtoint ptr %cfg.i349.i217.i to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %cfg.i349.i217.i, align 8
  %ops.i350.i218.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1317, i32 0, i32 4
  %1318 = ptrtoint ptr %ops.i350.i218.i to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load ptr, ptr %ops.i350.i218.i, align 4
  %set_bbreg.i351.i219.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1319, i32 0, i32 46
  %1320 = ptrtoint ptr %set_bbreg.i351.i219.i to i32
  call void @__asan_load4_noabort(i32 %1320)
  %1321 = load ptr, ptr %set_bbreg.i351.i219.i, align 4
  call void %1321(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112815104) #7
  %1322 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %priv, align 8
  %cfg.i353.i220.i = getelementptr inbounds %struct.rtl_priv, ptr %1323, i32 0, i32 32
  %1324 = ptrtoint ptr %cfg.i353.i220.i to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load ptr, ptr %cfg.i353.i220.i, align 8
  %ops.i354.i221.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1325, i32 0, i32 4
  %1326 = ptrtoint ptr %ops.i354.i221.i to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load ptr, ptr %ops.i354.i221.i, align 4
  %set_bbreg.i355.i222.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1327, i32 0, i32 46
  %1328 = ptrtoint ptr %set_bbreg.i355.i222.i to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load ptr, ptr %set_bbreg.i355.i222.i, align 4
  call void %1329(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672202752) #7
  %1330 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %priv, align 8
  %cfg.i357.i223.i = getelementptr inbounds %struct.rtl_priv, ptr %1331, i32 0, i32 32
  %1332 = ptrtoint ptr %cfg.i357.i223.i to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %cfg.i357.i223.i, align 8
  %ops.i358.i224.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1333, i32 0, i32 4
  %1334 = ptrtoint ptr %ops.i358.i224.i to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load ptr, ptr %ops.i358.i224.i, align 4
  %set_bbreg.i359.i225.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1335, i32 0, i32 46
  %1336 = ptrtoint ptr %set_bbreg.i359.i225.i to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load ptr, ptr %set_bbreg.i359.i225.i, align 4
  call void %1337(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630737) #7
  %1338 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %priv, align 8
  %cfg.i361.i226.i = getelementptr inbounds %struct.rtl_priv, ptr %1339, i32 0, i32 32
  %1340 = ptrtoint ptr %cfg.i361.i226.i to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load ptr, ptr %cfg.i361.i226.i, align 8
  %ops.i362.i227.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1341, i32 0, i32 4
  %1342 = ptrtoint ptr %ops.i362.i227.i to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load ptr, ptr %ops.i362.i227.i, align 4
  %set_bbreg.i363.i228.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1343, i32 0, i32 46
  %1344 = ptrtoint ptr %set_bbreg.i363.i228.i to i32
  call void @__asan_load4_noabort(i32 %1344)
  %1345 = load ptr, ptr %set_bbreg.i363.i228.i, align 4
  call void %1345(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #7
  %1346 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1346)
  %1347 = load ptr, ptr %priv, align 8
  %cfg.i365.i229.i = getelementptr inbounds %struct.rtl_priv, ptr %1347, i32 0, i32 32
  %1348 = ptrtoint ptr %cfg.i365.i229.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %cfg.i365.i229.i, align 8
  %ops.i366.i230.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1349, i32 0, i32 4
  %1350 = ptrtoint ptr %ops.i366.i230.i to i32
  call void @__asan_load4_noabort(i32 %1350)
  %1351 = load ptr, ptr %ops.i366.i230.i, align 4
  %set_bbreg.i367.i231.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1351, i32 0, i32 46
  %1352 = ptrtoint ptr %set_bbreg.i367.i231.i to i32
  call void @__asan_load4_noabort(i32 %1352)
  %1353 = load ptr, ptr %set_bbreg.i367.i231.i, align 4
  call void %1353(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #7
  %1354 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1354)
  %1355 = load ptr, ptr %priv, align 8
  %cfg.i369.i232.i = getelementptr inbounds %struct.rtl_priv, ptr %1355, i32 0, i32 32
  %1356 = ptrtoint ptr %cfg.i369.i232.i to i32
  call void @__asan_load4_noabort(i32 %1356)
  %1357 = load ptr, ptr %cfg.i369.i232.i, align 8
  %ops.i370.i233.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1357, i32 0, i32 4
  %1358 = ptrtoint ptr %ops.i370.i233.i to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load ptr, ptr %ops.i370.i233.i, align 4
  %set_bbreg.i371.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1359, i32 0, i32 46
  %1360 = ptrtoint ptr %set_bbreg.i371.i.i to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %set_bbreg.i371.i.i, align 4
  call void %1361(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1362(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1363 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1363(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1364 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1364(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1365 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1365(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1366 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1366(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1367 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1367(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1368 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1368(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1369 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1369(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1370 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1370(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1371 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1371(i32 noundef 214748000) #7
  %1372 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load ptr, ptr %priv, align 8
  %cfg.i373.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1373, i32 0, i32 32
  %1374 = ptrtoint ptr %cfg.i373.i.i to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load ptr, ptr %cfg.i373.i.i, align 8
  %ops.i374.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1375, i32 0, i32 4
  %1376 = ptrtoint ptr %ops.i374.i.i to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %ops.i374.i.i, align 4
  %set_bbreg.i375.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1377, i32 0, i32 46
  %1378 = ptrtoint ptr %set_bbreg.i375.i.i to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %set_bbreg.i375.i.i, align 4
  call void %1379(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  %1380 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1380)
  %1381 = load ptr, ptr %priv, align 8
  %cfg.i377.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1381, i32 0, i32 32
  %1382 = ptrtoint ptr %cfg.i377.i.i to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %cfg.i377.i.i, align 8
  %ops.i378.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1383, i32 0, i32 4
  %1384 = ptrtoint ptr %ops.i378.i.i to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load ptr, ptr %ops.i378.i.i, align 4
  %get_bbreg.i379.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1385, i32 0, i32 45
  %1386 = ptrtoint ptr %get_bbreg.i379.i.i to i32
  call void @__asan_load4_noabort(i32 %1386)
  %1387 = load ptr, ptr %get_bbreg.i379.i.i, align 4
  %call.i380.i.i = call i32 %1387(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %1388 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1388)
  %1389 = load ptr, ptr %priv, align 8
  %cfg.i382.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1389, i32 0, i32 32
  %1390 = ptrtoint ptr %cfg.i382.i.i to i32
  call void @__asan_load4_noabort(i32 %1390)
  %1391 = load ptr, ptr %cfg.i382.i.i, align 8
  %ops.i383.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1391, i32 0, i32 4
  %1392 = ptrtoint ptr %ops.i383.i.i to i32
  call void @__asan_load4_noabort(i32 %1392)
  %1393 = load ptr, ptr %ops.i383.i.i, align 4
  %get_bbreg.i384.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1393, i32 0, i32 45
  %1394 = ptrtoint ptr %get_bbreg.i384.i.i to i32
  call void @__asan_load4_noabort(i32 %1394)
  %1395 = load ptr, ptr %get_bbreg.i384.i.i, align 4
  %call.i385.i.i = call i32 %1395(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and51.i234.i = lshr i32 %call.i380.i.i, 16
  %shr52.i235.i = and i32 %and51.i234.i, 1023
  %1396 = and i32 %call.i380.i.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1396)
  %cmp54.not.i236.i = icmp eq i32 %1396, 0
  %sub57.i237.i = sub nuw nsw i32 1024, %shr52.i235.i
  %spec.select179.i.i = select i1 %cmp54.not.i236.i, i32 %shr52.i235.i, i32 %sub57.i237.i
  %and59.i238.i = and i32 %call.i380.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i238.i)
  %tobool60.not.i239.i = icmp eq i32 %and59.i238.i, 0
  %tobool60.not.not.i.i = xor i1 %tobool60.not.i239.i, true
  %1397 = and i32 %call.i385.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %1397)
  %cmp64.not.i240.i = icmp eq i32 %1397, 20054016
  %or.cond180.i.i = select i1 %tobool60.not.not.i.i, i1 true, i1 %cmp64.not.i240.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %shr52.i235.i)
  %cmp69.not.i241.i = icmp eq i32 %shr52.i235.i, 54
  %or.cond181.i.i = select i1 %or.cond180.i.i, i1 true, i1 %cmp69.not.i241.i
  br i1 %or.cond181.i.i, label %if.else75.i.i, label %if.then32.i242.i.if.then105.i_crit_edge

if.then32.i242.i.if.then105.i_crit_edge:          ; preds = %if.then32.i242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

if.else75.i.i:                                    ; preds = %if.then32.i242.i
  br i1 %tobool60.not.i239.i, label %land.lhs.true78.i246.i, label %if.else75.i.i.if.end118.i_crit_edge

if.else75.i.i.if.end118.i_crit_edge:              ; preds = %if.else75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true78.i246.i:                           ; preds = %if.else75.i.i
  %and79.i243.i = lshr i32 %call.i385.i.i, 16
  %shr80.i244.i = and i32 %and79.i243.i, 1023
  %1398 = add nsw i32 %shr80.i244.i, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1398)
  %1399 = icmp ult i32 %1398, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select179.i.i)
  %cmp89.i245.i = icmp ult i32 %spec.select179.i.i, 15
  %or.cond183.i.i = select i1 %1399, i1 %cmp89.i245.i, i1 false
  br i1 %or.cond183.i.i, label %land.lhs.true78.i246.i.if.then105.i_crit_edge, label %land.lhs.true78.i246.i.if.end118.i_crit_edge

land.lhs.true78.i246.i.if.end118.i_crit_edge:     ; preds = %land.lhs.true78.i246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true78.i246.i.if.then105.i_crit_edge:    ; preds = %land.lhs.true78.i246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then105.i

if.then105.i:                                     ; preds = %land.lhs.true78.i246.i.if.then105.i_crit_edge, %if.then32.i242.i.if.then105.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.67) #7
  %1400 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1400)
  %1401 = load ptr, ptr %priv, align 8
  %cfg.i249.i = getelementptr inbounds %struct.rtl_priv, ptr %1401, i32 0, i32 32
  %1402 = ptrtoint ptr %cfg.i249.i to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load ptr, ptr %cfg.i249.i, align 8
  %ops.i250.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1403, i32 0, i32 4
  %1404 = ptrtoint ptr %ops.i250.i to i32
  call void @__asan_load4_noabort(i32 %1404)
  %1405 = load ptr, ptr %ops.i250.i, align 4
  %get_bbreg.i251.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1405, i32 0, i32 45
  %1406 = ptrtoint ptr %get_bbreg.i251.i to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load ptr, ptr %get_bbreg.i251.i, align 4
  %call.i252.i = call i32 %1407(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #7
  %and107.i = lshr i32 %call.i252.i, 16
  %shr108.i = and i32 %and107.i, 1023
  %arrayidx111.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 6
  %1408 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_store4_noabort(i32 %1408)
  store i32 %shr108.i, ptr %arrayidx111.i, align 4
  %1409 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1409)
  %1410 = load ptr, ptr %priv, align 8
  %cfg.i254.i = getelementptr inbounds %struct.rtl_priv, ptr %1410, i32 0, i32 32
  %1411 = ptrtoint ptr %cfg.i254.i to i32
  call void @__asan_load4_noabort(i32 %1411)
  %1412 = load ptr, ptr %cfg.i254.i, align 8
  %ops.i255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1412, i32 0, i32 4
  %1413 = ptrtoint ptr %ops.i255.i to i32
  call void @__asan_load4_noabort(i32 %1413)
  %1414 = load ptr, ptr %ops.i255.i, align 4
  %get_bbreg.i256.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1414, i32 0, i32 45
  %1415 = ptrtoint ptr %get_bbreg.i256.i to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load ptr, ptr %get_bbreg.i256.i, align 4
  %call.i257.i = call i32 %1416(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #7
  %and113.i = lshr i32 %call.i257.i, 16
  %shr114.i = and i32 %and113.i, 1023
  %arrayidx117.i = getelementptr [8 x i32], ptr %result, i32 %conv3.i, i32 7
  %1417 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %1417)
  store i32 %shr114.i, ptr %arrayidx117.i, align 4
  br label %if.end122.i

if.end118.i:                                      ; preds = %land.lhs.true78.i246.i.if.end118.i_crit_edge, %if.else75.i.i.if.end118.i_crit_edge, %if.then.i169.i.if.end118.i_crit_edge, %land.lhs.true5.i163.i.if.end118.i_crit_edge, %land.lhs.true.i159.i.if.end118.i_crit_edge, %for.body100.i.if.end118.i_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.68) #7
  br i1 %cmp98.i, label %if.end118.i.for.body100.i_crit_edge, label %if.end118.i.if.end122.i_crit_edge

if.end118.i.if.end122.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

if.end118.i.for.body100.i_crit_edge:              ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100.i

if.end122.i:                                      ; preds = %if.end118.i.if.end122.i_crit_edge, %if.then105.i
  %1418 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load ptr, ptr %priv, align 8
  %cfg.i259.i = getelementptr inbounds %struct.rtl_priv, ptr %1419, i32 0, i32 32
  %1420 = ptrtoint ptr %cfg.i259.i to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load ptr, ptr %cfg.i259.i, align 8
  %ops.i260.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1421, i32 0, i32 4
  %1422 = ptrtoint ptr %ops.i260.i to i32
  call void @__asan_load4_noabort(i32 %1422)
  %1423 = load ptr, ptr %ops.i260.i, align 4
  %set_bbreg.i261.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1423, i32 0, i32 46
  %1424 = ptrtoint ptr %set_bbreg.i261.i to i32
  call void @__asan_load4_noabort(i32 %1424)
  %1425 = load ptr, ptr %set_bbreg.i261.i, align 4
  call void %1425(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #7
  br i1 %cmp.i, label %_rtl8723be_phy_iq_calibrate.exit.thread, label %_rtl8723be_phy_iq_calibrate.exit

_rtl8723be_phy_iq_calibrate.exit.thread:          ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.69) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iqk_bb_reg.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %adda_reg.i) #7
  br label %for.inc69

_rtl8723be_phy_iq_calibrate.exit:                 ; preds = %if.end122.i
  %adda_backup128.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 28
  call void @rtl8723_phy_reload_adda_registers(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, ptr noundef %adda_backup128.i, i32 noundef 16) #7
  call void @rtl8723_phy_reload_mac_registers(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup22.i) #7
  %iqk_bb_backup134.i = getelementptr inbounds %struct.rtl_priv, ptr %17, i32 0, i32 14, i32 30
  call void @rtl8723_phy_reload_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg.i, ptr noundef %iqk_bb_backup134.i, i32 noundef 9) #7
  %1426 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load ptr, ptr %priv, align 8
  %cfg.i263.i = getelementptr inbounds %struct.rtl_priv, ptr %1427, i32 0, i32 32
  %1428 = ptrtoint ptr %cfg.i263.i to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load ptr, ptr %cfg.i263.i, align 8
  %ops.i264.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1429, i32 0, i32 4
  %1430 = ptrtoint ptr %ops.i264.i to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load ptr, ptr %ops.i264.i, align 4
  %set_bbreg.i265.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1431, i32 0, i32 46
  %1432 = ptrtoint ptr %set_bbreg.i265.i to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load ptr, ptr %set_bbreg.i265.i, align 4
  call void %1433(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i15.i) #7
  %1434 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load ptr, ptr %priv, align 8
  %cfg.i267.i = getelementptr inbounds %struct.rtl_priv, ptr %1435, i32 0, i32 32
  %1436 = ptrtoint ptr %cfg.i267.i to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %cfg.i267.i, align 8
  %ops.i268.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1437, i32 0, i32 4
  %1438 = ptrtoint ptr %ops.i268.i to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %ops.i268.i, align 4
  %set_bbreg.i269.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1439, i32 0, i32 46
  %1440 = ptrtoint ptr %set_bbreg.i269.i to i32
  call void @__asan_load4_noabort(i32 %1440)
  %1441 = load ptr, ptr %set_bbreg.i269.i, align 4
  call void %1441(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef 80) #7
  %conv136.i = and i32 %call.i.i, 255
  %1442 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %priv, align 8
  %cfg.i271.i = getelementptr inbounds %struct.rtl_priv, ptr %1443, i32 0, i32 32
  %1444 = ptrtoint ptr %cfg.i271.i to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %cfg.i271.i, align 8
  %ops.i272.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1445, i32 0, i32 4
  %1446 = ptrtoint ptr %ops.i272.i to i32
  call void @__asan_load4_noabort(i32 %1446)
  %1447 = load ptr, ptr %ops.i272.i, align 4
  %set_bbreg.i273.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1447, i32 0, i32 46
  %1448 = ptrtoint ptr %set_bbreg.i273.i to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %set_bbreg.i273.i, align 4
  call void %1449(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef %conv136.i) #7
  %1450 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %priv, align 8
  %cfg.i275.i = getelementptr inbounds %struct.rtl_priv, ptr %1451, i32 0, i32 32
  %1452 = ptrtoint ptr %cfg.i275.i to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load ptr, ptr %cfg.i275.i, align 8
  %ops.i276.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1453, i32 0, i32 4
  %1454 = ptrtoint ptr %ops.i276.i to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %ops.i276.i, align 4
  %set_bbreg.i277.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1455, i32 0, i32 46
  %1456 = ptrtoint ptr %set_bbreg.i277.i to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load ptr, ptr %set_bbreg.i277.i, align 4
  call void %1457(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef 80) #7
  %conv139.i = and i32 %call.i5.i, 255
  %1458 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1458)
  %1459 = load ptr, ptr %priv, align 8
  %cfg.i279.i = getelementptr inbounds %struct.rtl_priv, ptr %1459, i32 0, i32 32
  %1460 = ptrtoint ptr %cfg.i279.i to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load ptr, ptr %cfg.i279.i, align 8
  %ops.i280.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1461, i32 0, i32 4
  %1462 = ptrtoint ptr %ops.i280.i to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load ptr, ptr %ops.i280.i, align 4
  %set_bbreg.i281.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1463, i32 0, i32 46
  %1464 = ptrtoint ptr %set_bbreg.i281.i to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load ptr, ptr %set_bbreg.i281.i, align 4
  call void %1465(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef %conv139.i) #7
  %1466 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1466)
  %1467 = load ptr, ptr %priv, align 8
  %cfg.i283.i = getelementptr inbounds %struct.rtl_priv, ptr %1467, i32 0, i32 32
  %1468 = ptrtoint ptr %cfg.i283.i to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %cfg.i283.i, align 8
  %ops.i284.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1469, i32 0, i32 4
  %1470 = ptrtoint ptr %ops.i284.i to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %ops.i284.i, align 4
  %set_bbreg.i285.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1471, i32 0, i32 46
  %1472 = ptrtoint ptr %set_bbreg.i285.i to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %set_bbreg.i285.i, align 4
  call void %1473(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 16813056) #7
  %1474 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %priv, align 8
  %cfg.i287.i = getelementptr inbounds %struct.rtl_priv, ptr %1475, i32 0, i32 32
  %1476 = ptrtoint ptr %cfg.i287.i to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load ptr, ptr %cfg.i287.i, align 8
  %ops.i288.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1477, i32 0, i32 4
  %1478 = ptrtoint ptr %ops.i288.i to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %ops.i288.i, align 4
  %set_bbreg.i289.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1479, i32 0, i32 46
  %1480 = ptrtoint ptr %set_bbreg.i289.i to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %set_bbreg.i289.i, align 4
  call void %1481(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 16813056) #7
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %17, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.69) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iqk_bb_reg.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %adda_reg.i) #7
  %1482 = zext i8 %i.1286 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1482, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %i.1286, label %_rtl8723be_phy_iq_calibrate.exit.for.inc69_crit_edge [
    i8 1, label %if.then28
    i8 2, label %if.then39
  ]

_rtl8723be_phy_iq_calibrate.exit.for.inc69_crit_edge: ; preds = %_rtl8723be_phy_iq_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc69

if.then28:                                        ; preds = %_rtl8723be_phy_iq_calibrate.exit
  %call30 = call fastcc zeroext i1 @_rtl8723be_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call30, label %if.then28.if.then101_crit_edge, label %if.then28.for.inc69_crit_edge

if.then28.for.inc69_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc69

if.then28.if.then101_crit_edge:                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.then39:                                        ; preds = %_rtl8723be_phy_iq_calibrate.exit
  %call41 = call fastcc zeroext i1 @_rtl8723be_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call41, label %if.then39.if.then101_crit_edge, label %if.end45

if.then39.if.then101_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then101

if.end45:                                         ; preds = %if.then39
  %call47 = call fastcc zeroext i1 @_rtl8723be_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  br i1 %call47, label %if.end45.for.end71.thread315_crit_edge, label %for.body55.preheader

if.end45.for.end71.thread315_crit_edge:           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71.thread315

for.body55.preheader:                             ; preds = %if.end45
  %1483 = ptrtoint ptr %uglygep296 to i32
  call void @__asan_load4_noabort(i32 %1483)
  %1484 = load i32, ptr %uglygep296, align 4
  %arrayidx58.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %1485 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %1485)
  %1486 = load i32, ptr %arrayidx58.1, align 4
  %add.1 = add i32 %1486, %1484
  %arrayidx58.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %1487 = ptrtoint ptr %arrayidx58.2 to i32
  call void @__asan_load4_noabort(i32 %1487)
  %1488 = load i32, ptr %arrayidx58.2, align 4
  %add.2 = add i32 %1488, %add.1
  %arrayidx58.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %1489 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load4_noabort(i32 %1489)
  %1490 = load i32, ptr %arrayidx58.3, align 4
  %add.3 = add i32 %1490, %add.2
  %arrayidx58.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %1491 = ptrtoint ptr %arrayidx58.4 to i32
  call void @__asan_load4_noabort(i32 %1491)
  %1492 = load i32, ptr %arrayidx58.4, align 4
  %add.4 = add i32 %1492, %add.3
  %arrayidx58.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %1493 = ptrtoint ptr %arrayidx58.5 to i32
  call void @__asan_load4_noabort(i32 %1493)
  %1494 = load i32, ptr %arrayidx58.5, align 4
  %add.5 = add i32 %1494, %add.4
  %arrayidx58.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %1495 = ptrtoint ptr %arrayidx58.6 to i32
  call void @__asan_load4_noabort(i32 %1495)
  %1496 = load i32, ptr %arrayidx58.6, align 4
  %add.6 = add i32 %1496, %add.5
  %arrayidx58.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %1497 = ptrtoint ptr %arrayidx58.7 to i32
  call void @__asan_load4_noabort(i32 %1497)
  %1498 = load i32, ptr %arrayidx58.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %1498, i32 %add.7)
  %cmp62.not = icmp eq i32 %1498, %add.7
  br i1 %cmp62.not, label %for.body55.preheader.if.else124_crit_edge, label %for.body55.preheader.for.end71.thread315_crit_edge

for.body55.preheader.for.end71.thread315_crit_edge: ; preds = %for.body55.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end71.thread315

for.body55.preheader.if.else124_crit_edge:        ; preds = %for.body55.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else124

for.inc69:                                        ; preds = %if.then28.for.inc69_crit_edge, %_rtl8723be_phy_iq_calibrate.exit.for.inc69_crit_edge, %_rtl8723be_phy_iq_calibrate.exit.thread
  %inc70 = add i8 %i.1286, 1
  %cmp21 = icmp ult i8 %inc70, 3
  br i1 %cmp21, label %for.inc69.for.body23_crit_edge, label %for.inc69.if.else124_crit_edge

for.inc69.if.else124_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else124

for.inc69.for.body23_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23

for.end71.thread315:                              ; preds = %for.body55.preheader.for.end71.thread315_crit_edge, %if.end45.for.end71.thread315_crit_edge
  %final_candidate.2.ph = phi i8 [ 1, %if.end45.for.end71.thread315_crit_edge ], [ 3, %for.body55.preheader.for.end71.thread315_crit_edge ]
  %conv98317 = zext i8 %final_candidate.2.ph to i32
  br label %if.then101

if.then101:                                       ; preds = %for.end71.thread315, %if.then39.if.then101_crit_edge, %if.then28.if.then101_crit_edge
  %conv98309 = phi i32 [ 0, %if.then39.if.then101_crit_edge ], [ %conv98317, %for.end71.thread315 ], [ 0, %if.then28.if.then101_crit_edge ]
  %final_candidate.2307 = phi i8 [ 0, %if.then39.if.then101_crit_edge ], [ %final_candidate.2.ph, %for.end71.thread315 ], [ 0, %if.then28.if.then101_crit_edge ]
  %arrayidx103 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309
  %1499 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %1499)
  %1500 = load i32, ptr %arrayidx103, align 4
  %reg_e94105 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %1501 = ptrtoint ptr %reg_e94105 to i32
  call void @__asan_store4_noabort(i32 %1501)
  store i32 %1500, ptr %reg_e94105, align 4
  %arrayidx108 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309, i32 1
  %1502 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load i32, ptr %arrayidx108, align 4
  %reg_e9c109 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %1504 = ptrtoint ptr %reg_e9c109 to i32
  call void @__asan_store4_noabort(i32 %1504)
  store i32 %1503, ptr %reg_e9c109, align 4
  %arrayidx112 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309, i32 2
  %1505 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %1505)
  %1506 = load i32, ptr %arrayidx112, align 4
  %arrayidx115 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309, i32 4
  %1507 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %1507)
  %1508 = load i32, ptr %arrayidx115, align 4
  %reg_eb4116 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %1509 = ptrtoint ptr %reg_eb4116 to i32
  call void @__asan_store4_noabort(i32 %1509)
  store i32 %1508, ptr %reg_eb4116, align 4
  %arrayidx119 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309, i32 5
  %1510 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %1510)
  %1511 = load i32, ptr %arrayidx119, align 4
  %reg_ebc120 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %1512 = ptrtoint ptr %reg_ebc120 to i32
  call void @__asan_store4_noabort(i32 %1512)
  store i32 %1511, ptr %reg_ebc120, align 4
  %arrayidx123 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98309, i32 6
  %1513 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %1513)
  %1514 = load i32, ptr %arrayidx123, align 4
  br label %if.end129

if.else124:                                       ; preds = %for.inc69.if.else124_crit_edge, %for.body55.preheader.if.else124_crit_edge
  %arrayidx94.le = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %1515 = ptrtoint ptr %arrayidx94.le to i32
  call void @__asan_load4_noabort(i32 %1515)
  %1516 = load i32, ptr %arrayidx94.le, align 4
  %arrayidx88.le = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %1517 = ptrtoint ptr %arrayidx88.le to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load i32, ptr %arrayidx88.le, align 4
  %arrayidx85.le = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %1519 = ptrtoint ptr %arrayidx85.le to i32
  call void @__asan_load4_noabort(i32 %1519)
  %1520 = load i32, ptr %arrayidx85.le, align 4
  %1521 = ptrtoint ptr %uglygep296 to i32
  call void @__asan_load4_noabort(i32 %1521)
  %1522 = load i32, ptr %uglygep296, align 4
  %reg_e94125 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %1523 = ptrtoint ptr %reg_e94125 to i32
  call void @__asan_store4_noabort(i32 %1523)
  store i32 256, ptr %reg_e94125, align 4
  %reg_eb4126 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %1524 = ptrtoint ptr %reg_eb4126 to i32
  call void @__asan_store4_noabort(i32 %1524)
  store i32 256, ptr %reg_eb4126, align 4
  %reg_e9c127 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %1525 = ptrtoint ptr %reg_e9c127 to i32
  call void @__asan_store4_noabort(i32 %1525)
  store i32 0, ptr %reg_e9c127, align 4
  %reg_ebc128 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %1526 = ptrtoint ptr %reg_ebc128 to i32
  call void @__asan_store4_noabort(i32 %1526)
  store i32 0, ptr %reg_ebc128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.else124, %if.then101
  %cmp99.not311 = phi i1 [ false, %if.then101 ], [ true, %if.else124 ]
  %conv98310 = phi i32 [ %conv98309, %if.then101 ], [ 255, %if.else124 ]
  %final_candidate.2306 = phi i8 [ %final_candidate.2307, %if.then101 ], [ -1, %if.else124 ]
  %reg_e94.1 = phi i32 [ %1500, %if.then101 ], [ %1522, %if.else124 ]
  %reg_ea4.1 = phi i32 [ %1506, %if.then101 ], [ %1520, %if.else124 ]
  %reg_eb4.1 = phi i32 [ %1508, %if.then101 ], [ %1518, %if.else124 ]
  %reg_ec4.1 = phi i32 [ %1514, %if.then101 ], [ %1516, %if.else124 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_e94.1)
  %cmp130.not = icmp eq i32 %reg_e94.1, 0
  br i1 %cmp130.not, label %if.end129.if.end137_crit_edge, label %if.then132

if.end129.if.end137_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %1527 = xor i1 %cmp99.not311, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_ea4.1)
  %cmp135 = icmp eq i32 %reg_ea4.1, 0
  call void @rtl8723_phy_path_a_fill_iqk_matrix(ptr noundef %hw, i1 noundef zeroext %1527, ptr noundef nonnull %result, i8 noundef zeroext %final_candidate.2306, i1 noundef zeroext %cmp135) #7
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %if.end129.if.end137_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_eb4.1)
  %cmp138.not = icmp eq i32 %reg_eb4.1, 0
  %or.cond = or i1 %cmp138.not, %cmp99.not311
  br i1 %or.cond, label %if.end137.if.end145_crit_edge, label %if.then3.i

if.end137.if.end145_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then3.i:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_ec4.1)
  %cmp143 = icmp eq i32 %reg_ec4.1, 0
  %1528 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load ptr, ptr %priv, align 8
  %cfg.i.i269 = getelementptr inbounds %struct.rtl_priv, ptr %1529, i32 0, i32 32
  %1530 = ptrtoint ptr %cfg.i.i269 to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load ptr, ptr %cfg.i.i269, align 8
  %ops.i.i270 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1531, i32 0, i32 4
  %1532 = ptrtoint ptr %ops.i.i270 to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %ops.i.i270, align 4
  %get_bbreg.i.i271 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1533, i32 0, i32 45
  %1534 = ptrtoint ptr %get_bbreg.i.i271 to i32
  call void @__asan_load4_noabort(i32 %1534)
  %1535 = load ptr, ptr %get_bbreg.i.i271, align 4
  %call.i.i272 = call i32 %1535(ptr noundef %hw, i32 noundef 3208, i32 noundef -1) #7
  %shr.i273 = lshr i32 %call.i.i272, 22
  %arrayidx4.i = getelementptr [8 x i32], ptr %result, i32 %conv98310, i32 4
  %1536 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %1537, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %1537, -1024
  %spec.select.i = select i1 %cmp6.not.i, i32 %1537, i32 %or.i
  %mul.i = mul i32 %spec.select.i, %shr.i273
  %shr9.i = lshr i32 %mul.i, 8
  %1538 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %priv, align 8
  %cfg.i80.i = getelementptr inbounds %struct.rtl_priv, ptr %1539, i32 0, i32 32
  %1540 = ptrtoint ptr %cfg.i80.i to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load ptr, ptr %cfg.i80.i, align 8
  %ops.i81.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1541, i32 0, i32 4
  %1542 = ptrtoint ptr %ops.i81.i to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %ops.i81.i, align 4
  %set_bbreg.i.i274 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1543, i32 0, i32 46
  %1544 = ptrtoint ptr %set_bbreg.i.i274 to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %set_bbreg.i.i274, align 4
  call void %1545(ptr noundef %hw, i32 noundef 3208, i32 noundef 1023, i32 noundef %shr9.i) #7
  %shr11.i = lshr i32 %mul.i, 7
  %and12.i = and i32 %shr11.i, 1
  %1546 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load ptr, ptr %priv, align 8
  %cfg.i83.i = getelementptr inbounds %struct.rtl_priv, ptr %1547, i32 0, i32 32
  %1548 = ptrtoint ptr %cfg.i83.i to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %cfg.i83.i, align 8
  %ops.i84.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1549, i32 0, i32 4
  %1550 = ptrtoint ptr %ops.i84.i to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %ops.i84.i, align 4
  %set_bbreg.i85.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1551, i32 0, i32 46
  %1552 = ptrtoint ptr %set_bbreg.i85.i to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load ptr, ptr %set_bbreg.i85.i, align 4
  call void %1553(ptr noundef %hw, i32 noundef 3148, i32 noundef 134217728, i32 noundef %and12.i) #7
  %arrayidx15.i = getelementptr [8 x i32], ptr %result, i32 %conv98310, i32 5
  %1554 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load i32, ptr %arrayidx15.i, align 4
  %and16.i = and i32 %1555, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 0
  %or20.i = or i32 %1555, -1024
  %y.0.i = select i1 %cmp17.not.i, i32 %1555, i32 %or20.i
  %mul22.i = mul i32 %y.0.i, %shr.i273
  %shr23.i = lshr i32 %mul22.i, 8
  %and24.i = lshr i32 %mul22.i, 14
  %1556 = and i32 %and24.i, 15
  %1557 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1557)
  %1558 = load ptr, ptr %priv, align 8
  %cfg.i87.i = getelementptr inbounds %struct.rtl_priv, ptr %1558, i32 0, i32 32
  %1559 = ptrtoint ptr %cfg.i87.i to i32
  call void @__asan_load4_noabort(i32 %1559)
  %1560 = load ptr, ptr %cfg.i87.i, align 8
  %ops.i88.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1560, i32 0, i32 4
  %1561 = ptrtoint ptr %ops.i88.i to i32
  call void @__asan_load4_noabort(i32 %1561)
  %1562 = load ptr, ptr %ops.i88.i, align 4
  %set_bbreg.i89.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1562, i32 0, i32 46
  %1563 = ptrtoint ptr %set_bbreg.i89.i to i32
  call void @__asan_load4_noabort(i32 %1563)
  %1564 = load ptr, ptr %set_bbreg.i89.i, align 4
  call void %1564(ptr noundef %hw, i32 noundef 3228, i32 noundef -268435456, i32 noundef %1556) #7
  %and26.i = and i32 %shr23.i, 63
  %1565 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load ptr, ptr %priv, align 8
  %cfg.i91.i = getelementptr inbounds %struct.rtl_priv, ptr %1566, i32 0, i32 32
  %1567 = ptrtoint ptr %cfg.i91.i to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load ptr, ptr %cfg.i91.i, align 8
  %ops.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1568, i32 0, i32 4
  %1569 = ptrtoint ptr %ops.i92.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %ops.i92.i, align 4
  %set_bbreg.i93.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1570, i32 0, i32 46
  %1571 = ptrtoint ptr %set_bbreg.i93.i to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %set_bbreg.i93.i, align 4
  call void %1572(ptr noundef %hw, i32 noundef 3208, i32 noundef 4128768, i32 noundef %and26.i) #7
  %shr28.i = lshr i32 %mul22.i, 7
  %and29.i = and i32 %shr28.i, 1
  %1573 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load ptr, ptr %priv, align 8
  %cfg.i95.i = getelementptr inbounds %struct.rtl_priv, ptr %1574, i32 0, i32 32
  %1575 = ptrtoint ptr %cfg.i95.i to i32
  call void @__asan_load4_noabort(i32 %1575)
  %1576 = load ptr, ptr %cfg.i95.i, align 8
  %ops.i96.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1576, i32 0, i32 4
  %1577 = ptrtoint ptr %ops.i96.i to i32
  call void @__asan_load4_noabort(i32 %1577)
  %1578 = load ptr, ptr %ops.i96.i, align 4
  %set_bbreg.i97.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1578, i32 0, i32 46
  %1579 = ptrtoint ptr %set_bbreg.i97.i to i32
  call void @__asan_load4_noabort(i32 %1579)
  %1580 = load ptr, ptr %set_bbreg.i97.i, align 4
  call void %1580(ptr noundef %hw, i32 noundef 3148, i32 noundef 33554432, i32 noundef %and29.i) #7
  br i1 %cmp143, label %if.then3.i.if.end145_crit_edge, label %if.end32.i

if.then3.i.if.end145_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.end32.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx35.i = getelementptr [8 x i32], ptr %result, i32 %conv98310, i32 6
  %1581 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %1581)
  %1582 = load i32, ptr %arrayidx35.i, align 4
  %1583 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1583)
  %1584 = load ptr, ptr %priv, align 8
  %cfg.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %1584, i32 0, i32 32
  %1585 = ptrtoint ptr %cfg.i99.i to i32
  call void @__asan_load4_noabort(i32 %1585)
  %1586 = load ptr, ptr %cfg.i99.i, align 8
  %ops.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1586, i32 0, i32 4
  %1587 = ptrtoint ptr %ops.i100.i to i32
  call void @__asan_load4_noabort(i32 %1587)
  %1588 = load ptr, ptr %ops.i100.i, align 4
  %set_bbreg.i101.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1588, i32 0, i32 46
  %1589 = ptrtoint ptr %set_bbreg.i101.i to i32
  call void @__asan_load4_noabort(i32 %1589)
  %1590 = load ptr, ptr %set_bbreg.i101.i, align 4
  call void %1590(ptr noundef %hw, i32 noundef 3100, i32 noundef 1023, i32 noundef %1582) #7
  %arrayidx38.i275 = getelementptr [8 x i32], ptr %result, i32 %conv98310, i32 7
  %1591 = ptrtoint ptr %arrayidx38.i275 to i32
  call void @__asan_load4_noabort(i32 %1591)
  %1592 = load i32, ptr %arrayidx38.i275, align 4
  %and39.i = and i32 %1592, 63
  %1593 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1593)
  %1594 = load ptr, ptr %priv, align 8
  %cfg.i103.i = getelementptr inbounds %struct.rtl_priv, ptr %1594, i32 0, i32 32
  %1595 = ptrtoint ptr %cfg.i103.i to i32
  call void @__asan_load4_noabort(i32 %1595)
  %1596 = load ptr, ptr %cfg.i103.i, align 8
  %ops.i104.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1596, i32 0, i32 4
  %1597 = ptrtoint ptr %ops.i104.i to i32
  call void @__asan_load4_noabort(i32 %1597)
  %1598 = load ptr, ptr %ops.i104.i, align 4
  %set_bbreg.i105.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1598, i32 0, i32 46
  %1599 = ptrtoint ptr %set_bbreg.i105.i to i32
  call void @__asan_load4_noabort(i32 %1599)
  %1600 = load ptr, ptr %set_bbreg.i105.i, align 4
  call void %1600(ptr noundef %hw, i32 noundef 3100, i32 noundef 64512, i32 noundef %and39.i) #7
  br label %if.end145

if.end145:                                        ; preds = %if.end32.i, %if.then3.i.if.end145_crit_edge, %if.end137.if.end145_crit_edge
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %1601 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %1601)
  %1602 = load i8, ptr %current_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %1602)
  %cmp.i276 = icmp ugt i8 %1602, 14
  br i1 %cmp.i276, label %if.end145.for.body.i278_crit_edge, label %if.end145._get_right_chnl_place_for_iqk.exit_crit_edge

if.end145._get_right_chnl_place_for_iqk.exit_crit_edge: ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %_get_right_chnl_place_for_iqk.exit

if.end145.for.body.i278_crit_edge:                ; preds = %if.end145
  br label %for.body.i278

for.body.i278:                                    ; preds = %for.inc.i.for.body.i278_crit_edge, %if.end145.for.body.i278_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i278_crit_edge ], [ 14, %if.end145.for.body.i278_crit_edge ]
  %arrayidx.i277 = getelementptr [59 x i8], ptr @__const._get_right_chnl_place_for_iqk.channel_all, i32 0, i32 %indvars.iv.i
  %1603 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load1_noabort(i32 %1603)
  %1604 = load i8, ptr %arrayidx.i277, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1604, i8 %1602)
  %cmp7.i = icmp eq i8 %1604, %1602
  br i1 %cmp7.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i278
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nuw i32 %indvars.iv.i, 243
  %phi.cast = and i32 %sub.i, 255
  br label %_get_right_chnl_place_for_iqk.exit

for.inc.i:                                        ; preds = %for.body.i278
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 59
  br i1 %exitcond.not.i, label %for.inc.i._get_right_chnl_place_for_iqk.exit_crit_edge, label %for.inc.i.for.body.i278_crit_edge

for.inc.i.for.body.i278_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i278

for.inc.i._get_right_chnl_place_for_iqk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_get_right_chnl_place_for_iqk.exit

_get_right_chnl_place_for_iqk.exit:               ; preds = %for.inc.i._get_right_chnl_place_for_iqk.exit_crit_edge, %if.then9.i, %if.end145._get_right_chnl_place_for_iqk.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then9.i ], [ 0, %if.end145._get_right_chnl_place_for_iqk.exit_crit_edge ], [ 0, %for.inc.i._get_right_chnl_place_for_iqk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %final_candidate.2306)
  %cmp148 = icmp ult i8 %final_candidate.2306, 4
  br i1 %cmp148, label %for.cond151.preheader, label %_get_right_chnl_place_for_iqk.exit.if.end171_crit_edge

_get_right_chnl_place_for_iqk.exit.if.end171_crit_edge: ; preds = %_get_right_chnl_place_for_iqk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end171

for.cond151.preheader:                            ; preds = %_get_right_chnl_place_for_iqk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %value = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 %retval.0.i, i32 1
  %arrayidx159 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 0
  %1605 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %1605)
  %1606 = load i32, ptr %arrayidx159, align 4
  %1607 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1607)
  store i32 %1606, ptr %value, align 4
  %arrayidx159.1 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 1
  %1608 = ptrtoint ptr %arrayidx159.1 to i32
  call void @__asan_load4_noabort(i32 %1608)
  %1609 = load i32, ptr %arrayidx159.1, align 4
  %arrayidx164.1 = getelementptr [8 x i32], ptr %value, i32 0, i32 1
  %1610 = ptrtoint ptr %arrayidx164.1 to i32
  call void @__asan_store4_noabort(i32 %1610)
  store i32 %1609, ptr %arrayidx164.1, align 4
  %arrayidx159.2 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 2
  %1611 = ptrtoint ptr %arrayidx159.2 to i32
  call void @__asan_load4_noabort(i32 %1611)
  %1612 = load i32, ptr %arrayidx159.2, align 4
  %arrayidx164.2 = getelementptr [8 x i32], ptr %value, i32 0, i32 2
  %1613 = ptrtoint ptr %arrayidx164.2 to i32
  call void @__asan_store4_noabort(i32 %1613)
  store i32 %1612, ptr %arrayidx164.2, align 4
  %arrayidx159.3 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 3
  %1614 = ptrtoint ptr %arrayidx159.3 to i32
  call void @__asan_load4_noabort(i32 %1614)
  %1615 = load i32, ptr %arrayidx159.3, align 4
  %arrayidx164.3 = getelementptr [8 x i32], ptr %value, i32 0, i32 3
  %1616 = ptrtoint ptr %arrayidx164.3 to i32
  call void @__asan_store4_noabort(i32 %1616)
  store i32 %1615, ptr %arrayidx164.3, align 4
  %arrayidx159.4 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 4
  %1617 = ptrtoint ptr %arrayidx159.4 to i32
  call void @__asan_load4_noabort(i32 %1617)
  %1618 = load i32, ptr %arrayidx159.4, align 4
  %arrayidx164.4 = getelementptr [8 x i32], ptr %value, i32 0, i32 4
  %1619 = ptrtoint ptr %arrayidx164.4 to i32
  call void @__asan_store4_noabort(i32 %1619)
  store i32 %1618, ptr %arrayidx164.4, align 4
  %arrayidx159.5 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 5
  %1620 = ptrtoint ptr %arrayidx159.5 to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load i32, ptr %arrayidx159.5, align 4
  %arrayidx164.5 = getelementptr [8 x i32], ptr %value, i32 0, i32 5
  %1622 = ptrtoint ptr %arrayidx164.5 to i32
  call void @__asan_store4_noabort(i32 %1622)
  store i32 %1621, ptr %arrayidx164.5, align 4
  %arrayidx159.6 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 6
  %1623 = ptrtoint ptr %arrayidx159.6 to i32
  call void @__asan_load4_noabort(i32 %1623)
  %1624 = load i32, ptr %arrayidx159.6, align 4
  %arrayidx164.6 = getelementptr [8 x i32], ptr %value, i32 0, i32 6
  %1625 = ptrtoint ptr %arrayidx164.6 to i32
  call void @__asan_store4_noabort(i32 %1625)
  store i32 %1624, ptr %arrayidx164.6, align 4
  %arrayidx159.7 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv98310, i32 7
  %1626 = ptrtoint ptr %arrayidx159.7 to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load i32, ptr %arrayidx159.7, align 4
  %arrayidx164.7 = getelementptr [8 x i32], ptr %value, i32 0, i32 7
  %1628 = ptrtoint ptr %arrayidx164.7 to i32
  call void @__asan_store4_noabort(i32 %1628)
  store i32 %1627, ptr %arrayidx164.7, align 4
  %arrayidx170 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 %retval.0.i
  %1629 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store1_noabort(i32 %1629)
  store i8 1, ptr %arrayidx170, align 4
  br label %if.end171

if.end171:                                        ; preds = %for.cond151.preheader, %_get_right_chnl_place_for_iqk.exit.if.end171_crit_edge
  %iqk_bb_backup173 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  call void @rtl8723_save_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg, ptr noundef %iqk_bb_backup173, i32 noundef 9) #7
  %1630 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1630)
  %1631 = load ptr, ptr %priv, align 8
  %cfg.i280 = getelementptr inbounds %struct.rtl_priv, ptr %1631, i32 0, i32 32
  %1632 = ptrtoint ptr %cfg.i280 to i32
  call void @__asan_load4_noabort(i32 %1632)
  %1633 = load ptr, ptr %cfg.i280, align 8
  %ops.i281 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1633, i32 0, i32 4
  %1634 = ptrtoint ptr %ops.i281 to i32
  call void @__asan_load4_noabort(i32 %1634)
  %1635 = load ptr, ptr %ops.i281, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1635, i32 0, i32 46
  %1636 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %1636)
  %1637 = load ptr, ptr %set_bbreg.i, align 4
  call void %1637(ptr noundef %hw, i32 noundef 2376, i32 noundef -1, i32 noundef %call.i) #7
  br label %label_done

label_done:                                       ; preds = %if.end171, %if.then5
  call void @_raw_spin_lock(ptr noundef %iqk_lock) #7
  %1638 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %1638)
  store i8 0, ptr %lck_inprogress, align 2
  call void @_raw_spin_unlock(ptr noundef %iqk_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %label_done, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %iqk_bb_reg) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_reload_adda_registers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl8723be_phy_simularity_compare(ptr nocapture noundef %result, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #4 align 64 {
if.end38:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c1 to i32
  %idxprom16 = zext i8 %c2 to i32
  %arrayidx34 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 0
  %0 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx34, align 4
  %arrayidx37 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 0
  %2 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp39 = icmp sgt i32 %1, %3
  %sub = sub i32 %1, %3
  %sub40 = sub i32 %3, %1
  %cond = select i1 %cmp39, i32 %sub, i32 %sub40
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond)
  %cmp41 = icmp ugt i32 %cond, 5
  %spec.select = zext i1 %cmp41 to i32
  %arrayidx7.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.1, align 4
  %and.1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp8.not.1 = icmp eq i32 %and.1, 0
  %or.1 = or i32 %5, -1024
  %tmp1.0.1 = select i1 %cmp8.not.1, i32 %5, i32 %or.1
  %arrayidx18.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 1
  %6 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx18.1, align 4
  %and19.1 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1)
  %cmp20.not.1 = icmp eq i32 %and19.1, 0
  %or25.1 = or i32 %7, -1024
  %spec.select.1 = select i1 %cmp20.not.1, i32 %7, i32 %or25.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.1, i32 %spec.select.1)
  %cmp39.1 = icmp sgt i32 %tmp1.0.1, %spec.select.1
  %sub.1 = sub i32 %tmp1.0.1, %spec.select.1
  %sub40.1 = sub i32 %spec.select.1, %tmp1.0.1
  %cond.1 = select i1 %cmp39.1, i32 %sub.1, i32 %sub40.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.1)
  %cmp41.1 = icmp ugt i32 %cond.1, 5
  %or76.1 = or i32 %spec.select, 2
  %simularity_bitmap.1.1 = select i1 %cmp41.1, i32 %or76.1, i32 %spec.select
  %arrayidx34.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx34.2, align 4
  %arrayidx37.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 2
  %10 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx37.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp39.2 = icmp sgt i32 %9, %11
  %sub.2 = sub i32 %9, %11
  %sub40.2 = sub i32 %11, %9
  %cond.2 = select i1 %cmp39.2, i32 %sub.2, i32 %sub40.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.2)
  %cmp41.2 = icmp ugt i32 %cond.2, 5
  br i1 %cmp41.2, label %land.lhs.true.2, label %if.end38.if.end38.3_crit_edge

if.end38.if.end38.3_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3

land.lhs.true.2:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.1)
  %tobool.not.2 = icmp eq i32 %simularity_bitmap.1.1, 0
  br i1 %tobool.not.2, label %if.then46.2, label %if.else74.2

if.then46.2:                                      ; preds = %land.lhs.true.2
  %arrayidx49.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %12 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx49.2, align 4
  %arrayidx52.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %14 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx52.2, align 4
  %add53.2 = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add53.2)
  %cmp54.2 = icmp eq i32 %13, %add53.2
  br i1 %cmp54.2, label %if.then46.2.if.end38.3_crit_edge, label %if.else57.2

if.then46.2.if.end38.3_crit_edge:                 ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.3

if.else57.2:                                      ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx60.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 2
  %16 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx60.2, align 4
  %arrayidx64.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 3
  %18 = ptrtoint ptr %arrayidx64.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx64.2, align 4
  %add65.2 = sub i32 0, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add65.2)
  %cmp66.2 = icmp eq i32 %17, %add65.2
  %spec.select30 = select i1 %cmp66.2, i8 %c1, i8 -1
  %spec.select31 = select i1 %cmp66.2, i32 0, i32 4
  br label %if.end38.3

if.else74.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  %or76.2 = or i32 %simularity_bitmap.1.1, 4
  br label %if.end38.3

if.end38.3:                                       ; preds = %if.else74.2, %if.else57.2, %if.then46.2.if.end38.3_crit_edge, %if.end38.if.end38.3_crit_edge
  %final_candidate.sroa.0.2 = phi i8 [ -1, %if.else74.2 ], [ -1, %if.end38.if.end38.3_crit_edge ], [ %c2, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select30, %if.else57.2 ]
  %simularity_bitmap.1.2 = phi i32 [ %or76.2, %if.else74.2 ], [ %simularity_bitmap.1.1, %if.end38.if.end38.3_crit_edge ], [ 0, %if.then46.2.if.end38.3_crit_edge ], [ %spec.select31, %if.else57.2 ]
  %arrayidx7.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %20 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.3, align 4
  %and.3 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp8.not.3 = icmp eq i32 %and.3, 0
  %or.3 = or i32 %21, -1024
  %tmp1.0.3 = select i1 %cmp8.not.3, i32 %21, i32 %or.3
  %arrayidx18.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 3
  %22 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18.3, align 4
  %and19.3 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.3)
  %cmp20.not.3 = icmp eq i32 %and19.3, 0
  %or25.3 = or i32 %23, -1024
  %spec.select.3 = select i1 %cmp20.not.3, i32 %23, i32 %or25.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.3, i32 %spec.select.3)
  %cmp39.3 = icmp sgt i32 %tmp1.0.3, %spec.select.3
  %sub.3 = sub i32 %tmp1.0.3, %spec.select.3
  %sub40.3 = sub i32 %spec.select.3, %tmp1.0.3
  %cond.3 = select i1 %cmp39.3, i32 %sub.3, i32 %sub40.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.3)
  %cmp41.3 = icmp ugt i32 %cond.3, 5
  %or76.3 = or i32 %simularity_bitmap.1.2, 8
  %spec.select32 = select i1 %cmp41.3, i32 %or76.3, i32 %simularity_bitmap.1.2
  %arrayidx34.4 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 4
  %24 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34.4, align 4
  %arrayidx37.4 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 4
  %26 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx37.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp39.4 = icmp sgt i32 %25, %27
  %sub.4 = sub i32 %25, %27
  %sub40.4 = sub i32 %27, %25
  %cond.4 = select i1 %cmp39.4, i32 %sub.4, i32 %sub40.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.4)
  %cmp41.4 = icmp ugt i32 %cond.4, 5
  %or76.4 = or i32 %spec.select32, 16
  %simularity_bitmap.1.4 = select i1 %cmp41.4, i32 %or76.4, i32 %spec.select32
  %arrayidx7.5 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 5
  %28 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.5, align 4
  %and.5 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp8.not.5 = icmp eq i32 %and.5, 0
  %or.5 = or i32 %29, -1024
  %tmp1.0.5 = select i1 %cmp8.not.5, i32 %29, i32 %or.5
  %arrayidx18.5 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 5
  %30 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx18.5, align 4
  %and19.5 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.5)
  %cmp20.not.5 = icmp eq i32 %and19.5, 0
  %or25.5 = or i32 %31, -1024
  %spec.select.5 = select i1 %cmp20.not.5, i32 %31, i32 %or25.5
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.5, i32 %spec.select.5)
  %cmp39.5 = icmp sgt i32 %tmp1.0.5, %spec.select.5
  %sub.5 = sub i32 %tmp1.0.5, %spec.select.5
  %sub40.5 = sub i32 %spec.select.5, %tmp1.0.5
  %cond.5 = select i1 %cmp39.5, i32 %sub.5, i32 %sub40.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.5)
  %cmp41.5 = icmp ugt i32 %cond.5, 5
  %or76.5 = or i32 %simularity_bitmap.1.4, 32
  %simularity_bitmap.1.5 = select i1 %cmp41.5, i32 %or76.5, i32 %simularity_bitmap.1.4
  %arrayidx34.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %32 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx34.6, align 4
  %arrayidx37.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 6
  %34 = ptrtoint ptr %arrayidx37.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx37.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp39.6 = icmp sgt i32 %33, %35
  %sub.6 = sub i32 %33, %35
  %sub40.6 = sub i32 %35, %33
  %cond.6 = select i1 %cmp39.6, i32 %sub.6, i32 %sub40.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.6)
  %cmp41.6 = icmp ugt i32 %cond.6, 5
  br i1 %cmp41.6, label %land.lhs.true.6, label %if.end38.3.if.end38.7_crit_edge

if.end38.3.if.end38.7_crit_edge:                  ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.7

land.lhs.true.6:                                  ; preds = %if.end38.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.5)
  %tobool.not.6 = icmp eq i32 %simularity_bitmap.1.5, 0
  br i1 %tobool.not.6, label %if.then46.6, label %if.else74.6

if.then46.6:                                      ; preds = %land.lhs.true.6
  %arrayidx49.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %36 = ptrtoint ptr %arrayidx49.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx49.6, align 4
  %arrayidx52.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  %38 = ptrtoint ptr %arrayidx52.6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52.6, align 4
  %add53.6 = sub i32 0, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add53.6)
  %cmp54.6 = icmp eq i32 %37, %add53.6
  br i1 %cmp54.6, label %if.then46.6.if.end38.7_crit_edge, label %if.else57.6

if.then46.6.if.end38.7_crit_edge:                 ; preds = %if.then46.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.7

if.else57.6:                                      ; preds = %if.then46.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx60.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 6
  %40 = ptrtoint ptr %arrayidx60.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx60.6, align 4
  %arrayidx64.6 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 7
  %42 = ptrtoint ptr %arrayidx64.6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx64.6, align 4
  %add65.6 = sub i32 0, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add65.6)
  %cmp66.6 = icmp eq i32 %41, %add65.6
  %spec.select33 = select i1 %cmp66.6, i8 %c1, i8 -1
  %spec.select34 = select i1 %cmp66.6, i32 0, i32 64
  br label %if.end38.7

if.else74.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  %or76.6 = or i32 %simularity_bitmap.1.5, 64
  br label %if.end38.7

if.end38.7:                                       ; preds = %if.else74.6, %if.else57.6, %if.then46.6.if.end38.7_crit_edge, %if.end38.3.if.end38.7_crit_edge
  %final_candidate.sroa.12.2 = phi i8 [ -1, %if.else74.6 ], [ -1, %if.end38.3.if.end38.7_crit_edge ], [ %c2, %if.then46.6.if.end38.7_crit_edge ], [ %spec.select33, %if.else57.6 ]
  %simularity_bitmap.1.6 = phi i32 [ %or76.6, %if.else74.6 ], [ %simularity_bitmap.1.5, %if.end38.3.if.end38.7_crit_edge ], [ 0, %if.then46.6.if.end38.7_crit_edge ], [ %spec.select34, %if.else57.6 ]
  %arrayidx7.7 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  %44 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx7.7, align 4
  %and.7 = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %cmp8.not.7 = icmp eq i32 %and.7, 0
  %or.7 = or i32 %45, -1024
  %tmp1.0.7 = select i1 %cmp8.not.7, i32 %45, i32 %or.7
  %arrayidx18.7 = getelementptr [8 x i32], ptr %result, i32 %idxprom16, i32 7
  %46 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx18.7, align 4
  %and19.7 = and i32 %47, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.7)
  %cmp20.not.7 = icmp eq i32 %and19.7, 0
  %or25.7 = or i32 %47, -1024
  %spec.select.7 = select i1 %cmp20.not.7, i32 %47, i32 %or25.7
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp1.0.7, i32 %spec.select.7)
  %cmp39.7 = icmp sgt i32 %tmp1.0.7, %spec.select.7
  %sub.7 = sub i32 %tmp1.0.7, %spec.select.7
  %sub40.7 = sub i32 %spec.select.7, %tmp1.0.7
  %cond.7 = select i1 %cmp39.7, i32 %sub.7, i32 %sub40.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.7)
  %cmp41.7 = icmp ugt i32 %cond.7, 5
  br i1 %cmp41.7, label %for.inc.7.thread, label %for.inc.7

for.inc.7.thread:                                 ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_pc() #9
  %or76.7 = or i32 %simularity_bitmap.1.6, 128
  br label %if.else110

for.inc.7:                                        ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.6)
  %cmp79 = icmp eq i32 %simularity_bitmap.1.6, 0
  br i1 %cmp79, label %for.body84.preheader, label %for.inc.7.if.else110_crit_edge

for.inc.7.if.else110_crit_edge:                   ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else110

for.body84.preheader:                             ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.0.2)
  %cmp86.not = icmp eq i8 %final_candidate.sroa.0.2, -1
  br i1 %cmp86.not, label %for.body84.preheader.for.inc106_crit_edge, label %for.body95.lr.ph

for.body84.preheader.for.inc106_crit_edge:        ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc106

for.body95.lr.ph:                                 ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom97 = zext i8 %final_candidate.sroa.0.2 to i32
  %arrayidx99 = getelementptr [8 x i32], ptr %result, i32 %idxprom97, i32 0
  %48 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx99, align 4
  %arrayidx101 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %50 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx101, align 4
  %arrayidx99.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom97, i32 1
  %51 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx99.1, align 4
  %arrayidx101.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx101.1, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %for.body95.lr.ph, %for.body84.preheader.for.inc106_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.12.2)
  %cmp86.not.1 = icmp eq i8 %final_candidate.sroa.12.2, -1
  br i1 %cmp86.not.1, label %for.inc106.cleanup_crit_edge, label %for.body95.lr.ph.1

for.inc106.cleanup_crit_edge:                     ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body95.lr.ph.1:                               ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom97.1 = zext i8 %final_candidate.sroa.12.2 to i32
  %arrayidx99.125 = getelementptr [8 x i32], ptr %result, i32 %idxprom97.1, i32 4
  %54 = ptrtoint ptr %arrayidx99.125 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx99.125, align 4
  %arrayidx101.126 = getelementptr [8 x i32], ptr %result, i32 3, i32 4
  %56 = ptrtoint ptr %arrayidx101.126 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx101.126, align 4
  %arrayidx99.1.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom97.1, i32 5
  br label %cleanup.sink.split

if.else110:                                       ; preds = %for.inc.7.if.else110_crit_edge, %for.inc.7.thread
  %simularity_bitmap.1.729 = phi i32 [ %or76.7, %for.inc.7.thread ], [ %simularity_bitmap.1.6, %for.inc.7.if.else110_crit_edge ]
  %and111 = and i32 %simularity_bitmap.1.729, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.cond114.preheader, label %if.else110.if.end126_crit_edge

if.else110.if.end126_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

for.cond114.preheader:                            ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx120 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 0
  %57 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx120, align 4
  %arrayidx122 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %59 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx122, align 4
  %arrayidx120.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 1
  %60 = ptrtoint ptr %arrayidx120.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx120.1, align 4
  %arrayidx122.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %62 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx122.1, align 4
  br label %if.end126

if.end126:                                        ; preds = %for.cond114.preheader, %if.else110.if.end126_crit_edge
  %and127 = and i32 %simularity_bitmap.1.729, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %for.cond130.preheader, label %if.end126.if.end142_crit_edge

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142

for.cond130.preheader:                            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx136 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %63 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr [8 x i32], ptr %result, i32 3, i32 2
  %65 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx138, align 4
  %arrayidx136.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %66 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx136.1, align 4
  %arrayidx138.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 3
  %68 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx138.1, align 4
  br label %if.end142

if.end142:                                        ; preds = %for.cond130.preheader, %if.end126.if.end142_crit_edge
  %and143 = and i32 %simularity_bitmap.1.729, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %for.cond146.preheader, label %if.end142.if.end158_crit_edge

if.end142.if.end158_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

for.cond146.preheader:                            ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx152 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 4
  %69 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr [8 x i32], ptr %result, i32 3, i32 4
  %71 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx154, align 4
  %arrayidx152.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 5
  %72 = ptrtoint ptr %arrayidx152.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx152.1, align 4
  %arrayidx154.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 5
  %74 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx154.1, align 4
  br label %if.end158

if.end158:                                        ; preds = %for.cond146.preheader, %if.end142.if.end158_crit_edge
  %and159 = and i32 %simularity_bitmap.1.729, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp eq i32 %and159, 0
  br i1 %tobool160.not, label %for.cond162.preheader, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond162.preheader:                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx168 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 6
  %75 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx168, align 4
  %arrayidx170 = getelementptr [8 x i32], ptr %result, i32 3, i32 6
  %77 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx170, align 4
  %arrayidx168.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond162.preheader, %for.body95.lr.ph.1
  %arrayidx99.1.1.sink = phi ptr [ %arrayidx99.1.1, %for.body95.lr.ph.1 ], [ %arrayidx168.1, %for.cond162.preheader ]
  %.sink35 = phi i32 [ 5, %for.body95.lr.ph.1 ], [ 7, %for.cond162.preheader ]
  %78 = ptrtoint ptr %arrayidx99.1.1.sink to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx99.1.1.sink, align 4
  %arrayidx101.1.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink35
  %80 = ptrtoint ptr %arrayidx101.1.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx101.1.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end158.cleanup_crit_edge, %for.inc106.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end158.cleanup_crit_edge ], [ %cmp86.not, %for.inc106.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_path_a_fill_iqk_matrix(ptr noundef, i1 noundef zeroext, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_save_adda_registers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_lc_calibrate(ptr noundef %hw) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 17, i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %timecount.0.lcssa) #7
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
  tail call void %62(ptr noundef %hw, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 916448) #7
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %cfg.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %64, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i26.i, align 8
  %ops.i27.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i27.i, align 4
  %set_rfreg.i28.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 48
  %69 = ptrtoint ptr %set_rfreg.i28.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_rfreg.i28.i, align 4
  tail call void %70(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef 35850) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end20.i
  %__ms.053.i = phi i32 [ 50, %if.end20.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.053.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  %tobool22.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool22.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv, align 8
  %cfg.i30.i = getelementptr inbounds %struct.rtl_priv, ptr %73, i32 0, i32 32
  %74 = ptrtoint ptr %cfg.i30.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cfg.i30.i, align 8
  %ops.i31.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i31.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i31.i, align 4
  %set_rfreg.i32.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %set_rfreg.i32.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %set_rfreg.i32.i, align 4
  tail call void %79(ptr noundef %hw, i32 noundef 0, i32 noundef 176, i32 noundef 1048575, i32 noundef 917472) #7
  %write8_async.i45.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %80 = ptrtoint ptr %write8_async.i45.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write8_async.i45.i, align 4
  br i1 %cmp.not.i, label %if.else31.i, label %if.then27.i

if.then27.i:                                      ; preds = %while.end.i
  tail call void %81(ptr noundef %11, i32 noundef 3331, i8 noundef zeroext %call.i.i) #7
  %cfg.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %82 = ptrtoint ptr %cfg.i34.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cfg.i34.i, align 8
  %write_readback.i35.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %write_readback.i35.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %write_readback.i35.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i36.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i36.i, label %if.then27.i.rtl_write_byte.exit40.i_crit_edge, label %if.then.i39.i

if.then27.i.rtl_write_byte.exit40.i_crit_edge:    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit40.i

if.then.i39.i:                                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i38.i = tail call zeroext i8 %87(ptr noundef %11, i32 noundef 3331) #7
  br label %rtl_write_byte.exit40.i

rtl_write_byte.exit40.i:                          ; preds = %if.then.i39.i, %if.then27.i.rtl_write_byte.exit40.i_crit_edge
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 8
  %cfg.i42.i = getelementptr inbounds %struct.rtl_priv, ptr %89, i32 0, i32 32
  %90 = ptrtoint ptr %cfg.i42.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cfg.i42.i, align 8
  %ops.i43.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %ops.i43.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i43.i, align 4
  %set_rfreg.i44.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %93, i32 0, i32 48
  %94 = ptrtoint ptr %set_rfreg.i44.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %set_rfreg.i44.i, align 4
  tail call void %95(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_a_mode.0.i) #7
  br label %_rtl8723be_phy_lc_calibrate.exit

if.else31.i:                                      ; preds = %while.end.i
  tail call void %81(ptr noundef %11, i32 noundef 1314, i8 noundef zeroext 0) #7
  %cfg.i46.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %96 = ptrtoint ptr %cfg.i46.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cfg.i46.i, align 8
  %write_readback.i47.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write_readback.i47.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %write_readback.i47.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i48.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i48.i, label %if.else31.i._rtl8723be_phy_lc_calibrate.exit_crit_edge, label %if.then.i51.i

if.else31.i._rtl8723be_phy_lc_calibrate.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_rtl8723be_phy_lc_calibrate.exit

if.then.i51.i:                                    ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i50.i = tail call zeroext i8 %101(ptr noundef %11, i32 noundef 1314) #7
  br label %_rtl8723be_phy_lc_calibrate.exit

_rtl8723be_phy_lc_calibrate.exit:                 ; preds = %if.then.i51.i, %if.else31.i._rtl8723be_phy_lc_calibrate.exit_crit_edge, %rtl_write_byte.exit40.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %11, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.17) #7
  %102 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %lck_inprogress, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723be_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext %bmain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.17) #7
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_bbreg.i.i, align 4
  %..i = select i1 %bmain, i32 1, i32 2
  tail call void %9(ptr noundef %hw, i32 noundef 2348, i32 noundef -1, i32 noundef %..i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_set_io_cmd(ptr noundef %hw, i32 noundef %iotype) local_unnamed_addr #0 align 64 {
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.24, i32 noundef %iotype, i32 noundef %conv) #7
  %4 = zext i32 %iotype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.92)
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %iotype) #7
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb1, %entry.land.lhs.true_crit_edge
  %.str.25.sink = phi ptr [ @.str.26, %sw.bb1 ], [ @.str.25, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull %.str.25.sink) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.70, i32 noundef %12, i32 noundef %conv.i) #7
  %15 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_io_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.93)
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
  tail call void @rtl8723be_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %22) #7
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
  br label %rtl8723be_phy_set_io.exit

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
  br label %rtl8723be_phy_set_io.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %16) #7
  br label %rtl8723be_phy_set_io.exit

rtl8723be_phy_set_io.exit:                        ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  %42 = ptrtoint ptr %set_io_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %set_io_inprogress.i, align 1
  %43 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %current_io_type.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.71, i32 noundef %44) #7
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.27, i32 noundef %iotype) #7
  br label %cleanup

cleanup:                                          ; preds = %rtl8723be_phy_set_io.exit, %land.lhs.true.cleanup_crit_edge, %sw.default
  %retval.0 = phi i1 [ true, %rtl8723be_phy_set_io.exit ], [ false, %sw.default ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723be_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.94)
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.72) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.73, i32 noundef %call10.i) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %add.i, i32 noundef %indvars.iv222.i, i32 noundef %65) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 64, i32 noundef %indvars.iv222.i, i32 noundef %70) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.76) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %add85.i, i32 noundef %indvars.iv.i, i32 noundef %85) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %89) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.77, i32 noundef %call102.i) #7
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %rfpwr_state) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_rtl8723be_config_bb_reg(ptr noundef %hw, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %addr, label %if.else21 [
    i32 254, label %entry.while.body_crit_edge
    i32 253, label %while.body7.preheader
    i32 252, label %entry.if.end26.sink.split_crit_edge
    i32 251, label %if.then14
    i32 250, label %if.then17
    i32 249, label %if.then20
  ]

entry.if.end26.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body7.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  br label %if.end26.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.035 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.035, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end26_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.sink.split

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %11, i32 0, i32 46
  %12 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %13(ptr noundef %hw, i32 noundef %addr, i32 noundef -1, i32 noundef %data) #7
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else21, %if.then20, %if.then17, %if.then14, %while.body7.preheader, %entry.if.end26.sink.split_crit_edge
  %.sink = phi i32 [ 214748000, %while.body7.preheader ], [ 10737400, %if.then14 ], [ 214748, %if.then20 ], [ 214748, %if.else21 ], [ 1073740, %if.then17 ], [ 214748000, %entry.if.end26.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef %.sink) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %while.body.if.end26_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_set_bbreg_with_dwmask(ptr noundef %hw, i32 noundef %regaddr, i32 noundef %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %7(ptr noundef %hw, i32 noundef %regaddr, i32 noundef -1, i32 noundef %data) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl_write_byte_with_val32(ptr nocapture noundef readonly %hw, i32 noundef %addr, i32 noundef %val8) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %conv = trunc i32 %val8 to i8
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write8_async.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %addr, i8 noundef zeroext %conv) #7
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_readback.i, align 1, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %8 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %9(ptr noundef %1, i32 noundef %addr) #7
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_set_bb_reg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_save_mac_registers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_path_adda_on(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_mac_setting_calibration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_reload_mac_registers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !110, !112, !114, !116, !117, !119, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 49, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 62, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 750, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 765, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 786, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 798, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1175, i32 4}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rtl8723be_phy_scan_operation_backup._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl8723be_phy_scan_operation_backup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1190, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1216, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtl8723be_phy_set_bw_mode_callback._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtl8723be_phy_set_bw_mode_callback._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rtl8723be_phy_set_bw_mode_callback._entry.15, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1241, i32 3}
!31 = !{ptr @rtl8723be_phy_set_bw_mode_callback._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1247, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1264, i32 3}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1278, i32 2}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1312, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1319, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1324, i32 3}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2401, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2421, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2427, i32 4}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2432, i32 4}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2449, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 510, i32 3}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 521, i32 3}
!62 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 527, i32 3}
!66 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @_rtl8723be_phy_bb8723b_config_parafile._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 737, i32 3}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 687, i32 3}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 691, i32 3}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 696, i32 3}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 286, i32 3}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 307, i32 4}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 313, i32 3}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 480, i32 2}
!84 = !{ptr @__func__._rtl8723be_phy_convert_txpower_dbm_to_relative_value, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 328, i32 3}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 349, i32 4}
!89 = distinct !{null, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 355, i32 3}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 591, i32 2}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 161, i32 2}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 164, i32 2}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 168, i32 2}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 170, i32 2}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 953, i32 3}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 961, i32 3}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 933, i32 3}
!107 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 868, i32 3}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1102, i32 4}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1106, i32 3}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1363, i32 2}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 1387, i32 4}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @_rtl8723be_phy_sw_chnl_step_by_step._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2061, i32 4}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2069, i32 4}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2077, i32 4}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2085, i32 3}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2090, i32 3}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2097, i32 5}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2107, i32 4}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2114, i32 5}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2124, i32 4}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2153, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2459, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2481, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2525, i32 5}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2531, i32 4}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2558, i32 5}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2567, i32 5}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2577, i32 4}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723be/phy.c", i32 2619, i32 3}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i8 0, i8 2}
!168 = !{ptr @_rtl8723be_config_bb_reg, ptr @_rtl8723be_config_rf_radio_a, ptr @rtl_set_bbreg_with_dwmask, ptr @rtl_write_byte_with_val32}
!169 = !{!"branch_weights", i32 2000, i32 1}
