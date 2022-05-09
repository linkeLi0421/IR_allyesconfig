; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c"
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
%struct.swchnlcmd = type { i32, i32, i32, i32 }
%struct.rtl8192_tx_ring = type { ptr, i32, i32, i32, %struct.sk_buff_head, ptr, i32, i16, i16 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"regaddr(%#x), rfpath(%#x), bitmask(%#x), original_value(%#x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@RTL8723E_RADIOA_1TARRAY = external dso_local local_unnamed_addr global [282 x i32], align 4
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%lx dBm, ccktxpwridx = %d, ofdmtxpwridx = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rtl8723e_phy_scan_operation_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8723ae: Unknown Scan Backup operation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtl8723e_phy_scan_operation_backup\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl8723e_phy_scan_operation_backup._entry_ptr = internal global ptr @rtl8723e_phy_scan_operation_backup._entry, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl8723e_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8723ae: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtl8723e_phy_set_bw_mode_callback\00", [62 x i8] zeroinitializer }, align 32
@rtl8723e_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl8723e_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl8723e_phy_set_bw_mode_callback._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl8723e_phy_set_bw_mode_callback._entry_ptr.15 = internal global ptr @rtl8723e_phy_set_bw_mode_callback._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"false driver sleep or unload\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch to channel%d\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl8723e_phy_sw_chnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8723ae: WIRELESS_MODE_G but channel>14\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sw_chnl_inprogress false schedule workitem\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", [47 x i8] zeroinitializer }, align 32
@__const.rtl8723e_phy_iq_calibrate.iqk_bb_reg = private unnamed_addr constant [10 x i32] [i32 3092, i32 3100, i32 3148, i32 3192, i32 3200, i32 3208, i32 3216, i32 3220, i32 3228, i32 3232], align 4
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"-->IO Cmd(%#x), set_io_inprogress(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Resume DM after scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Pause DM before scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IO Type(%#x)\0A\00", [18 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_fw_rf_serial_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rtl8723ae: _rtl8723e_phy_fw_rf_serial_write deprecated!\0A\00", [39 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_bb8192c_config_parafile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8723ae: Write BB Reg Fail!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"_rtl8723e_phy_bb8192c_config_parafile\00", [58 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_bb8192c_config_parafile._entry_ptr = internal global ptr @_rtl8723e_phy_bb8192c_config_parafile._entry, section ".printk_index", align 4
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Config to 1T!!\0A\00", [16 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_bb8192c_config_parafile._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.8, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8723ae: BB_PG Reg Fail!!\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.33 = internal global ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.31, section ".printk_index", align 4
@_rtl8723e_phy_bb8192c_config_parafile._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.8, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8723ae: AGC Table Fail\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.36 = internal global ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.34, section ".printk_index", align 4
@RTL8723EAGCTAB_1TARRAY = external dso_local local_unnamed_addr global [320 x i32], align 4
@RTL8723EPHY_REG_1TARRAY = external dso_local local_unnamed_addr global [372 x i32], align 4
@.str.37 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The phy_regarray_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"The agctab_array_table[0] is %x Rtl819XPHY_REGArray[1] is %x\0A\00", [34 x i8] zeroinitializer }, align 32
@RTL8723EPHY_REG_ARRAY_PG = external dso_local local_unnamed_addr global [336 x i32], align 4
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][0] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][1] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][6] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][7] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][2] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][3] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][4] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][5] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][8] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MCSTxPowerLevelOriginalOffset[%d][9] = 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][14] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][15] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][10] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][11] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][12] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MCSTxPowerLevelOriginalOffset[%d][13] = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Read Rtl723MACPHY_Array\0A\00", [39 x i8] zeroinitializer }, align 32
@RTL8723EMAC_ARRAY = external dso_local local_unnamed_addr global [172 x i32], align 4
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Img:RTL8192CEMAC_2T_ARRAY\0A\00", [37 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_sw_chnl_step_by_step.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8723ae: illegal channel for Zebra: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_sw_chnl_step_by_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.8, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtl8723ae: Invalid 'stage' = %d, Check it!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"_rtl8723e_phy_sw_chnl_step_by_step\00", [61 x i8] zeroinitializer }, align 32
@_rtl8723e_phy_sw_chnl_step_by_step._entry_ptr = internal global ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry, section ".printk_index", align 4
@__const._rtl8723e_phy_iq_calibrate.adda_reg = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@__const._rtl8723e_phy_iq_calibrate.iqk_mac_reg = private unnamed_addr constant [4 x i32] [i32 1314, i32 1360, i32 1361, i32 64], align 4
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%#x)\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set ERFON slept:%d ms\0A\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch RF timeout !!!.\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.70 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 3584, i64 3588, i64 3592]
@__sancov_gen_cov_switch_values.72 = internal global [9 x i64] [i64 7, i64 32, i64 2096, i64 2100, i64 2104, i64 3600, i64 3604, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 2108, i64 2120, i64 2124, i64 2152]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 41, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 57, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 72, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 537, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 549, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 653, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 722, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 737, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 763, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 788, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 794, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 811, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 825, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 857, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 864, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 868, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1445, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1451, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1456, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1461, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1473, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 112, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 192, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 198, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 206, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 212, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 270, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 280, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 299, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 308, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 317, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 326, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 335, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 344, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 353, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 362, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 371, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 380, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 389, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 398, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 407, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 416, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 425, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 434, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 229, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 233, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 926, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 949, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1483, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1504, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1570, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1577, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1594, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1619, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1628, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1636, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 1542, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @_rtl8723e_phy_bb8192c_config_parafile._entry, ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.31, ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.34, ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr, ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.33, ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.36, ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry, ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry_ptr, ptr @rtl8723e_phy_scan_operation_backup._entry, ptr @rtl8723e_phy_scan_operation_backup._entry_ptr, ptr @rtl8723e_phy_set_bw_mode_callback._entry, ptr @rtl8723e_phy_set_bw_mode_callback._entry.14, ptr @rtl8723e_phy_set_bw_mode_callback._entry_ptr, ptr @rtl8723e_phy_set_bw_mode_callback._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_phy_scan_operation_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723e_phy_set_bw_mode_callback._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_phy_bb8192c_config_parafile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl8723e_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #6
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #6
  %rf_mode = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @rtl8723_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %original_value.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @rtl8723_phy_calculate_bit_shift(i32 noundef %bitmask) #6
  %and = and i32 %original_value.0, %bitmask
  %shr = lshr i32 %and, %call2
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %original_value.0) #6
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
define dso_local void @rtl8723e_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #6
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @rtl8723_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr) #6
  %call5 = tail call i32 @rtl8723_phy_calculate_bit_shift(i32 noundef %bitmask) #6
  %neg = xor i32 %bitmask, -1
  %and = and i32 %call, %neg
  %shl = shl i32 %data, %call5
  %or = or i32 %shl, %and
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %data.addr.0 = phi i32 [ %or, %if.then4 ], [ %data, %if.then.if.end_crit_edge ]
  tail call void @rtl8723_phy_rf_serial_write(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %data.addr.0) #6
  br label %if.end15

if.else:                                          ; preds = %entry
  br i1 %cmp6.not, label %if.else.if.end14_crit_edge, label %if.then8

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @rtl8723_phy_calculate_bit_shift(i32 noundef %bitmask) #6
  %shl12 = shl i32 %data, %call9
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.else.if.end14_crit_edge
  %data.addr.1 = phi i32 [ %shl12, %if.then8 ], [ %data, %if.else.if.end14_crit_edge ]
  %.b1.i = load i1, ptr @_rtl8723e_phy_fw_rf_serial_write.__already_done, align 1
  br i1 %.b1.i, label %if.end14.if.end15_crit_edge, label %if.then.i, !prof !148

if.end14.if.end15_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @_rtl8723e_phy_fw_rf_serial_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.27) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then.i, %if.end14.if.end15_crit_edge, %if.end
  %data.addr.2 = phi i32 [ %data.addr.0, %if.end ], [ %data.addr.1, %if.end14.if.end15_crit_edge ], [ %data.addr.1, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.2, i32 noundef %rfpath) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_rf_serial_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.56) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.57) #6
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %add2.i, %rtl_write_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8723EMAC_ARRAY, i32 %i.01.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.01.i, 1
  %arrayidx1.i = getelementptr i32, ptr @RTL8723EMAC_ARRAY, i32 %add.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv.i) #6
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %for.body.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.body.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef %3) #6
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.body.i.rtl_write_byte.exit.i_crit_edge
  %add2.i = add nuw nsw i32 %i.01.i, 2
  %cmp.i = icmp ult i32 %i.01.i, 170
  br i1 %cmp.i, label %rtl_write_byte.exit.i.for.body.i_crit_edge, label %_rtl8723e_phy_config_mac_with_headerfile.exit

rtl_write_byte.exit.i.for.body.i_crit_edge:       ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

_rtl8723e_phy_config_mac_with_headerfile.exit:    ; preds = %rtl_write_byte.exit.i
  %14 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %15(ptr noundef %1, i32 noundef 1226, i8 noundef zeroext 10) #6
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_readback.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %_rtl8723e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge, label %if.then.i

_rtl8723e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge: ; preds = %_rtl8723e_phy_config_mac_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %_rtl8723e_phy_config_mac_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 1226) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %_rtl8723e_phy_config_mac_with_headerfile.exit.rtl_write_byte.exit_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @rtl8723_phy_init_bb_rf_reg_def(ptr noundef %hw) #6
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 40) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #6
  %5 = or i8 %call.i, 2
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %6 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef 40, i8 noundef zeroext %5) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %8 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.rtl_write_byte.exit_crit_edge, label %if.then.i

entry.rtl_write_byte.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i, align 4
  %call.i32 = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 40) #6
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i, %entry.rtl_write_byte.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 429496) #6
  %15 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write8_async.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef 41, i8 noundef zeroext -1) #6
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i35 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i35 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i35, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i36 = icmp eq i8 %20, 0
  br i1 %tobool.not.i36, label %rtl_write_byte.exit.rtl_write_byte.exit40_crit_edge, label %if.then.i39

rtl_write_byte.exit.rtl_write_byte.exit40_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit40

if.then.i39:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i38 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 41) #6
  br label %rtl_write_byte.exit40

rtl_write_byte.exit40:                            ; preds = %if.then.i39, %rtl_write_byte.exit.rtl_write_byte.exit40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #6
  %24 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read8_sync.i, align 4
  %call.i42 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 2) #6
  %26 = or i8 %call.i42, 3
  %27 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %26) #6
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i45 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i45 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i45, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i46 = icmp eq i8 %32, 0
  br i1 %tobool.not.i46, label %rtl_write_byte.exit40.rtl_write_byte.exit50_crit_edge, label %if.then.i49

rtl_write_byte.exit40.rtl_write_byte.exit50_crit_edge: ; preds = %rtl_write_byte.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit50

if.then.i49:                                      ; preds = %rtl_write_byte.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i, align 4
  %call.i48 = tail call zeroext i8 %34(ptr noundef %1, i32 noundef 2) #6
  br label %rtl_write_byte.exit50

rtl_write_byte.exit50:                            ; preds = %if.then.i49, %rtl_write_byte.exit40.rtl_write_byte.exit50_crit_edge
  %35 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i, align 4
  %call.i52 = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 37) #6
  %37 = and i8 %call.i52, -65
  %38 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write8_async.i, align 4
  tail call void %39(ptr noundef %1, i32 noundef 37, i8 noundef zeroext %37) #6
  %40 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i, align 8
  %write_readback.i55 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write_readback.i55 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %write_readback.i55, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i56 = icmp eq i8 %43, 0
  br i1 %tobool.not.i56, label %rtl_write_byte.exit50.rtl_write_byte.exit60_crit_edge, label %if.then.i59

rtl_write_byte.exit50.rtl_write_byte.exit60_crit_edge: ; preds = %rtl_write_byte.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit60

if.then.i59:                                      ; preds = %rtl_write_byte.exit50
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read8_sync.i, align 4
  %call.i58 = tail call zeroext i8 %45(ptr noundef %1, i32 noundef 37) #6
  br label %rtl_write_byte.exit60

rtl_write_byte.exit60:                            ; preds = %if.then.i59, %rtl_write_byte.exit50.rtl_write_byte.exit60_crit_edge
  %46 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i, align 4
  %call.i62 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 38) #6
  %48 = and i8 %call.i62, -17
  %49 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write8_async.i, align 4
  tail call void %50(ptr noundef %1, i32 noundef 38, i8 noundef zeroext %48) #6
  %51 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cfg.i, align 8
  %write_readback.i65 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %write_readback.i65 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %write_readback.i65, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i66 = icmp eq i8 %54, 0
  br i1 %tobool.not.i66, label %rtl_write_byte.exit60.rtl_write_byte.exit70_crit_edge, label %if.then.i69

rtl_write_byte.exit60.rtl_write_byte.exit70_crit_edge: ; preds = %rtl_write_byte.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit70

if.then.i69:                                      ; preds = %rtl_write_byte.exit60
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read8_sync.i, align 4
  %call.i68 = tail call zeroext i8 %56(ptr noundef %1, i32 noundef 38) #6
  br label %rtl_write_byte.exit70

rtl_write_byte.exit70:                            ; preds = %if.then.i69, %rtl_write_byte.exit60.rtl_write_byte.exit70_crit_edge
  %57 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write8_async.i, align 4
  tail call void %58(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #6
  %59 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i, align 8
  %write_readback.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write_readback.i73 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %write_readback.i73, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i74 = icmp eq i8 %62, 0
  br i1 %tobool.not.i74, label %rtl_write_byte.exit70.rtl_write_byte.exit78_crit_edge, label %if.then.i77

rtl_write_byte.exit70.rtl_write_byte.exit78_crit_edge: ; preds = %rtl_write_byte.exit70
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit78

if.then.i77:                                      ; preds = %rtl_write_byte.exit70
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read8_sync.i, align 4
  %call.i76 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 31) #6
  br label %rtl_write_byte.exit78

rtl_write_byte.exit78:                            ; preds = %if.then.i77, %rtl_write_byte.exit70.rtl_write_byte.exit78_crit_edge
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.16) #6
  %67 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end42.i.for.body.i_crit_edge, %rtl_write_byte.exit78
  %i.010.i = phi i32 [ %add48.i, %if.end42.i.for.body.i_crit_edge ], [ 0, %rtl_write_byte.exit78 ]
  %arrayidx.i = getelementptr i32, ptr @RTL8723EPHY_REG_1TARRAY, i32 %i.010.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %for.body.i.if.end42.i_crit_edge [
    i32 254, label %for.body.i.while.body.i_crit_edge
    i32 253, label %while.body16.preheader.i
    i32 252, label %for.body.i.if.end42.sink.split.i_crit_edge
    i32 251, label %if.then27.i
    i32 250, label %if.then32.i
    i32 249, label %if.then37.i
  ]

for.body.i.if.end42.sink.split.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split.i

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.if.end42.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

while.body16.preheader.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #6
  br label %if.end42.sink.split.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %__ms.09.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 50, %for.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.09.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #6
  %tobool.not.i80 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i80, label %while.body.i.if.end42.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.if.end42.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split.i

if.then32.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split.i

if.then37.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %if.then37.i, %if.then32.i, %if.then27.i, %while.body16.preheader.i, %for.body.i.if.end42.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 214748000, %while.body16.preheader.i ], [ 10737400, %if.then27.i ], [ 214748, %if.then37.i ], [ 1073740, %if.then32.i ], [ 214748000, %for.body.i.if.end42.sink.split.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef %.sink.i) #6
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end42.sink.split.i, %while.body.i.if.end42.i_crit_edge, %for.body.i.if.end42.i_crit_edge
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.010.i, 1
  %arrayidx44.i = getelementptr i32, ptr @RTL8723EPHY_REG_1TARRAY, i32 %add.i
  %80 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx44.i, align 4
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 8
  %cfg.i.i81 = getelementptr inbounds %struct.rtl_priv, ptr %83, i32 0, i32 32
  %84 = ptrtoint ptr %cfg.i.i81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cfg.i.i81, align 8
  %ops.i.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %ops.i.i82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ops.i.i82, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %87, i32 0, i32 46
  %88 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %89(ptr noundef %hw, i32 noundef %79, i32 noundef -1, i32 noundef %81) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #6
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i, align 4
  %93 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx44.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %68, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.37, i32 noundef %92, i32 noundef %94) #6
  %add48.i = add nuw nsw i32 %i.010.i, 2
  %cmp3.i = icmp ult i32 %i.010.i, 370
  br i1 %cmp3.i, label %if.end42.i.for.body.i_crit_edge, label %_rtl8723e_phy_config_bb_with_headerfile.exit

if.end42.i.for.body.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

_rtl8723e_phy_config_bb_with_headerfile.exit:     ; preds = %if.end42.i
  %rf_type.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 14, i32 4
  %95 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %96)
  %cmp.i = icmp eq i8 %96, 1
  br i1 %cmp.i, label %if.then4.i, label %_rtl8723e_phy_config_bb_with_headerfile.exit.if.end5.i_crit_edge

_rtl8723e_phy_config_bb_with_headerfile.exit.if.end5.i_crit_edge: ; preds = %_rtl8723e_phy_config_bb_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %_rtl8723e_phy_config_bb_with_headerfile.exit
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %98, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %102, i32 0, i32 46
  %103 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %set_bbreg.i.i.i, align 4
  tail call void %104(ptr noundef %hw, i32 noundef 2052, i32 noundef 3, i32 noundef 2) #6
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %priv, align 8
  %cfg.i11.i.i = getelementptr inbounds %struct.rtl_priv, ptr %106, i32 0, i32 32
  %107 = ptrtoint ptr %cfg.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i11.i.i, align 8
  %ops.i12.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %ops.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i12.i.i, align 4
  %set_bbreg.i13.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %110, i32 0, i32 46
  %111 = ptrtoint ptr %set_bbreg.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_bbreg.i13.i.i, align 4
  tail call void %112(ptr noundef %hw, i32 noundef 2316, i32 noundef 3145779, i32 noundef 2097186) #6
  %113 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %priv, align 8
  %cfg.i15.i.i = getelementptr inbounds %struct.rtl_priv, ptr %114, i32 0, i32 32
  %115 = ptrtoint ptr %cfg.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i15.i.i, align 8
  %ops.i16.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %ops.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i16.i.i, align 4
  %set_bbreg.i17.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %118, i32 0, i32 46
  %119 = ptrtoint ptr %set_bbreg.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %set_bbreg.i17.i.i, align 4
  tail call void %120(ptr noundef %hw, i32 noundef 2564, i32 noundef -16777216, i32 noundef 69) #6
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 8
  %cfg.i19.i.i = getelementptr inbounds %struct.rtl_priv, ptr %122, i32 0, i32 32
  %123 = ptrtoint ptr %cfg.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i19.i.i, align 8
  %ops.i20.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %ops.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ops.i20.i.i, align 4
  %set_bbreg.i21.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %126, i32 0, i32 46
  %127 = ptrtoint ptr %set_bbreg.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %set_bbreg.i21.i.i, align 4
  tail call void %128(ptr noundef %hw, i32 noundef 3076, i32 noundef 255, i32 noundef 35) #6
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 8
  %cfg.i23.i.i = getelementptr inbounds %struct.rtl_priv, ptr %130, i32 0, i32 32
  %131 = ptrtoint ptr %cfg.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i23.i.i, align 8
  %ops.i24.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %ops.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i24.i.i, align 4
  %set_bbreg.i25.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %134, i32 0, i32 46
  %135 = ptrtoint ptr %set_bbreg.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %set_bbreg.i25.i.i, align 4
  tail call void %136(ptr noundef %hw, i32 noundef 3184, i32 noundef 48, i32 noundef 1) #6
  %137 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv, align 8
  %cfg.i27.i.i = getelementptr inbounds %struct.rtl_priv, ptr %138, i32 0, i32 32
  %139 = ptrtoint ptr %cfg.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cfg.i27.i.i, align 8
  %ops.i28.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %140, i32 0, i32 4
  %141 = ptrtoint ptr %ops.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ops.i28.i.i, align 4
  %set_bbreg.i29.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %142, i32 0, i32 46
  %143 = ptrtoint ptr %set_bbreg.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %set_bbreg.i29.i.i, align 4
  tail call void %144(ptr noundef %hw, i32 noundef 3700, i32 noundef 201326592, i32 noundef 2) #6
  %145 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %priv, align 8
  %cfg.i31.i.i = getelementptr inbounds %struct.rtl_priv, ptr %146, i32 0, i32 32
  %147 = ptrtoint ptr %cfg.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cfg.i31.i.i, align 8
  %ops.i32.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %ops.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ops.i32.i.i, align 4
  %set_bbreg.i33.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %150, i32 0, i32 46
  %151 = ptrtoint ptr %set_bbreg.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %set_bbreg.i33.i.i, align 4
  tail call void %152(ptr noundef %hw, i32 noundef 3704, i32 noundef 201326592, i32 noundef 2) #6
  %153 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %priv, align 8
  %cfg.i35.i.i = getelementptr inbounds %struct.rtl_priv, ptr %154, i32 0, i32 32
  %155 = ptrtoint ptr %cfg.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cfg.i35.i.i, align 8
  %ops.i36.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %ops.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i36.i.i, align 4
  %set_bbreg.i37.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %158, i32 0, i32 46
  %159 = ptrtoint ptr %set_bbreg.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %set_bbreg.i37.i.i, align 4
  tail call void %160(ptr noundef %hw, i32 noundef 3708, i32 noundef 201326592, i32 noundef 2) #6
  %161 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv, align 8
  %cfg.i39.i.i = getelementptr inbounds %struct.rtl_priv, ptr %162, i32 0, i32 32
  %163 = ptrtoint ptr %cfg.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i39.i.i, align 8
  %ops.i40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %ops.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops.i40.i.i, align 4
  %set_bbreg.i41.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %166, i32 0, i32 46
  %167 = ptrtoint ptr %set_bbreg.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %set_bbreg.i41.i.i, align 4
  tail call void %168(ptr noundef %hw, i32 noundef 3712, i32 noundef 201326592, i32 noundef 2) #6
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv, align 8
  %cfg.i43.i.i = getelementptr inbounds %struct.rtl_priv, ptr %170, i32 0, i32 32
  %171 = ptrtoint ptr %cfg.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cfg.i43.i.i, align 8
  %ops.i44.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %ops.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i44.i.i, align 4
  %set_bbreg.i45.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %174, i32 0, i32 46
  %175 = ptrtoint ptr %set_bbreg.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %set_bbreg.i45.i.i, align 4
  tail call void %176(ptr noundef %hw, i32 noundef 3720, i32 noundef 201326592, i32 noundef 2) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %66, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.30) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %_rtl8723e_phy_config_bb_with_headerfile.exit.if.end5.i_crit_edge
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 17, i32 7
  %177 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %cmp7.i = icmp eq i8 %178, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end5.i.if.end20.i_crit_edge

if.end5.i.if.end20.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then9.i:                                       ; preds = %if.end5.i
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 14, i32 38
  %179 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %pwrgroup_cnt.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %store_pwrindex_diffrate_offset.exit.i.i.for.body.i.i_crit_edge, %if.then9.i
  %i.04.i.i = phi i32 [ 0, %if.then9.i ], [ %add47.i.i, %store_pwrindex_diffrate_offset.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @RTL8723EPHY_REG_ARRAY_PG, i32 %i.04.i.i
  %180 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i.i, align 4
  %182 = zext i32 %181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %182, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %181, label %for.body.i.i.if.end42.i.i_crit_edge [
    i32 254, label %for.body.i.i.while.body.i.i_crit_edge
    i32 253, label %while.body16.preheader.i.i
    i32 252, label %for.body.i.i.if.end42thread-pre-split.sink.split.i.i_crit_edge
    i32 251, label %if.then27.i.i
    i32 250, label %if.then32.i.i
    i32 249, label %if.then37.i.i
  ]

for.body.i.i.if.end42thread-pre-split.sink.split.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42thread-pre-split.sink.split.i.i

for.body.i.i.while.body.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %while.body.i.i

for.body.i.i.if.end42.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

while.body16.preheader.i.i:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %184(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %185 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %185(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %186 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %186(i32 noundef 214748000) #6
  br label %if.end42thread-pre-split.sink.split.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.i.while.body.i.i_crit_edge
  %__ms.03.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 50, %for.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add nsw i32 %__ms.03.i.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 214748000) #6
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.if.end42thread-pre-split.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.if.end42thread-pre-split.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42thread-pre-split.i.i

if.then27.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42thread-pre-split.sink.split.i.i

if.then32.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42thread-pre-split.sink.split.i.i

if.then37.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42thread-pre-split.sink.split.i.i

if.end42thread-pre-split.sink.split.i.i:          ; preds = %if.then37.i.i, %if.then32.i.i, %if.then27.i.i, %while.body16.preheader.i.i, %for.body.i.i.if.end42thread-pre-split.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 214748000, %while.body16.preheader.i.i ], [ 1073740, %if.then32.i.i ], [ 214748, %if.then37.i.i ], [ 10737400, %if.then27.i.i ], [ 214748000, %for.body.i.i.if.end42thread-pre-split.sink.split.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %188(i32 noundef %.sink.i.i) #6
  br label %if.end42thread-pre-split.i.i

if.end42thread-pre-split.i.i:                     ; preds = %if.end42thread-pre-split.sink.split.i.i, %while.body.i.i.if.end42thread-pre-split.i.i_crit_edge
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %.pr.i.i = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.end42thread-pre-split.i.i, %for.body.i.i.if.end42.i.i_crit_edge
  %190 = phi i32 [ %.pr.i.i, %if.end42thread-pre-split.i.i ], [ %181, %for.body.i.i.if.end42.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.04.i.i, 1
  %arrayidx44.i.i = getelementptr i32, ptr @RTL8723EPHY_REG_ARRAY_PG, i32 %add.i.i
  %191 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx44.i.i, align 4
  %add45.i.i = add nuw nsw i32 %i.04.i.i, 2
  %arrayidx46.i.i = getelementptr i32, ptr @RTL8723EPHY_REG_ARRAY_PG, i32 %add45.i.i
  %193 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx46.i.i, align 4
  %195 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %priv, align 8
  %197 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %190, label %if.end39.i.i.i [
    i32 3584, label %if.then.i.i.i
    i32 3588, label %if.then10.i.i.i
    i32 3592, label %if.then26.i.i.i
  ]

if.then.i.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %198 = ptrtoint ptr %pwrgroup_cnt.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %pwrgroup_cnt.i.i.i, align 2
  %idxprom.i.i.i = zext i8 %199 to i32
  %arrayidx.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom.i.i.i
  %200 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %194, ptr %arrayidx.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.40, i32 noundef %idxprom.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then10.i.i.i:                                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt12.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %201 = ptrtoint ptr %pwrgroup_cnt12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %pwrgroup_cnt12.i.i.i, align 2
  %idxprom13.i.i.i = zext i8 %202 to i32
  %arrayidx15.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom13.i.i.i, i32 1
  %203 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %194, ptr %arrayidx15.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.41, i32 noundef %idxprom13.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then26.i.i.i:                                  ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt28.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %204 = ptrtoint ptr %pwrgroup_cnt28.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %pwrgroup_cnt28.i.i.i, align 2
  %idxprom29.i.i.i = zext i8 %205 to i32
  %arrayidx31.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom29.i.i.i, i32 6
  %206 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %194, ptr %arrayidx31.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.42, i32 noundef %idxprom29.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2156, i32 %190)
  %cmp40.i.i.i = icmp eq i32 %190, 2156
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %192)
  %cmp42.i.i.i = icmp eq i32 %192, -256
  %or.cond.i.i.i = and i1 %cmp40.i.i.i, %cmp42.i.i.i
  br i1 %or.cond.i.i.i, label %if.end188.thread.i.i.i, label %if.end57.i.i.i

if.end188.thread.i.i.i:                           ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt46.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %207 = ptrtoint ptr %pwrgroup_cnt46.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %pwrgroup_cnt46.i.i.i, align 2
  %idxprom47.i.i.i = zext i8 %208 to i32
  %arrayidx49.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom47.i.i.i, i32 7
  %209 = ptrtoint ptr %arrayidx49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %194, ptr %arrayidx49.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.43, i32 noundef %idxprom47.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.end57.i.i.i:                                   ; preds = %if.end39.i.i.i
  %210 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %190, label %if.end57.i.i.i.if.end169.i.i.i_crit_edge [
    i32 3600, label %if.then60.i.i.i
    i32 3604, label %if.then76.i.i.i
    i32 3608, label %if.then92.i.i.i
    i32 3612, label %if.then108.i.i.i
    i32 2096, label %if.then124.i.i.i
    i32 2100, label %if.then140.i.i.i
    i32 2104, label %if.then156.i.i.i
  ]

if.end57.i.i.i.if.end169.i.i.i_crit_edge:         ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169.i.i.i

if.then60.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt62.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %211 = ptrtoint ptr %pwrgroup_cnt62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %pwrgroup_cnt62.i.i.i, align 2
  %idxprom63.i.i.i = zext i8 %212 to i32
  %arrayidx65.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom63.i.i.i, i32 2
  %213 = ptrtoint ptr %arrayidx65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %194, ptr %arrayidx65.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.44, i32 noundef %idxprom63.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then76.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt78.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %214 = ptrtoint ptr %pwrgroup_cnt78.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %pwrgroup_cnt78.i.i.i, align 2
  %idxprom79.i.i.i = zext i8 %215 to i32
  %arrayidx81.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom79.i.i.i, i32 3
  %216 = ptrtoint ptr %arrayidx81.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %194, ptr %arrayidx81.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.45, i32 noundef %idxprom79.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then92.i.i.i:                                  ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt94.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %217 = ptrtoint ptr %pwrgroup_cnt94.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %pwrgroup_cnt94.i.i.i, align 2
  %idxprom95.i.i.i = zext i8 %218 to i32
  %arrayidx97.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom95.i.i.i, i32 4
  %219 = ptrtoint ptr %arrayidx97.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %194, ptr %arrayidx97.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.46, i32 noundef %idxprom95.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then108.i.i.i:                                 ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt110.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %220 = ptrtoint ptr %pwrgroup_cnt110.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %pwrgroup_cnt110.i.i.i, align 2
  %idxprom111.i.i.i = zext i8 %221 to i32
  %arrayidx113.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom111.i.i.i, i32 5
  %222 = ptrtoint ptr %arrayidx113.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %194, ptr %arrayidx113.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.47, i32 noundef %idxprom111.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then124.i.i.i:                                 ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt126.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %223 = ptrtoint ptr %pwrgroup_cnt126.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %pwrgroup_cnt126.i.i.i, align 2
  %idxprom127.i.i.i = zext i8 %224 to i32
  %arrayidx129.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom127.i.i.i, i32 8
  %225 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %194, ptr %arrayidx129.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.48, i32 noundef %idxprom127.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then140.i.i.i:                                 ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt142.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %226 = ptrtoint ptr %pwrgroup_cnt142.i.i.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %pwrgroup_cnt142.i.i.i, align 2
  %idxprom143.i.i.i = zext i8 %227 to i32
  %arrayidx145.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom143.i.i.i, i32 9
  %228 = ptrtoint ptr %arrayidx145.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %194, ptr %arrayidx145.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.49, i32 noundef %idxprom143.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.then156.i.i.i:                                 ; preds = %if.end57.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt158.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %229 = ptrtoint ptr %pwrgroup_cnt158.i.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %pwrgroup_cnt158.i.i.i, align 2
  %idxprom159.i.i.i = zext i8 %230 to i32
  %arrayidx161.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom159.i.i.i, i32 14
  %231 = ptrtoint ptr %arrayidx161.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %194, ptr %arrayidx161.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.50, i32 noundef %idxprom159.i.i.i, i32 noundef %194) #6
  br label %if.end169.i.i.i

if.end169.i.i.i:                                  ; preds = %if.then156.i.i.i, %if.then140.i.i.i, %if.then124.i.i.i, %if.then108.i.i.i, %if.then92.i.i.i, %if.then76.i.i.i, %if.then60.i.i.i, %if.end57.i.i.i.if.end169.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %192)
  %cmp173.i.i.i = icmp eq i32 %192, 255
  %or.cond381.i.i.i = and i1 %cmp40.i.i.i, %cmp173.i.i.i
  br i1 %or.cond381.i.i.i, label %if.end188.i.thread.i.i, label %if.end188.i.i.i

if.end188.i.thread.i.i:                           ; preds = %if.end169.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt177.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %232 = ptrtoint ptr %pwrgroup_cnt177.i.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pwrgroup_cnt177.i.i.i, align 2
  %idxprom178.i.i.i = zext i8 %233 to i32
  %arrayidx180.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom178.i.i.i, i32 15
  %234 = ptrtoint ptr %arrayidx180.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %194, ptr %arrayidx180.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.51, i32 noundef %idxprom178.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.end188.i.i.i:                                  ; preds = %if.end169.i.i.i
  %235 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %190, label %if.end188.i.i.i.store_pwrindex_diffrate_offset.exit.i.i_crit_edge [
    i32 2108, label %if.then191.i.i.i
    i32 2120, label %if.then207.i.i.i
    i32 2124, label %if.then223.i.i.i
    i32 2152, label %if.then239.i.i.i
  ]

if.end188.i.i.i.store_pwrindex_diffrate_offset.exit.i.i_crit_edge: ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then191.i.i.i:                                 ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt193.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %236 = ptrtoint ptr %pwrgroup_cnt193.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %pwrgroup_cnt193.i.i.i, align 2
  %idxprom194.i.i.i = zext i8 %237 to i32
  %arrayidx196.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom194.i.i.i, i32 10
  %238 = ptrtoint ptr %arrayidx196.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %194, ptr %arrayidx196.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.52, i32 noundef %idxprom194.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then207.i.i.i:                                 ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt209.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %239 = ptrtoint ptr %pwrgroup_cnt209.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %pwrgroup_cnt209.i.i.i, align 2
  %idxprom210.i.i.i = zext i8 %240 to i32
  %arrayidx212.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom210.i.i.i, i32 11
  %241 = ptrtoint ptr %arrayidx212.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %194, ptr %arrayidx212.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.53, i32 noundef %idxprom210.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then223.i.i.i:                                 ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt225.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %242 = ptrtoint ptr %pwrgroup_cnt225.i.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %pwrgroup_cnt225.i.i.i, align 2
  %idxprom226.i.i.i = zext i8 %243 to i32
  %arrayidx228.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom226.i.i.i, i32 12
  %244 = ptrtoint ptr %arrayidx228.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %194, ptr %arrayidx228.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.54, i32 noundef %idxprom226.i.i.i, i32 noundef %194) #6
  br label %store_pwrindex_diffrate_offset.exit.i.i

if.then239.i.i.i:                                 ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pwrgroup_cnt241.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 38
  %245 = ptrtoint ptr %pwrgroup_cnt241.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %pwrgroup_cnt241.i.i.i, align 2
  %idxprom242.i.i.i = zext i8 %246 to i32
  %arrayidx244.i.i.i = getelementptr %struct.rtl_priv, ptr %196, i32 0, i32 14, i32 40, i32 %idxprom242.i.i.i, i32 13
  %247 = ptrtoint ptr %arrayidx244.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %194, ptr %arrayidx244.i.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %196, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.55, i32 noundef %idxprom242.i.i.i, i32 noundef %194) #6
  %248 = ptrtoint ptr %pwrgroup_cnt241.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %pwrgroup_cnt241.i.i.i, align 2
  %inc.i.i.i = add i8 %249, 1
  store i8 %inc.i.i.i, ptr %pwrgroup_cnt241.i.i.i, align 2
  br label %store_pwrindex_diffrate_offset.exit.i.i

store_pwrindex_diffrate_offset.exit.i.i:          ; preds = %if.then239.i.i.i, %if.then223.i.i.i, %if.then207.i.i.i, %if.then191.i.i.i, %if.end188.i.i.i.store_pwrindex_diffrate_offset.exit.i.i_crit_edge, %if.end188.i.thread.i.i, %if.end188.thread.i.i.i, %if.then26.i.i.i, %if.then10.i.i.i, %if.then.i.i.i
  %add47.i.i = add nuw nsw i32 %i.04.i.i, 3
  %cmp3.i.i = icmp ult i32 %i.04.i.i, 333
  br i1 %cmp3.i.i, label %store_pwrindex_diffrate_offset.exit.i.i.for.body.i.i_crit_edge, label %store_pwrindex_diffrate_offset.exit.i.i.if.end20.i_crit_edge

store_pwrindex_diffrate_offset.exit.i.i.if.end20.i_crit_edge: ; preds = %store_pwrindex_diffrate_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

store_pwrindex_diffrate_offset.exit.i.i.for.body.i.i_crit_edge: ; preds = %store_pwrindex_diffrate_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end20.i:                                       ; preds = %store_pwrindex_diffrate_offset.exit.i.i.if.end20.i_crit_edge, %if.end5.i.if.end20.i_crit_edge
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 8
  br label %for.body58.i.i

for.body58.i.i:                                   ; preds = %for.body58.i.i.for.body58.i.i_crit_edge, %if.end20.i
  %i.17.i.i = phi i32 [ %add66.i.i, %for.body58.i.i.for.body58.i.i_crit_edge ], [ 0, %if.end20.i ]
  %arrayidx59.i.i = getelementptr i32, ptr @RTL8723EAGCTAB_1TARRAY, i32 %i.17.i.i
  %252 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx59.i.i, align 4
  %add60.i.i = or i32 %i.17.i.i, 1
  %arrayidx61.i.i = getelementptr i32, ptr @RTL8723EAGCTAB_1TARRAY, i32 %add60.i.i
  %254 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx61.i.i, align 4
  %256 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %priv, align 8
  %cfg.i2.i.i = getelementptr inbounds %struct.rtl_priv, ptr %257, i32 0, i32 32
  %258 = ptrtoint ptr %cfg.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cfg.i2.i.i, align 8
  %ops.i3.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %259, i32 0, i32 4
  %260 = ptrtoint ptr %ops.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ops.i3.i.i, align 4
  %set_bbreg.i4.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %261, i32 0, i32 46
  %262 = ptrtoint ptr %set_bbreg.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %set_bbreg.i4.i.i, align 4
  tail call void %263(ptr noundef %hw, i32 noundef %253, i32 noundef -1, i32 noundef %255) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %264 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %264(i32 noundef 214748) #6
  %265 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx59.i.i, align 4
  %267 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx61.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %251, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.38, i32 noundef %266, i32 noundef %268) #6
  %add66.i.i = add nuw nsw i32 %i.17.i.i, 2
  %cmp56.i.i = icmp ult i32 %i.17.i.i, 318
  br i1 %cmp56.i.i, label %for.body58.i.i.for.body58.i.i_crit_edge, label %_rtl8723e_phy_bb8192c_config_parafile.exit

for.body58.i.i.for.body58.i.i_crit_edge:          ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58.i.i

_rtl8723e_phy_bb8192c_config_parafile.exit:       ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %269 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %270, i32 0, i32 32
  %271 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %272, i32 0, i32 4
  %273 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %274, i32 0, i32 45
  %275 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %276(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.i = icmp ne i32 %call.i.i, 0
  %conv33.i = zext i1 %tobool32.i to i8
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 14, i32 39
  %277 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv33.i, ptr %cck_high_power.i, align 1
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_init_bb_rf_reg_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_rf_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rtl8723e_phy_rf6052_config(ptr noundef %hw) #6
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723e_phy_rf6052_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cond = icmp eq i32 %rfpath, 0
  br i1 %cond, label %for.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.064 = phi i32 [ 0, %for.cond.preheader ], [ %add42, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @RTL8723E_RADIOA_1TARRAY, i32 %i.064
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %1, label %if.else34 [
    i32 254, label %for.body.while.body_crit_edge
    i32 253, label %while.body12.preheader
    i32 252, label %for.body.for.inc.sink.split_crit_edge
    i32 251, label %if.then23
    i32 250, label %if.then28
    i32 249, label %if.then33
  ]

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body12.preheader:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  br label %for.inc.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %__ms.063 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %for.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.063, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.else34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = or i32 %i.064, 1
  %arrayidx36 = getelementptr i32, ptr @RTL8723E_RADIOA_1TARRAY, i32 %add
  %8 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx36, align 4
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %17(ptr noundef %hw, i32 noundef 0, i32 noundef %1, i32 noundef 1048575, i32 noundef %9) #6
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else34, %if.then33, %if.then28, %if.then23, %while.body12.preheader, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 214748000, %while.body12.preheader ], [ 1073740, %if.then28 ], [ 214748, %if.else34 ], [ 214748, %if.then33 ], [ 10737400, %if.then23 ], [ 214748000, %for.body.for.inc.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef %.sink) #6
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %while.body.for.inc_crit_edge
  %add42 = add nuw nsw i32 %i.064, 2
  %cmp = icmp ult i32 %i.064, 280
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.epilog:                                        ; preds = %for.inc.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_get_hw_reg_originalvalue(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #6
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
  %call.i52 = tail call i32 %16(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #6
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
  %call.i57 = tail call i32 %25(ptr noundef %hw, i32 noundef 3168, i32 noundef 255) #6
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
  %call.i62 = tail call i32 %34(ptr noundef %hw, i32 noundef 3176, i32 noundef 255) #6
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #6
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
  %call.i67 = tail call i32 %49(ptr noundef %hw, i32 noundef 3128, i32 noundef 255) #6
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
  %call.i72 = tail call i32 %58(ptr noundef %hw, i32 noundef 3124, i32 noundef -1) #6
  %framesync_c34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 57
  %59 = ptrtoint ptr %framesync_c34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i72, ptr %framesync_c34, align 4
  %60 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %framesync, align 4
  %conv29 = zext i8 %61 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef 3128, i32 noundef %conv29) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_get_txpower_level(ptr noundef %hw, ptr nocapture noundef writeonly %powerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %cur_cck_txpwridx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 46
  %2 = ptrtoint ptr %cur_cck_txpwridx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_cck_txpwridx, align 4
  %call = tail call i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef %hw, i32 noundef 2, i8 noundef zeroext %3) #6
  %cur_ofdm24g_txpwridx = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 47
  %4 = ptrtoint ptr %cur_ofdm24g_txpwridx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cur_ofdm24g_txpwridx, align 1
  %legacy_ht_txpowerdiff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 61
  %6 = ptrtoint ptr %legacy_ht_txpowerdiff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %legacy_ht_txpowerdiff, align 1
  %add = add i8 %7, %5
  %call4 = tail call i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef %hw, i32 noundef 4, i8 noundef zeroext %add) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %call)
  %cmp = icmp sgt i32 %call4, %call
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef %hw, i32 noundef 4, i8 noundef zeroext %add) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %txpwr_dbm.0 = phi i32 [ %call6, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %cur_ofdm24g_txpwridx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cur_ofdm24g_txpwridx, align 1
  %call8 = tail call i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef %hw, i32 noundef 16, i8 noundef zeroext %9) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %txpwr_dbm.0)
  %cmp9 = icmp sgt i32 %call8, %txpwr_dbm.0
  br i1 %cmp9, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef %hw, i32 noundef 16, i8 noundef zeroext %9) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %txpwr_dbm.1 = phi i32 [ %call12, %if.then11 ], [ %txpwr_dbm.0, %if.end.if.end13_crit_edge ]
  %10 = ptrtoint ptr %powerlevel to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %txpwr_dbm.1, ptr %powerlevel, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8723_phy_txpwr_idx_to_dbm(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %cckpowerlevel = alloca [2 x i8], align 1
  %ofdmpowerlevel = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cckpowerlevel) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdmpowerlevel) #6
  %2 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ofdmpowerlevel, align 1, !annotation !150
  %3 = getelementptr inbounds [2 x i8], ptr %ofdmpowerlevel, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !150
  %txpwr_fromeprom = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 23
  %5 = ptrtoint ptr %txpwr_fromeprom to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %txpwr_fromeprom, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds [2 x i8], ptr %cckpowerlevel, i32 0, i32 1
  %sub.i = add i8 %channel, -1
  %txpwrlevel_cck.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38
  %idxprom.i = zext i8 %sub.i to i32
  %arrayidx3.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3.i, align 1
  %10 = ptrtoint ptr %cckpowerlevel to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cckpowerlevel, align 1
  %arrayidx8.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8.i, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %7, align 1
  %rf_type.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 4
  %14 = ptrtoint ptr %rf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rf_type.i.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %15, label %if.end._rtl8723e_get_txpower_index.exit_crit_edge [
    i8 1, label %if.end.if.then.i_crit_edge
    i8 0, label %if.end.if.then.i_crit_edge15
    i8 2, label %if.then29.i
  ]

if.end.if.then.i_crit_edge15:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end._rtl8723e_get_txpower_index.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_get_txpower_index.exit

if.then.i:                                        ; preds = %if.end.if.then.i_crit_edge, %if.end.if.then.i_crit_edge15
  %txpwrlevel_ht40_1s.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39
  %arrayidx18.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s.i, i32 0, i32 %idxprom.i
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18.i, align 1
  %19 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ofdmpowerlevel, align 1
  %arrayidx23.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i
  br label %if.end39.sink.split.i

if.then29.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %txpwrlevel_ht40_2s.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40
  %arrayidx32.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_2s.i, i32 0, i32 %idxprom.i
  %20 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32.i, align 1
  %22 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %ofdmpowerlevel, align 1
  %arrayidx37.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40, i32 1, i32 %idxprom.i
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.then29.i, %if.then.i
  %arrayidx37.sink.i = phi ptr [ %arrayidx37.i, %if.then29.i ], [ %arrayidx23.i, %if.then.i ]
  %23 = ptrtoint ptr %arrayidx37.sink.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx37.sink.i, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %3, align 1
  br label %_rtl8723e_get_txpower_index.exit

_rtl8723e_get_txpower_index.exit:                 ; preds = %if.end39.sink.split.i, %if.end._rtl8723e_get_txpower_index.exit_crit_edge
  %cur_cck_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 46
  %26 = ptrtoint ptr %cur_cck_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %9, ptr %cur_cck_txpwridx.i, align 4
  %27 = ptrtoint ptr %ofdmpowerlevel to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ofdmpowerlevel, align 1
  %cur_ofdm24g_txpwridx.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 47
  %29 = ptrtoint ptr %cur_ofdm24g_txpwridx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cur_ofdm24g_txpwridx.i, align 1
  call void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr noundef nonnull %cckpowerlevel) #6
  call void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel, i8 noundef zeroext %channel) #6
  br label %cleanup

cleanup:                                          ; preds = %_rtl8723e_get_txpower_index.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdmpowerlevel) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cckpowerlevel) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_update_txpower_dbm(ptr noundef %hw, i32 noundef %power_indbm) local_unnamed_addr #0 align 64 {
entry:
  %cckpowerlevel.i = alloca [2 x i8], align 1
  %ofdmpowerlevel.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %sub.i = add i32 %power_indbm, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  %sub.tr.i = trunc i32 %sub.i to i8
  %conv.i = shl i8 %sub.tr.i, 1
  %2 = tail call i8 @llvm.umin.i8(i8 %conv.i, i8 63) #6
  %3 = select i1 %cmp.i, i8 %2, i8 0
  %sub.i57 = add i32 %power_indbm, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i57)
  %cmp.i58 = icmp sgt i32 %sub.i57, 0
  %sub.tr.i59 = trunc i32 %sub.i57 to i8
  %conv.i60 = shl i8 %sub.tr.i59, 1
  %4 = tail call i8 @llvm.umin.i8(i8 %conv.i60, i8 63) #6
  %5 = zext i8 %4 to i32
  %conv = select i1 %cmp.i58, i32 %5, i32 0
  %legacy_ht_txpowerdiff = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 61
  %6 = ptrtoint ptr %legacy_ht_txpowerdiff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %legacy_ht_txpowerdiff, align 1
  %conv3 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %9 = trunc i32 %8 to i8
  %conv10 = zext i8 %3 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 16384, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %power_indbm, i32 noundef %conv10, i32 noundef %8) #6
  %uglygep = getelementptr i8, ptr %1, i32 45824
  %arrayidx25 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39, i32 0, i32 0
  %10 = zext i8 %3 to i32
  %11 = call ptr @memset(ptr %uglygep, i32 %10, i32 28)
  %arrayidx29 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40, i32 0, i32 0
  %arrayidx25.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 39, i32 1, i32 0
  %arrayidx29.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 40, i32 1, i32 0
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %12 = zext i8 %9 to i32
  %13 = call ptr @memset(ptr %arrayidx25, i32 %12, i32 14)
  %14 = zext i8 %9 to i32
  %15 = call ptr @memset(ptr %arrayidx25.1, i32 %14, i32 14)
  %16 = zext i8 %9 to i32
  %17 = call ptr @memset(ptr %arrayidx29, i32 %16, i32 14)
  %18 = zext i8 %9 to i32
  %19 = call ptr @memset(ptr %arrayidx29.1, i32 %18, i32 14)
  %20 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %current_channel, align 1
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cckpowerlevel.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdmpowerlevel.i) #6
  %24 = ptrtoint ptr %ofdmpowerlevel.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %ofdmpowerlevel.i, align 1, !annotation !150
  %25 = getelementptr inbounds [2 x i8], ptr %ofdmpowerlevel.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !150
  %txpwr_fromeprom.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 23
  %27 = ptrtoint ptr %txpwr_fromeprom.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %txpwr_fromeprom.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %entry.rtl8723e_phy_set_txpower_level.exit_crit_edge, label %if.end.i

entry.rtl8723e_phy_set_txpower_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_phy_set_txpower_level.exit

if.end.i:                                         ; preds = %entry
  %29 = getelementptr inbounds [2 x i8], ptr %cckpowerlevel.i, i32 0, i32 1
  %sub.i.i = add i8 %21, -1
  %txpwrlevel_cck.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 38
  %idxprom.i.i = zext i8 %sub.i.i to i32
  %arrayidx3.i.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i.i, i32 0, i32 %idxprom.i.i
  %30 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx3.i.i, align 1
  %32 = ptrtoint ptr %cckpowerlevel.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %cckpowerlevel.i, align 1
  %arrayidx8.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.i.i, align 1
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %29, align 1
  %rf_type.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 14, i32 4
  %36 = ptrtoint ptr %rf_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rf_type.i.i.i, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %37, label %if.end.i._rtl8723e_get_txpower_index.exit.i_crit_edge [
    i8 1, label %if.end.i.if.then.i.i_crit_edge
    i8 0, label %if.end.i.if.then.i.i_crit_edge72
    i8 2, label %if.then29.i.i
  ]

if.end.i.if.then.i.i_crit_edge72:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.end.i._rtl8723e_get_txpower_index.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_get_txpower_index.exit.i

if.then.i.i:                                      ; preds = %if.end.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge72
  %txpwrlevel_ht40_1s.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 39
  %arrayidx18.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s.i.i, i32 0, i32 %idxprom.i.i
  %39 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18.i.i, align 1
  %41 = ptrtoint ptr %ofdmpowerlevel.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ofdmpowerlevel.i, align 1
  %arrayidx23.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i.i
  br label %if.end39.sink.split.i.i

if.then29.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %txpwrlevel_ht40_2s.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 40
  %arrayidx32.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_2s.i.i, i32 0, i32 %idxprom.i.i
  %42 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx32.i.i, align 1
  %44 = ptrtoint ptr %ofdmpowerlevel.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %ofdmpowerlevel.i, align 1
  %arrayidx37.i.i = getelementptr %struct.rtl_priv, ptr %23, i32 0, i32 17, i32 40, i32 1, i32 %idxprom.i.i
  br label %if.end39.sink.split.i.i

if.end39.sink.split.i.i:                          ; preds = %if.then29.i.i, %if.then.i.i
  %arrayidx37.sink.i.i = phi ptr [ %arrayidx37.i.i, %if.then29.i.i ], [ %arrayidx23.i.i, %if.then.i.i ]
  %45 = ptrtoint ptr %arrayidx37.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx37.sink.i.i, align 1
  %47 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %25, align 1
  br label %_rtl8723e_get_txpower_index.exit.i

_rtl8723e_get_txpower_index.exit.i:               ; preds = %if.end39.sink.split.i.i, %if.end.i._rtl8723e_get_txpower_index.exit.i_crit_edge
  %cur_cck_txpwridx.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 14, i32 46
  %48 = ptrtoint ptr %cur_cck_txpwridx.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %31, ptr %cur_cck_txpwridx.i.i, align 4
  %49 = ptrtoint ptr %ofdmpowerlevel.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ofdmpowerlevel.i, align 1
  %cur_ofdm24g_txpwridx.i.i = getelementptr inbounds %struct.rtl_priv, ptr %23, i32 0, i32 14, i32 47
  %51 = ptrtoint ptr %cur_ofdm24g_txpwridx.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %cur_ofdm24g_txpwridx.i.i, align 1
  call void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr noundef nonnull %cckpowerlevel.i) #6
  call void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel.i, i8 noundef zeroext %21) #6
  br label %rtl8723e_phy_set_txpower_level.exit

rtl8723e_phy_set_txpower_level.exit:              ; preds = %_rtl8723e_get_txpower_index.exit.i, %entry.rtl8723e_phy_set_txpower_level.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdmpowerlevel.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cckpowerlevel.i) #6
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_scan_operation_backup(ptr noundef %hw, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
entry:
  %iotype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iotype) #6
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %operation, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
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
  call void %11(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #6
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
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
  call void %18(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iotype) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond) #6
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 1539) #6
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i85 = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 1090) #6
  %11 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_chan_bw, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
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
  tail call void %16(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %14) #6
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i87 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1539) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %23 = and i8 %call.i, -5
  %write8_async.i88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %write8_async.i88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i88, align 4
  tail call void %25(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %23) #6
  %cfg.i89 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i89, align 8
  %write_readback.i90 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i90 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i90, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i91 = icmp eq i8 %29, 0
  br i1 %tobool.not.i91, label %sw.bb11.rtl_write_byte.exit95_crit_edge, label %if.then.i94

sw.bb11.rtl_write_byte.exit95_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit95

if.then.i94:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i93 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 1539) #6
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
  tail call void %36(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %or17) #6
  %37 = ptrtoint ptr %cfg.i89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i89, align 8
  %write_readback.i98 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i98 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i98, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i99 = icmp eq i8 %40, 0
  br i1 %tobool.not.i99, label %rtl_write_byte.exit95.sw.epilog_crit_edge, label %if.then.i102

rtl_write_byte.exit95.sw.epilog_crit_edge:        ; preds = %rtl_write_byte.exit95
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i102:                                     ; preds = %rtl_write_byte.exit95
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i, align 4
  %call.i101 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 1090) #6
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i102, %rtl_write_byte.exit95.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
  %43 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %current_chan_bw, align 2
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %44, label %do.end38 [
    i8 0, label %sw.bb24
    i8 1, label %sw.bb25
  ]

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %53(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #6
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
  tail call void %61(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #6
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
  tail call void %69(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 1) #6
  br label %sw.epilog43

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void %77(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #6
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
  tail call void %85(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #6
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
  tail call void %97(ptr noundef %hw, i32 noundef 2560, i32 noundef 16, i32 noundef %89) #6
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
  tail call void %107(ptr noundef %hw, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv29) #6
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
  tail call void %115(ptr noundef %hw, i32 noundef 2180, i32 noundef 1024, i32 noundef 0) #6
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
  tail call void %125(ptr noundef %hw, i32 noundef 2072, i32 noundef 201326592, i32 noundef %cond34) #6
  br label %sw.epilog43

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv23 = zext i8 %44 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv23) #9
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %126 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl8723e_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %127) #6
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %128 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.16) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_set_bw_mode(ptr noundef %hw, i32 noundef %ch_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl8723e_phy_set_bw_mode_callback(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.17) #6
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
define dso_local void @rtl8723e_phy_sw_chnl_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %cckpowerlevel.i.i = alloca [2 x i8], align 1
  %ofdmpowerlevel.i.i = alloca [2 x i8], align 1
  %precommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %postcommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %rfdependcmd.i = alloca [16 x %struct.swchnlcmd], align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.18, i32 noundef %conv) #6
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %sw_chnl_inprogress = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 7
  %sw_chnl_stage = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 8
  %sw_chnl_step = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 9
  %6 = getelementptr inbounds [2 x i8], ptr %ofdmpowerlevel.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [2 x i8], ptr %cckpowerlevel.i.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then7.do.body_crit_edge, %do.body.preheader
  %8 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sw_chnl_inprogress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end4

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end4:                                          ; preds = %do.body
  %10 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_channel, align 1
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %precommoncmd.i) #6
  %14 = call ptr @memset(ptr %precommoncmd.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %postcommoncmd.i) #6
  %15 = call ptr @memset(ptr %postcommoncmd.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rfdependcmd.i) #6
  %16 = call ptr @memset(ptr %rfdependcmd.i, i32 255, i32 256)
  %num_total_rfpath1.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 14, i32 58
  %17 = ptrtoint ptr %num_total_rfpath1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_total_rfpath1.i, align 4
  %call.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %precommoncmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %call4.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %precommoncmd.i, i32 noundef 1, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %call7.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %postcommoncmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %conv.i = zext i8 %11 to i32
  %19 = add i8 %11, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %19)
  %20 = icmp ult i8 %19, -14
  br i1 %20, label %land.rhs.i, label %if.end4.if.end40.i_crit_edge

if.end4.if.end40.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end4
  %.b164.i = load i1, ptr @_rtl8723e_phy_sw_chnl_step_by_step.__already_done, align 1
  br i1 %.b164.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !148

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @_rtl8723e_phy_sw_chnl_step_by_step.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 927, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef %conv.i) #6
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end40.i_crit_edge, %if.end4.if.end40.i_crit_edge
  %call51.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %rfdependcmd.i, i32 noundef 0, i32 noundef 16, i32 noundef 6, i32 noundef 24, i32 noundef %conv.i, i32 noundef 10) #6
  %call54.i = call zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef nonnull %rfdependcmd.i, i32 noundef 1, i32 noundef 16, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %21 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %sw_chnl_stage, align 1
  br label %do.body55.i

do.body55.i:                                      ; preds = %if.else.i, %if.end40.i
  %22 = phi i8 [ %inc76.i, %if.else.i ], [ %.pr, %if.end40.i ]
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %22, label %do.end65.i [
    i8 0, label %do.body55.i.sw.epilog.i_crit_edge
    i8 1, label %sw.bb57.i
    i8 2, label %sw.bb60.i
  ]

do.body55.i.sw.epilog.i_crit_edge:                ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end65.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv56.i = zext i8 %22 to i32
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv56.i) #9
  br label %if.else26

sw.epilog.i:                                      ; preds = %sw.bb60.i, %sw.bb57.i, %do.body55.i.sw.epilog.i_crit_edge
  %postcommoncmd.sink.i = phi ptr [ %postcommoncmd.i, %sw.bb60.i ], [ %rfdependcmd.i, %sw.bb57.i ], [ %precommoncmd.i, %do.body55.i.sw.epilog.i_crit_edge ]
  %24 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sw_chnl_step, align 1
  %idxprom61.i = zext i8 %25 to i32
  %arrayidx62.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i
  %26 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx62.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %27, label %sw.default106.i [
    i32 0, label %if.then71.i
    i32 1, label %sw.bb79.i
    i32 3, label %sw.bb80.i
    i32 4, label %sw.bb81.i
    i32 5, label %sw.bb85.i
    i32 6, label %for.cond.preheader.i
  ]

for.cond.preheader.i:                             ; preds = %sw.epilog.i
  %idxprom61.i.le = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp92204.not.i = icmp eq i8 %18, 0
  br i1 %cmp92204.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %para296.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 2
  %para1101.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le, i32 1
  %wide.trip.count.i = zext i8 %18 to i32
  br label %for.body.i

if.then71.i:                                      ; preds = %sw.epilog.i
  %cmp73.i = icmp eq i8 %22, 2
  br i1 %cmp73.i, label %if.then71.i.if.else26_crit_edge, label %if.else.i

if.then71.i.if.else26_crit_edge:                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else26

if.else.i:                                        ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc76.i = add nuw nsw i8 %22, 1
  %29 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %inc76.i, ptr %sw_chnl_stage, align 1
  %30 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %sw_chnl_step, align 1
  br label %do.body55.i

sw.bb79.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le159 = zext i8 %25 to i32
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cckpowerlevel.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdmpowerlevel.i.i) #6
  %33 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %ofdmpowerlevel.i.i, align 1, !annotation !150
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %6, align 1, !annotation !150
  %txpwr_fromeprom.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 23
  %35 = ptrtoint ptr %txpwr_fromeprom.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %txpwr_fromeprom.i.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i, label %sw.bb79.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge, label %if.end.i.i

sw.bb79.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge: ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_phy_set_txpower_level.exit.i

if.end.i.i:                                       ; preds = %sw.bb79.i
  %sub.i.i.i = add i8 %11, -1
  %txpwrlevel_cck.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 38
  %idxprom.i.i.i = zext i8 %sub.i.i.i to i32
  %arrayidx3.i.i.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i.i.i, i32 0, i32 %idxprom.i.i.i
  %37 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx3.i.i.i, align 1
  %39 = ptrtoint ptr %cckpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %cckpowerlevel.i.i, align 1
  %arrayidx8.i.i.i = getelementptr %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i.i.i
  %40 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx8.i.i.i, align 1
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %7, align 1
  %rf_type.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 14, i32 4
  %43 = ptrtoint ptr %rf_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rf_type.i.i.i.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %44, label %if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge [
    i8 1, label %if.end.i.i.if.then.i.i.i_crit_edge
    i8 0, label %if.end.i.i.if.then.i.i.i_crit_edge252
    i8 2, label %if.then29.i.i.i
  ]

if.end.i.i.if.then.i.i.i_crit_edge252:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_get_txpower_index.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge252
  %txpwrlevel_ht40_1s.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 39
  %arrayidx18.i.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s.i.i.i, i32 0, i32 %idxprom.i.i.i
  %46 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx18.i.i.i, align 1
  %48 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %ofdmpowerlevel.i.i, align 1
  %arrayidx23.i.i.i = getelementptr %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i.i.i
  br label %if.end39.sink.split.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %txpwrlevel_ht40_2s.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 40
  %arrayidx32.i.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_2s.i.i.i, i32 0, i32 %idxprom.i.i.i
  %49 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx32.i.i.i, align 1
  %51 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %ofdmpowerlevel.i.i, align 1
  %arrayidx37.i.i.i = getelementptr %struct.rtl_priv, ptr %32, i32 0, i32 17, i32 40, i32 1, i32 %idxprom.i.i.i
  br label %if.end39.sink.split.i.i.i

if.end39.sink.split.i.i.i:                        ; preds = %if.then29.i.i.i, %if.then.i.i.i
  %arrayidx37.sink.i.i.i = phi ptr [ %arrayidx37.i.i.i, %if.then29.i.i.i ], [ %arrayidx23.i.i.i, %if.then.i.i.i ]
  %52 = ptrtoint ptr %arrayidx37.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx37.sink.i.i.i, align 1
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %6, align 1
  br label %_rtl8723e_get_txpower_index.exit.i.i

_rtl8723e_get_txpower_index.exit.i.i:             ; preds = %if.end39.sink.split.i.i.i, %if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge
  %cur_cck_txpwridx.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 14, i32 46
  %55 = ptrtoint ptr %cur_cck_txpwridx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %38, ptr %cur_cck_txpwridx.i.i.i, align 4
  %56 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ofdmpowerlevel.i.i, align 1
  %cur_ofdm24g_txpwridx.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %32, i32 0, i32 14, i32 47
  %58 = ptrtoint ptr %cur_ofdm24g_txpwridx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %cur_ofdm24g_txpwridx.i.i.i, align 1
  call void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr noundef nonnull %cckpowerlevel.i.i) #6
  call void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel.i.i, i8 noundef zeroext %11) #6
  br label %rtl8723e_phy_set_txpower_level.exit.i

rtl8723e_phy_set_txpower_level.exit.i:            ; preds = %_rtl8723e_get_txpower_index.exit.i.i, %sw.bb79.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdmpowerlevel.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cckpowerlevel.i.i) #6
  br label %if.then7

sw.bb80.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le157 = zext i8 %25 to i32
  %para1.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 1
  %59 = ptrtoint ptr %para1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %para1.i, align 4
  %para2.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le157, i32 2
  %61 = ptrtoint ptr %para2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %para2.i, align 4
  %write32_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 7
  %63 = ptrtoint ptr %write32_async.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write32_async.i.i, align 4
  call void %64(ptr noundef %13, i32 noundef %60, i32 noundef %62) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %write_readback.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i165.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i165.i, label %sw.bb80.i.if.then7_crit_edge, label %if.then.i.i

sw.bb80.i.if.then7_crit_edge:                     ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then.i.i:                                      ; preds = %sw.bb80.i
  call void @__sanitizer_cov_trace_pc() #8
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 11
  %69 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = call i32 %70(ptr noundef %13, i32 noundef %60) #6
  br label %if.then7

sw.bb81.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le155 = zext i8 %25 to i32
  %para182.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 1
  %71 = ptrtoint ptr %para182.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %para182.i, align 4
  %para283.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le155, i32 2
  %73 = ptrtoint ptr %para283.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %para283.i, align 4
  %conv84.i = trunc i32 %74 to i16
  %write16_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 6
  %75 = ptrtoint ptr %write16_async.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write16_async.i.i, align 4
  call void %76(ptr noundef %13, i32 noundef %72, i16 noundef zeroext %conv84.i) #6
  %cfg.i167.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i167.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i167.i, align 8
  %write_readback.i168.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %write_readback.i168.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %write_readback.i168.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i169.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i169.i, label %sw.bb81.i.if.then7_crit_edge, label %if.then.i171.i

sw.bb81.i.if.then7_crit_edge:                     ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then.i171.i:                                   ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #8
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 10
  %81 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i170.i = call zeroext i16 %82(ptr noundef %13, i32 noundef %72) #6
  br label %if.then7

sw.bb85.i:                                        ; preds = %sw.epilog.i
  %idxprom61.i.le153 = zext i8 %25 to i32
  %para186.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 1
  %83 = ptrtoint ptr %para186.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %para186.i, align 4
  %para287.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i.le153, i32 2
  %85 = ptrtoint ptr %para287.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %para287.i, align 4
  %conv88.i = trunc i32 %86 to i8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 5
  %87 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write8_async.i.i, align 4
  call void %88(ptr noundef %13, i32 noundef %84, i8 noundef zeroext %conv88.i) #6
  %cfg.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %89 = ptrtoint ptr %cfg.i173.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i173.i, align 8
  %write_readback.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %write_readback.i174.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %write_readback.i174.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i175.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i175.i, label %sw.bb85.i.if.then7_crit_edge, label %if.then.i177.i

sw.bb85.i.if.then7_crit_edge:                     ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then.i177.i:                                   ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 13, i32 9
  %93 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i176.i = call zeroext i8 %94(ptr noundef %13, i32 noundef %84) #6
  br label %if.then7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx95.i = getelementptr %struct.rtl_priv, ptr %13, i32 0, i32 14, i32 52, i32 %indvars.iv.i
  %95 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx95.i, align 4
  %and.i = and i32 %96, -1024
  %97 = ptrtoint ptr %para296.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %para296.i, align 4
  %or.i = or i32 %and.i, %98
  store i32 %or.i, ptr %arrayidx95.i, align 4
  %99 = ptrtoint ptr %para1101.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %para1101.i, align 4
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %cfg.i180.i = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 0, i32 32
  %103 = ptrtoint ptr %cfg.i180.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i180.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %106, i32 0, i32 48
  %107 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_rfreg.i.i, align 4
  call void %108(ptr noundef %hw, i32 noundef %indvars.iv.i, i32 noundef %100, i32 noundef 1048575, i32 noundef %or.i) #6
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 8
  %version.i.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 10, i32 13
  %111 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %version.i.i, align 4
  %113 = and i32 %112, 61568
  call void @__sanitizer_cov_trace_const_cmp4(i32 4224, i32 %113)
  %114 = icmp eq i32 %113, 4224
  br i1 %114, label %if.then.i182.i, label %for.end.i.if.then7_crit_edge

for.end.i.if.then7_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then.i182.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp9.i.i = icmp eq i8 %11, 6
  br i1 %cmp9.i.i, label %land.lhs.true.i.i, label %if.then.i182.i.if.else.i.i_crit_edge

if.then.i182.i.if.else.i.i_crit_edge:             ; preds = %if.then.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i182.i
  %current_chan_bw.i.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 14, i32 5
  %115 = ptrtoint ptr %current_chan_bw.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %current_chan_bw.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp12.i.i = icmp eq i8 %116, 0
  br i1 %cmp12.i.i, label %land.lhs.true.i.i.if.end15.sink.split.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i.i

land.lhs.true.i.i.if.end15.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then.i182.i.if.else.i.i_crit_edge
  %cfg.i22.i.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 32
  %117 = ptrtoint ptr %cfg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cfg.i22.i.i, align 8
  %ops.i23.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %ops.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i23.i.i, align 4
  %get_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %120, i32 0, i32 47
  %121 = ptrtoint ptr %get_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %get_rfreg.i.i.i, align 4
  %call.i.i.i = call i32 %122(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef 1048575) #6
  %123 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv, align 8
  br label %if.end15.sink.split.i.i

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i, %land.lhs.true.i.i.if.end15.sink.split.i.i_crit_edge
  %.sink31.i.i = phi ptr [ %124, %if.else.i.i ], [ %110, %land.lhs.true.i.i.if.end15.sink.split.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ %call.i.i.i, %if.else.i.i ], [ 597, %land.lhs.true.i.i.if.end15.sink.split.i.i_crit_edge ]
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %.sink31.i.i, i32 0, i32 32
  %125 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %128, i32 0, i32 48
  %129 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %set_rfreg.i.i.i, align 4
  call void %130(ptr noundef %hw, i32 noundef 0, i32 noundef 26, i32 noundef -1, i32 noundef %.sink.i.i) #6
  br label %if.then7

sw.default106.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom61.i.le161 = zext i8 %25 to i32
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %13, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %27) #6
  br label %if.then7

if.then7:                                         ; preds = %sw.default106.i, %if.end15.sink.split.i.i, %for.end.i.if.then7_crit_edge, %if.then.i177.i, %sw.bb85.i.if.then7_crit_edge, %if.then.i171.i, %sw.bb81.i.if.then7_crit_edge, %if.then.i.i, %sw.bb80.i.if.then7_crit_edge, %rtl8723e_phy_set_txpower_level.exit.i
  %idxprom61.i143 = phi i32 [ %idxprom61.i.le161, %sw.default106.i ], [ %idxprom61.i.le, %if.end15.sink.split.i.i ], [ %idxprom61.i.le, %for.end.i.if.then7_crit_edge ], [ %idxprom61.i.le153, %if.then.i177.i ], [ %idxprom61.i.le153, %sw.bb85.i.if.then7_crit_edge ], [ %idxprom61.i.le155, %if.then.i171.i ], [ %idxprom61.i.le155, %sw.bb81.i.if.then7_crit_edge ], [ %idxprom61.i.le157, %if.then.i.i ], [ %idxprom61.i.le157, %sw.bb80.i.if.then7_crit_edge ], [ %idxprom61.i.le159, %rtl8723e_phy_set_txpower_level.exit.i ]
  %msdelay.i = getelementptr [16 x %struct.swchnlcmd], ptr %postcommoncmd.sink.i, i32 0, i32 %idxprom61.i143, i32 3
  %131 = ptrtoint ptr %msdelay.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msdelay.i, align 4
  %133 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %sw_chnl_step, align 1
  %inc111.i = add i8 %134, 1
  store i8 %inc111.i, ptr %sw_chnl_step, align 1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #6
  %cmp.not = icmp eq i32 %132, 0
  br i1 %cmp.not, label %if.then7.do.body_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %__ms.091 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %132, %if.then7.while.body_crit_edge ]
  %dec = add i32 %__ms.091, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %135(i32 noundef 214748000) #6
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %while.body.do.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.else26:                                        ; preds = %if.then71.i.if.else26_crit_edge, %do.end65.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #6
  %136 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %do.end

do.end:                                           ; preds = %if.else26, %while.body.do.end_crit_edge, %do.body.do.end_crit_edge
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.16) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl8723e_phy_sw_chnl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b65 = load i1, ptr @rtl8723e_phy_sw_chnl.__already_done, align 1
  br i1 %.b65, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !148

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rtl8723e_phy_sw_chnl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 858, i32 noundef 9, ptr noundef nonnull @.str.19) #6
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
  br i1 %cmp.i, label %if.end37.if.end49_crit_edge, label %if.then46

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then46:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rtl8723e_phy_sw_chnl_callback(ptr noundef %hw)
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end37.if.end49_crit_edge
  %.str.21.sink = phi ptr [ @.str.20, %if.then46 ], [ @.str.21, %if.end37.if.end49_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull %.str.21.sink) #6
  %13 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 1, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext %b_recovery) local_unnamed_addr #0 align 64 {
entry:
  %adda_reg.i = alloca [16 x i32], align 4
  %iqk_mac_reg.i = alloca [4 x i32], align 4
  %result = alloca [4 x [8 x i32]], align 4
  %iqk_bb_reg = alloca [10 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #6
  %2 = call ptr @memset(ptr %result, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %iqk_bb_reg) #6
  %3 = call ptr @memcpy(ptr %iqk_bb_reg, ptr @__const.rtl8723e_phy_iq_calibrate.iqk_bb_reg, i32 40)
  br i1 %b_recovery, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %uglygep195 = getelementptr inbounds i8, ptr %result, i32 96
  %4 = call ptr @memset(ptr %result, i32 0, i32 128)
  br label %for.body17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iqk_bb_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  call void @rtl8723_phy_reload_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg, ptr noundef %iqk_bb_backup, i32 noundef 10) #6
  br label %cleanup

for.body17:                                       ; preds = %for.inc62.for.body17_crit_edge, %for.body.preheader
  %i.1189 = phi i8 [ %inc63, %for.inc62.for.body17_crit_edge ], [ 0, %for.body.preheader ]
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %adda_reg.i) #6
  %7 = call ptr @memcpy(ptr %adda_reg.i, ptr @__const._rtl8723e_phy_iq_calibrate.adda_reg, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #6
  %8 = call ptr @memcpy(ptr %iqk_mac_reg.i, ptr @__const._rtl8723e_phy_iq_calibrate.iqk_mac_reg, i32 16)
  %conv.i = zext i8 %i.1189 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %i.1189)
  %cmp.i = icmp eq i8 %i.1189, 0
  br i1 %cmp.i, label %if.then.i, label %if.end14.critedge.i

if.then.i:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %12, i32 0, i32 45
  %13 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = call i32 %14(ptr noundef %hw, i32 noundef 2048, i32 noundef -1) #6
  %adda_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 28
  call void @rtl8723_save_adda_registers(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, ptr noundef %adda_backup.i, i32 noundef 16) #6
  %iqk_mac_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 29
  call void @rtl8723_phy_save_mac_registers(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup.i) #6
  call void @rtl8723_phy_path_adda_on(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, i1 noundef zeroext true, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i2.i, align 8
  %ops.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i3.i, align 4
  %get_bbreg.i4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 45
  %21 = ptrtoint ptr %get_bbreg.i4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_bbreg.i4.i, align 4
  %call.i5.i = call i32 %22(ptr noundef %hw, i32 noundef 2080, i32 noundef 256) #6
  %conv11.i = trunc i32 %call.i5.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv11.i)
  %tobool12.i = icmp ne i8 %conv11.i, 0
  %rfpi_enable.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 36
  %frombool13.i = zext i1 %tobool12.i to i8
  %23 = ptrtoint ptr %rfpi_enable.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool13.i, ptr %rfpi_enable.i, align 4
  br label %if.end14.i

if.end14.critedge.i:                              ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723_phy_path_adda_on(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.critedge.i, %if.then.i
  %rfpi_enable15.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 36
  %24 = ptrtoint ptr %rfpi_enable15.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rfpi_enable15.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not.i = icmp eq i8 %25, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723_phy_pi_mode_switch(ptr noundef %hw, i1 noundef zeroext true) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  br i1 %cmp.i, label %if.then22.i, label %if.end18.i.if.end26.i_crit_edge

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cfg.i7.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i7.i, align 8
  %ops.i8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i8.i, align 4
  %get_bbreg.i9.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 45
  %32 = ptrtoint ptr %get_bbreg.i9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_bbreg.i9.i, align 4
  %call.i10.i = call i32 %33(ptr noundef %hw, i32 noundef 3076, i32 noundef -1) #6
  %reg_c04.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 25
  %34 = ptrtoint ptr %reg_c04.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i10.i, ptr %reg_c04.i, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %cfg.i12.i = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i12.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i12.i, align 8
  %ops.i13.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i13.i, align 4
  %get_bbreg.i14.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 45
  %41 = ptrtoint ptr %get_bbreg.i14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_bbreg.i14.i, align 4
  %call.i15.i = call i32 %42(ptr noundef %hw, i32 noundef 3080, i32 noundef -1) #6
  %reg_c08.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 26
  %43 = ptrtoint ptr %reg_c08.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i15.i, ptr %reg_c08.i, align 4
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %45, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i18.i, align 4
  %get_bbreg.i19.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %49, i32 0, i32 45
  %50 = ptrtoint ptr %get_bbreg.i19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_bbreg.i19.i, align 4
  %call.i20.i = call i32 %51(ptr noundef %hw, i32 noundef 2164, i32 noundef -1) #6
  %reg_874.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 27
  %52 = ptrtoint ptr %reg_874.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call.i20.i, ptr %reg_874.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end26.i_crit_edge
  %53 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv, align 8
  %cfg.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %cfg.i22.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i22.i, align 8
  %ops.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i23.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %58, i32 0, i32 46
  %59 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_bbreg.i.i, align 4
  call void %60(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #6
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  %cfg.i25.i = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %cfg.i25.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cfg.i25.i, align 8
  %ops.i26.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %ops.i26.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i26.i, align 4
  %set_bbreg.i27.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %66, i32 0, i32 46
  %67 = ptrtoint ptr %set_bbreg.i27.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_bbreg.i27.i, align 4
  call void %68(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #6
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv, align 8
  %cfg.i29.i = getelementptr inbounds %struct.rtl_priv, ptr %70, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i29.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i29.i, align 8
  %ops.i30.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i30.i, align 4
  %set_bbreg.i31.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %74, i32 0, i32 46
  %75 = ptrtoint ptr %set_bbreg.i31.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_bbreg.i31.i, align 4
  call void %76(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef 572538880) #6
  %iqk_mac_backup31.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 29
  call void @rtl8723_phy_mac_setting_calibration(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup31.i) #6
  %77 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv, align 8
  %cfg.i33.i = getelementptr inbounds %struct.rtl_priv, ptr %78, i32 0, i32 32
  %79 = ptrtoint ptr %cfg.i33.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cfg.i33.i, align 8
  %ops.i34.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %ops.i34.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i34.i, align 4
  %set_bbreg.i35.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %82, i32 0, i32 46
  %83 = ptrtoint ptr %set_bbreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %set_bbreg.i35.i, align 4
  call void %84(ptr noundef %hw, i32 noundef 2920, i32 noundef -1, i32 noundef 524288) #6
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %cfg.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %87 = ptrtoint ptr %cfg.i37.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i37.i, align 8
  %ops.i38.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i38.i, align 4
  %set_bbreg.i39.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %90, i32 0, i32 46
  %91 = ptrtoint ptr %set_bbreg.i39.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_bbreg.i39.i, align 4
  call void %92(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #6
  %93 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv, align 8
  %cfg.i41.i = getelementptr inbounds %struct.rtl_priv, ptr %94, i32 0, i32 32
  %95 = ptrtoint ptr %cfg.i41.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i41.i, align 8
  %ops.i42.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %ops.i42.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i42.i, align 4
  %set_bbreg.i43.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %98, i32 0, i32 46
  %99 = ptrtoint ptr %set_bbreg.i43.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_bbreg.i43.i, align 4
  call void %100(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #6
  %101 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv, align 8
  %cfg.i45.i = getelementptr inbounds %struct.rtl_priv, ptr %102, i32 0, i32 32
  %103 = ptrtoint ptr %cfg.i45.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cfg.i45.i, align 8
  %ops.i46.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %ops.i46.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i46.i, align 4
  %set_bbreg.i47.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %106, i32 0, i32 46
  %107 = ptrtoint ptr %set_bbreg.i47.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_bbreg.i47.i, align 4
  call void %108(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #6
  %arrayidx74.i = getelementptr [8 x i32], ptr %result, i32 %conv.i
  %arrayidx83.i = getelementptr [8 x i32], ptr %result, i32 %conv.i, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end77.i.for.body.i_crit_edge, %if.end26.i
  %cmp64.i = phi i1 [ false, %if.end26.i ], [ true, %if.end77.i.for.body.i_crit_edge ]
  %cmp36.i = phi i1 [ true, %if.end26.i ], [ false, %if.end77.i.for.body.i_crit_edge ]
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %110, i32 0, i32 32
  %111 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i.i.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %114, i32 0, i32 46
  %115 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %set_bbreg.i.i.i, align 4
  call void %116(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 268471327) #6
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv, align 8
  %cfg.i5.i.i = getelementptr inbounds %struct.rtl_priv, ptr %118, i32 0, i32 32
  %119 = ptrtoint ptr %cfg.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i5.i.i, align 8
  %ops.i6.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %ops.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i6.i.i, align 4
  %set_bbreg.i7.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %122, i32 0, i32 46
  %123 = ptrtoint ptr %set_bbreg.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %set_bbreg.i7.i.i, align 4
  call void %124(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 268471327) #6
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %priv, align 8
  %cfg.i9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %126, i32 0, i32 32
  %127 = ptrtoint ptr %cfg.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cfg.i9.i.i, align 8
  %ops.i10.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %ops.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i10.i.i, align 4
  %set_bbreg.i11.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %130, i32 0, i32 46
  %131 = ptrtoint ptr %set_bbreg.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %set_bbreg.i11.i.i, align 4
  call void %132(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112618238) #6
  %133 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %priv, align 8
  %cfg.i13.i.i = getelementptr inbounds %struct.rtl_priv, ptr %134, i32 0, i32 32
  %135 = ptrtoint ptr %cfg.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cfg.i13.i.i, align 8
  %ops.i14.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %ops.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ops.i14.i.i, align 4
  %set_bbreg.i15.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %138, i32 0, i32 46
  %139 = ptrtoint ptr %set_bbreg.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %set_bbreg.i15.i.i, align 4
  call void %140(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672531714) #6
  %141 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv, align 8
  %cfg.i17.i.i = getelementptr inbounds %struct.rtl_priv, ptr %142, i32 0, i32 32
  %143 = ptrtoint ptr %cfg.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i17.i.i, align 8
  %ops.i18.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %ops.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i18.i.i, align 4
  %set_bbreg.i19.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %146, i32 0, i32 46
  %147 = ptrtoint ptr %set_bbreg.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_bbreg.i19.i.i, align 4
  call void %148(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 1059025) #6
  %149 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %priv, align 8
  %cfg.i21.i.i = getelementptr inbounds %struct.rtl_priv, ptr %150, i32 0, i32 32
  %151 = ptrtoint ptr %cfg.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cfg.i21.i.i, align 8
  %ops.i22.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %ops.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ops.i22.i.i, align 4
  %set_bbreg.i23.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %154, i32 0, i32 46
  %155 = ptrtoint ptr %set_bbreg.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_bbreg.i23.i.i, align 4
  call void %156(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #6
  %157 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %priv, align 8
  %cfg.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %158, i32 0, i32 32
  %159 = ptrtoint ptr %cfg.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cfg.i25.i.i, align 8
  %ops.i26.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %ops.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ops.i26.i.i, align 4
  %set_bbreg.i27.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %162, i32 0, i32 46
  %163 = ptrtoint ptr %set_bbreg.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %set_bbreg.i27.i.i, align 4
  call void %164(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %165(i32 noundef 214748000) #6
  %166 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %priv, align 8
  %cfg.i29.i.i = getelementptr inbounds %struct.rtl_priv, ptr %167, i32 0, i32 32
  %168 = ptrtoint ptr %cfg.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cfg.i29.i.i, align 8
  %ops.i30.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %169, i32 0, i32 4
  %170 = ptrtoint ptr %ops.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ops.i30.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %171, i32 0, i32 45
  %172 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = call i32 %173(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #6
  %174 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %priv, align 8
  %cfg.i32.i.i = getelementptr inbounds %struct.rtl_priv, ptr %175, i32 0, i32 32
  %176 = ptrtoint ptr %cfg.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cfg.i32.i.i, align 8
  %ops.i33.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %ops.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %ops.i33.i.i, align 4
  %get_bbreg.i34.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %179, i32 0, i32 45
  %180 = ptrtoint ptr %get_bbreg.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %get_bbreg.i34.i.i, align 4
  %call.i35.i.i = call i32 %181(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #6
  %182 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %priv, align 8
  %cfg.i37.i.i = getelementptr inbounds %struct.rtl_priv, ptr %183, i32 0, i32 32
  %184 = ptrtoint ptr %cfg.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cfg.i37.i.i, align 8
  %ops.i38.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %ops.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops.i38.i.i, align 4
  %get_bbreg.i39.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %187, i32 0, i32 45
  %188 = ptrtoint ptr %get_bbreg.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %get_bbreg.i39.i.i, align 4
  %call.i40.i.i = call i32 %189(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #6
  %190 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %priv, align 8
  %cfg.i42.i.i = getelementptr inbounds %struct.rtl_priv, ptr %191, i32 0, i32 32
  %192 = ptrtoint ptr %cfg.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cfg.i42.i.i, align 8
  %ops.i43.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %193, i32 0, i32 4
  %194 = ptrtoint ptr %ops.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ops.i43.i.i, align 4
  %get_bbreg.i44.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %195, i32 0, i32 45
  %196 = ptrtoint ptr %get_bbreg.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %get_bbreg.i44.i.i, align 4
  %call.i45.i.i = call i32 %197(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #6
  %and.i.i = and i32 %call.i.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp ne i32 %and.i.i, 0
  %198 = and i32 %call.i35.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %198)
  %cmp.not.i.i = icmp eq i32 %198, 21102592
  %or.cond.i.i = select i1 %tobool5.not.i.i, i1 true, i1 %cmp.not.i.i
  %199 = and i32 %call.i40.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %199)
  %cmp10.not.i.i = icmp eq i32 %199, 4325376
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp10.not.i.i
  br i1 %or.cond1.i.i, label %for.body.i.if.end77.i_crit_edge, label %if.then11.i.i

for.body.i.if.end77.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then11.i.i:                                    ; preds = %for.body.i
  %and14.i.i = and i32 %call.i.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp ne i32 %and14.i.i, 0
  %200 = and i32 %call.i45.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %200)
  %cmp19.not.i.i = icmp eq i32 %200, 20054016
  %or.cond2.i.i = select i1 %tobool15.not.i.i, i1 true, i1 %cmp19.not.i.i
  %201 = and i32 %call.i.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %201)
  %cmp24.not.i.i = icmp eq i32 %201, 3538944
  %or.cond3.i.i = select i1 %or.cond2.i.i, i1 true, i1 %cmp24.not.i.i
  br i1 %or.cond3.i.i, label %if.else.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %202 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %priv, align 8
  %cfg.i49.i = getelementptr inbounds %struct.rtl_priv, ptr %203, i32 0, i32 32
  %204 = ptrtoint ptr %cfg.i49.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cfg.i49.i, align 8
  %ops.i50.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %205, i32 0, i32 4
  %206 = ptrtoint ptr %ops.i50.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ops.i50.i, align 4
  %get_bbreg.i51.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %207, i32 0, i32 45
  %208 = ptrtoint ptr %get_bbreg.i51.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %get_bbreg.i51.i, align 4
  %call.i52.i = call i32 %209(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #6
  %and.i = lshr i32 %call.i52.i, 16
  %shr.i = and i32 %and.i, 1023
  %210 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %shr.i, ptr %arrayidx74.i, align 4
  %211 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %priv, align 8
  %cfg.i54.i = getelementptr inbounds %struct.rtl_priv, ptr %212, i32 0, i32 32
  %213 = ptrtoint ptr %cfg.i54.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cfg.i54.i, align 8
  %ops.i55.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %214, i32 0, i32 4
  %215 = ptrtoint ptr %ops.i55.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ops.i55.i, align 4
  %get_bbreg.i56.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %216, i32 0, i32 45
  %217 = ptrtoint ptr %get_bbreg.i56.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %get_bbreg.i56.i, align 4
  %call.i57.i = call i32 %218(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #6
  %and47.i = lshr i32 %call.i57.i, 16
  %shr48.i = and i32 %and47.i, 1023
  %219 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %shr48.i, ptr %arrayidx83.i, align 4
  %220 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %priv, align 8
  %cfg.i59.i = getelementptr inbounds %struct.rtl_priv, ptr %221, i32 0, i32 32
  %222 = ptrtoint ptr %cfg.i59.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i59.i, align 8
  %ops.i60.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %ops.i60.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops.i60.i, align 4
  %get_bbreg.i61.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %225, i32 0, i32 45
  %226 = ptrtoint ptr %get_bbreg.i61.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %get_bbreg.i61.i, align 4
  %call.i62.i = call i32 %227(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #6
  %and53.i = lshr i32 %call.i62.i, 16
  %shr54.i = and i32 %and53.i, 1023
  %arrayidx57.i = getelementptr [8 x i32], ptr %result, i32 %conv.i, i32 2
  %228 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %shr54.i, ptr %arrayidx57.i, align 4
  %229 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %priv, align 8
  %cfg.i64.i = getelementptr inbounds %struct.rtl_priv, ptr %230, i32 0, i32 32
  %231 = ptrtoint ptr %cfg.i64.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cfg.i64.i, align 8
  %ops.i65.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %232, i32 0, i32 4
  %233 = ptrtoint ptr %ops.i65.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ops.i65.i, align 4
  %get_bbreg.i66.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %234, i32 0, i32 45
  %235 = ptrtoint ptr %get_bbreg.i66.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %get_bbreg.i66.i, align 4
  %call.i67.i = call i32 %236(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #6
  %and59.i = lshr i32 %call.i67.i, 16
  %shr60.i = and i32 %and59.i, 1023
  %arrayidx63.i = getelementptr [8 x i32], ptr %result, i32 %conv.i, i32 3
  %237 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %shr60.i, ptr %arrayidx63.i, align 4
  br label %if.end146.i

if.else.i:                                        ; preds = %if.then11.i.i
  br i1 %cmp64.i, label %if.then69.i, label %if.else.i.if.end77.i_crit_edge

if.else.i.if.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then69.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %238 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %priv, align 8
  %cfg.i69.i = getelementptr inbounds %struct.rtl_priv, ptr %239, i32 0, i32 32
  %240 = ptrtoint ptr %cfg.i69.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i69.i, align 8
  %ops.i70.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %ops.i70.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops.i70.i, align 4
  %get_bbreg.i71.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %243, i32 0, i32 45
  %244 = ptrtoint ptr %get_bbreg.i71.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %get_bbreg.i71.i, align 4
  %call.i72.i = call i32 %245(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #6
  %and71.i = lshr i32 %call.i72.i, 16
  %shr72.i = and i32 %and71.i, 1023
  %246 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %shr72.i, ptr %arrayidx74.i, align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then69.i, %if.else.i.if.end77.i_crit_edge, %for.body.i.if.end77.i_crit_edge
  %247 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %priv, align 8
  %cfg.i74.i = getelementptr inbounds %struct.rtl_priv, ptr %248, i32 0, i32 32
  %249 = ptrtoint ptr %cfg.i74.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %cfg.i74.i, align 8
  %ops.i75.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %250, i32 0, i32 4
  %251 = ptrtoint ptr %ops.i75.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops.i75.i, align 4
  %get_bbreg.i76.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %252, i32 0, i32 45
  %253 = ptrtoint ptr %get_bbreg.i76.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %get_bbreg.i76.i, align 4
  %call.i77.i = call i32 %254(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #6
  %and79.i = lshr i32 %call.i77.i, 16
  %shr80.i = and i32 %and79.i, 1023
  %255 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %shr80.i, ptr %arrayidx83.i, align 4
  br i1 %cmp36.i, label %if.end77.i.for.body.i_crit_edge, label %if.end77.i.if.end146.i_crit_edge

if.end77.i.if.end146.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146.i

if.end77.i.for.body.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end146.i:                                      ; preds = %if.end77.i.if.end146.i_crit_edge, %if.then43.i
  %reg_c04147.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 25
  %256 = ptrtoint ptr %reg_c04147.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %reg_c04147.i, align 4
  %258 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %priv, align 8
  %cfg.i79.i = getelementptr inbounds %struct.rtl_priv, ptr %259, i32 0, i32 32
  %260 = ptrtoint ptr %cfg.i79.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cfg.i79.i, align 8
  %ops.i80.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %ops.i80.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops.i80.i, align 4
  %set_bbreg.i81.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %263, i32 0, i32 46
  %264 = ptrtoint ptr %set_bbreg.i81.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %set_bbreg.i81.i, align 4
  call void %265(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef %257) #6
  %reg_874148.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 27
  %266 = ptrtoint ptr %reg_874148.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %reg_874148.i, align 4
  %268 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %priv, align 8
  %cfg.i83.i = getelementptr inbounds %struct.rtl_priv, ptr %269, i32 0, i32 32
  %270 = ptrtoint ptr %cfg.i83.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cfg.i83.i, align 8
  %ops.i84.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %ops.i84.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i84.i, align 4
  %set_bbreg.i85.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %273, i32 0, i32 46
  %274 = ptrtoint ptr %set_bbreg.i85.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %set_bbreg.i85.i, align 4
  call void %275(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef %267) #6
  %reg_c08149.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 26
  %276 = ptrtoint ptr %reg_c08149.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %reg_c08149.i, align 4
  %278 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv, align 8
  %cfg.i87.i = getelementptr inbounds %struct.rtl_priv, ptr %279, i32 0, i32 32
  %280 = ptrtoint ptr %cfg.i87.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %cfg.i87.i, align 8
  %ops.i88.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %281, i32 0, i32 4
  %282 = ptrtoint ptr %ops.i88.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ops.i88.i, align 4
  %set_bbreg.i89.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %283, i32 0, i32 46
  %284 = ptrtoint ptr %set_bbreg.i89.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %set_bbreg.i89.i, align 4
  call void %285(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef %277) #6
  %286 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %priv, align 8
  %cfg.i91.i = getelementptr inbounds %struct.rtl_priv, ptr %287, i32 0, i32 32
  %288 = ptrtoint ptr %cfg.i91.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cfg.i91.i, align 8
  %ops.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %289, i32 0, i32 4
  %290 = ptrtoint ptr %ops.i92.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ops.i92.i, align 4
  %set_bbreg.i93.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %291, i32 0, i32 46
  %292 = ptrtoint ptr %set_bbreg.i93.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %set_bbreg.i93.i, align 4
  call void %293(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #6
  %294 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %priv, align 8
  %cfg.i95.i = getelementptr inbounds %struct.rtl_priv, ptr %295, i32 0, i32 32
  %296 = ptrtoint ptr %cfg.i95.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %cfg.i95.i, align 8
  %ops.i96.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %297, i32 0, i32 4
  %298 = ptrtoint ptr %ops.i96.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ops.i96.i, align 4
  %set_bbreg.i97.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %299, i32 0, i32 46
  %300 = ptrtoint ptr %set_bbreg.i97.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %set_bbreg.i97.i, align 4
  call void %301(ptr noundef %hw, i32 noundef 2112, i32 noundef -1, i32 noundef 208595) #6
  br i1 %cmp.i, label %_rtl8723e_phy_iq_calibrate.exit.thread, label %if.then156.i

_rtl8723e_phy_iq_calibrate.exit.thread:           ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %adda_reg.i) #6
  br label %for.inc62

if.then156.i:                                     ; preds = %if.end146.i
  %302 = ptrtoint ptr %rfpi_enable15.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %rfpi_enable15.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %303)
  %tobool158.not.i = icmp eq i8 %303, 0
  br i1 %tobool158.not.i, label %if.then159.i, label %if.then156.i._rtl8723e_phy_iq_calibrate.exit_crit_edge

if.then156.i._rtl8723e_phy_iq_calibrate.exit_crit_edge: ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_phy_iq_calibrate.exit

if.then159.i:                                     ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtl8723_phy_pi_mode_switch(ptr noundef %hw, i1 noundef zeroext false) #6
  br label %_rtl8723e_phy_iq_calibrate.exit

_rtl8723e_phy_iq_calibrate.exit:                  ; preds = %if.then159.i, %if.then156.i._rtl8723e_phy_iq_calibrate.exit_crit_edge
  %adda_backup162.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 14, i32 28
  call void @rtl8723_phy_reload_adda_registers(ptr noundef %hw, ptr noundef nonnull %adda_reg.i, ptr noundef %adda_backup162.i, i32 noundef 16) #6
  call void @rtl8723_phy_reload_mac_registers(ptr noundef %hw, ptr noundef nonnull %iqk_mac_reg.i, ptr noundef %iqk_mac_backup31.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iqk_mac_reg.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %adda_reg.i) #6
  %304 = zext i8 %i.1189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %304, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %i.1189, label %_rtl8723e_phy_iq_calibrate.exit.for.inc62_crit_edge [
    i8 1, label %if.then22
    i8 2, label %if.then32
  ]

_rtl8723e_phy_iq_calibrate.exit.for.inc62_crit_edge: ; preds = %_rtl8723e_phy_iq_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then22:                                        ; preds = %_rtl8723e_phy_iq_calibrate.exit
  %call = call fastcc zeroext i1 @_rtl8723e_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call, label %if.then22.if.then91_crit_edge, label %if.then22.for.inc62_crit_edge

if.then22.for.inc62_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc62

if.then22.if.then91_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

if.then32:                                        ; preds = %_rtl8723e_phy_iq_calibrate.exit
  %call34 = call fastcc zeroext i1 @_rtl8723e_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call34, label %if.then32.if.then91_crit_edge, label %if.end38

if.then32.if.then91_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

if.end38:                                         ; preds = %if.then32
  %call40 = call fastcc zeroext i1 @_rtl8723e_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  br i1 %call40, label %if.end38.if.then91_crit_edge, label %for.body48.preheader

if.end38.if.then91_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

for.body48.preheader:                             ; preds = %if.end38
  %305 = ptrtoint ptr %uglygep195 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %uglygep195, align 4
  %arrayidx51.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %307 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx51.1, align 4
  %add.1 = add i32 %308, %306
  %arrayidx51.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %309 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx51.2, align 4
  %add.2 = add i32 %310, %add.1
  %arrayidx51.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %311 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx51.3, align 4
  %add.3 = add i32 %312, %add.2
  %arrayidx51.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %313 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %arrayidx51.4, align 4
  %add.4 = add i32 %314, %add.3
  %arrayidx51.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %315 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx51.5, align 4
  %add.5 = add i32 %316, %add.4
  %arrayidx51.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %317 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx51.6, align 4
  %add.6 = add i32 %318, %add.5
  %arrayidx51.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %319 = ptrtoint ptr %arrayidx51.7 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx51.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %320, i32 %add.7)
  %cmp55.not = icmp eq i32 %320, %add.7
  br i1 %cmp55.not, label %for.body48.preheader.if.else111_crit_edge, label %for.body48.preheader.if.then91_crit_edge

for.body48.preheader.if.then91_crit_edge:         ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

for.body48.preheader.if.else111_crit_edge:        ; preds = %for.body48.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else111

for.inc62:                                        ; preds = %if.then22.for.inc62_crit_edge, %_rtl8723e_phy_iq_calibrate.exit.for.inc62_crit_edge, %_rtl8723e_phy_iq_calibrate.exit.thread
  %inc63 = add i8 %i.1189, 1
  %cmp15 = icmp ult i8 %inc63, 3
  br i1 %cmp15, label %for.inc62.for.body17_crit_edge, label %for.inc62.if.else111_crit_edge

for.inc62.if.else111_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else111

for.inc62.for.body17_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

if.then91:                                        ; preds = %for.body48.preheader.if.then91_crit_edge, %if.end38.if.then91_crit_edge, %if.then32.if.then91_crit_edge, %if.then22.if.then91_crit_edge
  %final_candidate.2203 = phi i8 [ 0, %if.then32.if.then91_crit_edge ], [ 1, %if.end38.if.then91_crit_edge ], [ 3, %for.body48.preheader.if.then91_crit_edge ], [ 0, %if.then22.if.then91_crit_edge ]
  %conv88 = zext i8 %final_candidate.2203 to i32
  %arrayidx93 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv88
  %321 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx93, align 4
  %reg_e9495 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %323 = ptrtoint ptr %reg_e9495 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %322, ptr %reg_e9495, align 4
  %arrayidx98 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv88, i32 1
  %324 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %arrayidx98, align 4
  %reg_e9c99 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %326 = ptrtoint ptr %reg_e9c99 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %325, ptr %reg_e9c99, align 4
  %arrayidx102 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv88, i32 2
  %327 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx102, align 4
  %arrayidx105 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv88, i32 4
  %329 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx105, align 4
  %reg_eb4106 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %331 = ptrtoint ptr %reg_eb4106 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %reg_eb4106, align 4
  %arrayidx109 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv88, i32 5
  %332 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx109, align 4
  br label %if.end116

if.else111:                                       ; preds = %for.inc62.if.else111_crit_edge, %for.body48.preheader.if.else111_crit_edge
  %arrayidx78.le = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %334 = ptrtoint ptr %arrayidx78.le to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %arrayidx78.le, align 4
  %336 = ptrtoint ptr %uglygep195 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %uglygep195, align 4
  %reg_eb4112 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %338 = ptrtoint ptr %reg_eb4112 to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 256, ptr %reg_eb4112, align 4
  %reg_e94113 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %339 = ptrtoint ptr %reg_e94113 to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 256, ptr %reg_e94113, align 4
  %reg_e9c115 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %340 = ptrtoint ptr %reg_e9c115 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %reg_e9c115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.else111, %if.then91
  %cmp89.not205 = phi i1 [ false, %if.else111 ], [ true, %if.then91 ]
  %final_candidate.2204 = phi i8 [ -1, %if.else111 ], [ %final_candidate.2203, %if.then91 ]
  %.sink = phi i32 [ 0, %if.else111 ], [ %333, %if.then91 ]
  %reg_e94.1 = phi i32 [ %337, %if.else111 ], [ %322, %if.then91 ]
  %reg_ea4.1 = phi i32 [ %335, %if.else111 ], [ %328, %if.then91 ]
  %341 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %.sink, ptr %341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_e94.1)
  %cmp117.not = icmp eq i32 %reg_e94.1, 0
  br i1 %cmp117.not, label %if.end116.if.end124_crit_edge, label %if.then119

if.end116.if.end124_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_ea4.1)
  %cmp122 = icmp eq i32 %reg_ea4.1, 0
  call void @rtl8723_phy_path_a_fill_iqk_matrix(ptr noundef %hw, i1 noundef zeroext %cmp89.not205, ptr noundef nonnull %result, i8 noundef zeroext %final_candidate.2204, i1 noundef zeroext %cmp122) #6
  br label %if.end124

if.end124:                                        ; preds = %if.then119, %if.end116.if.end124_crit_edge
  %iqk_bb_backup126 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  call void @rtl8723_save_adda_registers(ptr noundef %hw, ptr noundef nonnull %iqk_bb_reg, ptr noundef %iqk_bb_backup126, i32 noundef 10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end124, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %iqk_bb_reg) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_reload_adda_registers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl8723e_phy_simularity_compare(ptr nocapture noundef %result, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %c1 to i32
  %idxprom2 = zext i8 %c2 to i32
  %arrayidx1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 0
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %arrayidx4 = getelementptr [8 x i32], ptr %result, i32 %idxprom2, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp5 = icmp sgt i32 %1, %3
  %sub = sub i32 %1, %3
  %sub18 = sub i32 %3, %1
  %cond = select i1 %cmp5, i32 %sub, i32 %sub18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond)
  %cmp19 = icmp ugt i32 %cond, 5
  %spec.select = zext i1 %cmp19 to i32
  %arrayidx1.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.1, align 4
  %arrayidx4.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom2, i32 1
  %6 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp5.1 = icmp sgt i32 %5, %7
  %sub.1 = sub i32 %5, %7
  %sub18.1 = sub i32 %7, %5
  %cond.1 = select i1 %cmp5.1, i32 %sub.1, i32 %sub18.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.1)
  %cmp19.1 = icmp ugt i32 %cond.1, 5
  %or49.1 = or i32 %spec.select, 2
  %simularity_bitmap.1.1 = select i1 %cmp19.1, i32 %or49.1, i32 %spec.select
  %arrayidx1.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 2
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.2, align 4
  %arrayidx4.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom2, i32 2
  %10 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp5.2 = icmp sgt i32 %9, %11
  %sub.2 = sub i32 %9, %11
  %sub18.2 = sub i32 %11, %9
  %cond.2 = select i1 %cmp5.2, i32 %sub.2, i32 %sub18.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.2)
  %cmp19.2 = icmp ugt i32 %cond.2, 5
  br i1 %cmp19.2, label %if.then.2, label %entry.for.inc.2_crit_edge

entry.for.inc.2_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.1)
  %tobool.not.2 = icmp eq i32 %simularity_bitmap.1.1, 0
  br i1 %tobool.not.2, label %if.then22.2, label %if.else47.2

if.else47.2:                                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #8
  %or49.2 = or i32 %simularity_bitmap.1.1, 4
  br label %for.inc.2

if.then22.2:                                      ; preds = %if.then.2
  %arrayidx28.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx28.2, align 4
  %add29.2 = sub i32 0, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add29.2)
  %cmp30.2 = icmp eq i32 %9, %add29.2
  br i1 %cmp30.2, label %if.then22.2.for.inc.2_crit_edge, label %if.else.2

if.then22.2.for.inc.2_crit_edge:                  ; preds = %if.then22.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.else.2:                                        ; preds = %if.then22.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx39.2 = getelementptr [8 x i32], ptr %result, i32 %idxprom2, i32 3
  %14 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx39.2, align 4
  %add40.2 = sub i32 0, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add40.2)
  %cmp41.2 = icmp eq i32 %11, %add40.2
  %spec.select.2 = select i1 %cmp41.2, i8 %c1, i8 -1
  %spec.select3.2 = select i1 %cmp41.2, i32 0, i32 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else.2, %if.then22.2.for.inc.2_crit_edge, %if.else47.2, %entry.for.inc.2_crit_edge
  %final_candidate.sroa.0.1.2 = phi i8 [ -1, %if.else47.2 ], [ -1, %entry.for.inc.2_crit_edge ], [ %c2, %if.then22.2.for.inc.2_crit_edge ], [ %spec.select.2, %if.else.2 ]
  %simularity_bitmap.1.2 = phi i32 [ %or49.2, %if.else47.2 ], [ %simularity_bitmap.1.1, %entry.for.inc.2_crit_edge ], [ 0, %if.then22.2.for.inc.2_crit_edge ], [ %spec.select3.2, %if.else.2 ]
  %arrayidx1.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom, i32 3
  %16 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.3, align 4
  %arrayidx4.3 = getelementptr [8 x i32], ptr %result, i32 %idxprom2, i32 3
  %18 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp5.3 = icmp sgt i32 %17, %19
  %sub.3 = sub i32 %17, %19
  %sub18.3 = sub i32 %19, %17
  %cond.3 = select i1 %cmp5.3, i32 %sub.3, i32 %sub18.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %cond.3)
  %cmp19.3 = icmp ugt i32 %cond.3, 5
  br i1 %cmp19.3, label %for.inc.3.thread, label %for.inc.3

for.inc.3.thread:                                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %or49.3 = or i32 %simularity_bitmap.1.2, 8
  br label %if.else83

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.2)
  %cmp52 = icmp eq i32 %simularity_bitmap.1.2, 0
  br i1 %cmp52, label %for.cond54.preheader, label %for.inc.3.if.else83_crit_edge

for.inc.3.if.else83_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else83

for.cond54.preheader:                             ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.0.1.2)
  %cmp59.not = icmp eq i8 %final_candidate.sroa.0.1.2, -1
  br i1 %cmp59.not, label %for.cond54.preheader.cleanup_crit_edge, label %for.body68.preheader

for.cond54.preheader.cleanup_crit_edge:           ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body68.preheader:                             ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %idxprom70 = zext i8 %final_candidate.sroa.0.1.2 to i32
  %arrayidx72 = getelementptr [8 x i32], ptr %result, i32 %idxprom70, i32 0
  %20 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx72, align 4
  %arrayidx74 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx74, align 4
  %arrayidx72.1 = getelementptr [8 x i32], ptr %result, i32 %idxprom70, i32 1
  br label %cleanup.sink.split

if.else83:                                        ; preds = %for.inc.3.if.else83_crit_edge, %for.inc.3.thread
  %simularity_bitmap.1.317 = phi i32 [ %or49.3, %for.inc.3.thread ], [ %simularity_bitmap.1.2, %for.inc.3.if.else83_crit_edge ]
  %and = and i32 %simularity_bitmap.1.317, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %for.cond86.preheader, label %if.else83.cleanup_crit_edge

if.else83.cleanup_crit_edge:                      ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond86.preheader:                             ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1, align 4
  %arrayidx94 = getelementptr [8 x i32], ptr %result, i32 3, i32 0
  %25 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx94, align 4
  %26 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.1, align 4
  %arrayidx94.1 = getelementptr [8 x i32], ptr %result, i32 3, i32 1
  %28 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx94.1, align 4
  %29 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.2, align 4
  %arrayidx94.2 = getelementptr [8 x i32], ptr %result, i32 3, i32 2
  %31 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx94.2, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.cond86.preheader, %for.body68.preheader
  %arrayidx1.3.sink = phi ptr [ %arrayidx1.3, %for.cond86.preheader ], [ %arrayidx72.1, %for.body68.preheader ]
  %.sink18 = phi i32 [ 3, %for.cond86.preheader ], [ 1, %for.body68.preheader ]
  %32 = ptrtoint ptr %arrayidx1.3.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx1.3.sink, align 4
  %arrayidx94.3 = getelementptr [8 x i32], ptr %result, i32 3, i32 %.sink18
  %34 = ptrtoint ptr %arrayidx94.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx94.3, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else83.cleanup_crit_edge, %for.cond54.preheader.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else83.cleanup_crit_edge ], [ true, %for.cond54.preheader.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_path_a_fill_iqk_matrix(ptr noundef, i1 noundef zeroext, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_save_adda_registers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_lc_calibrate(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %2 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %3(ptr noundef %1, i32 noundef 3331) #6
  %4 = and i8 %call.i.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not.i = icmp eq i8 %4, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and3.i = and i8 %call.i.i, -113
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef 3331, i8 noundef zeroext %and3.i) #6
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i2.i = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 3331) #6
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %if.then.i.rtl_write_byte.exit.i_crit_edge
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %cfg.i3.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %cfg.i3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i3.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %get_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %get_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_rfreg.i.i, align 4
  %call.i4.i = tail call i32 %20(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #6
  %and14.i = and i32 %call.i4.i, 589823
  %or.i = or i32 %and14.i, 65536
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %cfg.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i6.i, align 8
  %ops.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ops.i7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i7.i, align 4
  %set_rfreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %26, i32 0, i32 48
  %27 = ptrtoint ptr %set_rfreg.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_rfreg.i.i, align 4
  tail call void %28(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or.i) #6
  br label %if.end20.i

if.else.i:                                        ; preds = %entry
  %write8_async.i8.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %29 = ptrtoint ptr %write8_async.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write8_async.i8.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext -1) #6
  %cfg.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %31 = ptrtoint ptr %cfg.i9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i9.i, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %write_readback.i10.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i11.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i11.i, label %if.else.i.if.end20.i_crit_edge, label %if.then.i14.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then.i14.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 1314) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then.i14.i, %if.else.i.if.end20.i_crit_edge, %rtl_write_byte.exit.i
  %rf_a_mode.0.i = phi i32 [ %call.i4.i, %rtl_write_byte.exit.i ], [ 0, %if.else.i.if.end20.i_crit_edge ], [ 0, %if.then.i14.i ]
  %37 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv.i, align 8
  %cfg.i17.i = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i17.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i17.i, align 8
  %ops.i18.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i18.i, align 4
  %get_rfreg.i19.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 47
  %43 = ptrtoint ptr %get_rfreg.i19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_rfreg.i19.i, align 4
  %call.i20.i = tail call i32 %44(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #6
  %or22.i = or i32 %call.i20.i, 32768
  %45 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i, align 8
  %cfg.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i22.i, align 8
  %ops.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i23.i, align 4
  %set_rfreg.i24.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 48
  %51 = ptrtoint ptr %set_rfreg.i24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_rfreg.i24.i, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or22.i) #6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end20.i
  %__ms.045.i = phi i32 [ 100, %if.end20.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.045.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #6
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %write8_async.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %54 = ptrtoint ptr %write8_async.i37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write8_async.i37.i, align 4
  br i1 %cmp.not.i, label %if.else32.i, label %if.then28.i

if.then28.i:                                      ; preds = %while.end.i
  tail call void %55(ptr noundef %1, i32 noundef 3331, i8 noundef zeroext %call.i.i) #6
  %cfg.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i26.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i26.i, align 8
  %write_readback.i27.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write_readback.i27.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %write_readback.i27.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i28.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i28.i, label %if.then28.i.rtl_write_byte.exit32.i_crit_edge, label %if.then.i31.i

if.then28.i.rtl_write_byte.exit32.i_crit_edge:    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit32.i

if.then.i31.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i30.i = tail call zeroext i8 %61(ptr noundef %1, i32 noundef 3331) #6
  br label %rtl_write_byte.exit32.i

rtl_write_byte.exit32.i:                          ; preds = %if.then.i31.i, %if.then28.i.rtl_write_byte.exit32.i_crit_edge
  %62 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv.i, align 8
  %cfg.i34.i = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i34.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i34.i, align 8
  %ops.i35.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i35.i, align 4
  %set_rfreg.i36.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 48
  %68 = ptrtoint ptr %set_rfreg.i36.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_rfreg.i36.i, align 4
  tail call void %69(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_a_mode.0.i) #6
  br label %_rtl8723e_phy_lc_calibrate.exit

if.else32.i:                                      ; preds = %while.end.i
  tail call void %55(ptr noundef %1, i32 noundef 1314, i8 noundef zeroext 0) #6
  %cfg.i38.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i38.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i38.i, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i39.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i40.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i40.i, label %if.else32.i._rtl8723e_phy_lc_calibrate.exit_crit_edge, label %if.then.i43.i

if.else32.i._rtl8723e_phy_lc_calibrate.exit_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_phy_lc_calibrate.exit

if.then.i43.i:                                    ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i42.i = tail call zeroext i8 %75(ptr noundef %1, i32 noundef 1314) #6
  br label %_rtl8723e_phy_lc_calibrate.exit

_rtl8723e_phy_lc_calibrate.exit:                  ; preds = %if.then.i43.i, %if.else32.i._rtl8723e_phy_lc_calibrate.exit_crit_edge, %rtl_write_byte.exit32.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl8723e_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext %bmain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry._rtl8723e_phy_set_rfpath_switch.exit_crit_edge

entry._rtl8723e_phy_set_rfpath_switch.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_phy_set_rfpath_switch.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
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
  tail call void %9(ptr noundef %hw, i32 noundef 76, i32 noundef 8388608, i32 noundef 1) #6
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg.i2.i, align 8
  %ops.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i3.i, align 4
  %set_bbreg.i4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %set_bbreg.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_bbreg.i4.i, align 4
  tail call void %17(ptr noundef %hw, i32 noundef 2168, i32 noundef 8192, i32 noundef 1) #6
  br label %_rtl8723e_phy_set_rfpath_switch.exit

_rtl8723e_phy_set_rfpath_switch.exit:             ; preds = %if.then.i, %entry._rtl8723e_phy_set_rfpath_switch.exit_crit_edge
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 8
  %cfg.i6.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 32
  %20 = ptrtoint ptr %cfg.i6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg.i6.i, align 8
  %ops.i7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ops.i7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i7.i, align 4
  %set_bbreg.i8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %23, i32 0, i32 46
  %24 = ptrtoint ptr %set_bbreg.i8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_bbreg.i8.i, align 4
  %..i = select i1 %bmain, i32 2, i32 1
  tail call void %25(ptr noundef %hw, i32 noundef 2144, i32 noundef 768, i32 noundef %..i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_set_io_cmd(ptr noundef %hw, i32 noundef %iotype) local_unnamed_addr #0 align 64 {
entry:
  %cckpowerlevel.i.i = alloca [2 x i8], align 1
  %ofdmpowerlevel.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.22, i32 noundef %iotype, i32 noundef %conv) #6
  %4 = zext i32 %iotype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %iotype, label %sw.default [
    i32 2, label %entry.land.lhs.true_crit_edge
    i32 0, label %sw.bb1
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %iotype) #6
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb1, %entry.land.lhs.true_crit_edge
  %.str.23.sink = phi ptr [ @.str.24, %sw.bb1 ], [ @.str.23, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull %.str.23.sink) #6
  %5 = ptrtoint ptr %set_io_inprogress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %set_io_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.61, i32 noundef %12, i32 noundef %conv.i) #6
  %15 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_io_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %16, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %initgain_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %initgain_backup.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initgain_backup.i, align 4
  %conv3.i = zext i8 %19 to i32
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 9
  %20 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv3.i, ptr %cur_igvalue.i, align 4
  tail call void @rtl8723e_dm_write_dig(ptr noundef %hw) #6
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 10
  %21 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_channel.i, align 1
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cckpowerlevel.i.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ofdmpowerlevel.i.i) #6
  %25 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %ofdmpowerlevel.i.i, align 1, !annotation !150
  %26 = getelementptr inbounds [2 x i8], ptr %ofdmpowerlevel.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %26, align 1, !annotation !150
  %txpwr_fromeprom.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 23
  %28 = ptrtoint ptr %txpwr_fromeprom.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %txpwr_fromeprom.i.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge, label %if.end.i.i

sw.bb.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl8723e_phy_set_txpower_level.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  %30 = getelementptr inbounds [2 x i8], ptr %cckpowerlevel.i.i, i32 0, i32 1
  %sub.i.i.i = add i8 %22, -1
  %txpwrlevel_cck.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 38
  %idxprom.i.i.i = zext i8 %sub.i.i.i to i32
  %arrayidx3.i.i.i = getelementptr [14 x i8], ptr %txpwrlevel_cck.i.i.i, i32 0, i32 %idxprom.i.i.i
  %31 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx3.i.i.i, align 1
  %33 = ptrtoint ptr %cckpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %cckpowerlevel.i.i, align 1
  %arrayidx8.i.i.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 38, i32 1, i32 %idxprom.i.i.i
  %34 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8.i.i.i, align 1
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %30, align 1
  %rf_type.i.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %rf_type.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %rf_type.i.i.i.i, align 1
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %38, label %if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge [
    i8 1, label %if.end.i.i.if.then.i.i.i_crit_edge
    i8 0, label %if.end.i.i.if.then.i.i.i_crit_edge21
    i8 2, label %if.then29.i.i.i
  ]

if.end.i.i.if.then.i.i.i_crit_edge21:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_rtl8723e_get_txpower_index.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge21
  %txpwrlevel_ht40_1s.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 39
  %arrayidx18.i.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_1s.i.i.i, i32 0, i32 %idxprom.i.i.i
  %40 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx18.i.i.i, align 1
  %42 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %ofdmpowerlevel.i.i, align 1
  %arrayidx23.i.i.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 39, i32 1, i32 %idxprom.i.i.i
  br label %if.end39.sink.split.i.i.i

if.then29.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %txpwrlevel_ht40_2s.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 40
  %arrayidx32.i.i.i = getelementptr [59 x i8], ptr %txpwrlevel_ht40_2s.i.i.i, i32 0, i32 %idxprom.i.i.i
  %43 = ptrtoint ptr %arrayidx32.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32.i.i.i, align 1
  %45 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ofdmpowerlevel.i.i, align 1
  %arrayidx37.i.i.i = getelementptr %struct.rtl_priv, ptr %24, i32 0, i32 17, i32 40, i32 1, i32 %idxprom.i.i.i
  br label %if.end39.sink.split.i.i.i

if.end39.sink.split.i.i.i:                        ; preds = %if.then29.i.i.i, %if.then.i.i.i
  %arrayidx37.sink.i.i.i = phi ptr [ %arrayidx37.i.i.i, %if.then29.i.i.i ], [ %arrayidx23.i.i.i, %if.then.i.i.i ]
  %46 = ptrtoint ptr %arrayidx37.sink.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx37.sink.i.i.i, align 1
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %26, align 1
  br label %_rtl8723e_get_txpower_index.exit.i.i

_rtl8723e_get_txpower_index.exit.i.i:             ; preds = %if.end39.sink.split.i.i.i, %if.end.i.i._rtl8723e_get_txpower_index.exit.i.i_crit_edge
  %cur_cck_txpwridx.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 46
  %49 = ptrtoint ptr %cur_cck_txpwridx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %32, ptr %cur_cck_txpwridx.i.i.i, align 4
  %50 = ptrtoint ptr %ofdmpowerlevel.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ofdmpowerlevel.i.i, align 1
  %cur_ofdm24g_txpwridx.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %24, i32 0, i32 14, i32 47
  %52 = ptrtoint ptr %cur_ofdm24g_txpwridx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %cur_ofdm24g_txpwridx.i.i.i, align 1
  call void @rtl8723e_phy_rf6052_set_cck_txpower(ptr noundef %hw, ptr noundef nonnull %cckpowerlevel.i.i) #6
  call void @rtl8723e_phy_rf6052_set_ofdm_txpower(ptr noundef %hw, ptr noundef nonnull %ofdmpowerlevel.i.i, i8 noundef zeroext %22) #6
  br label %rtl8723e_phy_set_txpower_level.exit.i

rtl8723e_phy_set_txpower_level.exit.i:            ; preds = %_rtl8723e_get_txpower_index.exit.i.i, %sw.bb.i.rtl8723e_phy_set_txpower_level.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ofdmpowerlevel.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cckpowerlevel.i.i) #6
  br label %rtl8723e_phy_set_io.exit

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cur_igvalue5.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 9
  %53 = ptrtoint ptr %cur_igvalue5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cur_igvalue5.i, align 4
  %conv6.i = trunc i32 %54 to i8
  %initgain_backup7.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %55 = ptrtoint ptr %initgain_backup7.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv6.i, ptr %initgain_backup7.i, align 4
  store i32 23, ptr %cur_igvalue5.i, align 4
  tail call void @rtl8723e_dm_write_dig(ptr noundef %hw) #6
  br label %rtl8723e_phy_set_io.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %16) #6
  br label %rtl8723e_phy_set_io.exit

rtl8723e_phy_set_io.exit:                         ; preds = %sw.default.i, %sw.bb4.i, %rtl8723e_phy_set_txpower_level.exit.i
  %56 = ptrtoint ptr %set_io_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %set_io_inprogress.i, align 1
  %57 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %current_io_type.i, align 4
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.62, i32 noundef %58) #6
  call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.26, i32 noundef %iotype) #6
  br label %cleanup

cleanup:                                          ; preds = %rtl8723e_phy_set_io.exit, %land.lhs.true.cleanup_crit_edge, %sw.default
  %retval.0 = phi i1 [ true, %rtl8723e_phy_set_io.exit ], [ false, %sw.default ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl8723e_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %rfpwr_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %initializecount.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.63) #6
  %call.i = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #6
  %call.not.i = xor i1 %call.i, true
  %inc.i = add nuw nsw i32 %initializecount.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %initializecount.0.i)
  %cmp7.i = icmp ult i32 %initializecount.0.i, 9
  %or.cond.i = select i1 %call.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %call10.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.64, i32 noundef %call10.i) #6
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
  tail call void %17(ptr noundef %15, i32 noundef 17, i8 noundef zeroext 43) #6
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.else.i.rtl_write_byte.exit.i.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %23(ptr noundef %15, i32 noundef 17) #6
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.else.i.rtl_write_byte.exit.i.i_crit_edge
  %24 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %25(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #6
  %26 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i8.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i8.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i9.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i9.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit13.i.i_crit_edge, label %if.then.i12.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit13.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit13.i.i

if.then.i12.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i10.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i10.i.i, align 4
  %call.i11.i.i = tail call zeroext i8 %31(ptr noundef %15, i32 noundef 2) #6
  br label %rtl_write_byte.exit13.i.i

rtl_write_byte.exit13.i.i:                        ; preds = %if.then.i12.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit13.i.i_crit_edge
  %32 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %33(ptr noundef %15, i32 noundef 1536, i8 noundef zeroext 0) #6
  %34 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i16.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i16.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i16.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i17.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i17.i.i, label %rtl_write_byte.exit13.i.i.rtl_write_byte.exit21.i.i_crit_edge, label %if.then.i20.i.i

rtl_write_byte.exit13.i.i.rtl_write_byte.exit21.i.i_crit_edge: ; preds = %rtl_write_byte.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit21.i.i

if.then.i20.i.i:                                  ; preds = %rtl_write_byte.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i18.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i18.i.i, align 4
  %call.i19.i.i = tail call zeroext i8 %39(ptr noundef %15, i32 noundef 1536) #6
  br label %rtl_write_byte.exit21.i.i

rtl_write_byte.exit21.i.i:                        ; preds = %if.then.i20.i.i, %rtl_write_byte.exit13.i.i.rtl_write_byte.exit21.i.i_crit_edge
  %40 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %41(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -30) #6
  %42 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i24.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i24.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i24.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i25.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i25.i.i, label %rtl_write_byte.exit21.i.i.rtl_write_byte.exit29.i.i_crit_edge, label %if.then.i28.i.i

rtl_write_byte.exit21.i.i.rtl_write_byte.exit29.i.i_crit_edge: ; preds = %rtl_write_byte.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit29.i.i

if.then.i28.i.i:                                  ; preds = %rtl_write_byte.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i26.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %46 = ptrtoint ptr %read8_sync.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i26.i.i, align 4
  %call.i27.i.i = tail call zeroext i8 %47(ptr noundef %15, i32 noundef 2) #6
  br label %rtl_write_byte.exit29.i.i

rtl_write_byte.exit29.i.i:                        ; preds = %if.then.i28.i.i, %rtl_write_byte.exit21.i.i.rtl_write_byte.exit29.i.i_crit_edge
  %48 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %49(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #6
  %50 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i32.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i32.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i32.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i33.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i33.i.i, label %rtl_write_byte.exit29.i.i.rtl_write_byte.exit37.i.i_crit_edge, label %if.then.i36.i.i

rtl_write_byte.exit29.i.i.rtl_write_byte.exit37.i.i_crit_edge: ; preds = %rtl_write_byte.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit37.i.i

if.then.i36.i.i:                                  ; preds = %rtl_write_byte.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i34.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %54 = ptrtoint ptr %read8_sync.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i34.i.i, align 4
  %call.i35.i.i = tail call zeroext i8 %55(ptr noundef %15, i32 noundef 2) #6
  br label %rtl_write_byte.exit37.i.i

rtl_write_byte.exit37.i.i:                        ; preds = %if.then.i36.i.i, %rtl_write_byte.exit29.i.i.rtl_write_byte.exit37.i.i_crit_edge
  %56 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %57(ptr noundef %15, i32 noundef 1314, i8 noundef zeroext 0) #6
  %58 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i40.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i40.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i41.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i41.i.i, label %rtl_write_byte.exit37.i.i.if.end.i_crit_edge, label %if.then.i44.i.i

rtl_write_byte.exit37.i.i.if.end.i_crit_edge:     ; preds = %rtl_write_byte.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i44.i.i:                                  ; preds = %rtl_write_byte.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i42.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %62 = ptrtoint ptr %read8_sync.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read8_sync.i42.i.i, align 4
  %call.i43.i.i = tail call zeroext i8 %63(ptr noundef %15, i32 noundef 1314) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i44.i.i, %rtl_write_byte.exit37.i.i.if.end.i_crit_edge, %do.end.i
  %link_state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 10
  %64 = ptrtoint ptr %link_state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %link_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp11.i = icmp eq i32 %65, 2
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %66 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %led_control.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %69, i32 0, i32 36
  %70 = ptrtoint ptr %led_control.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %led_control.i, align 4
  br i1 %cmp11.i, label %if.then12.i, label %if.else13.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %71(ptr noundef %hw, i32 noundef 2) #6
  br label %if.then71.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %71(ptr noundef %hw, i32 noundef 3) #6
  br label %if.then71.i

sw.bb18.i:                                        ; preds = %if.end
  %reg_rfps_level.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 20
  %72 = ptrtoint ptr %reg_rfps_level.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_rfps_level.i, align 4
  %and19.i = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else24.i, label %if.then21.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.65) #6
  %call22.i = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #6
  %cur_ps_level23.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 19
  %74 = ptrtoint ptr %cur_ps_level23.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cur_ps_level23.i, align 4
  %or.i = or i32 %75, 8
  store i32 %or.i, ptr %cur_ps_level23.i, align 4
  br label %if.then71.i

if.else24.i:                                      ; preds = %sw.bb18.i
  %rfoff_reason.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 18
  %76 = ptrtoint ptr %rfoff_reason.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rfoff_reason.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %77)
  %cmp25.i = icmp eq i32 %77, 268435456
  %cfg27.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %78 = ptrtoint ptr %cfg27.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cfg27.i, align 8
  %ops28.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %ops28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops28.i, align 4
  %led_control29.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %81, i32 0, i32 36
  %82 = ptrtoint ptr %led_control29.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %led_control29.i, align 4
  br i1 %cmp25.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %83(ptr noundef %hw, i32 noundef 3) #6
  br label %if.then71.i

if.else30.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %83(ptr noundef %hw, i32 noundef 7) #6
  br label %if.then71.i

sw.bb36.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp38.i = icmp eq i32 %3, 2
  br i1 %cmp38.i, label %sw.bb36.i.if.then71.i_crit_edge, label %for.cond.preheader.i

sw.bb36.i.if.then71.i_crit_edge:                  ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71.i

for.cond.preheader.i:                             ; preds = %sw.bb36.i
  %tx_ring.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 1, i32 7, i32 0, i32 1, i32 4, i32 3
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.else51.i.for.cond.outer.i_crit_edge, %for.cond.preheader.i
  %indvars.iv148.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %if.else51.i.for.cond.outer.i_crit_edge ]
  %queue_id.0.ph.i = phi i8 [ 0, %for.cond.preheader.i ], [ %87, %if.else51.i.for.cond.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph.i)
  %cmp41142.i = icmp ult i8 %queue_id.0.ph.i, 9
  br i1 %cmp41142.i, label %for.body.preheader.i, label %for.cond.outer.i.for.end.i_crit_edge

for.cond.outer.i.for.end.i_crit_edge:             ; preds = %for.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.outer.i
  %84 = zext i8 %queue_id.0.ph.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.then49.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ %84, %for.body.preheader.i ], [ %indvars.iv.next.i, %if.then49.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv.i)
  %cmp44.i = icmp eq i32 %indvars.iv.i, 4
  br i1 %cmp44.i, label %for.body.i.if.then49.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then49.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %qlen.i.i = getelementptr [9 x %struct.rtl8192_tx_ring], ptr %tx_ring.i, i32 0, i32 %indvars.iv.i, i32 4, i32 1
  %85 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp47.i = icmp eq i32 %86, 0
  br i1 %cmp47.i, label %lor.lhs.false.i.if.then49.i_crit_edge, label %if.else51.i

lor.lhs.false.i.if.then49.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49.i

if.then49.i:                                      ; preds = %lor.lhs.false.i.if.then49.i_crit_edge, %for.body.i.if.then49.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond, label %if.then49.i.for.end.i_crit_edge, label %if.then49.i.for.body.i_crit_edge

if.then49.i.for.body.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then49.i.for.end.i_crit_edge:                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.else51.i:                                      ; preds = %lor.lhs.false.i
  %87 = trunc i32 %indvars.iv.i to i8
  %add.i = add nuw nsw i32 %indvars.iv148.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.66, i32 noundef %add.i, i32 noundef %indvars.iv.i, i32 noundef %86) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %88(i32 noundef 2147480) #6
  %exitcond150.i = icmp eq i32 %add.i, 64
  br i1 %exitcond150.i, label %if.then61.i, label %if.else51.i.for.cond.outer.i_crit_edge

if.else51.i.for.cond.outer.i_crit_edge:           ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.outer.i

if.then61.i:                                      ; preds = %if.else51.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qlen.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.67, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %90) #6
  br label %for.end.i

for.end.i:                                        ; preds = %if.then61.i, %if.then49.i.for.end.i_crit_edge, %for.cond.outer.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies66.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %92 = ptrtoint ptr %last_awake_jiffies66.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %last_awake_jiffies66.i, align 4
  %sub67.i = sub i32 %91, %93
  %call68.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub67.i) #6
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.68, i32 noundef %call68.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %last_sleep_jiffies69.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 32
  %95 = ptrtoint ptr %last_sleep_jiffies69.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %last_sleep_jiffies69.i, align 4
  %96 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %priv, align 8
  %write8_async.i.i123.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 5
  %98 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %99(ptr noundef %97, i32 noundef 1314, i8 noundef zeroext -1) #6
  %cfg.i.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 32
  %100 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i.i125.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %write_readback.i.i125.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %write_readback.i.i125.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i126.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i.i126.i, label %for.end.i.rtl_write_byte.exit.i130.i_crit_edge, label %if.then.i.i129.i

for.end.i.rtl_write_byte.exit.i130.i_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit.i130.i

if.then.i.i129.i:                                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i.i127.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 9
  %104 = ptrtoint ptr %read8_sync.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %read8_sync.i.i127.i, align 4
  %call.i.i128.i = tail call zeroext i8 %105(ptr noundef %97, i32 noundef 1314) #6
  br label %rtl_write_byte.exit.i130.i

rtl_write_byte.exit.i130.i:                       ; preds = %if.then.i.i129.i, %for.end.i.rtl_write_byte.exit.i130.i_crit_edge
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv, align 8
  %cfg.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %107, i32 0, i32 32
  %108 = ptrtoint ptr %cfg.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg.i25.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %111, i32 0, i32 48
  %112 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %113(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #6
  %114 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %115(ptr noundef %97, i32 noundef 1536, i8 noundef zeroext 64) #6
  %116 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i28.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %write_readback.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %write_readback.i28.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i29.i.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i29.i.i, label %rtl_write_byte.exit.i130.i.rtl_write_byte.exit33.i.i_crit_edge, label %if.then.i32.i.i

rtl_write_byte.exit.i130.i.rtl_write_byte.exit33.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit33.i.i

if.then.i32.i.i:                                  ; preds = %rtl_write_byte.exit.i130.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i30.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 9
  %120 = ptrtoint ptr %read8_sync.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %read8_sync.i30.i.i, align 4
  %call.i31.i.i = tail call zeroext i8 %121(ptr noundef %97, i32 noundef 1536) #6
  br label %rtl_write_byte.exit33.i.i

rtl_write_byte.exit33.i.i:                        ; preds = %if.then.i32.i.i, %rtl_write_byte.exit.i130.i.rtl_write_byte.exit33.i.i_crit_edge
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv, align 8
  %cfg.i35.i.i = getelementptr inbounds %struct.rtl_priv, ptr %123, i32 0, i32 32
  %124 = ptrtoint ptr %cfg.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i35.i.i, align 8
  %ops.i36.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %ops.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops.i36.i.i, align 4
  %get_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %127, i32 0, i32 47
  %128 = ptrtoint ptr %get_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %get_rfreg.i.i.i, align 4
  %call.i37.i.i = tail call i32 %129(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i.i)
  %cmp.not111.i.i = icmp eq i32 %call.i37.i.i, 0
  br i1 %cmp.not111.i.i, label %rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge, label %while.body.lr.ph.i.i

rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge:   ; preds = %rtl_write_byte.exit33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

while.body.lr.ph.i.i:                             ; preds = %rtl_write_byte.exit33.i.i
  %read8_sync.i42.i131.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %delay.0112.i.i = phi i8 [ 5, %while.body.lr.ph.i.i ], [ %dec.i.i, %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge ]
  %130 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %131(ptr noundef %97, i32 noundef 1536, i8 noundef zeroext 0) #6
  %132 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i40.i132.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %write_readback.i40.i132.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_readback.i40.i132.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i41.i133.i = icmp eq i8 %135, 0
  br i1 %tobool.not.i41.i133.i, label %while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge, label %if.then.i44.i135.i

while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit45.i.i

if.then.i44.i135.i:                               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i43.i134.i = tail call zeroext i8 %137(ptr noundef %97, i32 noundef 1536) #6
  br label %rtl_write_byte.exit45.i.i

rtl_write_byte.exit45.i.i:                        ; preds = %if.then.i44.i135.i, %while.body.i.i.rtl_write_byte.exit45.i.i_crit_edge
  %138 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %priv, align 8
  %cfg.i47.i.i = getelementptr inbounds %struct.rtl_priv, ptr %139, i32 0, i32 32
  %140 = ptrtoint ptr %cfg.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %cfg.i47.i.i, align 8
  %ops.i48.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %ops.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ops.i48.i.i, align 4
  %set_rfreg.i49.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %143, i32 0, i32 48
  %144 = ptrtoint ptr %set_rfreg.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %set_rfreg.i49.i.i, align 4
  tail call void %145(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #6
  %146 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %147(ptr noundef %97, i32 noundef 1536, i8 noundef zeroext 64) #6
  %148 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i52.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %write_readback.i52.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %write_readback.i52.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i53.i.i = icmp eq i8 %151, 0
  br i1 %tobool.not.i53.i.i, label %rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge, label %if.then.i56.i.i

rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge: ; preds = %rtl_write_byte.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit57.i.i

if.then.i56.i.i:                                  ; preds = %rtl_write_byte.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i55.i.i = tail call zeroext i8 %153(ptr noundef %97, i32 noundef 1536) #6
  br label %rtl_write_byte.exit57.i.i

rtl_write_byte.exit57.i.i:                        ; preds = %if.then.i56.i.i, %rtl_write_byte.exit45.i.i.rtl_write_byte.exit57.i.i_crit_edge
  %154 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv, align 8
  %cfg.i59.i.i = getelementptr inbounds %struct.rtl_priv, ptr %155, i32 0, i32 32
  %156 = ptrtoint ptr %cfg.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cfg.i59.i.i, align 8
  %ops.i60.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %ops.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ops.i60.i.i, align 4
  %get_rfreg.i61.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %159, i32 0, i32 47
  %160 = ptrtoint ptr %get_rfreg.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %get_rfreg.i61.i.i, align 4
  %call.i62.i.i = tail call i32 %161(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575) #6
  %dec.i.i = add nsw i8 %delay.0112.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i62.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i.i)
  %cmp1.not.i.i = icmp eq i8 %dec.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond.i.i, label %while.end.i.i, label %rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge

rtl_write_byte.exit57.i.i.while.body.i.i_crit_edge: ; preds = %rtl_write_byte.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %rtl_write_byte.exit57.i.i
  br i1 %cmp1.not.i.i, label %if.then.i.i, label %while.end.i.i.if.end.i.i_crit_edge

while.end.i.i.if.end.i.i_crit_edge:               ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.end.i.i
  %162 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %163(ptr noundef %97, i32 noundef 1536, i8 noundef zeroext 0) #6
  %164 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i65.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %write_readback.i65.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %write_readback.i65.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i66.i.i = icmp eq i8 %167, 0
  br i1 %tobool.not.i66.i.i, label %if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge, label %if.then.i69.i.i

if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit70.i.i

if.then.i69.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %168 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i68.i.i = tail call zeroext i8 %169(ptr noundef %97, i32 noundef 1536) #6
  br label %rtl_write_byte.exit70.i.i

rtl_write_byte.exit70.i.i:                        ; preds = %if.then.i69.i.i, %if.then.i.i.rtl_write_byte.exit70.i.i_crit_edge
  %170 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %171(ptr noundef %97, i32 noundef 2, i8 noundef zeroext -30) #6
  %172 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i73.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %write_readback.i73.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %write_readback.i73.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool.not.i74.i.i = icmp eq i8 %175, 0
  br i1 %tobool.not.i74.i.i, label %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge, label %if.then.i77.i.i

rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge: ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit78.i.i

if.then.i77.i.i:                                  ; preds = %rtl_write_byte.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i76.i.i = tail call zeroext i8 %177(ptr noundef %97, i32 noundef 2) #6
  br label %rtl_write_byte.exit78.i.i

rtl_write_byte.exit78.i.i:                        ; preds = %if.then.i77.i.i, %rtl_write_byte.exit70.i.i.rtl_write_byte.exit78.i.i_crit_edge
  %178 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %179(ptr noundef %97, i32 noundef 2, i8 noundef zeroext -29) #6
  %180 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i81.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %write_readback.i81.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %write_readback.i81.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i82.i.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i82.i.i, label %rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge, label %if.then.i85.i.i

rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge: ; preds = %rtl_write_byte.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit86.i.i

if.then.i85.i.i:                                  ; preds = %rtl_write_byte.exit78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i84.i.i = tail call zeroext i8 %185(ptr noundef %97, i32 noundef 2) #6
  br label %rtl_write_byte.exit86.i.i

rtl_write_byte.exit86.i.i:                        ; preds = %if.then.i85.i.i, %rtl_write_byte.exit78.i.i.rtl_write_byte.exit86.i.i_crit_edge
  %186 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %187(ptr noundef %97, i32 noundef 1314, i8 noundef zeroext 0) #6
  %188 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i89.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %write_readback.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %write_readback.i89.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i90.i.i = icmp eq i8 %191, 0
  br i1 %tobool.not.i90.i.i, label %rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge, label %if.then.i93.i.i

rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge: ; preds = %rtl_write_byte.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit94.i.i

if.then.i93.i.i:                                  ; preds = %rtl_write_byte.exit86.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %read8_sync.i42.i131.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %read8_sync.i42.i131.i, align 4
  %call.i92.i.i = tail call zeroext i8 %193(ptr noundef %97, i32 noundef 1314) #6
  br label %rtl_write_byte.exit94.i.i

rtl_write_byte.exit94.i.i:                        ; preds = %if.then.i93.i.i, %rtl_write_byte.exit86.i.i.rtl_write_byte.exit94.i.i_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %97, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.69) #6
  br label %if.then71.i

if.end.i.i:                                       ; preds = %while.end.i.i.if.end.i.i_crit_edge, %rtl_write_byte.exit33.i.i.if.end.i.i_crit_edge
  %194 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %195(ptr noundef %97, i32 noundef 2, i8 noundef zeroext -30) #6
  %196 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i97.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %write_readback.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %write_readback.i97.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i98.i.i = icmp eq i8 %199, 0
  br i1 %tobool.not.i98.i.i, label %if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge, label %if.then.i101.i.i

if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rtl_write_byte.exit102.i.i

if.then.i101.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i99.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 9
  %200 = ptrtoint ptr %read8_sync.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %read8_sync.i99.i.i, align 4
  %call.i100.i.i = tail call zeroext i8 %201(ptr noundef %97, i32 noundef 2) #6
  br label %rtl_write_byte.exit102.i.i

rtl_write_byte.exit102.i.i:                       ; preds = %if.then.i101.i.i, %if.end.i.i.rtl_write_byte.exit102.i.i_crit_edge
  %202 = ptrtoint ptr %write8_async.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %write8_async.i.i123.i, align 4
  tail call void %203(ptr noundef %97, i32 noundef 17, i8 noundef zeroext 34) #6
  %204 = ptrtoint ptr %cfg.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cfg.i.i124.i, align 8
  %write_readback.i105.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %write_readback.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %write_readback.i105.i.i, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i106.i.i = icmp eq i8 %207, 0
  br i1 %tobool.not.i106.i.i, label %rtl_write_byte.exit102.i.i.if.then71.i_crit_edge, label %if.then.i109.i.i

rtl_write_byte.exit102.i.i.if.then71.i_crit_edge: ; preds = %rtl_write_byte.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71.i

if.then.i109.i.i:                                 ; preds = %rtl_write_byte.exit102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %read8_sync.i107.i.i = getelementptr inbounds %struct.rtl_priv, ptr %97, i32 0, i32 13, i32 9
  %208 = ptrtoint ptr %read8_sync.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %read8_sync.i107.i.i, align 4
  %call.i108.i.i = tail call zeroext i8 %209(ptr noundef %97, i32 noundef 17) #6
  br label %if.then71.i

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %rfpwr_state) #6
  br label %cleanup

if.then71.i:                                      ; preds = %if.then.i109.i.i, %rtl_write_byte.exit102.i.i.if.then71.i_crit_edge, %rtl_write_byte.exit94.i.i, %sw.bb36.i.if.then71.i_crit_edge, %if.else30.i, %if.then26.i, %if.then21.i, %if.else13.i, %if.then12.i
  %210 = ptrtoint ptr %rfpwr_state1 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %rfpwr_state, ptr %rfpwr_state1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then71.i, %sw.epilog.i, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %if.then71.i ], [ false, %sw.epilog.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8723_phy_set_sw_chnl_cmdarray(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_save_mac_registers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_path_adda_on(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_pi_mode_switch(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_mac_setting_calibration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723_phy_reload_mac_registers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723e_dm_write_dig(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !118, !119, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 41, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 57, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 72, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 537, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 549, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 653, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 722, i32 4}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rtl8723e_phy_scan_operation_backup._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8723e_phy_scan_operation_backup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 737, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 763, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rtl8723e_phy_set_bw_mode_callback._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rtl8723e_phy_set_bw_mode_callback._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @rtl8723e_phy_set_bw_mode_callback._entry.14, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 788, i32 3}
!29 = !{ptr @rtl8723e_phy_set_bw_mode_callback._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 794, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 811, i32 3}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 825, i32 2}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 857, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 864, i32 3}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 868, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1445, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1451, i32 4}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1456, i32 4}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1461, i32 4}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1473, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 112, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 192, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 198, i32 3}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 206, i32 3}
!65 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 212, i32 3}
!69 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @_rtl8723e_phy_bb8192c_config_parafile._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 270, i32 4}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 280, i32 4}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 476, i32 3}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 299, i32 3}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 308, i32 3}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 317, i32 3}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 326, i32 3}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 335, i32 3}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 344, i32 3}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 353, i32 3}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 362, i32 3}
!93 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 371, i32 3}
!95 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 380, i32 3}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 389, i32 3}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 398, i32 3}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 407, i32 3}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 416, i32 3}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 425, i32 3}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 434, i32 3}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 229, i32 2}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 233, i32 2}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 926, i32 2}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 949, i32 4}
!118 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @_rtl8723e_phy_sw_chnl_step_by_step._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1483, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1504, i32 2}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1570, i32 5}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1577, i32 4}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1594, i32 4}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1619, i32 5}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1628, i32 5}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1636, i32 3}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8723ae/phy.c", i32 1542, i32 3}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"branch_weights", i32 2000, i32 1}
!149 = !{i8 0, i8 2}
!150 = !{!"auto-init"}
