; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c"
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
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"regaddr(%#x),rfpath(%#x),bitmask(%#x),original_value(%#x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"regaddr(%#x), bitmask(%#x), data(%#x), rfpath(%#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@RTL8192EE_RADIOA_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Radio_A:RTL8192EE_RADIOA_ARRAY %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Radio No %x\0A\00", [19 x i8] zeroinitializer }, align 32
@RTL8192EE_RADIOB_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Radio_A:RTL8192EE_RADIOB_ARRAY %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Default framesync (0x%x) = 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@rtl92ee_phy_scan_operation_backup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 1649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtl8192ee: Unknown Scan Backup operation.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rtl92ee_phy_scan_operation_backup\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c\00", [43 x i8] zeroinitializer }, align 32
@rtl92ee_phy_scan_operation_backup._entry_ptr = internal global ptr @rtl92ee_phy_scan_operation_backup._entry, section ".printk_index", align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Switch to %s bandwidth\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20MHz\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"40MHz\00", [26 x i8] zeroinitializer }, align 32
@rtl92ee_phy_set_bw_mode_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 1691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013rtl8192ee: unknown bandwidth: %#X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rtl92ee_phy_set_bw_mode_callback\00", [63 x i8] zeroinitializer }, align 32
@rtl92ee_phy_set_bw_mode_callback._entry_ptr = internal global ptr @rtl92ee_phy_set_bw_mode_callback._entry, section ".printk_index", align 4
@rtl92ee_phy_set_bw_mode_callback._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.13, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtl92ee_phy_set_bw_mode_callback._entry_ptr.20 = internal global ptr @rtl92ee_phy_set_bw_mode_callback._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"false driver sleep or unload\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switch to channel%d\0A\00", [43 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl92ee_phy_sw_chnl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8192ee: WIRELESS_MODE_G but channel>14\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"sw_chnl_inprogress false schedule workitem current channel %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sw_chnl_inprogress false driver sleep or unload\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"LCK:Start!!! currentband %x delay %d ms\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"-->IO Cmd(%#x), set_io_inprogress(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Resume DM after scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[IO CMD] Pause DM before scan.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"switch case %#x not processed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IO Type(%#x)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFR-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RFW-%d Addr[0x%x]=0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_bb8192ee_config_parafile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.13, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013rtl8192ee: Write BB Reg Fail!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"_rtl92ee_phy_bb8192ee_config_parafile\00", [58 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr = internal global ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry, section ".printk_index", align 4
@_rtl92ee_phy_bb8192ee_config_parafile._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.13, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013rtl8192ee: BB_PG Reg Fail!!\0A\00", [33 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.39 = internal global ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.37, section ".printk_index", align 4
@_rtl92ee_phy_bb8192ee_config_parafile._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.13, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013rtl8192ee: AGC Table Fail\0A\00", [35 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.42 = internal global ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.40, section ".printk_index", align 4
@RTL8192EE_PHY_REG_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@RTL8192EE_AGC_TAB_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"The agctab_array_table[0] is %x Rtl818EEPHY_REGArray[1] is %x\0A\00", [33 x i8] zeroinitializer }, align 32
@RTL8192EE_PHY_REG_ARRAY_PG = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid Band %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid RfPath %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid TxNum %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<==%s\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.phy_convert_txpwr_dbm_to_rel_val = private unnamed_addr constant [33 x i8] c"phy_convert_txpwr_dbm_to_rel_val\00", align 1
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Read Rtl8192EMACPHY_Array\0A\00", [37 x i8] zeroinitializer }, align 32
@RTL8192EE_MAC_ARRAY = external dso_local local_unnamed_addr global [0 x i32], align 4
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Img:RTL8192EE_MAC_ARRAY LEN %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Illegal channel!!\0A\00", [45 x i8] zeroinitializer }, align 32
@_rtl92ee_get_txpower_by_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rtl8192ee: Rate_Section is Illegal\0A\00", [60 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_get_ratesection_intxpower_byrate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid Rate!!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid RFPath!!\0A\00", [46 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_sw_chnl_step_by_step.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rtl8192ee: illegal channel for Zebra: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_sw_chnl_step_by_step._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.13, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtl8192ee: Invalid 'stage' = %d, Check it!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"_rtl92ee_phy_sw_chnl_step_by_step\00", [62 x i8] zeroinitializer }, align 32
@_rtl92ee_phy_sw_chnl_step_by_step._entry_ptr = internal global ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry, section ".printk_index", align 4
@__const._rtl92ee_phy_iq_calibrate.adda_reg = private unnamed_addr constant [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], align 4
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Tx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Path A Tx IQK Fail!!, ret = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path A Rx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Path A Rx IQK Fail!!, ret = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Path A IQK failed!!, ret = 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path B Tx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Path B Tx IQK Fail!!, ret = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Path B Rx IQK Success!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Path B Rx IQK Fail!!, ret = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Path B IQK failed!!, ret = 0\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IQK:Back to BB mode, load original value!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Path B Rx IQK fail!!\0A\00", [42 x i8] zeroinitializer }, align 32
@__const.rtl92ee_get_rightchnlplace_for_iqk.channel_all = private unnamed_addr constant [59 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E$&(*,.02468:<>@dfhjlnprtvxz|~\80\82\84\86\88\8A\8C\95\97\99\9B\9D\9F\A1\A3\A5", align 1
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"--->Cmd(%#x), set_io_inprogress(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no set txpower\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(%#x)\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IPS Set eRf nic enable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set ERFON sleeping:%d ms\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.80 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\0A ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IPS Set eRf nic disable\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 2096, i64 2100, i64 2104, i64 2108, i64 2120, i64 2124, i64 2152, i64 2156, i64 3584, i64 3588, i64 3592, i64 3600, i64 3604, i64 3608, i64 3612]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 52685, i64 52719, i64 57005]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 249, i64 250, i64 251, i64 252, i64 253, i64 254]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 254, i64 4094]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 178, i64 182]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.106 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.107 = internal global [28 x i64] [i64 26, i64 8, i64 1, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.109 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.110 = internal global [30 x i64] [i64 28, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 46, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 52, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 65, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 88, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 100, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 114, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 913, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 915, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 960, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1024, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1036, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1649, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1664, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1690, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1715, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1721, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1738, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1752, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1784, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1791, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1796, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2928, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2952, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2958, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2963, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2968, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2980, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 175, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 199, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 624, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 636, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 641, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 775, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 842, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 847, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 852, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 605, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 658, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 661, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1235, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1213, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1394, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1518, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1833, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 1857, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2544, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2555, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2564, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2576, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2582, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2597, i32 5 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2609, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2617, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2629, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2635, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2639, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2247, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2990, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 2997, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3014, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3061, i32 5 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3067, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3088, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3097, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3107, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [56 x i8] c"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 3147, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry, ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.37, ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.40, ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr, ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.39, ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.42, ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry, ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry_ptr, ptr @rtl92ee_phy_scan_operation_backup._entry, ptr @rtl92ee_phy_scan_operation_backup._entry_ptr, ptr @rtl92ee_phy_set_bw_mode_callback._entry, ptr @rtl92ee_phy_set_bw_mode_callback._entry.19, ptr @rtl92ee_phy_set_bw_mode_callback._entry_ptr, ptr @rtl92ee_phy_set_bw_mode_callback._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_phy_scan_operation_backup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_phy_set_bw_mode_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl92ee_phy_set_bw_mode_callback._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ee_phy_query_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %regaddr, i32 noundef %bitmask) #8
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #8
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #8, !range !180
  %and = and i32 %call.i, %bitmask
  %shr = lshr i32 %and, %4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.1, i32 noundef %bitmask, i32 noundef %regaddr, i32 noundef %call.i) #8
  ret i32 %shr
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_rtl_dbg_print(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_set_bb_reg(ptr nocapture noundef readonly %hw, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %2 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32_sync.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i32 noundef %regaddr) #8
  %4 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #8, !range !180
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
  tail call void %6(ptr noundef %1, i32 noundef %regaddr, i32 noundef %data.addr.0) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %write_readback.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.rtl_write_dword.exit_crit_edge, label %if.then.i

if.end.rtl_write_dword.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i15 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %11 = ptrtoint ptr %read32_sync.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read32_sync.i15, align 4
  %call.i16 = tail call i32 %12(ptr noundef %1, i32 noundef %regaddr) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i, %if.end.rtl_write_dword.exit_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.2, i32 noundef %regaddr, i32 noundef %bitmask, i32 noundef %data.addr.0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtl92ee_phy_query_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef %bitmask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.3, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask) #8
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #8
  %call = tail call fastcc i32 @_rtl92ee_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr)
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #8, !range !180
  %and = and i32 %call, %bitmask
  %shr = lshr i32 %and, %2
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.4, i32 noundef %regaddr, i32 noundef %rfpath, i32 noundef %bitmask, i32 noundef %call) #8
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rtl92ee_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 2084, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %cmp = icmp eq i32 %rfpath, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i48 = tail call i32 %17(ptr noundef %hw, i32 noundef %9, i32 noundef -1) #8
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
  tail call void %25(ptr noundef %hw, i32 noundef 2084, i32 noundef -1, i32 noundef %and4) #8
  %rfhssi_para25 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 8
  %26 = ptrtoint ptr %rfhssi_para25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rfhssi_para25, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  %cfg.i53 = getelementptr inbounds %struct.rtl_priv, ptr %29, i32 0, i32 32
  %30 = ptrtoint ptr %cfg.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cfg.i53, align 8
  %ops.i54 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i54, align 4
  %set_bbreg.i55 = getelementptr inbounds %struct.rtl_hal_ops, ptr %33, i32 0, i32 46
  %34 = ptrtoint ptr %set_bbreg.i55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_bbreg.i55, align 4
  tail call void %35(ptr noundef %hw, i32 noundef %27, i32 noundef -1, i32 noundef %or3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 4294960) #8
  br i1 %cmp, label %if.end.if.end16_crit_edge, label %if.else9

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rfpath)
  %cmp10 = icmp eq i32 %rfpath, 1
  br i1 %cmp10, label %if.else9.if.end16_crit_edge, label %if.else9.if.else19_crit_edge

if.else9.if.else19_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %.sink = phi i32 [ 2080, %if.end.if.end16_crit_edge ], [ 2088, %if.else9.if.end16_crit_edge ]
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %cfg.i62 = getelementptr inbounds %struct.rtl_priv, ptr %38, i32 0, i32 32
  %39 = ptrtoint ptr %cfg.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg.i62, align 8
  %ops.i63 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %ops.i63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i63, align 4
  %get_bbreg.i64 = getelementptr inbounds %struct.rtl_hal_ops, ptr %42, i32 0, i32 45
  %43 = ptrtoint ptr %get_bbreg.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_bbreg.i64, align 4
  %call.i65 = tail call i32 %44(ptr noundef %hw, i32 noundef %.sink, i32 noundef 256) #8
  %rfpi_enable.0 = trunc i32 %call.i65 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rfpi_enable.0)
  %tobool.not = icmp eq i8 %rfpi_enable.0, 0
  br i1 %tobool.not, label %if.end16.if.else19_crit_edge, label %if.then17

if.end16.if.else19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else19

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %rf_rbpi = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 17
  br label %if.end21

if.else19:                                        ; preds = %if.end16.if.else19_crit_edge, %if.else9.if.else19_crit_edge
  %rf_rb = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %rf_rb.sink = phi ptr [ %rf_rb, %if.else19 ], [ %rf_rbpi, %if.then17 ]
  %45 = ptrtoint ptr %rf_rb.sink to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rf_rb.sink, align 4
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %cfg.i72 = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i72, align 8
  %ops.i73 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i73, align 4
  %get_bbreg.i74 = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 45
  %53 = ptrtoint ptr %get_bbreg.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_bbreg.i74, align 4
  %call.i75 = tail call i32 %54(ptr noundef %hw, i32 noundef %46, i32 noundef 1048575) #8
  %rf_rb22 = getelementptr [4 x %struct.bb_reg_def], ptr %phy, i32 0, i32 %rfpath, i32 16
  %55 = ptrtoint ptr %rf_rb22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rf_rb22, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.33, i32 noundef %rfpath, i32 noundef %56, i32 noundef %call.i75) #8
  ret i32 %call.i75
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_set_rf_reg(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %addr, i32 noundef %bitmask, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %addr, i32 noundef %bitmask, i32 noundef %data, i32 noundef %rfpath) #8
  %rf_lock = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %rf_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %bitmask)
  %cmp.not = icmp eq i32 %bitmask, 1048575
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @_rtl92ee_phy_rf_serial_read(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %addr)
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask, i1 false) #8, !range !180
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
  %and.i = shl i32 %addr, 20
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
  tail call void %12(ptr noundef %hw, i32 noundef %6, i32 noundef -1, i32 noundef %or.i) #8
  %13 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rf3wire_offset.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %4, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.34, i32 noundef %rfpath, i32 noundef %14, i32 noundef %or.i) #8
  tail call void @_raw_spin_unlock(ptr noundef %rf_lock) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 5, ptr noundef nonnull @.str.5, i32 noundef %addr, i32 noundef %bitmask, i32 noundef %data.addr.0, i32 noundef %rfpath) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_mac_config(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.52) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.53, i32 noundef 202) #8
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %rtl_write_byte.exit.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %add2.i, %rtl_write_byte.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr @RTL8192EE_MAC_ARRAY, i32 %i.01.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %i.01.i, 1
  %arrayidx1.i = getelementptr i32, ptr @RTL8192EE_MAC_ARRAY, i32 %add.i
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %conv.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %3, i8 noundef zeroext %conv.i) #8
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_readback.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %for.body.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

for.body.i.rtl_write_byte.exit.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef %3) #8
  br label %rtl_write_byte.exit.i

rtl_write_byte.exit.i:                            ; preds = %if.then.i.i, %for.body.i.rtl_write_byte.exit.i_crit_edge
  %add2.i = add nuw nsw i32 %i.01.i, 2
  %cmp.i = icmp ult i32 %i.01.i, 200
  br i1 %cmp.i, label %rtl_write_byte.exit.i.for.body.i_crit_edge, label %_rtl92ee_phy_config_mac_with_headerfile.exit

rtl_write_byte.exit.i.for.body.i_crit_edge:       ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

_rtl92ee_phy_config_mac_with_headerfile.exit:     ; preds = %rtl_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_bb_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %rfintfo.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %rfintfo.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2144, ptr %rfintfo.i, align 4
  %rfintfo8.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %rfintfo8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2148, ptr %rfintfo8.i, align 4
  %rfintfe.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %rfintfe.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2144, ptr %rfintfe.i, align 4
  %rfintfe13.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %rfintfe13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2148, ptr %rfintfe13.i, align 4
  %rf3wire_offset.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 4
  %8 = ptrtoint ptr %rf3wire_offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2112, ptr %rf3wire_offset.i, align 4
  %rf3wire_offset18.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %rf3wire_offset18.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2116, ptr %rf3wire_offset18.i, align 4
  %rfhssi_para2.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 8
  %10 = ptrtoint ptr %rfhssi_para2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2084, ptr %rfhssi_para2.i, align 4
  %rfhssi_para223.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %rfhssi_para223.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2092, ptr %rfhssi_para223.i, align 4
  %rf_rb.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 16
  %12 = ptrtoint ptr %rf_rb.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2208, ptr %rf_rb.i, align 4
  %rf_rb28.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 16
  %13 = ptrtoint ptr %rf_rb28.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2212, ptr %rf_rb28.i, align 4
  %rf_rbpi.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 0, i32 17
  %14 = ptrtoint ptr %rf_rbpi.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2232, ptr %rf_rbpi.i, align 4
  %rf_rbpi33.i = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 0, i32 1, i32 17
  %15 = ptrtoint ptr %rf_rbpi33.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2236, ptr %rf_rbpi33.i, align 4
  %read16_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 10
  %16 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16_sync.i, align 4
  %call.i = tail call zeroext i16 %17(ptr noundef %1, i32 noundef 2) #8
  %18 = or i16 %call.i, 8195
  %write16_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 6
  %19 = ptrtoint ptr %write16_async.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write16_async.i, align 4
  tail call void %20(ptr noundef %1, i32 noundef 2, i16 noundef zeroext %18) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_readback.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %entry.rtl_write_word.exit_crit_edge, label %if.then.i

entry.rtl_write_word.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_word.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %read16_sync.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read16_sync.i, align 4
  %call.i24 = tail call zeroext i16 %26(ptr noundef %1, i32 noundef 2) #8
  br label %rtl_write_word.exit

rtl_write_word.exit:                              ; preds = %if.then.i, %entry.rtl_write_word.exit_crit_edge
  %write8_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %27 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write8_async.i, align 4
  tail call void %28(ptr noundef %1, i32 noundef 31, i8 noundef zeroext 7) #8
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i, align 8
  %write_readback.i26 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write_readback.i26 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %write_readback.i26, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i27 = icmp eq i8 %32, 0
  br i1 %tobool.not.i27, label %rtl_write_word.exit.rtl_write_byte.exit_crit_edge, label %if.then.i29

rtl_write_word.exit.rtl_write_byte.exit_crit_edge: ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit

if.then.i29:                                      ; preds = %rtl_write_word.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %33 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read8_sync.i, align 4
  %call.i28 = tail call zeroext i8 %34(ptr noundef %1, i32 noundef 31) #8
  br label %rtl_write_byte.exit

rtl_write_byte.exit:                              ; preds = %if.then.i29, %rtl_write_word.exit.rtl_write_byte.exit_crit_edge
  %35 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i, align 4
  tail call void %36(ptr noundef %1, i32 noundef 2, i8 noundef zeroext -29) #8
  %37 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i, align 8
  %write_readback.i32 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i32 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i32, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i33 = icmp eq i8 %40, 0
  br i1 %tobool.not.i33, label %rtl_write_byte.exit.rtl_write_byte.exit37_crit_edge, label %if.then.i36

rtl_write_byte.exit.rtl_write_byte.exit37_crit_edge: ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit37

if.then.i36:                                      ; preds = %rtl_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %41 = ptrtoint ptr %read8_sync.i34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i34, align 4
  %call.i35 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 2) #8
  br label %rtl_write_byte.exit37

rtl_write_byte.exit37:                            ; preds = %if.then.i36, %rtl_write_byte.exit.rtl_write_byte.exit37_crit_edge
  %43 = ptrtoint ptr %write8_async.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write8_async.i, align 4
  tail call void %44(ptr noundef %1, i32 noundef 37, i8 noundef zeroext -128) #8
  %45 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i, align 8
  %write_readback.i40 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write_readback.i40 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %write_readback.i40, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i41 = icmp eq i8 %48, 0
  br i1 %tobool.not.i41, label %rtl_write_byte.exit37.rtl_write_byte.exit45_crit_edge, label %if.then.i44

rtl_write_byte.exit37.rtl_write_byte.exit45_crit_edge: ; preds = %rtl_write_byte.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit45

if.then.i44:                                      ; preds = %rtl_write_byte.exit37
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i42 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %49 = ptrtoint ptr %read8_sync.i42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read8_sync.i42, align 4
  %call.i43 = tail call zeroext i8 %50(ptr noundef %1, i32 noundef 37) #8
  br label %rtl_write_byte.exit45

rtl_write_byte.exit45:                            ; preds = %if.then.i44, %rtl_write_byte.exit37.rtl_write_byte.exit45_crit_edge
  %read32_sync.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 11
  %51 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read32_sync.i, align 4
  %call.i46 = tail call i32 %52(ptr noundef %1, i32 noundef 76) #8
  %or5 = or i32 %call.i46, 8388608
  %write32_async.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 7
  %53 = ptrtoint ptr %write32_async.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write32_async.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 76, i32 noundef %or5) #8
  %55 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cfg.i, align 8
  %write_readback.i48 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write_readback.i48 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %write_readback.i48, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i49 = icmp eq i8 %58, 0
  br i1 %tobool.not.i49, label %rtl_write_byte.exit45.rtl_write_dword.exit_crit_edge, label %if.then.i52

rtl_write_byte.exit45.rtl_write_dword.exit_crit_edge: ; preds = %rtl_write_byte.exit45
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_dword.exit

if.then.i52:                                      ; preds = %rtl_write_byte.exit45
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %read32_sync.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read32_sync.i, align 4
  %call.i51 = tail call i32 %60(ptr noundef %1, i32 noundef 76) #8
  br label %rtl_write_dword.exit

rtl_write_dword.exit:                             ; preds = %if.then.i52, %rtl_write_byte.exit45.rtl_write_dword.exit_crit_edge
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv, align 8
  tail call fastcc void @phy_config_bb_with_hdr_file(ptr noundef %hw, i8 noundef zeroext 0) #8
  %63 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv, align 8
  %uglygep.i.i = getelementptr i8, ptr %64, i32 7592
  %65 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 48)
  %autoload_failflag.i = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 17, i32 7
  %66 = ptrtoint ptr %autoload_failflag.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %autoload_failflag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool3.not.i = icmp eq i8 %67, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %rtl_write_dword.exit.if.end7.i_crit_edge

rtl_write_dword.exit.if.end7.i_crit_edge:         ; preds = %rtl_write_dword.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %rtl_write_dword.exit
  %pwrgroup_cnt.i = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 14, i32 38
  %68 = ptrtoint ptr %pwrgroup_cnt.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %pwrgroup_cnt.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then4.i
  %i.01.i.i = phi i32 [ 0, %if.then4.i ], [ %add17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY_PG, i32 %i.01.i.i
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %70)
  %cmp14.i.i = icmp ult i32 %70, -842150451
  br i1 %cmp14.i.i, label %if.then16.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then16.i.i:                                    ; preds = %for.body.i.i
  %add12.i.i = add nuw nsw i32 %i.01.i.i, 5
  %arrayidx13.i.i = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY_PG, i32 %add12.i.i
  %71 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx13.i.i, align 4
  %add8.i.i = add nuw nsw i32 %i.01.i.i, 3
  %arrayidx9.i.i = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY_PG, i32 %add8.i.i
  %73 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx9.i.i, align 4
  %add6.i.i = add nuw nsw i32 %i.01.i.i, 2
  %arrayidx7.i.i = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY_PG, i32 %add6.i.i
  %75 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx7.i.i, align 4
  %add.i.i = or i32 %i.01.i.i, 1
  %arrayidx5.i.i = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY_PG, i32 %add.i.i
  %77 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx5.i.i, align 4
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 8
  %81 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i32 %74, label %sw.default.i.i.i.i [
    i32 3584, label %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge
    i32 2096, label %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge56
    i32 3588, label %if.then16.i.i.sw.bb1.i.i.i.i_crit_edge
    i32 2100, label %if.then16.i.i.sw.bb1.i.i.i.i_crit_edge57
    i32 3592, label %if.then16.i.i.sw.bb2.i.i.i.i_crit_edge
    i32 2104, label %if.then16.i.i.sw.bb2.i.i.i.i_crit_edge58
    i32 2156, label %sw.bb3.i.i.i.i
    i32 3600, label %if.then16.i.i.sw.bb4.i.i.i.i_crit_edge
    i32 2108, label %if.then16.i.i.sw.bb4.i.i.i.i_crit_edge59
    i32 3604, label %if.then16.i.i.sw.bb5.i.i.i.i_crit_edge
    i32 2120, label %if.then16.i.i.sw.bb5.i.i.i.i_crit_edge60
    i32 3608, label %if.then16.i.i.sw.bb6.i.i.i.i_crit_edge
    i32 2124, label %if.then16.i.i.sw.bb6.i.i.i.i_crit_edge61
    i32 3612, label %if.then16.i.i.sw.bb7.i.i.i.i_crit_edge
    i32 2152, label %if.then16.i.i.sw.bb7.i.i.i.i_crit_edge62
  ]

if.then16.i.i.sw.bb7.i.i.i.i_crit_edge62:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i.i.i

if.then16.i.i.sw.bb7.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i.i.i.i

if.then16.i.i.sw.bb6.i.i.i.i_crit_edge61:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i.i.i.i

if.then16.i.i.sw.bb6.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i.i.i.i

if.then16.i.i.sw.bb5.i.i.i.i_crit_edge60:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i.i.i

if.then16.i.i.sw.bb5.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i.i.i.i

if.then16.i.i.sw.bb4.i.i.i.i_crit_edge59:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i.i.i.i

if.then16.i.i.sw.bb4.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4.i.i.i.i

if.then16.i.i.sw.bb2.i.i.i.i_crit_edge58:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i.i.i

if.then16.i.i.sw.bb2.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i.i.i

if.then16.i.i.sw.bb1.i.i.i.i_crit_edge57:         ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i.i.i

if.then16.i.i.sw.bb1.i.i.i.i_crit_edge:           ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i.i.i

if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge56: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge: ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb1.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb1.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb1.i.i.i.i_crit_edge57
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb2.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb2.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb2.i.i.i.i_crit_edge58
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb3.i.i.i.i:                                   ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb4.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb4.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb4.i.i.i.i_crit_edge59
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb5.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb5.i.i.i.i_crit_edge60
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb6.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb6.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb6.i.i.i.i_crit_edge61
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.bb7.i.i.i.i:                                   ; preds = %if.then16.i.i.sw.bb7.i.i.i.i_crit_edge, %if.then16.i.i.sw.bb7.i.i.i.i_crit_edge62
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

sw.default.i.i.i.i:                               ; preds = %if.then16.i.i
  %and.i.i.i.i = and i32 %74, 4095
  %82 = add nsw i32 %and.i.i.i.i, -3104
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %82)
  %83 = icmp ult i32 %82, 45
  br i1 %83, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add i32 %74, 992
  %div27.i.i.i.i = lshr i32 %sub.i.i.i.i, 2
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.default.i.i.i.i
  %84 = add nsw i32 %and.i.i.i.i, -3616
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %84)
  %85 = icmp ult i32 %84, 45
  br i1 %85, label %if.then14.i.i.i.i, label %if.else.i.i.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge

if.else.i.i.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub15.i.i.i.i = add i32 %74, 480
  %div1626.i.i.i.i = lshr i32 %sub15.i.i.i.i, 2
  br label %_rtl92ee_get_rate_section_index.exit.i.i.i

_rtl92ee_get_rate_section_index.exit.i.i.i:       ; preds = %if.then14.i.i.i.i, %if.else.i.i.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge, %if.then.i.i.i.i, %sw.bb7.i.i.i.i, %sw.bb6.i.i.i.i, %sw.bb5.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb3.i.i.i.i, %sw.bb2.i.i.i.i, %sw.bb1.i.i.i.i, %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge, %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge56
  %index.0.i.i.i.i = phi i32 [ %div27.i.i.i.i, %if.then.i.i.i.i ], [ %div1626.i.i.i.i, %if.then14.i.i.i.i ], [ 0, %if.else.i.i.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge ], [ 7, %sw.bb7.i.i.i.i ], [ 6, %sw.bb6.i.i.i.i ], [ 5, %sw.bb5.i.i.i.i ], [ 4, %sw.bb4.i.i.i.i ], [ 3, %sw.bb3.i.i.i.i ], [ 2, %sw.bb2.i.i.i.i ], [ 1, %sw.bb1.i.i.i.i ], [ 0, %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge ], [ 0, %if.then16.i.i._rtl92ee_get_rate_section_index.exit.i.i.i_crit_edge56 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %switch.i.i.i = icmp ult i32 %70, 2
  br i1 %switch.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_rtl92ee_get_rate_section_index.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.45, i32 noundef %70) #8
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %_rtl92ee_get_rate_section_index.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp2.i.i.i = icmp ugt i32 %78, 3
  br i1 %cmp2.i.i.i, label %if.then3.i.i.i, label %if.end4.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.46, i32 noundef %78) #8
  br label %for.inc.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp5.i.i.i = icmp ugt i32 %76, 3
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end7.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %80, i64 noundef 9, i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %76) #8
  br label %for.inc.i.i

if.end7.i.i.i:                                    ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i.i.i = and i32 %index.0.i.i.i.i, 255
  %arrayidx10.i.i.i = getelementptr %struct.rtl_priv, ptr %80, i32 0, i32 14, i32 42, i32 %70, i32 %78, i32 %76, i32 %idxprom.i.i.i
  %86 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %72, ptr %arrayidx10.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end7.i.i.i, %if.then6.i.i.i, %if.then3.i.i.i, %if.then.i.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add17.i.i = add nuw nsw i32 %i.01.i.i, 6
  %cmp3.i.i = icmp ult i32 %i.01.i.i, 162
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end7.i_crit_edge

for.inc.i.i.if.end7.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end7.i:                                        ; preds = %for.inc.i.i.if.end7.i_crit_edge, %rtl_write_dword.exit.if.end7.i_crit_edge
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 8
  %arrayidx25.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 3
  %arrayidx7.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 3
  %89 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx7.i.i.i, align 4
  %shr.i.i.i = lshr i32 %90, 24
  %91 = lshr i32 %90, 28
  %mul.i.i.i = mul nuw nsw i32 %91, 10
  %and14.i.i.i = and i32 %shr.i.i.i, 15
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, %and14.i.i.i
  %conv15.i.i.i = trunc i32 %add.i.i.i to i8
  %arrayidx9.i.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 43, i32 0, i32 0
  %92 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv15.i.i.i, ptr %arrayidx9.i.i.i.i, align 2
  %arrayidx44.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %arrayidx44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx44.i.i.i, align 4
  %shr45.i.i.i = lshr i32 %94, 24
  %95 = lshr i32 %94, 28
  %mul52.i.i.i = mul nuw nsw i32 %95, 10
  %and54.i.i.i = and i32 %shr45.i.i.i, 15
  %add55.i.i.i = add nuw nsw i32 %mul52.i.i.i, %and54.i.i.i
  %conv56.i.i.i = trunc i32 %add55.i.i.i to i8
  %96 = load ptr, ptr %priv, align 8
  %arrayidx17.i.i.i.i = getelementptr %struct.rtl_priv, ptr %96, i32 0, i32 14, i32 43, i32 0, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx17.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv56.i.i.i, ptr %arrayidx17.i.i.i.i, align 1
  %arrayidx62.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 5
  %98 = ptrtoint ptr %arrayidx62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx62.i.i.i, align 4
  %shr63.i.i.i = lshr i32 %99, 24
  %100 = lshr i32 %99, 28
  %mul70.i.i.i = mul nuw nsw i32 %100, 10
  %and72.i.i.i = and i32 %shr63.i.i.i, 15
  %add73.i.i.i = add nuw nsw i32 %mul70.i.i.i, %and72.i.i.i
  %conv74.i.i.i = trunc i32 %add73.i.i.i to i8
  %101 = load ptr, ptr %priv, align 8
  %arrayidx24.i.i.i.i = getelementptr %struct.rtl_priv, ptr %101, i32 0, i32 14, i32 43, i32 0, i32 0, i32 2
  %102 = ptrtoint ptr %arrayidx24.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv74.i.i.i, ptr %arrayidx24.i.i.i.i, align 2
  %arrayidx80.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 0, i32 1, i32 7
  %103 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx80.i.i.i, align 4
  %shr81.i.i.i = lshr i32 %104, 24
  %105 = lshr i32 %104, 28
  %mul88.i.i.i = mul nuw nsw i32 %105, 10
  %and90.i.i.i = and i32 %shr81.i.i.i, 15
  %add91.i.i.i = add nuw nsw i32 %mul88.i.i.i, %and90.i.i.i
  %conv92.i.i.i = trunc i32 %add91.i.i.i to i8
  %106 = load ptr, ptr %priv, align 8
  %arrayidx31.i.i.i.i = getelementptr %struct.rtl_priv, ptr %106, i32 0, i32 14, i32 43, i32 0, i32 1, i32 3
  %107 = ptrtoint ptr %arrayidx31.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv92.i.i.i, ptr %arrayidx31.i.i.i.i, align 1
  %108 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx25.i.i.i, align 4
  %conv30.1.i.i.i = lshr i32 %109, 4
  %110 = and i32 %conv30.1.i.i.i, 15
  %mul33.1.i.i.i = mul nuw nsw i32 %110, 10
  %and35.1.i.i.i = and i32 %109, 15
  %add36.1.i.i.i = add nuw nsw i32 %mul33.1.i.i.i, %and35.1.i.i.i
  %conv37.1.i.i.i = trunc i32 %add36.1.i.i.i to i8
  %111 = load ptr, ptr %priv, align 8
  %arrayidx9.i133.1.i.i.i = getelementptr %struct.rtl_priv, ptr %111, i32 0, i32 14, i32 43, i32 1, i32 0
  %112 = ptrtoint ptr %arrayidx9.i133.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv37.1.i.i.i, ptr %arrayidx9.i133.1.i.i.i, align 2
  %arrayidx44.1.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx44.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx44.1.i.i.i, align 4
  %shr45.1.i.i.i = lshr i32 %114, 24
  %115 = lshr i32 %114, 28
  %mul52.1.i.i.i = mul nuw nsw i32 %115, 10
  %and54.1.i.i.i = and i32 %shr45.1.i.i.i, 15
  %add55.1.i.i.i = add nuw nsw i32 %mul52.1.i.i.i, %and54.1.i.i.i
  %conv56.1.i.i.i = trunc i32 %add55.1.i.i.i to i8
  %116 = load ptr, ptr %priv, align 8
  %arrayidx17.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %116, i32 0, i32 14, i32 43, i32 1, i32 0, i32 1
  %117 = ptrtoint ptr %arrayidx17.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv56.1.i.i.i, ptr %arrayidx17.i.1.i.i.i, align 1
  %arrayidx62.1.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 5
  %118 = ptrtoint ptr %arrayidx62.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx62.1.i.i.i, align 4
  %shr63.1.i.i.i = lshr i32 %119, 24
  %120 = lshr i32 %119, 28
  %mul70.1.i.i.i = mul nuw nsw i32 %120, 10
  %and72.1.i.i.i = and i32 %shr63.1.i.i.i, 15
  %add73.1.i.i.i = add nuw nsw i32 %mul70.1.i.i.i, %and72.1.i.i.i
  %conv74.1.i.i.i = trunc i32 %add73.1.i.i.i to i8
  %121 = load ptr, ptr %priv, align 8
  %arrayidx24.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %121, i32 0, i32 14, i32 43, i32 1, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx24.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv74.1.i.i.i, ptr %arrayidx24.i.1.i.i.i, align 2
  %arrayidx80.1.i.i.i = getelementptr %struct.rtl_priv, ptr %88, i32 0, i32 14, i32 42, i32 0, i32 1, i32 1, i32 7
  %123 = ptrtoint ptr %arrayidx80.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx80.1.i.i.i, align 4
  %shr81.1.i.i.i = lshr i32 %124, 24
  %125 = lshr i32 %124, 28
  %mul88.1.i.i.i = mul nuw nsw i32 %125, 10
  %and90.1.i.i.i = and i32 %shr81.1.i.i.i, 15
  %add91.1.i.i.i = add nuw nsw i32 %mul88.1.i.i.i, %and90.1.i.i.i
  %conv92.1.i.i.i = trunc i32 %add91.1.i.i.i to i8
  %126 = load ptr, ptr %priv, align 8
  %arrayidx31.i.1.i.i.i = getelementptr %struct.rtl_priv, ptr %126, i32 0, i32 14, i32 43, i32 1, i32 1, i32 3
  %127 = ptrtoint ptr %arrayidx31.i.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv92.1.i.i.i, ptr %arrayidx31.i.1.i.i.i, align 1
  %128 = load ptr, ptr %priv, align 8
  %tx_power_by_rate_offset37.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %128, i32 0, i32 14, i32 42
  %arrayidx27.i.i.i = getelementptr %struct.rtl_priv, ptr %128, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 3
  %arrayidx34.i.i.i = getelementptr %struct.rtl_priv, ptr %128, i32 0, i32 14, i32 42, i32 0, i32 1, i32 0, i32 2
  %arrayidx8.i.i.i = getelementptr %struct.rtl_priv, ptr %128, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 2
  %arrayidx15.i.i.i = getelementptr %struct.rtl_priv, ptr %128, i32 0, i32 14, i32 42, i32 0, i32 0, i32 0, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i.for.body.i.i.i_crit_edge, %if.end7.i
  %cmp3.i.i.i = phi i1 [ true, %if.end7.i ], [ false, %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i.for.body.i.i.i_crit_edge ]
  %indvars.iv.i.i.i = phi i32 [ 0, %if.end7.i ], [ 1, %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i.for.body.i.i.i_crit_edge ]
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 8
  br i1 %cmp3.i.i.i, label %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i, label %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i

_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.i.i3.i.i = getelementptr %struct.rtl_priv, ptr %130, i32 0, i32 14, i32 43, i32 0, i32 0
  %131 = ptrtoint ptr %arrayidx9.i.i3.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx9.i.i3.i.i, align 2
  %conv25.i.i.i.i = zext i8 %132 to i32
  %133 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx8.i.i.i, align 4
  %shr36.2.i.i.i.i = lshr i32 %134, 8
  %conv13.2.i.i.i.i = and i32 %shr36.2.i.i.i.i, 15
  %shr16.2.i.i.i.i = lshr i32 %134, 12
  %conv18.2.i.i.i.i = and i32 %shr16.2.i.i.i.i, 15
  %mul20.2.i.i.i.i = mul nuw nsw i32 %conv18.2.i.i.i.i, 10
  %add22.2.i.i.i.i = add nuw nsw i32 %mul20.2.i.i.i.i, %conv13.2.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.2.i.i.i.i = icmp ugt i32 %add22.2.i.i.i.i, %conv25.i.i.i.i
  %sub.2.i.i.i.i = sub nsw i32 %add22.2.i.i.i.i, %conv25.i.i.i.i
  %sub32.2.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.2.i.i.i.i
  %cond.2.i.i.i.i = select i1 %cmp26.2.i.i.i.i, i32 %sub.2.i.i.i.i, i32 %sub32.2.i.i.i.i
  %conv41.2.i.i.i.i = shl nsw i32 %cond.2.i.i.i.i, 8
  %135 = and i32 %conv41.2.i.i.i.i, 65280
  %shl.3.i.i.i.i = and i32 %134, -65281
  %or.3.i.i.i.i = or i32 %135, %shl.3.i.i.i.i
  %136 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or.3.i.i.i.i, ptr %arrayidx8.i.i.i, align 4
  %137 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx15.i.i.i, align 4
  %shr36.i138.i.i.i = lshr i32 %138, 24
  %conv13.i.i.i.i = and i32 %shr36.i138.i.i.i, 15
  %shr16.i.i.i.i = lshr i32 %138, 28
  %mul20.i.i.i.i = mul nuw nsw i32 %shr16.i.i.i.i, 10
  %add22.i.i.i.i = add nuw nsw i32 %mul20.i.i.i.i, %conv13.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.i.i.i.i = icmp ugt i32 %add22.i.i.i.i, %conv25.i.i.i.i
  %sub.i.i.i2.i = sub nsw i32 %add22.i.i.i.i, %conv25.i.i.i.i
  %sub32.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.i.i.i.i
  %cond.i.i.i.i = select i1 %cmp26.i.i.i.i, i32 %sub.i.i.i2.i, i32 %sub32.i.i.i.i
  %shr36.1.i140.i.i.i = lshr i32 %138, 16
  %conv13.1.i.i.i.i = and i32 %shr36.1.i140.i.i.i, 15
  %shr16.1.i.i.i.i = lshr i32 %138, 20
  %conv18.1.i.i.i.i = and i32 %shr16.1.i.i.i.i, 15
  %mul20.1.i.i.i.i = mul nuw nsw i32 %conv18.1.i.i.i.i, 10
  %add22.1.i.i.i.i = add nuw nsw i32 %mul20.1.i.i.i.i, %conv13.1.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.1.i.i.i.i = icmp ugt i32 %add22.1.i.i.i.i, %conv25.i.i.i.i
  %sub.1.i.i.i.i = sub nsw i32 %add22.1.i.i.i.i, %conv25.i.i.i.i
  %sub32.1.i.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.1.i.i.i.i
  %cond.1.i.i.i.i = select i1 %cmp26.1.i.i.i.i, i32 %sub.1.i.i.i.i, i32 %sub32.1.i.i.i.i
  %shr36.2.i141.i.i.i = lshr i32 %138, 8
  %conv13.2.i142.i.i.i = and i32 %shr36.2.i141.i.i.i, 15
  %shr16.2.i143.i.i.i = lshr i32 %138, 12
  %conv18.2.i144.i.i.i = and i32 %shr16.2.i143.i.i.i, 15
  %mul20.2.i145.i.i.i = mul nuw nsw i32 %conv18.2.i144.i.i.i, 10
  %add22.2.i146.i.i.i = add nuw nsw i32 %mul20.2.i145.i.i.i, %conv13.2.i142.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i146.i.i.i, i32 %conv25.i.i.i.i)
  %cmp26.2.i147.i.i.i = icmp ugt i32 %add22.2.i146.i.i.i, %conv25.i.i.i.i
  %sub.2.i148.i.i.i = sub nsw i32 %add22.2.i146.i.i.i, %conv25.i.i.i.i
  %sub32.2.i149.i.i.i = sub nsw i32 %conv25.i.i.i.i, %add22.2.i146.i.i.i
  %cond.2.i150.i.i.i = select i1 %cmp26.2.i147.i.i.i, i32 %sub.2.i148.i.i.i, i32 %sub32.2.i149.i.i.i
  br label %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i

_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9.i161.i.i.i = getelementptr %struct.rtl_priv, ptr %130, i32 0, i32 14, i32 43, i32 %indvars.iv.i.i.i, i32 0
  %139 = ptrtoint ptr %arrayidx9.i161.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx9.i161.i.i.i, align 2
  %conv25.i164.i.i.i = zext i8 %140 to i32
  %141 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx27.i.i.i, align 4
  %conv13.3.i.i.i.i = and i32 %142, 15
  %shr16.3.i.i.i.i = lshr i32 %142, 4
  %conv18.3.i.i.i.i = and i32 %shr16.3.i.i.i.i, 15
  %mul20.3.i.i.i.i = mul nuw nsw i32 %conv18.3.i.i.i.i, 10
  %add22.3.i.i.i.i = add nuw nsw i32 %mul20.3.i.i.i.i, %conv13.3.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i.i.i.i, i32 %conv25.i164.i.i.i)
  %cmp26.3.i.i.i.i = icmp ugt i32 %add22.3.i.i.i.i, %conv25.i164.i.i.i
  %sub.3.i.i.i.i = sub nsw i32 %add22.3.i.i.i.i, %conv25.i164.i.i.i
  %sub32.3.i.i.i.i = sub nsw i32 %conv25.i164.i.i.i, %add22.3.i.i.i.i
  %cond.3.i.i.i.i = select i1 %cmp26.3.i.i.i.i, i32 %sub.3.i.i.i.i, i32 %sub32.3.i.i.i.i
  %shl.3.i170.i.i.i = and i32 %142, -256
  %conv41.3.i171.i.i.i = and i32 %cond.3.i.i.i.i, 255
  %or.3.i172.i.i.i = or i32 %conv41.3.i171.i.i.i, %shl.3.i170.i.i.i
  %143 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %or.3.i172.i.i.i, ptr %arrayidx27.i.i.i, align 4
  %144 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx34.i.i.i, align 4
  %shr36.i174.i.i.i = lshr i32 %145, 24
  %conv13.i175.i.i.i = and i32 %shr36.i174.i.i.i, 15
  %shr16.i176.i.i.i = lshr i32 %145, 28
  %mul20.i177.i.i.i = mul nuw nsw i32 %shr16.i176.i.i.i, 10
  %add22.i178.i.i.i = add nuw nsw i32 %mul20.i177.i.i.i, %conv13.i175.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i178.i.i.i, i32 %conv25.i164.i.i.i)
  %cmp26.i179.i.i.i = icmp ugt i32 %add22.i178.i.i.i, %conv25.i164.i.i.i
  %sub.i180.i.i.i = sub nsw i32 %add22.i178.i.i.i, %conv25.i164.i.i.i
  %sub32.i181.i.i.i = sub nsw i32 %conv25.i164.i.i.i, %add22.i178.i.i.i
  %cond.i182.i.i.i = select i1 %cmp26.i179.i.i.i, i32 %sub.i180.i.i.i, i32 %sub32.i181.i.i.i
  %shr36.1.i184.i.i.i = lshr i32 %145, 16
  %conv13.1.i185.i.i.i = and i32 %shr36.1.i184.i.i.i, 15
  %shr16.1.i186.i.i.i = lshr i32 %145, 20
  %conv18.1.i187.i.i.i = and i32 %shr16.1.i186.i.i.i, 15
  %mul20.1.i188.i.i.i = mul nuw nsw i32 %conv18.1.i187.i.i.i, 10
  %add22.1.i189.i.i.i = add nuw nsw i32 %mul20.1.i188.i.i.i, %conv13.1.i185.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i189.i.i.i, i32 %conv25.i164.i.i.i)
  %cmp26.1.i190.i.i.i = icmp ugt i32 %add22.1.i189.i.i.i, %conv25.i164.i.i.i
  %sub.1.i191.i.i.i = sub nsw i32 %add22.1.i189.i.i.i, %conv25.i164.i.i.i
  %sub32.1.i192.i.i.i = sub nsw i32 %conv25.i164.i.i.i, %add22.1.i189.i.i.i
  %cond.1.i193.i.i.i = select i1 %cmp26.1.i190.i.i.i, i32 %sub.1.i191.i.i.i, i32 %sub32.1.i192.i.i.i
  %shr36.2.i194.i.i.i = lshr i32 %145, 8
  %conv13.2.i195.i.i.i = and i32 %shr36.2.i194.i.i.i, 15
  %shr16.2.i196.i.i.i = lshr i32 %145, 12
  %conv18.2.i197.i.i.i = and i32 %shr16.2.i196.i.i.i, 15
  %mul20.2.i198.i.i.i = mul nuw nsw i32 %conv18.2.i197.i.i.i, 10
  %add22.2.i199.i.i.i = add nuw nsw i32 %mul20.2.i198.i.i.i, %conv13.2.i195.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i199.i.i.i, i32 %conv25.i164.i.i.i)
  %cmp26.2.i200.i.i.i = icmp ugt i32 %add22.2.i199.i.i.i, %conv25.i164.i.i.i
  %sub.2.i201.i.i.i = sub nsw i32 %add22.2.i199.i.i.i, %conv25.i164.i.i.i
  %sub32.2.i202.i.i.i = sub nsw i32 %conv25.i164.i.i.i, %add22.2.i199.i.i.i
  %cond.2.i203.i.i.i = select i1 %cmp26.2.i200.i.i.i, i32 %sub.2.i201.i.i.i, i32 %sub32.2.i202.i.i.i
  br label %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i

_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i: ; preds = %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i
  %cond.i182.sink.i.i.i = phi i32 [ %cond.i182.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i ], [ %cond.i.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i ]
  %cond.1.i193.sink.i.i.i = phi i32 [ %cond.1.i193.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i ], [ %cond.1.i.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i ]
  %cond.2.i203.sink.i.i.i = phi i32 [ %cond.2.i203.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i ], [ %cond.2.i150.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i ]
  %.sink.i.i.i = phi i32 [ %145, %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i ], [ %138, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i ]
  %arrayidx34.sink.i.i.i = phi ptr [ %arrayidx34.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit163.i.i.i ], [ %arrayidx15.i.i.i, %_rtl92ee_phy_get_txpower_by_rate_base.exit.i.i.i ]
  %146 = shl i32 %cond.i182.sink.i.i.i, 24
  %conv41.1.i204.i.i.i = shl nsw i32 %cond.1.i193.sink.i.i.i, 16
  %147 = and i32 %conv41.1.i204.i.i.i, 16711680
  %148 = or i32 %147, %146
  %conv41.2.i205.i.i.i = shl nsw i32 %cond.2.i203.sink.i.i.i, 8
  %149 = and i32 %conv41.2.i205.i.i.i, 65280
  %shl.3.i206.i.i.i = or i32 %148, %149
  %conv41.3.i207.i.i.i = and i32 %.sink.i.i.i, 255
  %or.3.i208.i.i.i = or i32 %shl.3.i206.i.i.i, %conv41.3.i207.i.i.i
  %150 = ptrtoint ptr %arrayidx34.sink.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.3.i208.i.i.i, ptr %arrayidx34.sink.i.i.i, align 4
  %151 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %priv, align 8
  %arrayidx17.i.i4.i.i = getelementptr %struct.rtl_priv, ptr %152, i32 0, i32 14, i32 43, i32 %indvars.iv.i.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %arrayidx17.i.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx17.i.i4.i.i, align 1
  %arrayidx41.i.i.i = getelementptr [4 x [4 x [84 x i32]]], ptr %tx_power_by_rate_offset37.i.i.i, i32 0, i32 %indvars.iv.i.i.i
  %conv25.i216.i.i.i = zext i8 %154 to i32
  %155 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx41.i.i.i, align 4
  %shr36.i217.i.i.i = lshr i32 %156, 24
  %conv13.i218.i.i.i = and i32 %shr36.i217.i.i.i, 15
  %shr16.i219.i.i.i = lshr i32 %156, 28
  %mul20.i220.i.i.i = mul nuw nsw i32 %shr16.i219.i.i.i, 10
  %add22.i221.i.i.i = add nuw nsw i32 %mul20.i220.i.i.i, %conv13.i218.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i221.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.i222.i.i.i = icmp ugt i32 %add22.i221.i.i.i, %conv25.i216.i.i.i
  %sub.i223.i.i.i = sub nsw i32 %add22.i221.i.i.i, %conv25.i216.i.i.i
  %sub32.i224.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.i221.i.i.i
  %cond.i225.i.i.i = select i1 %cmp26.i222.i.i.i, i32 %sub.i223.i.i.i, i32 %sub32.i224.i.i.i
  %shr36.1.i227.i.i.i = lshr i32 %156, 16
  %conv13.1.i228.i.i.i = and i32 %shr36.1.i227.i.i.i, 15
  %shr16.1.i229.i.i.i = lshr i32 %156, 20
  %conv18.1.i230.i.i.i = and i32 %shr16.1.i229.i.i.i, 15
  %mul20.1.i231.i.i.i = mul nuw nsw i32 %conv18.1.i230.i.i.i, 10
  %add22.1.i232.i.i.i = add nuw nsw i32 %mul20.1.i231.i.i.i, %conv13.1.i228.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i232.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.1.i233.i.i.i = icmp ugt i32 %add22.1.i232.i.i.i, %conv25.i216.i.i.i
  %sub.1.i234.i.i.i = sub nsw i32 %add22.1.i232.i.i.i, %conv25.i216.i.i.i
  %sub32.1.i235.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.1.i232.i.i.i
  %cond.1.i236.i.i.i = select i1 %cmp26.1.i233.i.i.i, i32 %sub.1.i234.i.i.i, i32 %sub32.1.i235.i.i.i
  %shr36.2.i237.i.i.i = lshr i32 %156, 8
  %conv13.2.i238.i.i.i = and i32 %shr36.2.i237.i.i.i, 15
  %shr16.2.i239.i.i.i = lshr i32 %156, 12
  %conv18.2.i240.i.i.i = and i32 %shr16.2.i239.i.i.i, 15
  %mul20.2.i241.i.i.i = mul nuw nsw i32 %conv18.2.i240.i.i.i, 10
  %add22.2.i242.i.i.i = add nuw nsw i32 %mul20.2.i241.i.i.i, %conv13.2.i238.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i242.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.2.i243.i.i.i = icmp ugt i32 %add22.2.i242.i.i.i, %conv25.i216.i.i.i
  %sub.2.i244.i.i.i = sub nsw i32 %add22.2.i242.i.i.i, %conv25.i216.i.i.i
  %sub32.2.i245.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.2.i242.i.i.i
  %cond.2.i246.i.i.i = select i1 %cmp26.2.i243.i.i.i, i32 %sub.2.i244.i.i.i, i32 %sub32.2.i245.i.i.i
  %conv13.3.i247.i.i.i = and i32 %156, 15
  %shr16.3.i248.i.i.i = lshr i32 %156, 4
  %conv18.3.i249.i.i.i = and i32 %shr16.3.i248.i.i.i, 15
  %mul20.3.i250.i.i.i = mul nuw nsw i32 %conv18.3.i249.i.i.i, 10
  %add22.3.i251.i.i.i = add nuw nsw i32 %mul20.3.i250.i.i.i, %conv13.3.i247.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i251.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.3.i252.i.i.i = icmp ugt i32 %add22.3.i251.i.i.i, %conv25.i216.i.i.i
  %sub.3.i253.i.i.i = sub nsw i32 %add22.3.i251.i.i.i, %conv25.i216.i.i.i
  %sub32.3.i254.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.3.i251.i.i.i
  %cond.3.i255.i.i.i = select i1 %cmp26.3.i252.i.i.i, i32 %sub.3.i253.i.i.i, i32 %sub32.3.i254.i.i.i
  %157 = shl i32 %cond.i225.i.i.i, 24
  %conv41.1.i256.i.i.i = shl nsw i32 %cond.1.i236.i.i.i, 16
  %158 = and i32 %conv41.1.i256.i.i.i, 16711680
  %159 = or i32 %158, %157
  %conv41.2.i257.i.i.i = shl nsw i32 %cond.2.i246.i.i.i, 8
  %160 = and i32 %conv41.2.i257.i.i.i, 65280
  %shl.3.i258.i.i.i = or i32 %159, %160
  %conv41.3.i259.i.i.i = and i32 %cond.3.i255.i.i.i, 255
  %or.3.i260.i.i.i = or i32 %shl.3.i258.i.i.i, %conv41.3.i259.i.i.i
  %161 = ptrtoint ptr %arrayidx41.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or.3.i260.i.i.i, ptr %arrayidx41.i.i.i, align 4
  %arrayidx50.i.i.i = getelementptr [84 x i32], ptr %arrayidx41.i.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx50.i.i.i, align 4
  %shr36.i262.i.i.i = lshr i32 %163, 24
  %conv13.i263.i.i.i = and i32 %shr36.i262.i.i.i, 15
  %shr16.i264.i.i.i = lshr i32 %163, 28
  %mul20.i265.i.i.i = mul nuw nsw i32 %shr16.i264.i.i.i, 10
  %add22.i266.i.i.i = add nuw nsw i32 %mul20.i265.i.i.i, %conv13.i263.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i266.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.i267.i.i.i = icmp ugt i32 %add22.i266.i.i.i, %conv25.i216.i.i.i
  %sub.i268.i.i.i = sub nsw i32 %add22.i266.i.i.i, %conv25.i216.i.i.i
  %sub32.i269.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.i266.i.i.i
  %cond.i270.i.i.i = select i1 %cmp26.i267.i.i.i, i32 %sub.i268.i.i.i, i32 %sub32.i269.i.i.i
  %shr36.1.i272.i.i.i = lshr i32 %163, 16
  %conv13.1.i273.i.i.i = and i32 %shr36.1.i272.i.i.i, 15
  %shr16.1.i274.i.i.i = lshr i32 %163, 20
  %conv18.1.i275.i.i.i = and i32 %shr16.1.i274.i.i.i, 15
  %mul20.1.i276.i.i.i = mul nuw nsw i32 %conv18.1.i275.i.i.i, 10
  %add22.1.i277.i.i.i = add nuw nsw i32 %mul20.1.i276.i.i.i, %conv13.1.i273.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i277.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.1.i278.i.i.i = icmp ugt i32 %add22.1.i277.i.i.i, %conv25.i216.i.i.i
  %sub.1.i279.i.i.i = sub nsw i32 %add22.1.i277.i.i.i, %conv25.i216.i.i.i
  %sub32.1.i280.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.1.i277.i.i.i
  %cond.1.i281.i.i.i = select i1 %cmp26.1.i278.i.i.i, i32 %sub.1.i279.i.i.i, i32 %sub32.1.i280.i.i.i
  %shr36.2.i282.i.i.i = lshr i32 %163, 8
  %conv13.2.i283.i.i.i = and i32 %shr36.2.i282.i.i.i, 15
  %shr16.2.i284.i.i.i = lshr i32 %163, 12
  %conv18.2.i285.i.i.i = and i32 %shr16.2.i284.i.i.i, 15
  %mul20.2.i286.i.i.i = mul nuw nsw i32 %conv18.2.i285.i.i.i, 10
  %add22.2.i287.i.i.i = add nuw nsw i32 %mul20.2.i286.i.i.i, %conv13.2.i283.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i287.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.2.i288.i.i.i = icmp ugt i32 %add22.2.i287.i.i.i, %conv25.i216.i.i.i
  %sub.2.i289.i.i.i = sub nsw i32 %add22.2.i287.i.i.i, %conv25.i216.i.i.i
  %sub32.2.i290.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.2.i287.i.i.i
  %cond.2.i291.i.i.i = select i1 %cmp26.2.i288.i.i.i, i32 %sub.2.i289.i.i.i, i32 %sub32.2.i290.i.i.i
  %conv13.3.i292.i.i.i = and i32 %163, 15
  %shr16.3.i293.i.i.i = lshr i32 %163, 4
  %conv18.3.i294.i.i.i = and i32 %shr16.3.i293.i.i.i, 15
  %mul20.3.i295.i.i.i = mul nuw nsw i32 %conv18.3.i294.i.i.i, 10
  %add22.3.i296.i.i.i = add nuw nsw i32 %mul20.3.i295.i.i.i, %conv13.3.i292.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i296.i.i.i, i32 %conv25.i216.i.i.i)
  %cmp26.3.i297.i.i.i = icmp ugt i32 %add22.3.i296.i.i.i, %conv25.i216.i.i.i
  %sub.3.i298.i.i.i = sub nsw i32 %add22.3.i296.i.i.i, %conv25.i216.i.i.i
  %sub32.3.i299.i.i.i = sub nsw i32 %conv25.i216.i.i.i, %add22.3.i296.i.i.i
  %cond.3.i300.i.i.i = select i1 %cmp26.3.i297.i.i.i, i32 %sub.3.i298.i.i.i, i32 %sub32.3.i299.i.i.i
  %164 = shl i32 %cond.i270.i.i.i, 24
  %conv41.1.i301.i.i.i = shl nsw i32 %cond.1.i281.i.i.i, 16
  %165 = and i32 %conv41.1.i301.i.i.i, 16711680
  %166 = or i32 %165, %164
  %conv41.2.i302.i.i.i = shl nsw i32 %cond.2.i291.i.i.i, 8
  %167 = and i32 %conv41.2.i302.i.i.i, 65280
  %shl.3.i303.i.i.i = or i32 %166, %167
  %conv41.3.i304.i.i.i = and i32 %cond.3.i300.i.i.i, 255
  %or.3.i305.i.i.i = or i32 %shl.3.i303.i.i.i, %conv41.3.i304.i.i.i
  %168 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %or.3.i305.i.i.i, ptr %arrayidx50.i.i.i, align 4
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %priv, align 8
  %arrayidx24.i.i5.i.i = getelementptr %struct.rtl_priv, ptr %170, i32 0, i32 14, i32 43, i32 %indvars.iv.i.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %arrayidx24.i.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx24.i.i5.i.i, align 2
  %arrayidx58.i.i.i = getelementptr [84 x i32], ptr %arrayidx41.i.i.i, i32 0, i32 4
  %conv25.i313.i.i.i = zext i8 %172 to i32
  %173 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx58.i.i.i, align 4
  %shr36.i314.i.i.i = lshr i32 %174, 24
  %conv13.i315.i.i.i = and i32 %shr36.i314.i.i.i, 15
  %shr16.i316.i.i.i = lshr i32 %174, 28
  %mul20.i317.i.i.i = mul nuw nsw i32 %shr16.i316.i.i.i, 10
  %add22.i318.i.i.i = add nuw nsw i32 %mul20.i317.i.i.i, %conv13.i315.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i318.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.i319.i.i.i = icmp ugt i32 %add22.i318.i.i.i, %conv25.i313.i.i.i
  %sub.i320.i.i.i = sub nsw i32 %add22.i318.i.i.i, %conv25.i313.i.i.i
  %sub32.i321.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.i318.i.i.i
  %cond.i322.i.i.i = select i1 %cmp26.i319.i.i.i, i32 %sub.i320.i.i.i, i32 %sub32.i321.i.i.i
  %shr36.1.i324.i.i.i = lshr i32 %174, 16
  %conv13.1.i325.i.i.i = and i32 %shr36.1.i324.i.i.i, 15
  %shr16.1.i326.i.i.i = lshr i32 %174, 20
  %conv18.1.i327.i.i.i = and i32 %shr16.1.i326.i.i.i, 15
  %mul20.1.i328.i.i.i = mul nuw nsw i32 %conv18.1.i327.i.i.i, 10
  %add22.1.i329.i.i.i = add nuw nsw i32 %mul20.1.i328.i.i.i, %conv13.1.i325.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i329.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.1.i330.i.i.i = icmp ugt i32 %add22.1.i329.i.i.i, %conv25.i313.i.i.i
  %sub.1.i331.i.i.i = sub nsw i32 %add22.1.i329.i.i.i, %conv25.i313.i.i.i
  %sub32.1.i332.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.1.i329.i.i.i
  %cond.1.i333.i.i.i = select i1 %cmp26.1.i330.i.i.i, i32 %sub.1.i331.i.i.i, i32 %sub32.1.i332.i.i.i
  %shr36.2.i334.i.i.i = lshr i32 %174, 8
  %conv13.2.i335.i.i.i = and i32 %shr36.2.i334.i.i.i, 15
  %shr16.2.i336.i.i.i = lshr i32 %174, 12
  %conv18.2.i337.i.i.i = and i32 %shr16.2.i336.i.i.i, 15
  %mul20.2.i338.i.i.i = mul nuw nsw i32 %conv18.2.i337.i.i.i, 10
  %add22.2.i339.i.i.i = add nuw nsw i32 %mul20.2.i338.i.i.i, %conv13.2.i335.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i339.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.2.i340.i.i.i = icmp ugt i32 %add22.2.i339.i.i.i, %conv25.i313.i.i.i
  %sub.2.i341.i.i.i = sub nsw i32 %add22.2.i339.i.i.i, %conv25.i313.i.i.i
  %sub32.2.i342.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.2.i339.i.i.i
  %cond.2.i343.i.i.i = select i1 %cmp26.2.i340.i.i.i, i32 %sub.2.i341.i.i.i, i32 %sub32.2.i342.i.i.i
  %conv13.3.i344.i.i.i = and i32 %174, 15
  %shr16.3.i345.i.i.i = lshr i32 %174, 4
  %conv18.3.i346.i.i.i = and i32 %shr16.3.i345.i.i.i, 15
  %mul20.3.i347.i.i.i = mul nuw nsw i32 %conv18.3.i346.i.i.i, 10
  %add22.3.i348.i.i.i = add nuw nsw i32 %mul20.3.i347.i.i.i, %conv13.3.i344.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i348.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.3.i349.i.i.i = icmp ugt i32 %add22.3.i348.i.i.i, %conv25.i313.i.i.i
  %sub.3.i350.i.i.i = sub nsw i32 %add22.3.i348.i.i.i, %conv25.i313.i.i.i
  %sub32.3.i351.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.3.i348.i.i.i
  %cond.3.i352.i.i.i = select i1 %cmp26.3.i349.i.i.i, i32 %sub.3.i350.i.i.i, i32 %sub32.3.i351.i.i.i
  %175 = shl i32 %cond.i322.i.i.i, 24
  %conv41.1.i353.i.i.i = shl nsw i32 %cond.1.i333.i.i.i, 16
  %176 = and i32 %conv41.1.i353.i.i.i, 16711680
  %177 = or i32 %176, %175
  %conv41.2.i354.i.i.i = shl nsw i32 %cond.2.i343.i.i.i, 8
  %178 = and i32 %conv41.2.i354.i.i.i, 65280
  %shl.3.i355.i.i.i = or i32 %177, %178
  %conv41.3.i356.i.i.i = and i32 %cond.3.i352.i.i.i, 255
  %or.3.i357.i.i.i = or i32 %shl.3.i355.i.i.i, %conv41.3.i356.i.i.i
  %179 = ptrtoint ptr %arrayidx58.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %or.3.i357.i.i.i, ptr %arrayidx58.i.i.i, align 4
  %arrayidx65.i.i.i = getelementptr [84 x i32], ptr %arrayidx41.i.i.i, i32 0, i32 5
  %180 = ptrtoint ptr %arrayidx65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx65.i.i.i, align 4
  %shr36.i359.i.i.i = lshr i32 %181, 24
  %conv13.i360.i.i.i = and i32 %shr36.i359.i.i.i, 15
  %shr16.i361.i.i.i = lshr i32 %181, 28
  %mul20.i362.i.i.i = mul nuw nsw i32 %shr16.i361.i.i.i, 10
  %add22.i363.i.i.i = add nuw nsw i32 %mul20.i362.i.i.i, %conv13.i360.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i363.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.i364.i.i.i = icmp ugt i32 %add22.i363.i.i.i, %conv25.i313.i.i.i
  %sub.i365.i.i.i = sub nsw i32 %add22.i363.i.i.i, %conv25.i313.i.i.i
  %sub32.i366.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.i363.i.i.i
  %cond.i367.i.i.i = select i1 %cmp26.i364.i.i.i, i32 %sub.i365.i.i.i, i32 %sub32.i366.i.i.i
  %shr36.1.i369.i.i.i = lshr i32 %181, 16
  %conv13.1.i370.i.i.i = and i32 %shr36.1.i369.i.i.i, 15
  %shr16.1.i371.i.i.i = lshr i32 %181, 20
  %conv18.1.i372.i.i.i = and i32 %shr16.1.i371.i.i.i, 15
  %mul20.1.i373.i.i.i = mul nuw nsw i32 %conv18.1.i372.i.i.i, 10
  %add22.1.i374.i.i.i = add nuw nsw i32 %mul20.1.i373.i.i.i, %conv13.1.i370.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i374.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.1.i375.i.i.i = icmp ugt i32 %add22.1.i374.i.i.i, %conv25.i313.i.i.i
  %sub.1.i376.i.i.i = sub nsw i32 %add22.1.i374.i.i.i, %conv25.i313.i.i.i
  %sub32.1.i377.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.1.i374.i.i.i
  %cond.1.i378.i.i.i = select i1 %cmp26.1.i375.i.i.i, i32 %sub.1.i376.i.i.i, i32 %sub32.1.i377.i.i.i
  %shr36.2.i379.i.i.i = lshr i32 %181, 8
  %conv13.2.i380.i.i.i = and i32 %shr36.2.i379.i.i.i, 15
  %shr16.2.i381.i.i.i = lshr i32 %181, 12
  %conv18.2.i382.i.i.i = and i32 %shr16.2.i381.i.i.i, 15
  %mul20.2.i383.i.i.i = mul nuw nsw i32 %conv18.2.i382.i.i.i, 10
  %add22.2.i384.i.i.i = add nuw nsw i32 %mul20.2.i383.i.i.i, %conv13.2.i380.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i384.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.2.i385.i.i.i = icmp ugt i32 %add22.2.i384.i.i.i, %conv25.i313.i.i.i
  %sub.2.i386.i.i.i = sub nsw i32 %add22.2.i384.i.i.i, %conv25.i313.i.i.i
  %sub32.2.i387.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.2.i384.i.i.i
  %cond.2.i388.i.i.i = select i1 %cmp26.2.i385.i.i.i, i32 %sub.2.i386.i.i.i, i32 %sub32.2.i387.i.i.i
  %conv13.3.i389.i.i.i = and i32 %181, 15
  %shr16.3.i390.i.i.i = lshr i32 %181, 4
  %conv18.3.i391.i.i.i = and i32 %shr16.3.i390.i.i.i, 15
  %mul20.3.i392.i.i.i = mul nuw nsw i32 %conv18.3.i391.i.i.i, 10
  %add22.3.i393.i.i.i = add nuw nsw i32 %mul20.3.i392.i.i.i, %conv13.3.i389.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i393.i.i.i, i32 %conv25.i313.i.i.i)
  %cmp26.3.i394.i.i.i = icmp ugt i32 %add22.3.i393.i.i.i, %conv25.i313.i.i.i
  %sub.3.i395.i.i.i = sub nsw i32 %add22.3.i393.i.i.i, %conv25.i313.i.i.i
  %sub32.3.i396.i.i.i = sub nsw i32 %conv25.i313.i.i.i, %add22.3.i393.i.i.i
  %cond.3.i397.i.i.i = select i1 %cmp26.3.i394.i.i.i, i32 %sub.3.i395.i.i.i, i32 %sub32.3.i396.i.i.i
  %182 = shl i32 %cond.i367.i.i.i, 24
  %conv41.1.i398.i.i.i = shl nsw i32 %cond.1.i378.i.i.i, 16
  %183 = and i32 %conv41.1.i398.i.i.i, 16711680
  %184 = or i32 %183, %182
  %conv41.2.i399.i.i.i = shl nsw i32 %cond.2.i388.i.i.i, 8
  %185 = and i32 %conv41.2.i399.i.i.i, 65280
  %shl.3.i400.i.i.i = or i32 %184, %185
  %conv41.3.i401.i.i.i = and i32 %cond.3.i397.i.i.i, 255
  %or.3.i402.i.i.i = or i32 %shl.3.i400.i.i.i, %conv41.3.i401.i.i.i
  %186 = ptrtoint ptr %arrayidx65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %or.3.i402.i.i.i, ptr %arrayidx65.i.i.i, align 4
  %187 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv, align 8
  %arrayidx31.i.i6.i.i = getelementptr %struct.rtl_priv, ptr %188, i32 0, i32 14, i32 43, i32 %indvars.iv.i.i.i, i32 1, i32 3
  %189 = ptrtoint ptr %arrayidx31.i.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx31.i.i6.i.i, align 1
  %arrayidx73.i.i.i = getelementptr [4 x [4 x [84 x i32]]], ptr %tx_power_by_rate_offset37.i.i.i, i32 0, i32 %indvars.iv.i.i.i, i32 1, i32 6
  %conv25.i410.i.i.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx73.i.i.i, align 4
  %shr36.i411.i.i.i = lshr i32 %192, 24
  %conv13.i412.i.i.i = and i32 %shr36.i411.i.i.i, 15
  %shr16.i413.i.i.i = lshr i32 %192, 28
  %mul20.i414.i.i.i = mul nuw nsw i32 %shr16.i413.i.i.i, 10
  %add22.i415.i.i.i = add nuw nsw i32 %mul20.i414.i.i.i, %conv13.i412.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i415.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.i416.i.i.i = icmp ugt i32 %add22.i415.i.i.i, %conv25.i410.i.i.i
  %sub.i417.i.i.i = sub nsw i32 %add22.i415.i.i.i, %conv25.i410.i.i.i
  %sub32.i418.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.i415.i.i.i
  %cond.i419.i.i.i = select i1 %cmp26.i416.i.i.i, i32 %sub.i417.i.i.i, i32 %sub32.i418.i.i.i
  %shr36.1.i421.i.i.i = lshr i32 %192, 16
  %conv13.1.i422.i.i.i = and i32 %shr36.1.i421.i.i.i, 15
  %shr16.1.i423.i.i.i = lshr i32 %192, 20
  %conv18.1.i424.i.i.i = and i32 %shr16.1.i423.i.i.i, 15
  %mul20.1.i425.i.i.i = mul nuw nsw i32 %conv18.1.i424.i.i.i, 10
  %add22.1.i426.i.i.i = add nuw nsw i32 %mul20.1.i425.i.i.i, %conv13.1.i422.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i426.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.1.i427.i.i.i = icmp ugt i32 %add22.1.i426.i.i.i, %conv25.i410.i.i.i
  %sub.1.i428.i.i.i = sub nsw i32 %add22.1.i426.i.i.i, %conv25.i410.i.i.i
  %sub32.1.i429.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.1.i426.i.i.i
  %cond.1.i430.i.i.i = select i1 %cmp26.1.i427.i.i.i, i32 %sub.1.i428.i.i.i, i32 %sub32.1.i429.i.i.i
  %shr36.2.i431.i.i.i = lshr i32 %192, 8
  %conv13.2.i432.i.i.i = and i32 %shr36.2.i431.i.i.i, 15
  %shr16.2.i433.i.i.i = lshr i32 %192, 12
  %conv18.2.i434.i.i.i = and i32 %shr16.2.i433.i.i.i, 15
  %mul20.2.i435.i.i.i = mul nuw nsw i32 %conv18.2.i434.i.i.i, 10
  %add22.2.i436.i.i.i = add nuw nsw i32 %mul20.2.i435.i.i.i, %conv13.2.i432.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i436.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.2.i437.i.i.i = icmp ugt i32 %add22.2.i436.i.i.i, %conv25.i410.i.i.i
  %sub.2.i438.i.i.i = sub nsw i32 %add22.2.i436.i.i.i, %conv25.i410.i.i.i
  %sub32.2.i439.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.2.i436.i.i.i
  %cond.2.i440.i.i.i = select i1 %cmp26.2.i437.i.i.i, i32 %sub.2.i438.i.i.i, i32 %sub32.2.i439.i.i.i
  %conv13.3.i441.i.i.i = and i32 %192, 15
  %shr16.3.i442.i.i.i = lshr i32 %192, 4
  %conv18.3.i443.i.i.i = and i32 %shr16.3.i442.i.i.i, 15
  %mul20.3.i444.i.i.i = mul nuw nsw i32 %conv18.3.i443.i.i.i, 10
  %add22.3.i445.i.i.i = add nuw nsw i32 %mul20.3.i444.i.i.i, %conv13.3.i441.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i445.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.3.i446.i.i.i = icmp ugt i32 %add22.3.i445.i.i.i, %conv25.i410.i.i.i
  %sub.3.i447.i.i.i = sub nsw i32 %add22.3.i445.i.i.i, %conv25.i410.i.i.i
  %sub32.3.i448.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.3.i445.i.i.i
  %cond.3.i449.i.i.i = select i1 %cmp26.3.i446.i.i.i, i32 %sub.3.i447.i.i.i, i32 %sub32.3.i448.i.i.i
  %193 = shl i32 %cond.i419.i.i.i, 24
  %conv41.1.i450.i.i.i = shl nsw i32 %cond.1.i430.i.i.i, 16
  %194 = and i32 %conv41.1.i450.i.i.i, 16711680
  %195 = or i32 %194, %193
  %conv41.2.i451.i.i.i = shl nsw i32 %cond.2.i440.i.i.i, 8
  %196 = and i32 %conv41.2.i451.i.i.i, 65280
  %shl.3.i452.i.i.i = or i32 %195, %196
  %conv41.3.i453.i.i.i = and i32 %cond.3.i449.i.i.i, 255
  %or.3.i454.i.i.i = or i32 %shl.3.i452.i.i.i, %conv41.3.i453.i.i.i
  %197 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %or.3.i454.i.i.i, ptr %arrayidx73.i.i.i, align 4
  %arrayidx80.i7.i.i = getelementptr [4 x [4 x [84 x i32]]], ptr %tx_power_by_rate_offset37.i.i.i, i32 0, i32 %indvars.iv.i.i.i, i32 1, i32 7
  %198 = ptrtoint ptr %arrayidx80.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx80.i7.i.i, align 4
  %shr36.i456.i.i.i = lshr i32 %199, 24
  %conv13.i457.i.i.i = and i32 %shr36.i456.i.i.i, 15
  %shr16.i458.i.i.i = lshr i32 %199, 28
  %mul20.i459.i.i.i = mul nuw nsw i32 %shr16.i458.i.i.i, 10
  %add22.i460.i.i.i = add nuw nsw i32 %mul20.i459.i.i.i, %conv13.i457.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.i460.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.i461.i.i.i = icmp ugt i32 %add22.i460.i.i.i, %conv25.i410.i.i.i
  %sub.i462.i.i.i = sub nsw i32 %add22.i460.i.i.i, %conv25.i410.i.i.i
  %sub32.i463.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.i460.i.i.i
  %cond.i464.i.i.i = select i1 %cmp26.i461.i.i.i, i32 %sub.i462.i.i.i, i32 %sub32.i463.i.i.i
  %shr36.1.i466.i.i.i = lshr i32 %199, 16
  %conv13.1.i467.i.i.i = and i32 %shr36.1.i466.i.i.i, 15
  %shr16.1.i468.i.i.i = lshr i32 %199, 20
  %conv18.1.i469.i.i.i = and i32 %shr16.1.i468.i.i.i, 15
  %mul20.1.i470.i.i.i = mul nuw nsw i32 %conv18.1.i469.i.i.i, 10
  %add22.1.i471.i.i.i = add nuw nsw i32 %mul20.1.i470.i.i.i, %conv13.1.i467.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.1.i471.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.1.i472.i.i.i = icmp ugt i32 %add22.1.i471.i.i.i, %conv25.i410.i.i.i
  %sub.1.i473.i.i.i = sub nsw i32 %add22.1.i471.i.i.i, %conv25.i410.i.i.i
  %sub32.1.i474.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.1.i471.i.i.i
  %cond.1.i475.i.i.i = select i1 %cmp26.1.i472.i.i.i, i32 %sub.1.i473.i.i.i, i32 %sub32.1.i474.i.i.i
  %shr36.2.i476.i.i.i = lshr i32 %199, 8
  %conv13.2.i477.i.i.i = and i32 %shr36.2.i476.i.i.i, 15
  %shr16.2.i478.i.i.i = lshr i32 %199, 12
  %conv18.2.i479.i.i.i = and i32 %shr16.2.i478.i.i.i, 15
  %mul20.2.i480.i.i.i = mul nuw nsw i32 %conv18.2.i479.i.i.i, 10
  %add22.2.i481.i.i.i = add nuw nsw i32 %mul20.2.i480.i.i.i, %conv13.2.i477.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.2.i481.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.2.i482.i.i.i = icmp ugt i32 %add22.2.i481.i.i.i, %conv25.i410.i.i.i
  %sub.2.i483.i.i.i = sub nsw i32 %add22.2.i481.i.i.i, %conv25.i410.i.i.i
  %sub32.2.i484.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.2.i481.i.i.i
  %cond.2.i485.i.i.i = select i1 %cmp26.2.i482.i.i.i, i32 %sub.2.i483.i.i.i, i32 %sub32.2.i484.i.i.i
  %conv13.3.i486.i.i.i = and i32 %199, 15
  %shr16.3.i487.i.i.i = lshr i32 %199, 4
  %conv18.3.i488.i.i.i = and i32 %shr16.3.i487.i.i.i, 15
  %mul20.3.i489.i.i.i = mul nuw nsw i32 %conv18.3.i488.i.i.i, 10
  %add22.3.i490.i.i.i = add nuw nsw i32 %mul20.3.i489.i.i.i, %conv13.3.i486.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add22.3.i490.i.i.i, i32 %conv25.i410.i.i.i)
  %cmp26.3.i491.i.i.i = icmp ugt i32 %add22.3.i490.i.i.i, %conv25.i410.i.i.i
  %sub.3.i492.i.i.i = sub nsw i32 %add22.3.i490.i.i.i, %conv25.i410.i.i.i
  %sub32.3.i493.i.i.i = sub nsw i32 %conv25.i410.i.i.i, %add22.3.i490.i.i.i
  %cond.3.i494.i.i.i = select i1 %cmp26.3.i491.i.i.i, i32 %sub.3.i492.i.i.i, i32 %sub32.3.i493.i.i.i
  %200 = shl i32 %cond.i464.i.i.i, 24
  %conv41.1.i495.i.i.i = shl nsw i32 %cond.1.i475.i.i.i, 16
  %201 = and i32 %conv41.1.i495.i.i.i, 16711680
  %202 = or i32 %201, %200
  %conv41.2.i496.i.i.i = shl nsw i32 %cond.2.i485.i.i.i, 8
  %203 = and i32 %conv41.2.i496.i.i.i, 65280
  %shl.3.i497.i.i.i = or i32 %202, %203
  %conv41.3.i498.i.i.i = and i32 %cond.3.i494.i.i.i, 255
  %or.3.i499.i.i.i = or i32 %shl.3.i497.i.i.i, %conv41.3.i498.i.i.i
  %204 = ptrtoint ptr %arrayidx80.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or.3.i499.i.i.i, ptr %arrayidx80.i7.i.i, align 4
  br i1 %cmp3.i.i.i, label %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i.for.body.i.i.i_crit_edge, label %_rtl92ee_phy_bb8192ee_config_parafile.exit

_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i.for.body.i.i.i_crit_edge: ; preds = %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

_rtl92ee_phy_bb8192ee_config_parafile.exit:       ; preds = %_rtl92ee_phy_get_txpower_by_rate_base.exit409.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %128, i64 noundef 65536, i32 noundef 5, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.phy_convert_txpwr_dbm_to_rel_val) #8
  tail call fastcc void @phy_config_bb_with_hdr_file(ptr noundef %hw, i8 noundef zeroext 1) #8
  %205 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %206, i32 0, i32 32
  %207 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops.i.i, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %210, i32 0, i32 45
  %211 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %212(ptr noundef %hw, i32 noundef 2084, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.i = icmp ne i32 %call.i.i, 0
  %conv.i = zext i1 %tobool27.i to i8
  %cck_high_power.i = getelementptr inbounds %struct.rtl_priv, ptr %62, i32 0, i32 14, i32 39
  %213 = ptrtoint ptr %cck_high_power.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv.i, ptr %cck_high_power.i, align 1
  %eeprom_crystalcap = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 24
  %214 = ptrtoint ptr %eeprom_crystalcap to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %eeprom_crystalcap, align 1
  %216 = and i8 %215, 63
  %conv9 = zext i8 %216 to i32
  %or11 = mul nuw nsw i32 %conv9, 65
  %217 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %priv, align 8
  %cfg.i55 = getelementptr inbounds %struct.rtl_priv, ptr %218, i32 0, i32 32
  %219 = ptrtoint ptr %cfg.i55 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cfg.i55, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %220, i32 0, i32 4
  %221 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %222, i32 0, i32 46
  %223 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %224(ptr noundef %hw, i32 noundef 44, i32 noundef 16773120, i32 noundef %or11) #8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_rf_config(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rtl92ee_phy_rf6052_config(ptr noundef %hw) #8
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl92ee_phy_rf6052_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_config_rf_with_headerfile(ptr noundef %hw, i32 noundef %rfpath) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %rfpath, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb88
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 238) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 0) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb
  %i.0364 = phi i32 [ 0, %sw.bb ], [ %add87, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %i.0364
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %4)
  %cmp4 = icmp ult i32 %4, -842150451
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nsw i32 %i.0364, 1
  %arrayidx3 = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %add
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  tail call fastcc void @_rtl92ee_config_rf_reg(ptr noundef %hw, i32 noundef %4, i32 noundef %6, i32 noundef 0, i32 noundef %4) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 235, i32 %i.0364)
  %cmp7 = icmp sgt i32 %i.0364, 235
  br i1 %cmp7, label %if.else.sw.epilog_crit_edge, label %if.end

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end:                                           ; preds = %if.else
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  %interface.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 10, i32 9
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %4)
  %cmp.i = icmp eq i32 %4, -842150451
  br i1 %cmp.i, label %if.end.while.cond43.preheader_crit_edge, label %if.end.i

if.end.while.cond43.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond43.preheader

while.cond43.preheader:                           ; preds = %if.end18.i.while.cond43.preheader_crit_edge, %if.end.while.cond43.preheader_crit_edge
  br label %while.cond43

if.end.i:                                         ; preds = %if.end
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %8, i32 0, i32 17, i32 17
  %11 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %board_type.i, align 1
  %13 = trunc i32 %4 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp4.not.i = icmp eq i8 %12, %13
  %and.i = and i32 %4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i)
  %cmp6.not.i = icmp eq i32 %and.i, 255
  %or.cond.i = or i1 %cmp6.not.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %if.end.i
  %and10.i = lshr i32 %4, 8
  %shr.i = and i32 %and10.i, 255
  %and11.i = and i32 %10, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp12.i = icmp ne i32 %and11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp15.not.i = icmp eq i32 %shr.i, 7
  %or.cond46.i = or i1 %cmp15.not.i, %cmp12.i
  br i1 %or.cond46.i, label %if.end18.i, label %if.end9.i.while.cond.preheader_crit_edge

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end18.i:                                       ; preds = %if.end9.i
  %14 = and i32 %4, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp22.i = icmp ne i32 %14, 0
  %15 = and i32 %4, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %15)
  %cmp25.not.i = icmp eq i32 %15, 983040
  %or.cond47.i = or i1 %cmp22.i, %cmp25.not.i
  br i1 %or.cond47.i, label %if.end18.i.while.cond43.preheader_crit_edge, label %if.end18.i.while.cond.preheader_crit_edge

if.end18.i.while.cond.preheader_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end18.i.while.cond43.preheader_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond43.preheader

while.cond.preheader:                             ; preds = %if.end18.i.while.cond.preheader_crit_edge, %if.end9.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add14.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.0364, %while.cond.preheader ]
  %add14.pn = add nsw i32 %add14.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %add14.pn
  %16 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %17 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.for.inc_crit_edge
    i32 52719, label %while.cond.for.inc_crit_edge414
    i32 52685, label %while.cond.for.inc_crit_edge415
  ]

while.cond.for.inc_crit_edge415:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.for.inc_crit_edge414:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nsw i32 %add14.pn.in, 2
  %cmp25 = icmp slt i32 %add14.pn.in, 234
  br i1 %cmp25, label %land.rhs.while.cond_crit_edge, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond43:                                     ; preds = %while.body58, %while.cond43.preheader
  %add39.pn.in = phi i32 [ %i.2, %while.body58 ], [ %i.0364, %while.cond43.preheader ]
  %i.2 = add nsw i32 %add39.pn.in, 2
  %add39.pn = add nsw i32 %add39.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %add39.pn
  %18 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %i.2
  %19 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %20 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %v2.1, label %land.rhs52 [
    i32 57005, label %while.cond43.while.end66_crit_edge
    i32 52719, label %while.cond43.while.end66_crit_edge416
    i32 52685, label %while.cond43.while.end66_crit_edge417
  ]

while.cond43.while.end66_crit_edge417:            ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

while.cond43.while.end66_crit_edge416:            ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

while.cond43.while.end66_crit_edge:               ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end66

land.rhs52:                                       ; preds = %while.cond43
  %cmp55 = icmp slt i32 %add39.pn.in, 234
  br i1 %cmp55, label %while.body58, label %land.rhs52.for.inc_crit_edge

land.rhs52.for.inc_crit_edge:                     ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body58:                                     ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_config_rf_reg(ptr noundef %hw, i32 noundef %v1.0, i32 noundef %v2.1, i32 noundef 0, i32 noundef %v1.0) #8
  br label %while.cond43

while.end66:                                      ; preds = %while.cond43.while.end66_crit_edge, %while.cond43.while.end66_crit_edge416, %while.cond43.while.end66_crit_edge417
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp68.not359 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 234, i32 %add39.pn.in)
  %cmp73360 = icmp slt i32 %add39.pn.in, 234
  %or.cond361 = select i1 %cmp68.not359, i1 %cmp73360, i1 false
  br i1 %or.cond361, label %while.end66.do.body77_crit_edge, label %while.end66.for.inc_crit_edge

while.end66.for.inc_crit_edge:                    ; preds = %while.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.end66.do.body77_crit_edge:                  ; preds = %while.end66
  br label %do.body77

do.body77:                                        ; preds = %do.body77.do.body77_crit_edge, %while.end66.do.body77_crit_edge
  %i.3362 = phi i32 [ %add78, %do.body77.do.body77_crit_edge ], [ %i.2, %while.end66.do.body77_crit_edge ]
  %add78 = add nsw i32 %i.3362, 2
  %add80 = add nsw i32 %i.3362, 3
  %arrayidx81 = getelementptr i32, ptr @RTL8192EE_RADIOA_ARRAY, i32 %add80
  %21 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %22)
  %cmp68.not = icmp ne i32 %22, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 234, i32 %i.3362)
  %cmp73 = icmp slt i32 %i.3362, 234
  %or.cond = select i1 %cmp68.not, i1 %cmp73, i1 false
  br i1 %or.cond, label %do.body77.do.body77_crit_edge, label %do.body77.for.inc_crit_edge

do.body77.for.inc_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body77.do.body77_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

for.inc:                                          ; preds = %do.body77.for.inc_crit_edge, %while.end66.for.inc_crit_edge, %land.rhs52.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %while.cond.for.inc_crit_edge, %while.cond.for.inc_crit_edge414, %while.cond.for.inc_crit_edge415, %if.then
  %i.4 = phi i32 [ %i.0364, %if.then ], [ %i.2, %while.end66.for.inc_crit_edge ], [ %add78, %do.body77.for.inc_crit_edge ], [ %i.2, %land.rhs52.for.inc_crit_edge ], [ %add14.pn.in, %while.cond.for.inc_crit_edge ], [ %add14.pn.in, %while.cond.for.inc_crit_edge414 ], [ %add14.pn.in, %while.cond.for.inc_crit_edge415 ], [ %add14.pn.in, %land.rhs.for.inc_crit_edge ]
  %add87 = add i32 %i.4, 2
  %cmp = icmp slt i32 %add87, 238
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.bb88:                                          ; preds = %entry
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef 198) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  br label %for.body94

for.body94:                                       ; preds = %for.inc195.for.body94_crit_edge, %sw.bb88
  %i.5357 = phi i32 [ 0, %sw.bb88 ], [ %add196, %for.inc195.for.body94_crit_edge ]
  %arrayidx95 = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %i.5357
  %23 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %24)
  %cmp98 = icmp ult i32 %24, -842150451
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #10
  %add96 = add nsw i32 %i.5357, 1
  %arrayidx97 = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %add96
  %25 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx97, align 4
  tail call fastcc void @_rtl92ee_config_rf_reg(ptr noundef %hw, i32 noundef %24, i32 noundef %26, i32 noundef 1, i32 noundef %24) #8
  br label %for.inc195

if.else101:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_const_cmp4(i32 195, i32 %i.5357)
  %cmp104 = icmp sgt i32 %i.5357, 195
  br i1 %cmp104, label %if.else101.sw.epilog_crit_edge, label %if.end107

if.else101.sw.epilog_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end107:                                        ; preds = %if.else101
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %interface.i329 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 10, i32 9
  %29 = ptrtoint ptr %interface.i329 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interface.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %24)
  %cmp.i330 = icmp eq i32 %24, -842150451
  br i1 %cmp.i330, label %if.end107.while.cond151.preheader_crit_edge, label %if.end.i336

if.end107.while.cond151.preheader_crit_edge:      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond151.preheader

while.cond151.preheader:                          ; preds = %if.end18.i347.while.cond151.preheader_crit_edge, %if.end107.while.cond151.preheader_crit_edge
  br label %while.cond151

if.end.i336:                                      ; preds = %if.end107
  %board_type.i331 = getelementptr inbounds %struct.rtl_priv, ptr %28, i32 0, i32 17, i32 17
  %31 = ptrtoint ptr %board_type.i331 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %board_type.i331, align 1
  %33 = trunc i32 %24 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %33)
  %cmp4.not.i332 = icmp eq i8 %32, %33
  %and.i333 = and i32 %24, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i333)
  %cmp6.not.i334 = icmp eq i32 %and.i333, 255
  %or.cond.i335 = or i1 %cmp6.not.i334, %cmp4.not.i332
  br i1 %or.cond.i335, label %if.end9.i343, label %if.end.i336.while.cond118.preheader_crit_edge

if.end.i336.while.cond118.preheader_crit_edge:    ; preds = %if.end.i336
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118.preheader

if.end9.i343:                                     ; preds = %if.end.i336
  %and10.i337 = lshr i32 %24, 8
  %shr.i338 = and i32 %and10.i337, 255
  %and11.i339 = and i32 %30, %shr.i338
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i339)
  %cmp12.i340 = icmp ne i32 %and11.i339, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i338)
  %cmp15.not.i341 = icmp eq i32 %shr.i338, 7
  %or.cond46.i342 = or i1 %cmp15.not.i341, %cmp12.i340
  br i1 %or.cond46.i342, label %if.end18.i347, label %if.end9.i343.while.cond118.preheader_crit_edge

if.end9.i343.while.cond118.preheader_crit_edge:   ; preds = %if.end9.i343
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118.preheader

if.end18.i347:                                    ; preds = %if.end9.i343
  %34 = and i32 %24, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp22.i344 = icmp ne i32 %34, 0
  %35 = and i32 %24, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %35)
  %cmp25.not.i345 = icmp eq i32 %35, 983040
  %or.cond47.i346 = or i1 %cmp22.i344, %cmp25.not.i345
  br i1 %or.cond47.i346, label %if.end18.i347.while.cond151.preheader_crit_edge, label %if.end18.i347.while.cond118.preheader_crit_edge

if.end18.i347.while.cond118.preheader_crit_edge:  ; preds = %if.end18.i347
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118.preheader

if.end18.i347.while.cond151.preheader_crit_edge:  ; preds = %if.end18.i347
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond151.preheader

while.cond118.preheader:                          ; preds = %if.end18.i347.while.cond118.preheader_crit_edge, %if.end9.i343.while.cond118.preheader_crit_edge, %if.end.i336.while.cond118.preheader_crit_edge
  br label %while.cond118

while.cond118:                                    ; preds = %land.rhs127.while.cond118_crit_edge, %while.cond118.preheader
  %add114.pn.in = phi i32 [ %i.6, %land.rhs127.while.cond118_crit_edge ], [ %i.5357, %while.cond118.preheader ]
  %add114.pn = add nsw i32 %add114.pn.in, 3
  %v2.3.in = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %add114.pn
  %36 = ptrtoint ptr %v2.3.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %v2.3 = load i32, ptr %v2.3.in, align 4
  %37 = zext i32 %v2.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %v2.3, label %land.rhs127 [
    i32 57005, label %while.cond118.for.inc195_crit_edge
    i32 52719, label %while.cond118.for.inc195_crit_edge418
    i32 52685, label %while.cond118.for.inc195_crit_edge419
  ]

while.cond118.for.inc195_crit_edge419:            ; preds = %while.cond118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

while.cond118.for.inc195_crit_edge418:            ; preds = %while.cond118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

while.cond118.for.inc195_crit_edge:               ; preds = %while.cond118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

land.rhs127:                                      ; preds = %while.cond118
  %i.6 = add nsw i32 %add114.pn.in, 2
  %cmp130 = icmp slt i32 %add114.pn.in, 194
  br i1 %cmp130, label %land.rhs127.while.cond118_crit_edge, label %land.rhs127.for.inc195_crit_edge

land.rhs127.for.inc195_crit_edge:                 ; preds = %land.rhs127
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

land.rhs127.while.cond118_crit_edge:              ; preds = %land.rhs127
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond118

while.cond151:                                    ; preds = %while.body166, %while.cond151.preheader
  %add147.pn.in = phi i32 [ %i.7, %while.body166 ], [ %i.5357, %while.cond151.preheader ]
  %i.7 = add nsw i32 %add147.pn.in, 2
  %add147.pn = add nsw i32 %add147.pn.in, 3
  %v2.4.in = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %add147.pn
  %38 = ptrtoint ptr %v2.4.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %v2.4 = load i32, ptr %v2.4.in, align 4
  %v1.1.in = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %i.7
  %39 = ptrtoint ptr %v1.1.in to i32
  call void @__asan_load4_noabort(i32 %39)
  %v1.1 = load i32, ptr %v1.1.in, align 4
  %40 = zext i32 %v2.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %v2.4, label %land.rhs160 [
    i32 57005, label %while.cond151.while.end174_crit_edge
    i32 52719, label %while.cond151.while.end174_crit_edge420
    i32 52685, label %while.cond151.while.end174_crit_edge421
  ]

while.cond151.while.end174_crit_edge421:          ; preds = %while.cond151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end174

while.cond151.while.end174_crit_edge420:          ; preds = %while.cond151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end174

while.cond151.while.end174_crit_edge:             ; preds = %while.cond151
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end174

land.rhs160:                                      ; preds = %while.cond151
  %cmp163 = icmp slt i32 %add147.pn.in, 194
  br i1 %cmp163, label %while.body166, label %land.rhs160.for.inc195_crit_edge

land.rhs160.for.inc195_crit_edge:                 ; preds = %land.rhs160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

while.body166:                                    ; preds = %land.rhs160
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_config_rf_reg(ptr noundef %hw, i32 noundef %v1.1, i32 noundef %v2.4, i32 noundef 1, i32 noundef %v1.1) #8
  br label %while.cond151

while.end174:                                     ; preds = %while.cond151.while.end174_crit_edge, %while.cond151.while.end174_crit_edge420, %while.cond151.while.end174_crit_edge421
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.4)
  %cmp176.not353 = icmp ne i32 %v2.4, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %add147.pn.in)
  %cmp181354 = icmp slt i32 %add147.pn.in, 194
  %or.cond327355 = select i1 %cmp176.not353, i1 %cmp181354, i1 false
  br i1 %or.cond327355, label %while.end174.do.body185_crit_edge, label %while.end174.for.inc195_crit_edge

while.end174.for.inc195_crit_edge:                ; preds = %while.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

while.end174.do.body185_crit_edge:                ; preds = %while.end174
  br label %do.body185

do.body185:                                       ; preds = %do.body185.do.body185_crit_edge, %while.end174.do.body185_crit_edge
  %i.8356 = phi i32 [ %add186, %do.body185.do.body185_crit_edge ], [ %i.7, %while.end174.do.body185_crit_edge ]
  %add186 = add nsw i32 %i.8356, 2
  %add188 = add nsw i32 %i.8356, 3
  %arrayidx189 = getelementptr i32, ptr @RTL8192EE_RADIOB_ARRAY, i32 %add188
  %41 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx189, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %42)
  %cmp176.not = icmp ne i32 %42, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 194, i32 %i.8356)
  %cmp181 = icmp slt i32 %i.8356, 194
  %or.cond327 = select i1 %cmp176.not, i1 %cmp181, i1 false
  br i1 %or.cond327, label %do.body185.do.body185_crit_edge, label %do.body185.for.inc195_crit_edge

do.body185.for.inc195_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc195

do.body185.do.body185_crit_edge:                  ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body185

for.inc195:                                       ; preds = %do.body185.for.inc195_crit_edge, %while.end174.for.inc195_crit_edge, %land.rhs160.for.inc195_crit_edge, %land.rhs127.for.inc195_crit_edge, %while.cond118.for.inc195_crit_edge, %while.cond118.for.inc195_crit_edge418, %while.cond118.for.inc195_crit_edge419, %if.then100
  %i.9 = phi i32 [ %i.5357, %if.then100 ], [ %i.7, %while.end174.for.inc195_crit_edge ], [ %add186, %do.body185.for.inc195_crit_edge ], [ %i.7, %land.rhs160.for.inc195_crit_edge ], [ %add114.pn.in, %while.cond118.for.inc195_crit_edge ], [ %add114.pn.in, %while.cond118.for.inc195_crit_edge418 ], [ %add114.pn.in, %while.cond118.for.inc195_crit_edge419 ], [ %add114.pn.in, %land.rhs127.for.inc195_crit_edge ]
  %add196 = add i32 %i.9, 2
  %cmp92 = icmp slt i32 %add196, 198
  br i1 %cmp92, label %for.inc195.for.body94_crit_edge, label %for.inc195.sw.epilog_crit_edge

for.inc195.sw.epilog_crit_edge:                   ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc195.for.body94_crit_edge:                  ; preds = %for.inc195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body94

sw.epilog:                                        ; preds = %for.inc195.sw.epilog_crit_edge, %if.else101.sw.epilog_crit_edge, %for.inc.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_get_hw_reg_originalvalue(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call i32 %7(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #8
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
  %call.i52 = tail call i32 %16(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #8
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
  %call.i57 = tail call i32 %25(ptr noundef %hw, i32 noundef 3168, i32 noundef 255) #8
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
  %call.i62 = tail call i32 %34(ptr noundef %hw, i32 noundef 3176, i32 noundef 255) #8
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24) #8
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
  %call.i67 = tail call i32 %49(ptr noundef %hw, i32 noundef 3128, i32 noundef 255) #8
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
  %call.i72 = tail call i32 %58(ptr noundef %hw, i32 noundef 3124, i32 noundef -1) #8
  %framesync_c34 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 57
  %59 = ptrtoint ptr %framesync_c34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call.i72, ptr %framesync_c34, align 4
  %60 = ptrtoint ptr %framesync to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %framesync, align 4
  %conv29 = zext i8 %61 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef 3128, i32 noundef %conv29) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_phy_get_txpower_level(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %powerlevel) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
define dso_local void @rtl92ee_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %channel) local_unnamed_addr #0 align 64 {
entry:
  %ht_rates2t.i = alloca [8 x i8], align 8
  %ht_rates1t.i = alloca [8 x i8], align 8
  %ofdm_rates.i = alloca [8 x i8], align 8
  %cck_rates.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %txpwr_fromeprom = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 23
  %2 = ptrtoint ptr %txpwr_fromeprom to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %txpwr_fromeprom, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_total_rfpath = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 58
  %4 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_total_rfpath, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp35.not = icmp eq i8 %5, 0
  br i1 %cmp35.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %rfpath.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cck_rates.i) #8
  %8 = ptrtoint ptr %cck_rates.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 66051, ptr %cck_rates.i, align 4
  %current_bandtype.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 53
  %9 = ptrtoint ptr %current_bandtype.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_bandtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i = icmp eq i32 %10, 0
  br i1 %cmp2.i, label %if.then3.i, label %for.body.phy_set_txpower_index_by_rate_section.exit_crit_edge

for.body.phy_set_txpower_index_by_rate_section.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %phy_set_txpower_index_by_rate_section.exit

if.then3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %current_chan_bw.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 14, i32 5
  %11 = ptrtoint ptr %current_chan_bw.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_chan_bw.i, align 2
  call fastcc void @phy_set_txpower_index_by_rate_array(ptr noundef %hw, i32 noundef %rfpath.036, i8 noundef zeroext %12, i8 noundef zeroext %channel, ptr noundef nonnull %cck_rates.i, i8 noundef zeroext 4) #8
  br label %phy_set_txpower_index_by_rate_section.exit

phy_set_txpower_index_by_rate_section.exit:       ; preds = %if.then3.i, %for.body.phy_set_txpower_index_by_rate_section.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cck_rates.i) #8
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ofdm_rates.i) #8
  %15 = ptrtoint ptr %ofdm_rates.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 289644378304612875, ptr %ofdm_rates.i, align 8
  %current_chan_bw6.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 14, i32 5
  %16 = ptrtoint ptr %current_chan_bw6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %current_chan_bw6.i, align 2
  call fastcc void @phy_set_txpower_index_by_rate_array(ptr noundef %hw, i32 noundef %rfpath.036, i8 noundef zeroext %17, i8 noundef zeroext %channel, ptr noundef nonnull %ofdm_rates.i, i8 noundef zeroext 8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ofdm_rates.i) #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ht_rates1t.i) #8
  %20 = ptrtoint ptr %ht_rates1t.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 868365761009226259, ptr %ht_rates1t.i, align 8
  %current_chan_bw11.i = getelementptr inbounds %struct.rtl_priv, ptr %19, i32 0, i32 14, i32 5
  %21 = ptrtoint ptr %current_chan_bw11.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %current_chan_bw11.i, align 2
  call fastcc void @phy_set_txpower_index_by_rate_array(ptr noundef %hw, i32 noundef %rfpath.036, i8 noundef zeroext %22, i8 noundef zeroext %channel, ptr noundef nonnull %ht_rates1t.i, i8 noundef zeroext 8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ht_rates1t.i) #8
  %23 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_total_rfpath, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp5 = icmp ugt i8 %24, 1
  br i1 %cmp5, label %if.then7, label %phy_set_txpower_index_by_rate_section.exit.for.inc_crit_edge

phy_set_txpower_index_by_rate_section.exit.for.inc_crit_edge: ; preds = %phy_set_txpower_index_by_rate_section.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %phy_set_txpower_index_by_rate_section.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ht_rates2t.i) #8
  %27 = ptrtoint ptr %ht_rates2t.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1447087143713839643, ptr %ht_rates2t.i, align 8
  %current_chan_bw16.i = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 14, i32 5
  %28 = ptrtoint ptr %current_chan_bw16.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %current_chan_bw16.i, align 2
  call fastcc void @phy_set_txpower_index_by_rate_array(ptr noundef %hw, i32 noundef %rfpath.036, i8 noundef zeroext %29, i8 noundef zeroext %channel, ptr noundef nonnull %ht_rates2t.i, i8 noundef zeroext 8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ht_rates2t.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %phy_set_txpower_index_by_rate_section.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %rfpath.036, 1
  %30 = ptrtoint ptr %num_total_rfpath to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_total_rfpath, align 4
  %conv = zext i8 %31 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_scan_operation_backup(ptr noundef %hw, i8 noundef zeroext %operation) local_unnamed_addr #0 align 64 {
entry:
  %iotype = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iotype) #8
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i8 %operation to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %operation, label %do.end [
    i8 0, label %sw.bb
    i8 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
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
  call void %11(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #8
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
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
  call void %18(ptr noundef %hw, i8 noundef zeroext 72, ptr noundef nonnull %iotype) #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb3, %sw.bb, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iotype) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_set_bw_mode_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cond = select i1 %cmp, ptr @.str.15, ptr @.str.16
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond) #8
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 1539) #8
  %9 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read8_sync.i, align 4
  %call.i84 = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 1090) #8
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
  tail call void %16(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %14) #8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i, align 8
  %write_readback.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i, align 4
  %call.i86 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 1539) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %23 = and i8 %call.i, -5
  %write8_async.i87 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %24 = ptrtoint ptr %write8_async.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i87, align 4
  tail call void %25(ptr noundef %1, i32 noundef 1539, i8 noundef zeroext %23) #8
  %cfg.i88 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %26 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i89 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i89 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i89, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i90 = icmp eq i8 %29, 0
  br i1 %tobool.not.i90, label %sw.bb11.rtl_write_byte.exit94_crit_edge, label %if.then.i93

sw.bb11.rtl_write_byte.exit94_crit_edge:          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit94

if.then.i93:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i, align 4
  %call.i92 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 1539) #8
  br label %rtl_write_byte.exit94

rtl_write_byte.exit94:                            ; preds = %if.then.i93, %sw.bb11.rtl_write_byte.exit94_crit_edge
  %32 = and i8 %call.i84, -112
  %cur_40_prime_sc = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %33 = ptrtoint ptr %cur_40_prime_sc to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cur_40_prime_sc, align 1
  %shl = shl i8 %34, 5
  %or17 = or i8 %shl, %32
  %35 = ptrtoint ptr %write8_async.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write8_async.i87, align 4
  tail call void %36(ptr noundef %1, i32 noundef 1090, i8 noundef zeroext %or17) #8
  %37 = ptrtoint ptr %cfg.i88 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i88, align 8
  %write_readback.i97 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %write_readback.i97 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %write_readback.i97, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i98 = icmp eq i8 %40, 0
  br i1 %tobool.not.i98, label %rtl_write_byte.exit94.sw.epilog_crit_edge, label %if.then.i101

rtl_write_byte.exit94.sw.epilog_crit_edge:        ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i101:                                     ; preds = %rtl_write_byte.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %read8_sync.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read8_sync.i, align 4
  %call.i100 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 1090) #8
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv8 = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then.i101, %rtl_write_byte.exit94.sw.epilog_crit_edge, %if.then.i, %sw.bb.sw.epilog_crit_edge
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
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv, align 8
  %cfg.i103 = getelementptr inbounds %struct.rtl_priv, ptr %47, i32 0, i32 32
  %48 = ptrtoint ptr %cfg.i103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i103, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %51, i32 0, i32 46
  %52 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %53(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 0) #8
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 8
  %cfg.i105 = getelementptr inbounds %struct.rtl_priv, ptr %55, i32 0, i32 32
  %56 = ptrtoint ptr %cfg.i105 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg.i105, align 8
  %ops.i106 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ops.i106 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i106, align 4
  %set_bbreg.i107 = getelementptr inbounds %struct.rtl_hal_ops, ptr %59, i32 0, i32 46
  %60 = ptrtoint ptr %set_bbreg.i107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_bbreg.i107, align 4
  tail call void %61(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 0) #8
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  %cfg.i109 = getelementptr inbounds %struct.rtl_priv, ptr %63, i32 0, i32 32
  %64 = ptrtoint ptr %cfg.i109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cfg.i109, align 8
  %ops.i110 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %ops.i110 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ops.i110, align 4
  %set_bbreg.i111 = getelementptr inbounds %struct.rtl_hal_ops, ptr %67, i32 0, i32 46
  %68 = ptrtoint ptr %set_bbreg.i111 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_bbreg.i111, align 4
  tail call void %69(ptr noundef %hw, i32 noundef 3300, i32 noundef -1073741824, i32 noundef 0) #8
  br label %sw.epilog43

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv, align 8
  %cfg.i113 = getelementptr inbounds %struct.rtl_priv, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %cfg.i113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cfg.i113, align 8
  %ops.i114 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %ops.i114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i114, align 4
  %set_bbreg.i115 = getelementptr inbounds %struct.rtl_hal_ops, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %set_bbreg.i115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_bbreg.i115, align 4
  tail call void %77(ptr noundef %hw, i32 noundef 2048, i32 noundef 1, i32 noundef 1) #8
  %78 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv, align 8
  %cfg.i117 = getelementptr inbounds %struct.rtl_priv, ptr %79, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i117 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i117, align 8
  %ops.i118 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %ops.i118 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i118, align 4
  %set_bbreg.i119 = getelementptr inbounds %struct.rtl_hal_ops, ptr %83, i32 0, i32 46
  %84 = ptrtoint ptr %set_bbreg.i119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %set_bbreg.i119, align 4
  tail call void %85(ptr noundef %hw, i32 noundef 2304, i32 noundef 1, i32 noundef 1) #8
  %cur_40_prime_sc26 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 46
  %86 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cur_40_prime_sc26, align 1
  %88 = lshr i8 %87, 1
  %89 = zext i8 %88 to i32
  %90 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv, align 8
  %cfg.i121 = getelementptr inbounds %struct.rtl_priv, ptr %91, i32 0, i32 32
  %92 = ptrtoint ptr %cfg.i121 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cfg.i121, align 8
  %ops.i122 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %ops.i122 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i122, align 4
  %set_bbreg.i123 = getelementptr inbounds %struct.rtl_hal_ops, ptr %95, i32 0, i32 46
  %96 = ptrtoint ptr %set_bbreg.i123 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %set_bbreg.i123, align 4
  tail call void %97(ptr noundef %hw, i32 noundef 2560, i32 noundef 16, i32 noundef %89) #8
  %98 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_40_prime_sc26, align 1
  %conv29 = zext i8 %99 to i32
  %100 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %priv, align 8
  %cfg.i125 = getelementptr inbounds %struct.rtl_priv, ptr %101, i32 0, i32 32
  %102 = ptrtoint ptr %cfg.i125 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cfg.i125, align 8
  %ops.i126 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %103, i32 0, i32 4
  %104 = ptrtoint ptr %ops.i126 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ops.i126, align 4
  %set_bbreg.i127 = getelementptr inbounds %struct.rtl_hal_ops, ptr %105, i32 0, i32 46
  %106 = ptrtoint ptr %set_bbreg.i127 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %set_bbreg.i127, align 4
  tail call void %107(ptr noundef %hw, i32 noundef 3328, i32 noundef 3072, i32 noundef %conv29) #8
  %108 = ptrtoint ptr %cur_40_prime_sc26 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cur_40_prime_sc26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %109)
  %cmp32 = icmp eq i8 %109, 1
  %cond34 = select i1 %cmp32, i32 2, i32 1
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %cfg.i129 = getelementptr inbounds %struct.rtl_priv, ptr %111, i32 0, i32 32
  %112 = ptrtoint ptr %cfg.i129 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i129, align 8
  %ops.i130 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %ops.i130 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i130, align 4
  %set_bbreg.i131 = getelementptr inbounds %struct.rtl_hal_ops, ptr %115, i32 0, i32 46
  %116 = ptrtoint ptr %set_bbreg.i131 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %set_bbreg.i131, align 4
  tail call void %117(ptr noundef %hw, i32 noundef 2072, i32 noundef 201326592, i32 noundef %cond34) #8
  br label %sw.epilog43

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv23 = zext i8 %44 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv23) #11
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %do.end38, %sw.bb25, %sw.bb24
  %118 = ptrtoint ptr %current_chan_bw to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %current_chan_bw, align 2
  tail call void @rtl92ee_phy_rf6052_set_bandwidth(ptr noundef %hw, i8 noundef zeroext %119) #8
  %set_bwmode_inprogress45 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 6
  %120 = ptrtoint ptr %set_bwmode_inprogress45 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %set_bwmode_inprogress45, align 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 4, ptr noundef nonnull @.str.21) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_phy_rf6052_set_bandwidth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_set_bw_mode(ptr noundef %hw, i32 noundef %ch_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_phy_set_bw_mode_callback(ptr noundef %hw)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.22) #8
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
define dso_local void @rtl92ee_phy_sw_chnl_callback(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %precommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %postcommoncmd.i = alloca [16 x %struct.swchnlcmd], align 4
  %rfdependcmd.i = alloca [16 x %struct.swchnlcmd], align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.23, i32 noundef %conv) #8
  %state.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end4:                                          ; preds = %do.body
  %11 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_channel, align 1
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %precommoncmd.i) #8
  %15 = call ptr @memset(ptr %6, i32 255, i32 224)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %postcommoncmd.i) #8
  %16 = call ptr @memset(ptr %7, i32 255, i32 240)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rfdependcmd.i) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end4
  %.b163.i = load i1, ptr @_rtl92ee_phy_sw_chnl_step_by_step.__already_done, align 1
  br i1 %.b163.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then.i, !prof !182

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @_rtl92ee_phy_sw_chnl_step_by_step.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1834, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %conv.i) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end65.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv56.i = zext i8 %31 to i32
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv56.i) #11
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.end76.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc77.i = add nuw nsw i8 %31, 1
  %38 = ptrtoint ptr %sw_chnl_stage to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %inc77.i, ptr %sw_chnl_stage, align 1
  %39 = ptrtoint ptr %sw_chnl_step to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %sw_chnl_step, align 1
  br label %do.body55.i

sw.bb80.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom61.i.le159 = zext i8 %34 to i32
  tail call void @rtl92ee_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %12) #8
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
  tail call void %45(ptr noundef %14, i32 noundef %41, i32 noundef %43) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %46 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_readback.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i.i, label %sw.bb81.i.if.then7_crit_edge, label %if.then.i.i

sw.bb81.i.if.then7_crit_edge:                     ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then.i.i:                                      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 11
  %50 = ptrtoint ptr %read32_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read32_sync.i.i, align 4
  %call.i.i = tail call i32 %51(ptr noundef %14, i32 noundef %41) #8
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
  tail call void %57(ptr noundef %14, i32 noundef %53, i16 noundef zeroext %conv85.i) #8
  %cfg.i177.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i177.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i177.i, align 8
  %write_readback.i178.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %write_readback.i178.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %write_readback.i178.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i179.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i179.i, label %sw.bb82.i.if.then7_crit_edge, label %if.then.i181.i

sw.bb82.i.if.then7_crit_edge:                     ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then.i181.i:                                   ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #10
  %read16_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 10
  %62 = ptrtoint ptr %read16_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read16_sync.i.i, align 4
  %call.i180.i = tail call zeroext i16 %63(ptr noundef %14, i32 noundef %53) #8
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
  tail call void %69(ptr noundef %14, i32 noundef %65, i8 noundef zeroext %conv89.i) #8
  %cfg.i182.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 32
  %70 = ptrtoint ptr %cfg.i182.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cfg.i182.i, align 8
  %write_readback.i183.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %write_readback.i183.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %write_readback.i183.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i184.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i184.i, label %sw.bb86.i.if.then7_crit_edge, label %if.then.i186.i

sw.bb86.i.if.then7_crit_edge:                     ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then.i186.i:                                   ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %14, i32 0, i32 13, i32 9
  %74 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i185.i = tail call zeroext i8 %75(ptr noundef %14, i32 noundef %65) #8
  br label %if.then7

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx96.i = getelementptr %struct.rtl_priv, ptr %14, i32 0, i32 14, i32 52, i32 %indvars.iv.i
  %76 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx96.i, align 4
  %and.i = and i32 %77, 268435200
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
  tail call void %89(ptr noundef %hw, i32 noundef %indvars.iv.i, i32 noundef %81, i32 noundef 1023, i32 noundef %or.i) #8
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.then7_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.if.then7_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

sw.default107.i:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom61.i.le161 = zext i8 %34 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %14, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %36) #8
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
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #8
  %cmp.not = icmp eq i32 %91, 0
  br i1 %cmp.not, label %if.then7.do.body_crit_edge, label %if.then7.while.body_crit_edge

if.then7.while.body_crit_edge:                    ; preds = %if.then7
  br label %while.body

if.then7.do.body_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then7.while.body_crit_edge
  %__ms.091 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %91, %if.then7.while.body_crit_edge ]
  %dec = add i32 %__ms.091, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %94(i32 noundef 214748000) #8
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %while.body.do.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else26:                                        ; preds = %if.then71.i.if.else26_crit_edge, %do.end65.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rfdependcmd.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %postcommoncmd.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %precommoncmd.i) #8
  %95 = ptrtoint ptr %sw_chnl_inprogress to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %sw_chnl_inprogress, align 4
  br label %do.end

do.end:                                           ; preds = %if.else26, %while.body.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 64, i32 noundef 5, ptr noundef nonnull @.str.21) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rtl92ee_phy_sw_chnl(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.rhs:                                         ; preds = %if.end5
  %.b68 = load i1, ptr @rtl92ee_phy_sw_chnl.__already_done, align 1
  br i1 %.b68, label %land.rhs.if.end37_crit_edge, label %if.then15, !prof !182

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rtl92ee_phy_sw_chnl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1785, i32 noundef 9, ptr noundef nonnull @.str.24) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtl92ee_phy_sw_chnl_callback(ptr noundef %hw)
  %13 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_channel, align 1
  %conv48 = zext i8 %14 to i32
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %conv48) #8
  br label %if.end51

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 268435456, i32 noundef 4, ptr noundef nonnull @.str.26) #8
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
define dso_local void @rtl92ee_phy_iq_calibrate(ptr noundef %hw, i1 noundef zeroext %b_recovery) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #8
  %2 = call ptr @memset(ptr %result, i32 255, i32 128)
  br i1 %b_recovery, label %if.then, label %for.inc.7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iqk_bb_backup = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %3 = ptrtoint ptr %iqk_bb_backup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iqk_bb_backup, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %6, i32 0, i32 32
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
  tail call void %12(ptr noundef %hw, i32 noundef 3092, i32 noundef -1, i32 noundef %4) #8
  %arrayidx1.i.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %13 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.i.1, align 4
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 8
  %cfg.i.i.1 = getelementptr inbounds %struct.rtl_priv, ptr %16, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i.1, align 8
  %ops.i.i.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i.1, align 4
  %set_bbreg.i.i.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %set_bbreg.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_bbreg.i.i.1, align 4
  tail call void %22(ptr noundef %hw, i32 noundef 3100, i32 noundef -1, i32 noundef %14) #8
  %arrayidx1.i.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %23 = ptrtoint ptr %arrayidx1.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.i.2, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  %cfg.i.i.2 = getelementptr inbounds %struct.rtl_priv, ptr %26, i32 0, i32 32
  %27 = ptrtoint ptr %cfg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg.i.i.2, align 8
  %ops.i.i.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ops.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i.2, align 4
  %set_bbreg.i.i.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %30, i32 0, i32 46
  %31 = ptrtoint ptr %set_bbreg.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %set_bbreg.i.i.2, align 4
  tail call void %32(ptr noundef %hw, i32 noundef 3148, i32 noundef -1, i32 noundef %24) #8
  %arrayidx1.i.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %33 = ptrtoint ptr %arrayidx1.i.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i.3, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %cfg.i.i.3 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 32
  %37 = ptrtoint ptr %cfg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg.i.i.3, align 8
  %ops.i.i.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %ops.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i.3, align 4
  %set_bbreg.i.i.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %40, i32 0, i32 46
  %41 = ptrtoint ptr %set_bbreg.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_bbreg.i.i.3, align 4
  tail call void %42(ptr noundef %hw, i32 noundef 3192, i32 noundef -1, i32 noundef %34) #8
  %arrayidx1.i.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %43 = ptrtoint ptr %arrayidx1.i.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx1.i.4, align 4
  %45 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv, align 8
  %cfg.i.i.4 = getelementptr inbounds %struct.rtl_priv, ptr %46, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i.4, align 8
  %ops.i.i.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i.4, align 4
  %set_bbreg.i.i.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i.i.4, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 3200, i32 noundef -1, i32 noundef %44) #8
  %arrayidx1.i.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %53 = ptrtoint ptr %arrayidx1.i.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx1.i.5, align 4
  %55 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv, align 8
  %cfg.i.i.5 = getelementptr inbounds %struct.rtl_priv, ptr %56, i32 0, i32 32
  %57 = ptrtoint ptr %cfg.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i.i.5, align 8
  %ops.i.i.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %ops.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i.i.5, align 4
  %set_bbreg.i.i.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %60, i32 0, i32 46
  %61 = ptrtoint ptr %set_bbreg.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_bbreg.i.i.5, align 4
  tail call void %62(ptr noundef %hw, i32 noundef 3208, i32 noundef -1, i32 noundef %54) #8
  %arrayidx1.i.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %63 = ptrtoint ptr %arrayidx1.i.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx1.i.6, align 4
  %65 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv, align 8
  %cfg.i.i.6 = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 32
  %67 = ptrtoint ptr %cfg.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i.i.6, align 8
  %ops.i.i.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %ops.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i.i.6, align 4
  %set_bbreg.i.i.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %70, i32 0, i32 46
  %71 = ptrtoint ptr %set_bbreg.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_bbreg.i.i.6, align 4
  tail call void %72(ptr noundef %hw, i32 noundef 3220, i32 noundef -1, i32 noundef %64) #8
  %arrayidx1.i.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %73 = ptrtoint ptr %arrayidx1.i.7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx1.i.7, align 4
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv, align 8
  %cfg.i.i.7 = getelementptr inbounds %struct.rtl_priv, ptr %76, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i.i.7, align 8
  %ops.i.i.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ops.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i.i.7, align 4
  %set_bbreg.i.i.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %80, i32 0, i32 46
  %81 = ptrtoint ptr %set_bbreg.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_bbreg.i.i.7, align 4
  tail call void %82(ptr noundef %hw, i32 noundef 3228, i32 noundef -1, i32 noundef %74) #8
  %arrayidx1.i.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %83 = ptrtoint ptr %arrayidx1.i.8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx1.i.8, align 4
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 8
  %cfg.i.i.8 = getelementptr inbounds %struct.rtl_priv, ptr %86, i32 0, i32 32
  %87 = ptrtoint ptr %cfg.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cfg.i.i.8, align 8
  %ops.i.i.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %ops.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ops.i.i.8, align 4
  %set_bbreg.i.i.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %90, i32 0, i32 46
  %91 = ptrtoint ptr %set_bbreg.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %set_bbreg.i.i.8, align 4
  tail call void %92(ptr noundef %hw, i32 noundef 3232, i32 noundef -1, i32 noundef %84) #8
  br label %cleanup

for.inc.7:                                        ; preds = %entry
  %arrayidx27 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 0
  %93 = call ptr @memset(ptr %result, i32 0, i32 96)
  %94 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 256, ptr %arrayidx27, align 4
  %arrayidx30.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %95 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx30.1, align 4
  %arrayidx27.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %96 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 256, ptr %arrayidx27.2, align 4
  %arrayidx30.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx30.3, align 4
  %arrayidx27.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %arrayidx27.4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 256, ptr %arrayidx27.4, align 4
  %arrayidx30.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %99 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx30.5, align 4
  %arrayidx27.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %100 = ptrtoint ptr %arrayidx27.6 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 256, ptr %arrayidx27.6, align 4
  %arrayidx30.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %101 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx30.7, align 4
  br label %for.body36

for.body36:                                       ; preds = %for.inc66.for.body36_crit_edge, %for.inc.7
  %indvars.iv = phi i32 [ 0, %for.inc.7 ], [ %indvars.iv.next, %for.inc66.for.body36_crit_edge ]
  %final_candidate.0329 = phi i8 [ -1, %for.inc.7 ], [ %final_candidate.1, %for.inc66.for.body36_crit_edge ]
  %102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %priv, align 8
  %cfg.i.i222 = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 32
  %104 = ptrtoint ptr %cfg.i.i222 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cfg.i.i222, align 8
  %ops.i.i223 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %ops.i.i223 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ops.i.i223, align 4
  %get_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %107, i32 0, i32 45
  %108 = ptrtoint ptr %get_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %get_bbreg.i.i, align 4
  %call.i.i = tail call i32 %109(ptr noundef %hw, i32 noundef 3152, i32 noundef 255) #8
  %110 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %priv, align 8
  %cfg.i2.i = getelementptr inbounds %struct.rtl_priv, ptr %111, i32 0, i32 32
  %112 = ptrtoint ptr %cfg.i2.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg.i2.i, align 8
  %ops.i3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %113, i32 0, i32 4
  %114 = ptrtoint ptr %ops.i3.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ops.i3.i, align 4
  %get_bbreg.i4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %115, i32 0, i32 45
  %116 = ptrtoint ptr %get_bbreg.i4.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %get_bbreg.i4.i, align 4
  %call.i5.i = tail call i32 %117(ptr noundef %hw, i32 noundef 3160, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp.i = icmp eq i32 %indvars.iv, 0
  br i1 %cmp.i, label %if.then.i, label %for.body36.for.body.i26.i.preheader_crit_edge

for.body36.for.body.i26.i.preheader_crit_edge:    ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i26.i.preheader

if.then.i:                                        ; preds = %for.body36
  %adda_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 28
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.06.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @__const._rtl92ee_phy_iq_calibrate.adda_reg, i32 %i.06.i.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i.i, align 4
  %120 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %priv, align 8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %121, i32 0, i32 32
  %122 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cfg.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops.i.i.i, align 4
  %get_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %125, i32 0, i32 45
  %126 = ptrtoint ptr %get_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %get_bbreg.i.i.i, align 4
  %call.i.i.i = tail call i32 %127(ptr noundef %hw, i32 noundef %119, i32 noundef -1) #8
  %arrayidx1.i.i = getelementptr i32, ptr %adda_backup.i, i32 %i.06.i.i
  %128 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call.i.i.i, ptr %arrayidx1.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %_rtl92ee_phy_save_adda_registers.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

_rtl92ee_phy_save_adda_registers.exit.i:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %iqk_mac_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29
  %129 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv, align 8
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %130, i32 0, i32 13, i32 9
  %131 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i7.i = tail call zeroext i8 %132(ptr noundef %130, i32 noundef 1314) #8
  %conv.i.i = zext i8 %call.i.i7.i to i32
  %133 = ptrtoint ptr %iqk_mac_backup.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv.i.i, ptr %iqk_mac_backup.i, align 4
  %134 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.1.i.i = tail call zeroext i8 %135(ptr noundef %130, i32 noundef 1360) #8
  %conv.1.i.i = zext i8 %call.i.1.i.i to i32
  %arrayidx1.1.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 1
  %136 = ptrtoint ptr %arrayidx1.1.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %conv.1.i.i, ptr %arrayidx1.1.i.i, align 4
  %137 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.2.i.i = tail call zeroext i8 %138(ptr noundef %130, i32 noundef 1361) #8
  %conv.2.i.i = zext i8 %call.i.2.i.i to i32
  %arrayidx1.2.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 2
  %139 = ptrtoint ptr %arrayidx1.2.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv.2.i.i, ptr %arrayidx1.2.i.i, align 4
  %read32_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %130, i32 0, i32 13, i32 11
  %140 = ptrtoint ptr %read32_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %read32_sync.i.i.i, align 4
  %call.i13.i.i = tail call i32 %141(ptr noundef %130, i32 noundef 64) #8
  %arrayidx4.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 3
  %142 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %call.i13.i.i, ptr %arrayidx4.i.i, align 4
  %iqk_bb_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30
  %143 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %priv, align 8
  %cfg.i.i11.i = getelementptr inbounds %struct.rtl_priv, ptr %144, i32 0, i32 32
  %145 = ptrtoint ptr %cfg.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cfg.i.i11.i, align 8
  %ops.i.i12.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %ops.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ops.i.i12.i, align 4
  %get_bbreg.i.i13.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %148, i32 0, i32 45
  %149 = ptrtoint ptr %get_bbreg.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %get_bbreg.i.i13.i, align 4
  %call.i.i14.i = tail call i32 %150(ptr noundef %hw, i32 noundef 3076, i32 noundef -1) #8
  %151 = ptrtoint ptr %iqk_bb_backup.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call.i.i14.i, ptr %iqk_bb_backup.i, align 4
  %152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv, align 8
  %cfg.i.i11.1.i = getelementptr inbounds %struct.rtl_priv, ptr %153, i32 0, i32 32
  %154 = ptrtoint ptr %cfg.i.i11.1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cfg.i.i11.1.i, align 8
  %ops.i.i12.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %ops.i.i12.1.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ops.i.i12.1.i, align 4
  %get_bbreg.i.i13.1.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %157, i32 0, i32 45
  %158 = ptrtoint ptr %get_bbreg.i.i13.1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %get_bbreg.i.i13.1.i, align 4
  %call.i.i14.1.i = tail call i32 %159(ptr noundef %hw, i32 noundef 3080, i32 noundef -1) #8
  %arrayidx1.i15.1.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 1
  %160 = ptrtoint ptr %arrayidx1.i15.1.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %call.i.i14.1.i, ptr %arrayidx1.i15.1.i, align 4
  %161 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv, align 8
  %cfg.i.i11.2.i = getelementptr inbounds %struct.rtl_priv, ptr %162, i32 0, i32 32
  %163 = ptrtoint ptr %cfg.i.i11.2.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cfg.i.i11.2.i, align 8
  %ops.i.i12.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %ops.i.i12.2.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops.i.i12.2.i, align 4
  %get_bbreg.i.i13.2.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %166, i32 0, i32 45
  %167 = ptrtoint ptr %get_bbreg.i.i13.2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %get_bbreg.i.i13.2.i, align 4
  %call.i.i14.2.i = tail call i32 %168(ptr noundef %hw, i32 noundef 2164, i32 noundef -1) #8
  %arrayidx1.i15.2.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 2
  %169 = ptrtoint ptr %arrayidx1.i15.2.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %call.i.i14.2.i, ptr %arrayidx1.i15.2.i, align 4
  %170 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %priv, align 8
  %cfg.i.i11.3.i = getelementptr inbounds %struct.rtl_priv, ptr %171, i32 0, i32 32
  %172 = ptrtoint ptr %cfg.i.i11.3.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cfg.i.i11.3.i, align 8
  %ops.i.i12.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %173, i32 0, i32 4
  %174 = ptrtoint ptr %ops.i.i12.3.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ops.i.i12.3.i, align 4
  %get_bbreg.i.i13.3.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %175, i32 0, i32 45
  %176 = ptrtoint ptr %get_bbreg.i.i13.3.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %get_bbreg.i.i13.3.i, align 4
  %call.i.i14.3.i = tail call i32 %177(ptr noundef %hw, i32 noundef 2920, i32 noundef -1) #8
  %arrayidx1.i15.3.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 3
  %178 = ptrtoint ptr %arrayidx1.i15.3.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %call.i.i14.3.i, ptr %arrayidx1.i15.3.i, align 4
  %179 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %priv, align 8
  %cfg.i.i11.4.i = getelementptr inbounds %struct.rtl_priv, ptr %180, i32 0, i32 32
  %181 = ptrtoint ptr %cfg.i.i11.4.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cfg.i.i11.4.i, align 8
  %ops.i.i12.4.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %ops.i.i12.4.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ops.i.i12.4.i, align 4
  %get_bbreg.i.i13.4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %184, i32 0, i32 45
  %185 = ptrtoint ptr %get_bbreg.i.i13.4.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %get_bbreg.i.i13.4.i, align 4
  %call.i.i14.4.i = tail call i32 %186(ptr noundef %hw, i32 noundef 2924, i32 noundef -1) #8
  %arrayidx1.i15.4.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 4
  %187 = ptrtoint ptr %arrayidx1.i15.4.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %call.i.i14.4.i, ptr %arrayidx1.i15.4.i, align 4
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 8
  %cfg.i.i11.5.i = getelementptr inbounds %struct.rtl_priv, ptr %189, i32 0, i32 32
  %190 = ptrtoint ptr %cfg.i.i11.5.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cfg.i.i11.5.i, align 8
  %ops.i.i12.5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %ops.i.i12.5.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i.i12.5.i, align 4
  %get_bbreg.i.i13.5.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %193, i32 0, i32 45
  %194 = ptrtoint ptr %get_bbreg.i.i13.5.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %get_bbreg.i.i13.5.i, align 4
  %call.i.i14.5.i = tail call i32 %195(ptr noundef %hw, i32 noundef 2160, i32 noundef -1) #8
  %arrayidx1.i15.5.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 5
  %196 = ptrtoint ptr %arrayidx1.i15.5.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %call.i.i14.5.i, ptr %arrayidx1.i15.5.i, align 4
  %197 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %priv, align 8
  %cfg.i.i11.6.i = getelementptr inbounds %struct.rtl_priv, ptr %198, i32 0, i32 32
  %199 = ptrtoint ptr %cfg.i.i11.6.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %cfg.i.i11.6.i, align 8
  %ops.i.i12.6.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %ops.i.i12.6.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %ops.i.i12.6.i, align 4
  %get_bbreg.i.i13.6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %202, i32 0, i32 45
  %203 = ptrtoint ptr %get_bbreg.i.i13.6.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %get_bbreg.i.i13.6.i, align 4
  %call.i.i14.6.i = tail call i32 %204(ptr noundef %hw, i32 noundef 2144, i32 noundef -1) #8
  %arrayidx1.i15.6.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 6
  %205 = ptrtoint ptr %arrayidx1.i15.6.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call.i.i14.6.i, ptr %arrayidx1.i15.6.i, align 4
  %206 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %priv, align 8
  %cfg.i.i11.7.i = getelementptr inbounds %struct.rtl_priv, ptr %207, i32 0, i32 32
  %208 = ptrtoint ptr %cfg.i.i11.7.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %cfg.i.i11.7.i, align 8
  %ops.i.i12.7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %209, i32 0, i32 4
  %210 = ptrtoint ptr %ops.i.i12.7.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ops.i.i12.7.i, align 4
  %get_bbreg.i.i13.7.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %211, i32 0, i32 45
  %212 = ptrtoint ptr %get_bbreg.i.i13.7.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %get_bbreg.i.i13.7.i, align 4
  %call.i.i14.7.i = tail call i32 %213(ptr noundef %hw, i32 noundef 2148, i32 noundef -1) #8
  %arrayidx1.i15.7.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 7
  %214 = ptrtoint ptr %arrayidx1.i15.7.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %call.i.i14.7.i, ptr %arrayidx1.i15.7.i, align 4
  %215 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %priv, align 8
  %cfg.i.i11.8.i = getelementptr inbounds %struct.rtl_priv, ptr %216, i32 0, i32 32
  %217 = ptrtoint ptr %cfg.i.i11.8.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cfg.i.i11.8.i, align 8
  %ops.i.i12.8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %ops.i.i12.8.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ops.i.i12.8.i, align 4
  %get_bbreg.i.i13.8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %220, i32 0, i32 45
  %221 = ptrtoint ptr %get_bbreg.i.i13.8.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %get_bbreg.i.i13.8.i, align 4
  %call.i.i14.8.i = tail call i32 %222(ptr noundef %hw, i32 noundef 2048, i32 noundef -1) #8
  %arrayidx1.i15.8.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 8
  %223 = ptrtoint ptr %arrayidx1.i15.8.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %call.i.i14.8.i, ptr %arrayidx1.i15.8.i, align 4
  br label %for.body.i26.i.preheader

for.body.i26.i.preheader:                         ; preds = %_rtl92ee_phy_save_adda_registers.exit.i, %for.body36.for.body.i26.i.preheader_crit_edge
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %for.body.i26.i.preheader
  %i.01.i.i = phi i32 [ %inc.i24.i, %for.body.i26.i.for.body.i26.i_crit_edge ], [ 0, %for.body.i26.i.preheader ]
  %arrayidx.i21.i = getelementptr i32, ptr @__const._rtl92ee_phy_iq_calibrate.adda_reg, i32 %i.01.i.i
  %224 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i21.i, align 4
  %226 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %priv, align 8
  %cfg.i.i22.i = getelementptr inbounds %struct.rtl_priv, ptr %227, i32 0, i32 32
  %228 = ptrtoint ptr %cfg.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg.i.i22.i, align 8
  %ops.i.i23.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %ops.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops.i.i23.i, align 4
  %set_bbreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %231, i32 0, i32 46
  %232 = ptrtoint ptr %set_bbreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %set_bbreg.i.i.i, align 4
  tail call void %233(ptr noundef %hw, i32 noundef %225, i32 noundef -1, i32 noundef 264246806) #8
  %inc.i24.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i25.i = icmp eq i32 %inc.i24.i, 16
  br i1 %exitcond.not.i25.i, label %_rtl92ee_phy_path_adda_on.exit.i, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i26.i

_rtl92ee_phy_path_adda_on.exit.i:                 ; preds = %for.body.i26.i
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 8
  %cfg.i28.i = getelementptr inbounds %struct.rtl_priv, ptr %235, i32 0, i32 32
  %236 = ptrtoint ptr %cfg.i28.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cfg.i28.i, align 8
  %ops.i29.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %237, i32 0, i32 4
  %238 = ptrtoint ptr %ops.i29.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ops.i29.i, align 4
  %set_bbreg.i.i224 = getelementptr inbounds %struct.rtl_hal_ops, ptr %239, i32 0, i32 46
  %240 = ptrtoint ptr %set_bbreg.i.i224 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %set_bbreg.i.i224, align 4
  tail call void %241(ptr noundef %hw, i32 noundef 2048, i32 noundef 16777216, i32 noundef 0) #8
  %242 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %priv, align 8
  %cfg.i31.i = getelementptr inbounds %struct.rtl_priv, ptr %243, i32 0, i32 32
  %244 = ptrtoint ptr %cfg.i31.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cfg.i31.i, align 8
  %ops.i32.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %245, i32 0, i32 4
  %246 = ptrtoint ptr %ops.i32.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ops.i32.i, align 4
  %set_bbreg.i33.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %247, i32 0, i32 46
  %248 = ptrtoint ptr %set_bbreg.i33.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %set_bbreg.i33.i, align 4
  tail call void %249(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef 60839424) #8
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 8
  %cfg.i35.i = getelementptr inbounds %struct.rtl_priv, ptr %251, i32 0, i32 32
  %252 = ptrtoint ptr %cfg.i35.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cfg.i35.i, align 8
  %ops.i36.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %253, i32 0, i32 4
  %254 = ptrtoint ptr %ops.i36.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ops.i36.i, align 4
  %set_bbreg.i37.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %255, i32 0, i32 46
  %256 = ptrtoint ptr %set_bbreg.i37.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %set_bbreg.i37.i, align 4
  tail call void %257(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef 524516) #8
  %258 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %priv, align 8
  %cfg.i39.i = getelementptr inbounds %struct.rtl_priv, ptr %259, i32 0, i32 32
  %260 = ptrtoint ptr %cfg.i39.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cfg.i39.i, align 8
  %ops.i40.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %ops.i40.i, align 4
  %set_bbreg.i41.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %263, i32 0, i32 46
  %264 = ptrtoint ptr %set_bbreg.i41.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %set_bbreg.i41.i, align 4
  tail call void %265(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef 572555776) #8
  %266 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %priv, align 8
  %cfg.i43.i = getelementptr inbounds %struct.rtl_priv, ptr %267, i32 0, i32 32
  %268 = ptrtoint ptr %cfg.i43.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cfg.i43.i, align 8
  %ops.i44.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %269, i32 0, i32 4
  %270 = ptrtoint ptr %ops.i44.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ops.i44.i, align 4
  %set_bbreg.i45.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %271, i32 0, i32 46
  %272 = ptrtoint ptr %set_bbreg.i45.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %set_bbreg.i45.i, align 4
  tail call void %273(ptr noundef %hw, i32 noundef 2160, i32 noundef 1024, i32 noundef 1) #8
  %274 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %priv, align 8
  %cfg.i47.i = getelementptr inbounds %struct.rtl_priv, ptr %275, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i47.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i47.i, align 8
  %ops.i48.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %ops.i48.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i48.i, align 4
  %set_bbreg.i49.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %279, i32 0, i32 46
  %280 = ptrtoint ptr %set_bbreg.i49.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %set_bbreg.i49.i, align 4
  tail call void %281(ptr noundef %hw, i32 noundef 2160, i32 noundef 67108864, i32 noundef 1) #8
  %282 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %priv, align 8
  %cfg.i51.i = getelementptr inbounds %struct.rtl_priv, ptr %283, i32 0, i32 32
  %284 = ptrtoint ptr %cfg.i51.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cfg.i51.i, align 8
  %ops.i52.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %285, i32 0, i32 4
  %286 = ptrtoint ptr %ops.i52.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ops.i52.i, align 4
  %set_bbreg.i53.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %287, i32 0, i32 46
  %288 = ptrtoint ptr %set_bbreg.i53.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %set_bbreg.i53.i, align 4
  tail call void %289(ptr noundef %hw, i32 noundef 2144, i32 noundef 1024, i32 noundef 1) #8
  %290 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %priv, align 8
  %cfg.i55.i = getelementptr inbounds %struct.rtl_priv, ptr %291, i32 0, i32 32
  %292 = ptrtoint ptr %cfg.i55.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %cfg.i55.i, align 8
  %ops.i56.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %293, i32 0, i32 4
  %294 = ptrtoint ptr %ops.i56.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ops.i56.i, align 4
  %set_bbreg.i57.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %295, i32 0, i32 46
  %296 = ptrtoint ptr %set_bbreg.i57.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %set_bbreg.i57.i, align 4
  tail call void %297(ptr noundef %hw, i32 noundef 2148, i32 noundef 1024, i32 noundef 1) #8
  %iqk_mac_backup12.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29
  %298 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %priv, align 8
  %cfg.i.i59.i = getelementptr inbounds %struct.rtl_priv, ptr %299, i32 0, i32 32
  %300 = ptrtoint ptr %cfg.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cfg.i.i59.i, align 8
  %ops.i.i60.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %ops.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ops.i.i60.i, align 4
  %set_bbreg.i.i61.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %303, i32 0, i32 46
  %304 = ptrtoint ptr %set_bbreg.i.i61.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %set_bbreg.i.i61.i, align 4
  tail call void %305(ptr noundef %hw, i32 noundef 1312, i32 noundef 16711680, i32 noundef 255) #8
  %306 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %priv, align 8
  %cfg.i63.i = getelementptr inbounds %struct.rtl_priv, ptr %307, i32 0, i32 32
  %308 = ptrtoint ptr %cfg.i63.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %cfg.i63.i, align 8
  %ops.i64.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %309, i32 0, i32 4
  %310 = ptrtoint ptr %ops.i64.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ops.i64.i, align 4
  %set_bbreg.i65.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %311, i32 0, i32 46
  %312 = ptrtoint ptr %set_bbreg.i65.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %set_bbreg.i65.i, align 4
  tail call void %313(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %314 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %priv, align 8
  %cfg.i67.i = getelementptr inbounds %struct.rtl_priv, ptr %315, i32 0, i32 32
  %316 = ptrtoint ptr %cfg.i67.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cfg.i67.i, align 8
  %ops.i68.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %317, i32 0, i32 4
  %318 = ptrtoint ptr %ops.i68.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %ops.i68.i, align 4
  %set_bbreg.i69.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %319, i32 0, i32 46
  %320 = ptrtoint ptr %set_bbreg.i69.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %set_bbreg.i69.i, align 4
  tail call void %321(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %322 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %priv, align 8
  %cfg.i71.i = getelementptr inbounds %struct.rtl_priv, ptr %323, i32 0, i32 32
  %324 = ptrtoint ptr %cfg.i71.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i71.i, align 8
  %ops.i72.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %ops.i72.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ops.i72.i, align 4
  %set_bbreg.i73.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %327, i32 0, i32 46
  %328 = ptrtoint ptr %set_bbreg.i73.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %set_bbreg.i73.i, align 4
  tail call void %329(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  br label %for.body.i225

for.body.i225:                                    ; preds = %if.end30.i.for.body.i225_crit_edge, %_rtl92ee_phy_path_adda_on.exit.i
  %cmp14.i = phi i1 [ true, %_rtl92ee_phy_path_adda_on.exit.i ], [ false, %if.end30.i.for.body.i225_crit_edge ]
  %330 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %priv, align 8
  %cfg.i.i75.i = getelementptr inbounds %struct.rtl_priv, ptr %331, i32 0, i32 32
  %332 = ptrtoint ptr %cfg.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %cfg.i.i75.i, align 8
  %ops.i.i76.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %333, i32 0, i32 4
  %334 = ptrtoint ptr %ops.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %ops.i.i76.i, align 4
  %set_bbreg.i.i77.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %335, i32 0, i32 46
  %336 = ptrtoint ptr %set_bbreg.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %set_bbreg.i.i77.i, align 4
  tail call void %337(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %338 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %priv, align 8
  %cfg.i3.i.i = getelementptr inbounds %struct.rtl_priv, ptr %339, i32 0, i32 32
  %340 = ptrtoint ptr %cfg.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cfg.i3.i.i, align 8
  %ops.i4.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %341, i32 0, i32 4
  %342 = ptrtoint ptr %ops.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %ops.i4.i.i, align 4
  %set_rfreg.i.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %343, i32 0, i32 48
  %344 = ptrtoint ptr %set_rfreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %set_rfreg.i.i.i, align 4
  tail call void %345(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  %346 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %priv, align 8
  %cfg.i6.i.i = getelementptr inbounds %struct.rtl_priv, ptr %347, i32 0, i32 32
  %348 = ptrtoint ptr %cfg.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i6.i.i, align 8
  %ops.i7.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 4
  %350 = ptrtoint ptr %ops.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ops.i7.i.i, align 4
  %set_bbreg.i8.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %351, i32 0, i32 46
  %352 = ptrtoint ptr %set_bbreg.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %set_bbreg.i8.i.i, align 4
  tail call void %353(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %354 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %priv, align 8
  %cfg.i10.i.i = getelementptr inbounds %struct.rtl_priv, ptr %355, i32 0, i32 32
  %356 = ptrtoint ptr %cfg.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %cfg.i10.i.i, align 8
  %ops.i11.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %357, i32 0, i32 4
  %358 = ptrtoint ptr %ops.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ops.i11.i.i, align 4
  %set_bbreg.i12.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %359, i32 0, i32 46
  %360 = ptrtoint ptr %set_bbreg.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %set_bbreg.i12.i.i, align 4
  tail call void %361(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %362 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %priv, align 8
  %cfg.i14.i.i = getelementptr inbounds %struct.rtl_priv, ptr %363, i32 0, i32 32
  %364 = ptrtoint ptr %cfg.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %cfg.i14.i.i, align 8
  %ops.i15.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %365, i32 0, i32 4
  %366 = ptrtoint ptr %ops.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %ops.i15.i.i, align 4
  %set_bbreg.i16.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %367, i32 0, i32 46
  %368 = ptrtoint ptr %set_bbreg.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %set_bbreg.i16.i.i, align 4
  tail call void %369(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %370 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %priv, align 8
  %cfg.i18.i.i = getelementptr inbounds %struct.rtl_priv, ptr %371, i32 0, i32 32
  %372 = ptrtoint ptr %cfg.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cfg.i18.i.i, align 8
  %ops.i19.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %373, i32 0, i32 4
  %374 = ptrtoint ptr %ops.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ops.i19.i.i, align 4
  %set_bbreg.i20.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %375, i32 0, i32 46
  %376 = ptrtoint ptr %set_bbreg.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %set_bbreg.i20.i.i, align 4
  tail call void %377(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %priv, align 8
  %cfg.i22.i.i = getelementptr inbounds %struct.rtl_priv, ptr %379, i32 0, i32 32
  %380 = ptrtoint ptr %cfg.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %cfg.i22.i.i, align 8
  %ops.i23.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %381, i32 0, i32 4
  %382 = ptrtoint ptr %ops.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %ops.i23.i.i, align 4
  %set_bbreg.i24.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %383, i32 0, i32 46
  %384 = ptrtoint ptr %set_bbreg.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %set_bbreg.i24.i.i, align 4
  tail call void %385(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %priv, align 8
  %cfg.i26.i.i = getelementptr inbounds %struct.rtl_priv, ptr %387, i32 0, i32 32
  %388 = ptrtoint ptr %cfg.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %cfg.i26.i.i, align 8
  %ops.i27.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %389, i32 0, i32 4
  %390 = ptrtoint ptr %ops.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops.i27.i.i, align 4
  %set_bbreg.i28.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %391, i32 0, i32 46
  %392 = ptrtoint ptr %set_bbreg.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %set_bbreg.i28.i.i, align 4
  tail call void %393(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112617725) #8
  %394 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %priv, align 8
  %cfg.i30.i.i = getelementptr inbounds %struct.rtl_priv, ptr %395, i32 0, i32 32
  %396 = ptrtoint ptr %cfg.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cfg.i30.i.i, align 8
  %ops.i31.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %397, i32 0, i32 4
  %398 = ptrtoint ptr %ops.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %ops.i31.i.i, align 4
  %set_bbreg.i32.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %399, i32 0, i32 46
  %400 = ptrtoint ptr %set_bbreg.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %set_bbreg.i32.i.i, align 4
  tail call void %401(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 1746272256) #8
  %402 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %priv, align 8
  %cfg.i34.i.i = getelementptr inbounds %struct.rtl_priv, ptr %403, i32 0, i32 32
  %404 = ptrtoint ptr %cfg.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %cfg.i34.i.i, align 8
  %ops.i35.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %405, i32 0, i32 4
  %406 = ptrtoint ptr %ops.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %ops.i35.i.i, align 4
  %set_bbreg.i36.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %407, i32 0, i32 46
  %408 = ptrtoint ptr %set_bbreg.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %set_bbreg.i36.i.i, align 4
  tail call void %409(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #8
  %410 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %priv, align 8
  %cfg.i38.i.i = getelementptr inbounds %struct.rtl_priv, ptr %411, i32 0, i32 32
  %412 = ptrtoint ptr %cfg.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %cfg.i38.i.i, align 8
  %ops.i39.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %413, i32 0, i32 4
  %414 = ptrtoint ptr %ops.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %ops.i39.i.i, align 4
  %set_bbreg.i40.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %415, i32 0, i32 46
  %416 = ptrtoint ptr %set_bbreg.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %set_bbreg.i40.i.i, align 4
  tail call void %417(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -117440512) #8
  %418 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %priv, align 8
  %cfg.i42.i.i = getelementptr inbounds %struct.rtl_priv, ptr %419, i32 0, i32 32
  %420 = ptrtoint ptr %cfg.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %cfg.i42.i.i, align 8
  %ops.i43.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %421, i32 0, i32 4
  %422 = ptrtoint ptr %ops.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %ops.i43.i.i, align 4
  %set_bbreg.i44.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %423, i32 0, i32 46
  %424 = ptrtoint ptr %set_bbreg.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %set_bbreg.i44.i.i, align 4
  tail call void %425(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %426 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %426(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %427 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %427(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %428 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %428(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %429 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %429(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %430 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %430(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %431 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %431(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %432 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %432(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %433 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %433(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %434 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %434(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %435 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %435(i32 noundef 214748000) #8
  %436 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %priv, align 8
  %cfg.i46.i.i = getelementptr inbounds %struct.rtl_priv, ptr %437, i32 0, i32 32
  %438 = ptrtoint ptr %cfg.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %cfg.i46.i.i, align 8
  %ops.i47.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %439, i32 0, i32 4
  %440 = ptrtoint ptr %ops.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %ops.i47.i.i, align 4
  %get_bbreg.i.i78.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %441, i32 0, i32 45
  %442 = ptrtoint ptr %get_bbreg.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %get_bbreg.i.i78.i, align 4
  %call.i.i79.i = tail call i32 %443(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %444 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %priv, align 8
  %cfg.i49.i.i = getelementptr inbounds %struct.rtl_priv, ptr %445, i32 0, i32 32
  %446 = ptrtoint ptr %cfg.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %cfg.i49.i.i, align 8
  %ops.i50.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %447, i32 0, i32 4
  %448 = ptrtoint ptr %ops.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ops.i50.i.i, align 4
  %get_bbreg.i51.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %449, i32 0, i32 45
  %450 = ptrtoint ptr %get_bbreg.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %get_bbreg.i51.i.i, align 4
  %call.i52.i.i = tail call i32 %451(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #8
  %452 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %priv, align 8
  %cfg.i54.i.i = getelementptr inbounds %struct.rtl_priv, ptr %453, i32 0, i32 32
  %454 = ptrtoint ptr %cfg.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %cfg.i54.i.i, align 8
  %ops.i55.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %455, i32 0, i32 4
  %456 = ptrtoint ptr %ops.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ops.i55.i.i, align 4
  %get_bbreg.i56.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %457, i32 0, i32 45
  %458 = ptrtoint ptr %get_bbreg.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %get_bbreg.i56.i.i, align 4
  %call.i57.i.i = tail call i32 %459(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #8
  %and.i.i = and i32 %call.i.i79.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  %460 = and i32 %call.i52.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %460)
  %cmp.not.i.i = icmp ne i32 %460, 21102592
  %or.cond.i.i = select i1 %tobool3.not.i.i, i1 %cmp.not.i.i, i1 false
  %461 = and i32 %call.i57.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %461)
  %cmp8.not.i.i = icmp ne i32 %461, 4325376
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  br i1 %or.cond1.i.i, label %if.then21.i, label %if.end30.i

if.then21.i:                                      ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.63) #8
  %462 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %priv, align 8
  %cfg.i81.i = getelementptr inbounds %struct.rtl_priv, ptr %463, i32 0, i32 32
  %464 = ptrtoint ptr %cfg.i81.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %cfg.i81.i, align 8
  %ops.i82.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %465, i32 0, i32 4
  %466 = ptrtoint ptr %ops.i82.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %ops.i82.i, align 4
  %get_bbreg.i83.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %467, i32 0, i32 45
  %468 = ptrtoint ptr %get_bbreg.i83.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %get_bbreg.i83.i, align 4
  %call.i84.i = tail call i32 %469(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #8
  %and.i = lshr i32 %call.i84.i, 16
  %shr.i = and i32 %and.i, 1023
  %arrayidx.i226 = getelementptr [8 x i32], ptr %result, i32 %indvars.iv
  %470 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %shr.i, ptr %arrayidx.i226, align 4
  %471 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %priv, align 8
  %cfg.i86.i = getelementptr inbounds %struct.rtl_priv, ptr %472, i32 0, i32 32
  %473 = ptrtoint ptr %cfg.i86.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %cfg.i86.i, align 8
  %ops.i87.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %474, i32 0, i32 4
  %475 = ptrtoint ptr %ops.i87.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %ops.i87.i, align 4
  %get_bbreg.i88.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %476, i32 0, i32 45
  %477 = ptrtoint ptr %get_bbreg.i88.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %get_bbreg.i88.i, align 4
  %call.i89.i = tail call i32 %478(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #8
  %and25.i = lshr i32 %call.i89.i, 16
  %shr26.i = and i32 %and25.i, 1023
  %arrayidx29.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 1
  %479 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %shr26.i, ptr %arrayidx29.i, align 4
  br label %for.body35.i.preheader

if.end30.i:                                       ; preds = %for.body.i225
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.64, i32 noundef 0) #8
  br i1 %cmp14.i, label %if.end30.i.for.body.i225_crit_edge, label %if.end30.i.for.body35.i.preheader_crit_edge

if.end30.i.for.body35.i.preheader_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i.preheader

if.end30.i.for.body.i225_crit_edge:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i225

for.body35.i.preheader:                           ; preds = %if.end30.i.for.body35.i.preheader_crit_edge, %if.then21.i
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.backedge, %for.body35.i.preheader
  %cmp33.i = phi i1 [ true, %for.body35.i.preheader ], [ false, %for.body35.i.backedge ]
  %480 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %priv, align 8
  %cfg.i.i91.i = getelementptr inbounds %struct.rtl_priv, ptr %481, i32 0, i32 32
  %482 = ptrtoint ptr %cfg.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %cfg.i.i91.i, align 8
  %ops.i.i92.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %483, i32 0, i32 4
  %484 = ptrtoint ptr %ops.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %ops.i.i92.i, align 4
  %set_bbreg.i.i93.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %485, i32 0, i32 46
  %486 = ptrtoint ptr %set_bbreg.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %set_bbreg.i.i93.i, align 4
  tail call void %487(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %488 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %priv, align 8
  %cfg.i3.i94.i = getelementptr inbounds %struct.rtl_priv, ptr %489, i32 0, i32 32
  %490 = ptrtoint ptr %cfg.i3.i94.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %cfg.i3.i94.i, align 8
  %ops.i4.i95.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %491, i32 0, i32 4
  %492 = ptrtoint ptr %ops.i4.i95.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %ops.i4.i95.i, align 4
  %set_rfreg.i.i96.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %493, i32 0, i32 48
  %494 = ptrtoint ptr %set_rfreg.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %set_rfreg.i.i96.i, align 4
  tail call void %495(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #8
  %496 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %priv, align 8
  %cfg.i6.i97.i = getelementptr inbounds %struct.rtl_priv, ptr %497, i32 0, i32 32
  %498 = ptrtoint ptr %cfg.i6.i97.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %cfg.i6.i97.i, align 8
  %ops.i7.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %499, i32 0, i32 4
  %500 = ptrtoint ptr %ops.i7.i98.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %ops.i7.i98.i, align 4
  %set_rfreg.i8.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %501, i32 0, i32 48
  %502 = ptrtoint ptr %set_rfreg.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %set_rfreg.i8.i.i, align 4
  tail call void %503(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #8
  %504 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %priv, align 8
  %cfg.i10.i99.i = getelementptr inbounds %struct.rtl_priv, ptr %505, i32 0, i32 32
  %506 = ptrtoint ptr %cfg.i10.i99.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %cfg.i10.i99.i, align 8
  %ops.i11.i100.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %507, i32 0, i32 4
  %508 = ptrtoint ptr %ops.i11.i100.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %ops.i11.i100.i, align 4
  %set_rfreg.i12.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %509, i32 0, i32 48
  %510 = ptrtoint ptr %set_rfreg.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %set_rfreg.i12.i.i, align 4
  tail call void %511(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #8
  %512 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %priv, align 8
  %cfg.i14.i101.i = getelementptr inbounds %struct.rtl_priv, ptr %513, i32 0, i32 32
  %514 = ptrtoint ptr %cfg.i14.i101.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %cfg.i14.i101.i, align 8
  %ops.i15.i102.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %515, i32 0, i32 4
  %516 = ptrtoint ptr %ops.i15.i102.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %ops.i15.i102.i, align 4
  %set_rfreg.i16.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %517, i32 0, i32 48
  %518 = ptrtoint ptr %set_rfreg.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %set_rfreg.i16.i.i, align 4
  tail call void %519(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 987515) #8
  %520 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %priv, align 8
  %cfg.i18.i103.i = getelementptr inbounds %struct.rtl_priv, ptr %521, i32 0, i32 32
  %522 = ptrtoint ptr %cfg.i18.i103.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %cfg.i18.i103.i, align 8
  %ops.i19.i104.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %523, i32 0, i32 4
  %524 = ptrtoint ptr %ops.i19.i104.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %ops.i19.i104.i, align 4
  %set_rfreg.i20.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %525, i32 0, i32 48
  %526 = ptrtoint ptr %set_rfreg.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %set_rfreg.i20.i.i, align 4
  tail call void %527(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 2432) #8
  %528 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %priv, align 8
  %cfg.i22.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %529, i32 0, i32 32
  %530 = ptrtoint ptr %cfg.i22.i105.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %cfg.i22.i105.i, align 8
  %ops.i23.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %531, i32 0, i32 4
  %532 = ptrtoint ptr %ops.i23.i106.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %ops.i23.i106.i, align 4
  %set_rfreg.i24.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %533, i32 0, i32 48
  %534 = ptrtoint ptr %set_rfreg.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %set_rfreg.i24.i.i, align 4
  tail call void %535(ptr noundef %hw, i32 noundef 0, i32 noundef 86, i32 noundef 1048575, i32 noundef 331776) #8
  %536 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %priv, align 8
  %cfg.i26.i107.i = getelementptr inbounds %struct.rtl_priv, ptr %537, i32 0, i32 32
  %538 = ptrtoint ptr %cfg.i26.i107.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %cfg.i26.i107.i, align 8
  %ops.i27.i108.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %539, i32 0, i32 4
  %540 = ptrtoint ptr %ops.i27.i108.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %ops.i27.i108.i, align 4
  %set_bbreg.i28.i109.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %541, i32 0, i32 46
  %542 = ptrtoint ptr %set_bbreg.i28.i109.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %set_bbreg.i28.i109.i, align 4
  tail call void %543(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %544 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %priv, align 8
  %cfg.i30.i110.i = getelementptr inbounds %struct.rtl_priv, ptr %545, i32 0, i32 32
  %546 = ptrtoint ptr %cfg.i30.i110.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %cfg.i30.i110.i, align 8
  %ops.i31.i111.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %547, i32 0, i32 4
  %548 = ptrtoint ptr %ops.i31.i111.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %ops.i31.i111.i, align 4
  %set_bbreg.i32.i112.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %549, i32 0, i32 46
  %550 = ptrtoint ptr %set_bbreg.i32.i112.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %set_bbreg.i32.i112.i, align 4
  tail call void %551(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %552 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %priv, align 8
  %cfg.i34.i113.i = getelementptr inbounds %struct.rtl_priv, ptr %553, i32 0, i32 32
  %554 = ptrtoint ptr %cfg.i34.i113.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %cfg.i34.i113.i, align 8
  %ops.i35.i114.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %555, i32 0, i32 4
  %556 = ptrtoint ptr %ops.i35.i114.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %ops.i35.i114.i, align 4
  %set_bbreg.i36.i115.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %557, i32 0, i32 46
  %558 = ptrtoint ptr %set_bbreg.i36.i115.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %set_bbreg.i36.i115.i, align 4
  tail call void %559(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %560 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %priv, align 8
  %cfg.i38.i116.i = getelementptr inbounds %struct.rtl_priv, ptr %561, i32 0, i32 32
  %562 = ptrtoint ptr %cfg.i38.i116.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %cfg.i38.i116.i, align 8
  %ops.i39.i117.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %563, i32 0, i32 4
  %564 = ptrtoint ptr %ops.i39.i117.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %ops.i39.i117.i, align 4
  %set_bbreg.i40.i118.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %565, i32 0, i32 46
  %566 = ptrtoint ptr %set_bbreg.i40.i118.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %set_bbreg.i40.i118.i, align 4
  tail call void %567(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 402689052) #8
  %568 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %priv, align 8
  %cfg.i42.i119.i = getelementptr inbounds %struct.rtl_priv, ptr %569, i32 0, i32 32
  %570 = ptrtoint ptr %cfg.i42.i119.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %cfg.i42.i119.i, align 8
  %ops.i43.i120.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %571, i32 0, i32 4
  %572 = ptrtoint ptr %ops.i43.i120.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %ops.i43.i120.i, align 4
  %set_bbreg.i44.i121.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %573, i32 0, i32 46
  %574 = ptrtoint ptr %set_bbreg.i44.i121.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %set_bbreg.i44.i121.i, align 4
  tail call void %575(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %576 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %priv, align 8
  %cfg.i46.i122.i = getelementptr inbounds %struct.rtl_priv, ptr %577, i32 0, i32 32
  %578 = ptrtoint ptr %cfg.i46.i122.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %cfg.i46.i122.i, align 8
  %ops.i47.i123.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %579, i32 0, i32 4
  %580 = ptrtoint ptr %ops.i47.i123.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %ops.i47.i123.i, align 4
  %set_bbreg.i48.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %581, i32 0, i32 46
  %582 = ptrtoint ptr %set_bbreg.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %set_bbreg.i48.i.i, align 4
  tail call void %583(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %584 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %priv, align 8
  %cfg.i50.i.i = getelementptr inbounds %struct.rtl_priv, ptr %585, i32 0, i32 32
  %586 = ptrtoint ptr %cfg.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %cfg.i50.i.i, align 8
  %ops.i51.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %587, i32 0, i32 4
  %588 = ptrtoint ptr %ops.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %ops.i51.i.i, align 4
  %set_bbreg.i52.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %589, i32 0, i32 46
  %590 = ptrtoint ptr %set_bbreg.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %set_bbreg.i52.i.i, align 4
  tail call void %591(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %592 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %priv, align 8
  %cfg.i54.i124.i = getelementptr inbounds %struct.rtl_priv, ptr %593, i32 0, i32 32
  %594 = ptrtoint ptr %cfg.i54.i124.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %cfg.i54.i124.i, align 8
  %ops.i55.i125.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %595, i32 0, i32 4
  %596 = ptrtoint ptr %ops.i55.i125.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %ops.i55.i125.i, align 4
  %set_bbreg.i56.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %597, i32 0, i32 46
  %598 = ptrtoint ptr %set_bbreg.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %set_bbreg.i56.i.i, align 4
  tail call void %599(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112484321) #8
  %600 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %priv, align 8
  %cfg.i58.i.i = getelementptr inbounds %struct.rtl_priv, ptr %601, i32 0, i32 32
  %602 = ptrtoint ptr %cfg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %cfg.i58.i.i, align 8
  %ops.i59.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %603, i32 0, i32 4
  %604 = ptrtoint ptr %ops.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %ops.i59.i.i, align 4
  %set_bbreg.i60.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %605, i32 0, i32 46
  %606 = ptrtoint ptr %set_bbreg.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %set_bbreg.i60.i.i, align 4
  tail call void %607(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 1746275359) #8
  %608 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %priv, align 8
  %cfg.i62.i.i = getelementptr inbounds %struct.rtl_priv, ptr %609, i32 0, i32 32
  %610 = ptrtoint ptr %cfg.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %cfg.i62.i.i, align 8
  %ops.i63.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %611, i32 0, i32 4
  %612 = ptrtoint ptr %ops.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %ops.i63.i.i, align 4
  %set_bbreg.i64.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %613, i32 0, i32 46
  %614 = ptrtoint ptr %set_bbreg.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %set_bbreg.i64.i.i, align 4
  tail call void %615(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #8
  %616 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %priv, align 8
  %cfg.i66.i.i = getelementptr inbounds %struct.rtl_priv, ptr %617, i32 0, i32 32
  %618 = ptrtoint ptr %cfg.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %cfg.i66.i.i, align 8
  %ops.i67.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %619, i32 0, i32 4
  %620 = ptrtoint ptr %ops.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %ops.i67.i.i, align 4
  %set_bbreg.i68.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %621, i32 0, i32 46
  %622 = ptrtoint ptr %set_bbreg.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %set_bbreg.i68.i.i, align 4
  tail call void %623(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -100663296) #8
  %624 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %priv, align 8
  %cfg.i70.i.i = getelementptr inbounds %struct.rtl_priv, ptr %625, i32 0, i32 32
  %626 = ptrtoint ptr %cfg.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %cfg.i70.i.i, align 8
  %ops.i71.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %627, i32 0, i32 4
  %628 = ptrtoint ptr %ops.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %ops.i71.i.i, align 4
  %set_bbreg.i72.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %629, i32 0, i32 46
  %630 = ptrtoint ptr %set_bbreg.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %set_bbreg.i72.i.i, align 4
  tail call void %631(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %632 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %632(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %633 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %633(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %634 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %634(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %635 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %635(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %636 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %636(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %637 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %637(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %638 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %638(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %639 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %639(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %640 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %640(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %641 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %641(i32 noundef 214748000) #8
  %642 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %priv, align 8
  %cfg.i74.i.i = getelementptr inbounds %struct.rtl_priv, ptr %643, i32 0, i32 32
  %644 = ptrtoint ptr %cfg.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %cfg.i74.i.i, align 8
  %ops.i75.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %645, i32 0, i32 4
  %646 = ptrtoint ptr %ops.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %ops.i75.i.i, align 4
  %get_bbreg.i.i126.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %647, i32 0, i32 45
  %648 = ptrtoint ptr %get_bbreg.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %get_bbreg.i.i126.i, align 4
  %call.i.i127.i = tail call i32 %649(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %650 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %priv, align 8
  %cfg.i77.i.i = getelementptr inbounds %struct.rtl_priv, ptr %651, i32 0, i32 32
  %652 = ptrtoint ptr %cfg.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %cfg.i77.i.i, align 8
  %ops.i78.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %653, i32 0, i32 4
  %654 = ptrtoint ptr %ops.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %ops.i78.i.i, align 4
  %get_bbreg.i79.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %655, i32 0, i32 45
  %656 = ptrtoint ptr %get_bbreg.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %get_bbreg.i79.i.i, align 4
  %call.i80.i.i = tail call i32 %657(ptr noundef %hw, i32 noundef 3732, i32 noundef -1) #8
  %658 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load ptr, ptr %priv, align 8
  %cfg.i82.i.i = getelementptr inbounds %struct.rtl_priv, ptr %659, i32 0, i32 32
  %660 = ptrtoint ptr %cfg.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %cfg.i82.i.i, align 8
  %ops.i83.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %661, i32 0, i32 4
  %662 = ptrtoint ptr %ops.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %ops.i83.i.i, align 4
  %get_bbreg.i84.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %663, i32 0, i32 45
  %664 = ptrtoint ptr %get_bbreg.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %get_bbreg.i84.i.i, align 4
  %call.i85.i.i = tail call i32 %665(ptr noundef %hw, i32 noundef 3740, i32 noundef -1) #8
  %and.i128.i = and i32 %call.i.i127.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128.i)
  %tobool3.not.i129.i = icmp eq i32 %and.i128.i, 0
  br i1 %tobool3.not.i129.i, label %land.lhs.true.i.i, label %for.body35.i.if.end54.i_crit_edge

for.body35.i.if.end54.i_crit_edge:                ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

land.lhs.true.i.i:                                ; preds = %for.body35.i
  %and4.i.i = and i32 %call.i80.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i.i)
  %cmp.not.i130.i = icmp eq i32 %and4.i.i, 21102592
  br i1 %cmp.not.i130.i, label %land.lhs.true.i.i.if.end54.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %and6.i.i = lshr i32 %call.i85.i.i, 16
  %shr7.i.i = and i32 %and6.i.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i.i)
  %cmp8.not.i131.i = icmp eq i32 %shr7.i.i, 66
  br i1 %cmp8.not.i131.i, label %land.lhs.true5.i.i.if.end54.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.if.end54.i_crit_edge:          ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  %or11.i.i = or i32 %and4.i.i, %shr7.i.i
  %or14.i.i = or i32 %or11.i.i, -2147451904
  %666 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %priv, align 8
  %cfg.i87.i.i = getelementptr inbounds %struct.rtl_priv, ptr %667, i32 0, i32 32
  %668 = ptrtoint ptr %cfg.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %cfg.i87.i.i, align 8
  %ops.i88.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %669, i32 0, i32 4
  %670 = ptrtoint ptr %ops.i88.i.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %ops.i88.i.i, align 4
  %set_bbreg.i89.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %671, i32 0, i32 46
  %672 = ptrtoint ptr %set_bbreg.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %set_bbreg.i89.i.i, align 4
  tail call void %673(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef %or14.i.i) #8
  %674 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %priv, align 8
  %cfg.i91.i.i = getelementptr inbounds %struct.rtl_priv, ptr %675, i32 0, i32 32
  %676 = ptrtoint ptr %cfg.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %cfg.i91.i.i, align 8
  %ops.i92.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %677, i32 0, i32 4
  %678 = ptrtoint ptr %ops.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %ops.i92.i.i, align 4
  %set_bbreg.i93.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %679, i32 0, i32 46
  %680 = ptrtoint ptr %set_bbreg.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %set_bbreg.i93.i.i, align 4
  tail call void %681(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %682 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %priv, align 8
  %cfg.i95.i.i = getelementptr inbounds %struct.rtl_priv, ptr %683, i32 0, i32 32
  %684 = ptrtoint ptr %cfg.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %cfg.i95.i.i, align 8
  %ops.i96.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %685, i32 0, i32 4
  %686 = ptrtoint ptr %ops.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %ops.i96.i.i, align 4
  %set_rfreg.i97.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %687, i32 0, i32 48
  %688 = ptrtoint ptr %set_rfreg.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %set_rfreg.i97.i.i, align 4
  tail call void %689(ptr noundef %hw, i32 noundef 0, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #8
  %690 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %priv, align 8
  %cfg.i99.i.i = getelementptr inbounds %struct.rtl_priv, ptr %691, i32 0, i32 32
  %692 = ptrtoint ptr %cfg.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %cfg.i99.i.i, align 8
  %ops.i100.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %693, i32 0, i32 4
  %694 = ptrtoint ptr %ops.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %ops.i100.i.i, align 4
  %set_rfreg.i101.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %695, i32 0, i32 48
  %696 = ptrtoint ptr %set_rfreg.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %set_rfreg.i101.i.i, align 4
  tail call void %697(ptr noundef %hw, i32 noundef 0, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #8
  %698 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %priv, align 8
  %cfg.i103.i.i = getelementptr inbounds %struct.rtl_priv, ptr %699, i32 0, i32 32
  %700 = ptrtoint ptr %cfg.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %cfg.i103.i.i, align 8
  %ops.i104.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %701, i32 0, i32 4
  %702 = ptrtoint ptr %ops.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %ops.i104.i.i, align 4
  %set_rfreg.i105.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %703, i32 0, i32 48
  %704 = ptrtoint ptr %set_rfreg.i105.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %set_rfreg.i105.i.i, align 4
  tail call void %705(ptr noundef %hw, i32 noundef 0, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #8
  %706 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %priv, align 8
  %cfg.i107.i.i = getelementptr inbounds %struct.rtl_priv, ptr %707, i32 0, i32 32
  %708 = ptrtoint ptr %cfg.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %cfg.i107.i.i, align 8
  %ops.i108.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %709, i32 0, i32 4
  %710 = ptrtoint ptr %ops.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %ops.i108.i.i, align 4
  %set_rfreg.i109.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %711, i32 0, i32 48
  %712 = ptrtoint ptr %set_rfreg.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %set_rfreg.i109.i.i, align 4
  tail call void %713(ptr noundef %hw, i32 noundef 0, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015802) #8
  %714 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %priv, align 8
  %cfg.i111.i.i = getelementptr inbounds %struct.rtl_priv, ptr %715, i32 0, i32 32
  %716 = ptrtoint ptr %cfg.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %716)
  %717 = load ptr, ptr %cfg.i111.i.i, align 8
  %ops.i112.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %717, i32 0, i32 4
  %718 = ptrtoint ptr %ops.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %ops.i112.i.i, align 4
  %set_rfreg.i113.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %719, i32 0, i32 48
  %720 = ptrtoint ptr %set_rfreg.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %set_rfreg.i113.i.i, align 4
  tail call void %721(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 2432) #8
  %722 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %priv, align 8
  %cfg.i115.i.i = getelementptr inbounds %struct.rtl_priv, ptr %723, i32 0, i32 32
  %724 = ptrtoint ptr %cfg.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %cfg.i115.i.i, align 8
  %ops.i116.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %725, i32 0, i32 4
  %726 = ptrtoint ptr %ops.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %ops.i116.i.i, align 4
  %set_rfreg.i117.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %727, i32 0, i32 48
  %728 = ptrtoint ptr %set_rfreg.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %set_rfreg.i117.i.i, align 4
  tail call void %729(ptr noundef %hw, i32 noundef 0, i32 noundef 86, i32 noundef 1048575, i32 noundef 331776) #8
  %730 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %priv, align 8
  %cfg.i119.i.i = getelementptr inbounds %struct.rtl_priv, ptr %731, i32 0, i32 32
  %732 = ptrtoint ptr %cfg.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %cfg.i119.i.i, align 8
  %ops.i120.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %733, i32 0, i32 4
  %734 = ptrtoint ptr %ops.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load ptr, ptr %ops.i120.i.i, align 4
  %set_bbreg.i121.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %735, i32 0, i32 46
  %736 = ptrtoint ptr %set_bbreg.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %set_bbreg.i121.i.i, align 4
  tail call void %737(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %738 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %priv, align 8
  %cfg.i123.i.i = getelementptr inbounds %struct.rtl_priv, ptr %739, i32 0, i32 32
  %740 = ptrtoint ptr %cfg.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %cfg.i123.i.i, align 8
  %ops.i124.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %741, i32 0, i32 4
  %742 = ptrtoint ptr %ops.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %ops.i124.i.i, align 4
  %set_bbreg.i125.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %743, i32 0, i32 46
  %744 = ptrtoint ptr %set_bbreg.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %set_bbreg.i125.i.i, align 4
  tail call void %745(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %746 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %priv, align 8
  %cfg.i127.i.i = getelementptr inbounds %struct.rtl_priv, ptr %747, i32 0, i32 32
  %748 = ptrtoint ptr %cfg.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %cfg.i127.i.i, align 8
  %ops.i128.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %749, i32 0, i32 4
  %750 = ptrtoint ptr %ops.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %ops.i128.i.i, align 4
  %set_bbreg.i129.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %751, i32 0, i32 46
  %752 = ptrtoint ptr %set_bbreg.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %set_bbreg.i129.i.i, align 4
  tail call void %753(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %754 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %priv, align 8
  %cfg.i131.i.i = getelementptr inbounds %struct.rtl_priv, ptr %755, i32 0, i32 32
  %756 = ptrtoint ptr %cfg.i131.i.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %cfg.i131.i.i, align 8
  %ops.i132.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %757, i32 0, i32 4
  %758 = ptrtoint ptr %ops.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %ops.i132.i.i, align 4
  %set_bbreg.i133.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %759, i32 0, i32 46
  %760 = ptrtoint ptr %set_bbreg.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %set_bbreg.i133.i.i, align 4
  tail call void %761(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 402689052) #8
  %762 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %priv, align 8
  %cfg.i135.i.i = getelementptr inbounds %struct.rtl_priv, ptr %763, i32 0, i32 32
  %764 = ptrtoint ptr %cfg.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %cfg.i135.i.i, align 8
  %ops.i136.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %765, i32 0, i32 4
  %766 = ptrtoint ptr %ops.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %ops.i136.i.i, align 4
  %set_bbreg.i137.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %767, i32 0, i32 46
  %768 = ptrtoint ptr %set_bbreg.i137.i.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %set_bbreg.i137.i.i, align 4
  tail call void %769(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %770 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %priv, align 8
  %cfg.i139.i.i = getelementptr inbounds %struct.rtl_priv, ptr %771, i32 0, i32 32
  %772 = ptrtoint ptr %cfg.i139.i.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %cfg.i139.i.i, align 8
  %ops.i140.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %773, i32 0, i32 4
  %774 = ptrtoint ptr %ops.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %ops.i140.i.i, align 4
  %set_bbreg.i141.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %775, i32 0, i32 46
  %776 = ptrtoint ptr %set_bbreg.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %set_bbreg.i141.i.i, align 4
  tail call void %777(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %778 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %priv, align 8
  %cfg.i143.i.i = getelementptr inbounds %struct.rtl_priv, ptr %779, i32 0, i32 32
  %780 = ptrtoint ptr %cfg.i143.i.i to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %cfg.i143.i.i, align 8
  %ops.i144.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %781, i32 0, i32 4
  %782 = ptrtoint ptr %ops.i144.i.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %ops.i144.i.i, align 4
  %set_bbreg.i145.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %783, i32 0, i32 46
  %784 = ptrtoint ptr %set_bbreg.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %set_bbreg.i145.i.i, align 4
  tail call void %785(ptr noundef %hw, i32 noundef 3640, i32 noundef -1, i32 noundef -2112484321) #8
  %786 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %priv, align 8
  %cfg.i147.i.i = getelementptr inbounds %struct.rtl_priv, ptr %787, i32 0, i32 32
  %788 = ptrtoint ptr %cfg.i147.i.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %cfg.i147.i.i, align 8
  %ops.i148.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %789, i32 0, i32 4
  %790 = ptrtoint ptr %ops.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %ops.i148.i.i, align 4
  %set_bbreg.i149.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %791, i32 0, i32 46
  %792 = ptrtoint ptr %set_bbreg.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %set_bbreg.i149.i.i, align 4
  tail call void %793(ptr noundef %hw, i32 noundef 3644, i32 noundef -1, i32 noundef 672533535) #8
  %794 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %priv, align 8
  %cfg.i151.i.i = getelementptr inbounds %struct.rtl_priv, ptr %795, i32 0, i32 32
  %796 = ptrtoint ptr %cfg.i151.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %cfg.i151.i.i, align 8
  %ops.i152.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %797, i32 0, i32 4
  %798 = ptrtoint ptr %ops.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %ops.i152.i.i, align 4
  %set_bbreg.i153.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %799, i32 0, i32 46
  %800 = ptrtoint ptr %set_bbreg.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %set_bbreg.i153.i.i, align 4
  tail call void %801(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630673) #8
  %802 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %priv, align 8
  %cfg.i155.i.i = getelementptr inbounds %struct.rtl_priv, ptr %803, i32 0, i32 32
  %804 = ptrtoint ptr %cfg.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %cfg.i155.i.i, align 8
  %ops.i156.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %805, i32 0, i32 4
  %806 = ptrtoint ptr %ops.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %ops.i156.i.i, align 4
  %set_bbreg.i157.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %807, i32 0, i32 46
  %808 = ptrtoint ptr %set_bbreg.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %set_bbreg.i157.i.i, align 4
  tail call void %809(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -100663296) #8
  %810 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %priv, align 8
  %cfg.i159.i.i = getelementptr inbounds %struct.rtl_priv, ptr %811, i32 0, i32 32
  %812 = ptrtoint ptr %cfg.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %cfg.i159.i.i, align 8
  %ops.i160.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %813, i32 0, i32 4
  %814 = ptrtoint ptr %ops.i160.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %ops.i160.i.i, align 4
  %set_bbreg.i161.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %815, i32 0, i32 46
  %816 = ptrtoint ptr %set_bbreg.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %set_bbreg.i161.i.i, align 4
  tail call void %817(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %818 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %818(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %819 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %819(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %820 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %820(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %821 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %821(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %822 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %822(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %823 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %823(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %824 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %824(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %825 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %825(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %826 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %826(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %827 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %827(i32 noundef 214748000) #8
  %828 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %priv, align 8
  %cfg.i171.i.i = getelementptr inbounds %struct.rtl_priv, ptr %829, i32 0, i32 32
  %830 = ptrtoint ptr %cfg.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %cfg.i171.i.i, align 8
  %ops.i172.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %831, i32 0, i32 4
  %832 = ptrtoint ptr %ops.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %ops.i172.i.i, align 4
  %get_bbreg.i173.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %833, i32 0, i32 45
  %834 = ptrtoint ptr %get_bbreg.i173.i.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %get_bbreg.i173.i.i, align 4
  %call.i174.i.i = tail call i32 %835(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %836 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %priv, align 8
  %cfg.i176.i.i = getelementptr inbounds %struct.rtl_priv, ptr %837, i32 0, i32 32
  %838 = ptrtoint ptr %cfg.i176.i.i to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %cfg.i176.i.i, align 8
  %ops.i177.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %839, i32 0, i32 4
  %840 = ptrtoint ptr %ops.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %ops.i177.i.i, align 4
  %get_bbreg.i178.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %841, i32 0, i32 45
  %842 = ptrtoint ptr %get_bbreg.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %get_bbreg.i178.i.i, align 4
  %call.i179.i.i = tail call i32 %843(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #8
  %844 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %priv, align 8
  %cfg.i181.i.i = getelementptr inbounds %struct.rtl_priv, ptr %845, i32 0, i32 32
  %846 = ptrtoint ptr %cfg.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %cfg.i181.i.i, align 8
  %ops.i182.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %847, i32 0, i32 4
  %848 = ptrtoint ptr %ops.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %ops.i182.i.i, align 4
  %set_bbreg.i183.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %849, i32 0, i32 46
  %850 = ptrtoint ptr %set_bbreg.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %set_bbreg.i183.i.i, align 4
  tail call void %851(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %852 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %priv, align 8
  %cfg.i185.i.i = getelementptr inbounds %struct.rtl_priv, ptr %853, i32 0, i32 32
  %854 = ptrtoint ptr %cfg.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %cfg.i185.i.i, align 8
  %ops.i186.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %855, i32 0, i32 4
  %856 = ptrtoint ptr %ops.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %ops.i186.i.i, align 4
  %set_rfreg.i187.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %857, i32 0, i32 48
  %858 = ptrtoint ptr %set_rfreg.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %set_rfreg.i187.i.i, align 4
  tail call void %859(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  %and23.i.i = and i32 %call.i174.i.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp ne i32 %and23.i.i, 0
  %860 = and i32 %call.i179.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %860)
  %cmp28.not.i.i = icmp eq i32 %860, 20054016
  %or.cond.i132.i = select i1 %tobool24.not.i.i, i1 true, i1 %cmp28.not.i.i
  %861 = and i32 %call.i174.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %861)
  %cmp33.not.i.i = icmp eq i32 %861, 3538944
  %or.cond1.i133.i = select i1 %or.cond.i132.i, i1 true, i1 %cmp33.not.i.i
  br i1 %or.cond1.i133.i, label %if.end54.thread.i, label %for.end58.thread.i

for.end58.thread.i:                               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.65) #8
  %862 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %priv, align 8
  %cfg.i136.i = getelementptr inbounds %struct.rtl_priv, ptr %863, i32 0, i32 32
  %864 = ptrtoint ptr %cfg.i136.i to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %cfg.i136.i, align 8
  %ops.i137.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %865, i32 0, i32 4
  %866 = ptrtoint ptr %ops.i137.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %ops.i137.i, align 4
  %get_bbreg.i138.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %867, i32 0, i32 45
  %868 = ptrtoint ptr %get_bbreg.i138.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %get_bbreg.i138.i, align 4
  %call.i139.i = tail call i32 %869(ptr noundef %hw, i32 noundef 3748, i32 noundef -1) #8
  %and43.i = lshr i32 %call.i139.i, 16
  %shr44.i = and i32 %and43.i, 1023
  %arrayidx47.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 2
  %870 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 %shr44.i, ptr %arrayidx47.i, align 4
  %871 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %priv, align 8
  %cfg.i141.i = getelementptr inbounds %struct.rtl_priv, ptr %872, i32 0, i32 32
  %873 = ptrtoint ptr %cfg.i141.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %cfg.i141.i, align 8
  %ops.i142.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %874, i32 0, i32 4
  %875 = ptrtoint ptr %ops.i142.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %ops.i142.i, align 4
  %get_bbreg.i143.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %876, i32 0, i32 45
  %877 = ptrtoint ptr %get_bbreg.i143.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %get_bbreg.i143.i, align 4
  %call.i144.i = tail call i32 %878(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %and49.i = lshr i32 %call.i144.i, 16
  %shr50.i = and i32 %and49.i, 1023
  %arrayidx53.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 3
  %879 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 %shr50.i, ptr %arrayidx53.i, align 4
  br label %if.then65.i

if.end54.i:                                       ; preds = %land.lhs.true5.i.i.if.end54.i_crit_edge, %land.lhs.true.i.i.if.end54.i_crit_edge, %for.body35.i.if.end54.i_crit_edge
  %880 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %priv, align 8
  %cfg.i163.i.i = getelementptr inbounds %struct.rtl_priv, ptr %881, i32 0, i32 32
  %882 = ptrtoint ptr %cfg.i163.i.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %cfg.i163.i.i, align 8
  %ops.i164.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %883, i32 0, i32 4
  %884 = ptrtoint ptr %ops.i164.i.i to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %ops.i164.i.i, align 4
  %set_bbreg.i165.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %885, i32 0, i32 46
  %886 = ptrtoint ptr %set_bbreg.i165.i.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %set_bbreg.i165.i.i, align 4
  tail call void %887(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %888 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %priv, align 8
  %cfg.i167.i.i = getelementptr inbounds %struct.rtl_priv, ptr %889, i32 0, i32 32
  %890 = ptrtoint ptr %cfg.i167.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %cfg.i167.i.i, align 8
  %ops.i168.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %891, i32 0, i32 4
  %892 = ptrtoint ptr %ops.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %ops.i168.i.i, align 4
  %set_rfreg.i169.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %893, i32 0, i32 48
  %894 = ptrtoint ptr %set_rfreg.i169.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %set_rfreg.i169.i.i, align 4
  tail call void %895(ptr noundef %hw, i32 noundef 0, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 0) #8
  br i1 %cmp33.i, label %if.end54.i.for.body35.i.backedge_crit_edge, label %if.then62.i

if.end54.i.for.body35.i.backedge_crit_edge:       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i.backedge

if.end54.thread.i:                                ; preds = %if.then.i.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.66, i32 noundef 1) #8
  br i1 %cmp33.i, label %if.end54.thread.i.for.body35.i.backedge_crit_edge, label %if.end54.thread.i.if.then65.i_crit_edge

if.end54.thread.i.if.then65.i_crit_edge:          ; preds = %if.end54.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65.i

if.end54.thread.i.for.body35.i.backedge_crit_edge: ; preds = %if.end54.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i.backedge

for.body35.i.backedge:                            ; preds = %if.end54.thread.i.for.body35.i.backedge_crit_edge, %if.end54.i.for.body35.i.backedge_crit_edge
  br label %for.body35.i

if.then62.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.67) #8
  br label %if.then65.i

if.then65.i:                                      ; preds = %if.then62.i, %if.end54.thread.i.if.then65.i_crit_edge, %for.end58.thread.i
  %896 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %priv, align 8
  %cfg.i.i146.i = getelementptr inbounds %struct.rtl_priv, ptr %897, i32 0, i32 32
  %898 = ptrtoint ptr %cfg.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %cfg.i.i146.i, align 8
  %ops.i.i147.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %899, i32 0, i32 4
  %900 = ptrtoint ptr %ops.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %ops.i.i147.i, align 4
  %set_bbreg.i.i148.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %901, i32 0, i32 46
  %902 = ptrtoint ptr %set_bbreg.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %set_bbreg.i.i148.i, align 4
  tail call void %903(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %904 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %priv, align 8
  %cfg.i4.i.i = getelementptr inbounds %struct.rtl_priv, ptr %905, i32 0, i32 32
  %906 = ptrtoint ptr %cfg.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %cfg.i4.i.i, align 8
  %ops.i5.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %907, i32 0, i32 4
  %908 = ptrtoint ptr %ops.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %ops.i5.i.i, align 4
  %set_rfreg.i.i149.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %909, i32 0, i32 48
  %910 = ptrtoint ptr %set_rfreg.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %set_rfreg.i.i149.i, align 4
  tail call void %911(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 65536) #8
  %912 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %priv, align 8
  %cfg.i7.i.i = getelementptr inbounds %struct.rtl_priv, ptr %913, i32 0, i32 32
  %914 = ptrtoint ptr %cfg.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %cfg.i7.i.i, align 8
  %ops.i8.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %915, i32 0, i32 4
  %916 = ptrtoint ptr %ops.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %ops.i8.i.i, align 4
  %set_bbreg.i9.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %917, i32 0, i32 46
  %918 = ptrtoint ptr %set_bbreg.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %set_bbreg.i9.i.i, align 4
  tail call void %919(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  br label %for.body.i158.i

for.body.i158.i:                                  ; preds = %for.body.i158.i.for.body.i158.i_crit_edge, %if.then65.i
  %i.01.i151.i = phi i32 [ 0, %if.then65.i ], [ %inc.i156.i, %for.body.i158.i.for.body.i158.i_crit_edge ]
  %arrayidx.i152.i = getelementptr i32, ptr @__const._rtl92ee_phy_iq_calibrate.adda_reg, i32 %i.01.i151.i
  %920 = ptrtoint ptr %arrayidx.i152.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %arrayidx.i152.i, align 4
  %922 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %priv, align 8
  %cfg.i.i153.i = getelementptr inbounds %struct.rtl_priv, ptr %923, i32 0, i32 32
  %924 = ptrtoint ptr %cfg.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %cfg.i.i153.i, align 8
  %ops.i.i154.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %925, i32 0, i32 4
  %926 = ptrtoint ptr %ops.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %ops.i.i154.i, align 4
  %set_bbreg.i.i155.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %927, i32 0, i32 46
  %928 = ptrtoint ptr %set_bbreg.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %set_bbreg.i.i155.i, align 4
  tail call void %929(ptr noundef %hw, i32 noundef %921, i32 noundef -1, i32 noundef 264246806) #8
  %inc.i156.i = add nuw nsw i32 %i.01.i151.i, 1
  %exitcond.not.i157.i = icmp eq i32 %inc.i156.i, 16
  br i1 %exitcond.not.i157.i, label %_rtl92ee_phy_path_adda_on.exit159.i, label %for.body.i158.i.for.body.i158.i_crit_edge

for.body.i158.i.for.body.i158.i_crit_edge:        ; preds = %for.body.i158.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i158.i

_rtl92ee_phy_path_adda_on.exit159.i:              ; preds = %for.body.i158.i
  %930 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %priv, align 8
  %cfg.i161.i = getelementptr inbounds %struct.rtl_priv, ptr %931, i32 0, i32 32
  %932 = ptrtoint ptr %cfg.i161.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %cfg.i161.i, align 8
  %ops.i162.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %933, i32 0, i32 4
  %934 = ptrtoint ptr %ops.i162.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %ops.i162.i, align 4
  %set_bbreg.i163.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %935, i32 0, i32 46
  %936 = ptrtoint ptr %set_bbreg.i163.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load ptr, ptr %set_bbreg.i163.i, align 4
  tail call void %937(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %938 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %priv, align 8
  %cfg.i165.i = getelementptr inbounds %struct.rtl_priv, ptr %939, i32 0, i32 32
  %940 = ptrtoint ptr %cfg.i165.i to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %cfg.i165.i, align 8
  %ops.i166.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %941, i32 0, i32 4
  %942 = ptrtoint ptr %ops.i166.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %ops.i166.i, align 4
  %set_bbreg.i167.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %943, i32 0, i32 46
  %944 = ptrtoint ptr %set_bbreg.i167.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load ptr, ptr %set_bbreg.i167.i, align 4
  tail call void %945(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %946 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %priv, align 8
  %cfg.i169.i = getelementptr inbounds %struct.rtl_priv, ptr %947, i32 0, i32 32
  %948 = ptrtoint ptr %cfg.i169.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load ptr, ptr %cfg.i169.i, align 8
  %ops.i170.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %949, i32 0, i32 4
  %950 = ptrtoint ptr %ops.i170.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %ops.i170.i, align 4
  %set_bbreg.i171.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %951, i32 0, i32 46
  %952 = ptrtoint ptr %set_bbreg.i171.i to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load ptr, ptr %set_bbreg.i171.i, align 4
  tail call void %953(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  br label %for.body71.i

for.body71.i:                                     ; preds = %if.end89.i.for.body71.i_crit_edge, %_rtl92ee_phy_path_adda_on.exit159.i
  %cmp69.i = phi i1 [ true, %_rtl92ee_phy_path_adda_on.exit159.i ], [ false, %if.end89.i.for.body71.i_crit_edge ]
  %954 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load ptr, ptr %priv, align 8
  %cfg.i.i173.i = getelementptr inbounds %struct.rtl_priv, ptr %955, i32 0, i32 32
  %956 = ptrtoint ptr %cfg.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %956)
  %957 = load ptr, ptr %cfg.i.i173.i, align 8
  %ops.i.i174.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %957, i32 0, i32 4
  %958 = ptrtoint ptr %ops.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %ops.i.i174.i, align 4
  %set_bbreg.i.i175.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %959, i32 0, i32 46
  %960 = ptrtoint ptr %set_bbreg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load ptr, ptr %set_bbreg.i.i175.i, align 4
  tail call void %961(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %962 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load ptr, ptr %priv, align 8
  %cfg.i33.i.i = getelementptr inbounds %struct.rtl_priv, ptr %963, i32 0, i32 32
  %964 = ptrtoint ptr %cfg.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %cfg.i33.i.i, align 8
  %ops.i34.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %965, i32 0, i32 4
  %966 = ptrtoint ptr %ops.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %ops.i34.i.i, align 4
  %set_rfreg.i.i176.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %967, i32 0, i32 48
  %968 = ptrtoint ptr %set_rfreg.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %set_rfreg.i.i176.i, align 4
  tail call void %969(ptr noundef %hw, i32 noundef 1, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  %970 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %priv, align 8
  %cfg.i36.i.i = getelementptr inbounds %struct.rtl_priv, ptr %971, i32 0, i32 32
  %972 = ptrtoint ptr %cfg.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load ptr, ptr %cfg.i36.i.i, align 8
  %ops.i37.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %973, i32 0, i32 4
  %974 = ptrtoint ptr %ops.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load ptr, ptr %ops.i37.i.i, align 4
  %set_bbreg.i38.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %975, i32 0, i32 46
  %976 = ptrtoint ptr %set_bbreg.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load ptr, ptr %set_bbreg.i38.i.i, align 4
  tail call void %977(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %978 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %priv, align 8
  %cfg.i40.i.i = getelementptr inbounds %struct.rtl_priv, ptr %979, i32 0, i32 32
  %980 = ptrtoint ptr %cfg.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %cfg.i40.i.i, align 8
  %ops.i41.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %981, i32 0, i32 4
  %982 = ptrtoint ptr %ops.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %ops.i41.i.i, align 4
  %set_bbreg.i42.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %983, i32 0, i32 46
  %984 = ptrtoint ptr %set_bbreg.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %set_bbreg.i42.i.i, align 4
  tail call void %985(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %986 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %priv, align 8
  %cfg.i44.i.i = getelementptr inbounds %struct.rtl_priv, ptr %987, i32 0, i32 32
  %988 = ptrtoint ptr %cfg.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %cfg.i44.i.i, align 8
  %ops.i45.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %989, i32 0, i32 4
  %990 = ptrtoint ptr %ops.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load ptr, ptr %ops.i45.i.i, align 4
  %set_bbreg.i46.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %991, i32 0, i32 46
  %992 = ptrtoint ptr %set_bbreg.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %set_bbreg.i46.i.i, align 4
  tail call void %993(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %994 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load ptr, ptr %priv, align 8
  %cfg.i48.i.i = getelementptr inbounds %struct.rtl_priv, ptr %995, i32 0, i32 32
  %996 = ptrtoint ptr %cfg.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %996)
  %997 = load ptr, ptr %cfg.i48.i.i, align 8
  %ops.i49.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %997, i32 0, i32 4
  %998 = ptrtoint ptr %ops.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %998)
  %999 = load ptr, ptr %ops.i49.i.i, align 4
  %set_bbreg.i50.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %999, i32 0, i32 46
  %1000 = ptrtoint ptr %set_bbreg.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %set_bbreg.i50.i.i, align 4
  tail call void %1001(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %1002 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load ptr, ptr %priv, align 8
  %cfg.i52.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1003, i32 0, i32 32
  %1004 = ptrtoint ptr %cfg.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %cfg.i52.i.i, align 8
  %ops.i53.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1005, i32 0, i32 4
  %1006 = ptrtoint ptr %ops.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %ops.i53.i.i, align 4
  %set_bbreg.i54.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1007, i32 0, i32 46
  %1008 = ptrtoint ptr %set_bbreg.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %set_bbreg.i54.i.i, align 4
  tail call void %1009(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %1010 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %priv, align 8
  %cfg.i56.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1011, i32 0, i32 32
  %1012 = ptrtoint ptr %cfg.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %cfg.i56.i.i, align 8
  %ops.i57.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1013, i32 0, i32 4
  %1014 = ptrtoint ptr %ops.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %ops.i57.i.i, align 4
  %set_bbreg.i58.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1015, i32 0, i32 46
  %1016 = ptrtoint ptr %set_bbreg.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %set_bbreg.i58.i.i, align 4
  tail call void %1017(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 402689052) #8
  %1018 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load ptr, ptr %priv, align 8
  %cfg.i60.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1019, i32 0, i32 32
  %1020 = ptrtoint ptr %cfg.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %cfg.i60.i.i, align 8
  %ops.i61.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1021, i32 0, i32 4
  %1022 = ptrtoint ptr %ops.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %ops.i61.i.i, align 4
  %set_bbreg.i62.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1023, i32 0, i32 46
  %1024 = ptrtoint ptr %set_bbreg.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %set_bbreg.i62.i.i, align 4
  tail call void %1025(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %1026 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %priv, align 8
  %cfg.i64.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1027, i32 0, i32 32
  %1028 = ptrtoint ptr %cfg.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %cfg.i64.i.i, align 8
  %ops.i65.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1029, i32 0, i32 4
  %1030 = ptrtoint ptr %ops.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %ops.i65.i.i, align 4
  %set_bbreg.i66.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1031, i32 0, i32 46
  %1032 = ptrtoint ptr %set_bbreg.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %set_bbreg.i66.i.i, align 4
  tail call void %1033(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112617502) #8
  %1034 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %priv, align 8
  %cfg.i68.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1035, i32 0, i32 32
  %1036 = ptrtoint ptr %cfg.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %cfg.i68.i.i, align 8
  %ops.i69.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1037, i32 0, i32 4
  %1038 = ptrtoint ptr %ops.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load ptr, ptr %ops.i69.i.i, align 4
  %set_bbreg.i70.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1039, i32 0, i32 46
  %1040 = ptrtoint ptr %set_bbreg.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load ptr, ptr %set_bbreg.i70.i.i, align 4
  tail call void %1041(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 1746272256) #8
  %1042 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %priv, align 8
  %cfg.i72.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1043, i32 0, i32 32
  %1044 = ptrtoint ptr %cfg.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %cfg.i72.i.i, align 8
  %ops.i73.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1045, i32 0, i32 4
  %1046 = ptrtoint ptr %ops.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %ops.i73.i.i, align 4
  %set_bbreg.i74.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1047, i32 0, i32 46
  %1048 = ptrtoint ptr %set_bbreg.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %set_bbreg.i74.i.i, align 4
  tail call void %1049(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4598033) #8
  %1050 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %priv, align 8
  %cfg.i76.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1051, i32 0, i32 32
  %1052 = ptrtoint ptr %cfg.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %cfg.i76.i.i, align 8
  %ops.i77.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1053, i32 0, i32 4
  %1054 = ptrtoint ptr %ops.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %ops.i77.i.i, align 4
  %set_bbreg.i78.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1055, i32 0, i32 46
  %1056 = ptrtoint ptr %set_bbreg.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %set_bbreg.i78.i.i, align 4
  tail call void %1057(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -100663296) #8
  %1058 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load ptr, ptr %priv, align 8
  %cfg.i80.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1059, i32 0, i32 32
  %1060 = ptrtoint ptr %cfg.i80.i.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load ptr, ptr %cfg.i80.i.i, align 8
  %ops.i81.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1061, i32 0, i32 4
  %1062 = ptrtoint ptr %ops.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load ptr, ptr %ops.i81.i.i, align 4
  %set_bbreg.i82.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1063, i32 0, i32 46
  %1064 = ptrtoint ptr %set_bbreg.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %set_bbreg.i82.i.i, align 4
  tail call void %1065(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1066 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1066(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1067 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1067(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1068 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1068(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1069 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1069(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1070 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1070(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1071 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1071(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1072 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1072(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1073 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1073(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1074 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1074(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1075 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1075(i32 noundef 214748000) #8
  %1076 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %priv, align 8
  %cfg.i84.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1077, i32 0, i32 32
  %1078 = ptrtoint ptr %cfg.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %1078)
  %1079 = load ptr, ptr %cfg.i84.i.i, align 8
  %ops.i85.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1079, i32 0, i32 4
  %1080 = ptrtoint ptr %ops.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %1080)
  %1081 = load ptr, ptr %ops.i85.i.i, align 4
  %get_bbreg.i.i177.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1081, i32 0, i32 45
  %1082 = ptrtoint ptr %get_bbreg.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load ptr, ptr %get_bbreg.i.i177.i, align 4
  %call.i.i178.i = tail call i32 %1083(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %1084 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %priv, align 8
  %cfg.i87.i179.i = getelementptr inbounds %struct.rtl_priv, ptr %1085, i32 0, i32 32
  %1086 = ptrtoint ptr %cfg.i87.i179.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %cfg.i87.i179.i, align 8
  %ops.i88.i180.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1087, i32 0, i32 4
  %1088 = ptrtoint ptr %ops.i88.i180.i to i32
  call void @__asan_load4_noabort(i32 %1088)
  %1089 = load ptr, ptr %ops.i88.i180.i, align 4
  %get_bbreg.i89.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1089, i32 0, i32 45
  %1090 = ptrtoint ptr %get_bbreg.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %get_bbreg.i89.i.i, align 4
  %call.i90.i.i = tail call i32 %1091(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #8
  %1092 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load ptr, ptr %priv, align 8
  %cfg.i92.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1093, i32 0, i32 32
  %1094 = ptrtoint ptr %cfg.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load ptr, ptr %cfg.i92.i.i, align 8
  %ops.i93.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1095, i32 0, i32 4
  %1096 = ptrtoint ptr %ops.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %ops.i93.i.i, align 4
  %get_bbreg.i94.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1097, i32 0, i32 45
  %1098 = ptrtoint ptr %get_bbreg.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %get_bbreg.i94.i.i, align 4
  %call.i95.i.i = tail call i32 %1099(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i178.i)
  %tobool3.not.i181.i = icmp sgt i32 %call.i.i178.i, -1
  %1100 = and i32 %call.i90.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %1100)
  %cmp.not.i182.i = icmp ne i32 %1100, 21102592
  %or.cond.i183.i = select i1 %tobool3.not.i181.i, i1 %cmp.not.i182.i, i1 false
  %1101 = and i32 %call.i95.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %1101)
  %cmp8.not.i184.i = icmp ne i32 %1101, 4325376
  %or.cond31.i.i = select i1 %or.cond.i183.i, i1 %cmp8.not.i184.i, i1 false
  br i1 %or.cond31.i.i, label %if.then76.i, label %if.end89.i

if.then76.i:                                      ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.68) #8
  %1102 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %priv, align 8
  %cfg.i187.i = getelementptr inbounds %struct.rtl_priv, ptr %1103, i32 0, i32 32
  %1104 = ptrtoint ptr %cfg.i187.i to i32
  call void @__asan_load4_noabort(i32 %1104)
  %1105 = load ptr, ptr %cfg.i187.i, align 8
  %ops.i188.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1105, i32 0, i32 4
  %1106 = ptrtoint ptr %ops.i188.i to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %ops.i188.i, align 4
  %get_bbreg.i189.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1107, i32 0, i32 45
  %1108 = ptrtoint ptr %get_bbreg.i189.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %get_bbreg.i189.i, align 4
  %call.i190.i = tail call i32 %1109(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #8
  %and78.i = lshr i32 %call.i190.i, 16
  %shr79.i = and i32 %and78.i, 1023
  %arrayidx82.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 4
  %1110 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %1110)
  store i32 %shr79.i, ptr %arrayidx82.i, align 4
  %1111 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %priv, align 8
  %cfg.i192.i = getelementptr inbounds %struct.rtl_priv, ptr %1112, i32 0, i32 32
  %1113 = ptrtoint ptr %cfg.i192.i to i32
  call void @__asan_load4_noabort(i32 %1113)
  %1114 = load ptr, ptr %cfg.i192.i, align 8
  %ops.i193.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1114, i32 0, i32 4
  %1115 = ptrtoint ptr %ops.i193.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %ops.i193.i, align 4
  %get_bbreg.i194.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1116, i32 0, i32 45
  %1117 = ptrtoint ptr %get_bbreg.i194.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %get_bbreg.i194.i, align 4
  %call.i195.i = tail call i32 %1118(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #8
  %and84.i = lshr i32 %call.i195.i, 16
  %shr85.i = and i32 %and84.i, 1023
  %arrayidx88.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 5
  %1119 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_store4_noabort(i32 %1119)
  store i32 %shr85.i, ptr %arrayidx88.i, align 4
  br label %for.body97.i.preheader

if.end89.i:                                       ; preds = %for.body71.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.69, i32 noundef 0) #8
  br i1 %cmp69.i, label %if.end89.i.for.body71.i_crit_edge, label %if.end89.i.for.body97.i.preheader_crit_edge

if.end89.i.for.body97.i.preheader_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97.i.preheader

if.end89.i.for.body71.i_crit_edge:                ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body71.i

for.body97.i.preheader:                           ; preds = %if.end89.i.for.body97.i.preheader_crit_edge, %if.then76.i
  br label %for.body97.i

for.body97.i:                                     ; preds = %for.body97.i.backedge, %for.body97.i.preheader
  %cmp95.i = phi i1 [ true, %for.body97.i.preheader ], [ false, %for.body97.i.backedge ]
  %1120 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %priv, align 8
  %cfg.i.i197.i = getelementptr inbounds %struct.rtl_priv, ptr %1121, i32 0, i32 32
  %1122 = ptrtoint ptr %cfg.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %cfg.i.i197.i, align 8
  %ops.i.i198.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1123, i32 0, i32 4
  %1124 = ptrtoint ptr %ops.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load ptr, ptr %ops.i.i198.i, align 4
  %set_bbreg.i.i199.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1125, i32 0, i32 46
  %1126 = ptrtoint ptr %set_bbreg.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %1126)
  %1127 = load ptr, ptr %set_bbreg.i.i199.i, align 4
  tail call void %1127(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %1128 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1128)
  %1129 = load ptr, ptr %priv, align 8
  %cfg.i3.i200.i = getelementptr inbounds %struct.rtl_priv, ptr %1129, i32 0, i32 32
  %1130 = ptrtoint ptr %cfg.i3.i200.i to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load ptr, ptr %cfg.i3.i200.i, align 8
  %ops.i4.i201.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1131, i32 0, i32 4
  %1132 = ptrtoint ptr %ops.i4.i201.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load ptr, ptr %ops.i4.i201.i, align 4
  %set_rfreg.i.i202.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1133, i32 0, i32 48
  %1134 = ptrtoint ptr %set_rfreg.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %set_rfreg.i.i202.i, align 4
  tail call void %1135(ptr noundef %hw, i32 noundef 1, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #8
  %1136 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load ptr, ptr %priv, align 8
  %cfg.i6.i203.i = getelementptr inbounds %struct.rtl_priv, ptr %1137, i32 0, i32 32
  %1138 = ptrtoint ptr %cfg.i6.i203.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load ptr, ptr %cfg.i6.i203.i, align 8
  %ops.i7.i204.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1139, i32 0, i32 4
  %1140 = ptrtoint ptr %ops.i7.i204.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load ptr, ptr %ops.i7.i204.i, align 4
  %set_rfreg.i8.i205.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1141, i32 0, i32 48
  %1142 = ptrtoint ptr %set_rfreg.i8.i205.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %set_rfreg.i8.i205.i, align 4
  tail call void %1143(ptr noundef %hw, i32 noundef 1, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #8
  %1144 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load ptr, ptr %priv, align 8
  %cfg.i10.i206.i = getelementptr inbounds %struct.rtl_priv, ptr %1145, i32 0, i32 32
  %1146 = ptrtoint ptr %cfg.i10.i206.i to i32
  call void @__asan_load4_noabort(i32 %1146)
  %1147 = load ptr, ptr %cfg.i10.i206.i, align 8
  %ops.i11.i207.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1147, i32 0, i32 4
  %1148 = ptrtoint ptr %ops.i11.i207.i to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load ptr, ptr %ops.i11.i207.i, align 4
  %set_rfreg.i12.i208.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1149, i32 0, i32 48
  %1150 = ptrtoint ptr %set_rfreg.i12.i208.i to i32
  call void @__asan_load4_noabort(i32 %1150)
  %1151 = load ptr, ptr %set_rfreg.i12.i208.i, align 4
  tail call void %1151(ptr noundef %hw, i32 noundef 1, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #8
  %1152 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1152)
  %1153 = load ptr, ptr %priv, align 8
  %cfg.i14.i209.i = getelementptr inbounds %struct.rtl_priv, ptr %1153, i32 0, i32 32
  %1154 = ptrtoint ptr %cfg.i14.i209.i to i32
  call void @__asan_load4_noabort(i32 %1154)
  %1155 = load ptr, ptr %cfg.i14.i209.i, align 8
  %ops.i15.i210.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1155, i32 0, i32 4
  %1156 = ptrtoint ptr %ops.i15.i210.i to i32
  call void @__asan_load4_noabort(i32 %1156)
  %1157 = load ptr, ptr %ops.i15.i210.i, align 4
  %set_rfreg.i16.i211.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1157, i32 0, i32 48
  %1158 = ptrtoint ptr %set_rfreg.i16.i211.i to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load ptr, ptr %set_rfreg.i16.i211.i, align 4
  tail call void %1159(ptr noundef %hw, i32 noundef 1, i32 noundef 50, i32 noundef 1048575, i32 noundef 987515) #8
  %1160 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %priv, align 8
  %cfg.i18.i212.i = getelementptr inbounds %struct.rtl_priv, ptr %1161, i32 0, i32 32
  %1162 = ptrtoint ptr %cfg.i18.i212.i to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load ptr, ptr %cfg.i18.i212.i, align 8
  %ops.i19.i213.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1163, i32 0, i32 4
  %1164 = ptrtoint ptr %ops.i19.i213.i to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load ptr, ptr %ops.i19.i213.i, align 4
  %set_rfreg.i20.i214.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1165, i32 0, i32 48
  %1166 = ptrtoint ptr %set_rfreg.i20.i214.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load ptr, ptr %set_rfreg.i20.i214.i, align 4
  tail call void %1167(ptr noundef %hw, i32 noundef 1, i32 noundef 223, i32 noundef 1048575, i32 noundef 2432) #8
  %1168 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load ptr, ptr %priv, align 8
  %cfg.i22.i215.i = getelementptr inbounds %struct.rtl_priv, ptr %1169, i32 0, i32 32
  %1170 = ptrtoint ptr %cfg.i22.i215.i to i32
  call void @__asan_load4_noabort(i32 %1170)
  %1171 = load ptr, ptr %cfg.i22.i215.i, align 8
  %ops.i23.i216.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1171, i32 0, i32 4
  %1172 = ptrtoint ptr %ops.i23.i216.i to i32
  call void @__asan_load4_noabort(i32 %1172)
  %1173 = load ptr, ptr %ops.i23.i216.i, align 4
  %set_rfreg.i24.i217.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1173, i32 0, i32 48
  %1174 = ptrtoint ptr %set_rfreg.i24.i217.i to i32
  call void @__asan_load4_noabort(i32 %1174)
  %1175 = load ptr, ptr %set_rfreg.i24.i217.i, align 4
  tail call void %1175(ptr noundef %hw, i32 noundef 1, i32 noundef 86, i32 noundef 1048575, i32 noundef 331776) #8
  %1176 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1176)
  %1177 = load ptr, ptr %priv, align 8
  %cfg.i26.i218.i = getelementptr inbounds %struct.rtl_priv, ptr %1177, i32 0, i32 32
  %1178 = ptrtoint ptr %cfg.i26.i218.i to i32
  call void @__asan_load4_noabort(i32 %1178)
  %1179 = load ptr, ptr %cfg.i26.i218.i, align 8
  %ops.i27.i219.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1179, i32 0, i32 4
  %1180 = ptrtoint ptr %ops.i27.i219.i to i32
  call void @__asan_load4_noabort(i32 %1180)
  %1181 = load ptr, ptr %ops.i27.i219.i, align 4
  %set_bbreg.i28.i220.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1181, i32 0, i32 46
  %1182 = ptrtoint ptr %set_bbreg.i28.i220.i to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %set_bbreg.i28.i220.i, align 4
  tail call void %1183(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %1184 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load ptr, ptr %priv, align 8
  %cfg.i30.i221.i = getelementptr inbounds %struct.rtl_priv, ptr %1185, i32 0, i32 32
  %1186 = ptrtoint ptr %cfg.i30.i221.i to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %cfg.i30.i221.i, align 8
  %ops.i31.i222.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1187, i32 0, i32 4
  %1188 = ptrtoint ptr %ops.i31.i222.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load ptr, ptr %ops.i31.i222.i, align 4
  %set_bbreg.i32.i223.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1189, i32 0, i32 46
  %1190 = ptrtoint ptr %set_bbreg.i32.i223.i to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load ptr, ptr %set_bbreg.i32.i223.i, align 4
  tail call void %1191(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef 16808960) #8
  %1192 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load ptr, ptr %priv, align 8
  %cfg.i34.i224.i = getelementptr inbounds %struct.rtl_priv, ptr %1193, i32 0, i32 32
  %1194 = ptrtoint ptr %cfg.i34.i224.i to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load ptr, ptr %cfg.i34.i224.i, align 8
  %ops.i35.i225.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1195, i32 0, i32 4
  %1196 = ptrtoint ptr %ops.i35.i225.i to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %ops.i35.i225.i, align 4
  %set_bbreg.i36.i226.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1197, i32 0, i32 46
  %1198 = ptrtoint ptr %set_bbreg.i36.i226.i to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %set_bbreg.i36.i226.i, align 4
  tail call void %1199(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %1200 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %priv, align 8
  %cfg.i38.i227.i = getelementptr inbounds %struct.rtl_priv, ptr %1201, i32 0, i32 32
  %1202 = ptrtoint ptr %cfg.i38.i227.i to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %cfg.i38.i227.i, align 8
  %ops.i39.i228.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1203, i32 0, i32 4
  %1204 = ptrtoint ptr %ops.i39.i228.i to i32
  call void @__asan_load4_noabort(i32 %1204)
  %1205 = load ptr, ptr %ops.i39.i228.i, align 4
  %set_bbreg.i40.i229.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1205, i32 0, i32 46
  %1206 = ptrtoint ptr %set_bbreg.i40.i229.i to i32
  call void @__asan_load4_noabort(i32 %1206)
  %1207 = load ptr, ptr %set_bbreg.i40.i229.i, align 4
  tail call void %1207(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %1208 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %priv, align 8
  %cfg.i42.i230.i = getelementptr inbounds %struct.rtl_priv, ptr %1209, i32 0, i32 32
  %1210 = ptrtoint ptr %cfg.i42.i230.i to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load ptr, ptr %cfg.i42.i230.i, align 8
  %ops.i43.i231.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1211, i32 0, i32 4
  %1212 = ptrtoint ptr %ops.i43.i231.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %ops.i43.i231.i, align 4
  %set_bbreg.i44.i232.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1213, i32 0, i32 46
  %1214 = ptrtoint ptr %set_bbreg.i44.i232.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load ptr, ptr %set_bbreg.i44.i232.i, align 4
  tail call void %1215(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %1216 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load ptr, ptr %priv, align 8
  %cfg.i46.i233.i = getelementptr inbounds %struct.rtl_priv, ptr %1217, i32 0, i32 32
  %1218 = ptrtoint ptr %cfg.i46.i233.i to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load ptr, ptr %cfg.i46.i233.i, align 8
  %ops.i47.i234.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1219, i32 0, i32 4
  %1220 = ptrtoint ptr %ops.i47.i234.i to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %ops.i47.i234.i, align 4
  %set_bbreg.i48.i235.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1221, i32 0, i32 46
  %1222 = ptrtoint ptr %set_bbreg.i48.i235.i to i32
  call void @__asan_load4_noabort(i32 %1222)
  %1223 = load ptr, ptr %set_bbreg.i48.i235.i, align 4
  tail call void %1223(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 402689052) #8
  %1224 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1224)
  %1225 = load ptr, ptr %priv, align 8
  %cfg.i50.i236.i = getelementptr inbounds %struct.rtl_priv, ptr %1225, i32 0, i32 32
  %1226 = ptrtoint ptr %cfg.i50.i236.i to i32
  call void @__asan_load4_noabort(i32 %1226)
  %1227 = load ptr, ptr %cfg.i50.i236.i, align 8
  %ops.i51.i237.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1227, i32 0, i32 4
  %1228 = ptrtoint ptr %ops.i51.i237.i to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %ops.i51.i237.i, align 4
  %set_bbreg.i52.i238.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1229, i32 0, i32 46
  %1230 = ptrtoint ptr %set_bbreg.i52.i238.i to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %set_bbreg.i52.i238.i, align 4
  tail call void %1231(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 939559964) #8
  %1232 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %priv, align 8
  %cfg.i54.i239.i = getelementptr inbounds %struct.rtl_priv, ptr %1233, i32 0, i32 32
  %1234 = ptrtoint ptr %cfg.i54.i239.i to i32
  call void @__asan_load4_noabort(i32 %1234)
  %1235 = load ptr, ptr %cfg.i54.i239.i, align 8
  %ops.i55.i240.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1235, i32 0, i32 4
  %1236 = ptrtoint ptr %ops.i55.i240.i to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load ptr, ptr %ops.i55.i240.i, align 4
  %set_bbreg.i56.i241.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1237, i32 0, i32 46
  %1238 = ptrtoint ptr %set_bbreg.i56.i241.i to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %set_bbreg.i56.i241.i, align 4
  tail call void %1239(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112484321) #8
  %1240 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load ptr, ptr %priv, align 8
  %cfg.i58.i242.i = getelementptr inbounds %struct.rtl_priv, ptr %1241, i32 0, i32 32
  %1242 = ptrtoint ptr %cfg.i58.i242.i to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load ptr, ptr %cfg.i58.i242.i, align 8
  %ops.i59.i243.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1243, i32 0, i32 4
  %1244 = ptrtoint ptr %ops.i59.i243.i to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load ptr, ptr %ops.i59.i243.i, align 4
  %set_bbreg.i60.i244.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1245, i32 0, i32 46
  %1246 = ptrtoint ptr %set_bbreg.i60.i244.i to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load ptr, ptr %set_bbreg.i60.i244.i, align 4
  tail call void %1247(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 1746275359) #8
  %1248 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1248)
  %1249 = load ptr, ptr %priv, align 8
  %cfg.i62.i245.i = getelementptr inbounds %struct.rtl_priv, ptr %1249, i32 0, i32 32
  %1250 = ptrtoint ptr %cfg.i62.i245.i to i32
  call void @__asan_load4_noabort(i32 %1250)
  %1251 = load ptr, ptr %cfg.i62.i245.i, align 8
  %ops.i63.i246.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1251, i32 0, i32 4
  %1252 = ptrtoint ptr %ops.i63.i246.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %ops.i63.i246.i, align 4
  %set_bbreg.i64.i247.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1253, i32 0, i32 46
  %1254 = ptrtoint ptr %set_bbreg.i64.i247.i to i32
  call void @__asan_load4_noabort(i32 %1254)
  %1255 = load ptr, ptr %set_bbreg.i64.i247.i, align 4
  tail call void %1255(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630801) #8
  %1256 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1256)
  %1257 = load ptr, ptr %priv, align 8
  %cfg.i66.i248.i = getelementptr inbounds %struct.rtl_priv, ptr %1257, i32 0, i32 32
  %1258 = ptrtoint ptr %cfg.i66.i248.i to i32
  call void @__asan_load4_noabort(i32 %1258)
  %1259 = load ptr, ptr %cfg.i66.i248.i, align 8
  %ops.i67.i249.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1259, i32 0, i32 4
  %1260 = ptrtoint ptr %ops.i67.i249.i to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %ops.i67.i249.i, align 4
  %set_bbreg.i68.i250.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1261, i32 0, i32 46
  %1262 = ptrtoint ptr %set_bbreg.i68.i250.i to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %set_bbreg.i68.i250.i, align 4
  tail call void %1263(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -100663296) #8
  %1264 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %priv, align 8
  %cfg.i70.i251.i = getelementptr inbounds %struct.rtl_priv, ptr %1265, i32 0, i32 32
  %1266 = ptrtoint ptr %cfg.i70.i251.i to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load ptr, ptr %cfg.i70.i251.i, align 8
  %ops.i71.i252.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1267, i32 0, i32 4
  %1268 = ptrtoint ptr %ops.i71.i252.i to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load ptr, ptr %ops.i71.i252.i, align 4
  %set_bbreg.i72.i253.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1269, i32 0, i32 46
  %1270 = ptrtoint ptr %set_bbreg.i72.i253.i to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load ptr, ptr %set_bbreg.i72.i253.i, align 4
  tail call void %1271(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1272 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1272(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1273 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1273(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1274 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1274(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1275(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1276 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1276(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1277 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1277(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1278 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1278(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1279 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1279(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1280 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1280(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1281 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1281(i32 noundef 214748000) #8
  %1282 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1282)
  %1283 = load ptr, ptr %priv, align 8
  %cfg.i74.i254.i = getelementptr inbounds %struct.rtl_priv, ptr %1283, i32 0, i32 32
  %1284 = ptrtoint ptr %cfg.i74.i254.i to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load ptr, ptr %cfg.i74.i254.i, align 8
  %ops.i75.i255.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1285, i32 0, i32 4
  %1286 = ptrtoint ptr %ops.i75.i255.i to i32
  call void @__asan_load4_noabort(i32 %1286)
  %1287 = load ptr, ptr %ops.i75.i255.i, align 4
  %get_bbreg.i.i256.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1287, i32 0, i32 45
  %1288 = ptrtoint ptr %get_bbreg.i.i256.i to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load ptr, ptr %get_bbreg.i.i256.i, align 4
  %call.i.i257.i = tail call i32 %1289(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %1290 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load ptr, ptr %priv, align 8
  %cfg.i77.i258.i = getelementptr inbounds %struct.rtl_priv, ptr %1291, i32 0, i32 32
  %1292 = ptrtoint ptr %cfg.i77.i258.i to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load ptr, ptr %cfg.i77.i258.i, align 8
  %ops.i78.i259.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1293, i32 0, i32 4
  %1294 = ptrtoint ptr %ops.i78.i259.i to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load ptr, ptr %ops.i78.i259.i, align 4
  %get_bbreg.i79.i260.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1295, i32 0, i32 45
  %1296 = ptrtoint ptr %get_bbreg.i79.i260.i to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load ptr, ptr %get_bbreg.i79.i260.i, align 4
  %call.i80.i261.i = tail call i32 %1297(ptr noundef %hw, i32 noundef 3764, i32 noundef -1) #8
  %1298 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1298)
  %1299 = load ptr, ptr %priv, align 8
  %cfg.i82.i262.i = getelementptr inbounds %struct.rtl_priv, ptr %1299, i32 0, i32 32
  %1300 = ptrtoint ptr %cfg.i82.i262.i to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %cfg.i82.i262.i, align 8
  %ops.i83.i263.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1301, i32 0, i32 4
  %1302 = ptrtoint ptr %ops.i83.i263.i to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load ptr, ptr %ops.i83.i263.i, align 4
  %get_bbreg.i84.i264.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1303, i32 0, i32 45
  %1304 = ptrtoint ptr %get_bbreg.i84.i264.i to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %get_bbreg.i84.i264.i, align 4
  %call.i85.i265.i = tail call i32 %1305(ptr noundef %hw, i32 noundef 3772, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i257.i)
  %tobool3.not.i266.i = icmp sgt i32 %call.i.i257.i, -1
  br i1 %tobool3.not.i266.i, label %land.lhs.true.i269.i, label %for.body97.i.if.end116.i_crit_edge

for.body97.i.if.end116.i_crit_edge:               ; preds = %for.body97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

land.lhs.true.i269.i:                             ; preds = %for.body97.i
  %and4.i267.i = and i32 %call.i80.i261.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and4.i267.i)
  %cmp.not.i268.i = icmp eq i32 %and4.i267.i, 21102592
  br i1 %cmp.not.i268.i, label %land.lhs.true.i269.i.if.end116.i_crit_edge, label %land.lhs.true5.i273.i

land.lhs.true.i269.i.if.end116.i_crit_edge:       ; preds = %land.lhs.true.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

land.lhs.true5.i273.i:                            ; preds = %land.lhs.true.i269.i
  %and6.i270.i = lshr i32 %call.i85.i265.i, 16
  %shr7.i271.i = and i32 %and6.i270.i, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %shr7.i271.i)
  %cmp8.not.i272.i = icmp eq i32 %shr7.i271.i, 66
  br i1 %cmp8.not.i272.i, label %land.lhs.true5.i273.i.if.end116.i_crit_edge, label %if.then.i345.i

land.lhs.true5.i273.i.if.end116.i_crit_edge:      ; preds = %land.lhs.true5.i273.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116.i

if.then.i345.i:                                   ; preds = %land.lhs.true5.i273.i
  %or11.i274.i = or i32 %and4.i267.i, %shr7.i271.i
  %or14.i275.i = or i32 %or11.i274.i, -2147451904
  %1306 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %priv, align 8
  %cfg.i87.i276.i = getelementptr inbounds %struct.rtl_priv, ptr %1307, i32 0, i32 32
  %1308 = ptrtoint ptr %cfg.i87.i276.i to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load ptr, ptr %cfg.i87.i276.i, align 8
  %ops.i88.i277.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1309, i32 0, i32 4
  %1310 = ptrtoint ptr %ops.i88.i277.i to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %ops.i88.i277.i, align 4
  %set_bbreg.i89.i278.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1311, i32 0, i32 46
  %1312 = ptrtoint ptr %set_bbreg.i89.i278.i to i32
  call void @__asan_load4_noabort(i32 %1312)
  %1313 = load ptr, ptr %set_bbreg.i89.i278.i, align 4
  tail call void %1313(ptr noundef %hw, i32 noundef 3648, i32 noundef -1, i32 noundef %or14.i275.i) #8
  %1314 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1314)
  %1315 = load ptr, ptr %priv, align 8
  %cfg.i91.i279.i = getelementptr inbounds %struct.rtl_priv, ptr %1315, i32 0, i32 32
  %1316 = ptrtoint ptr %cfg.i91.i279.i to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %cfg.i91.i279.i, align 8
  %ops.i92.i280.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1317, i32 0, i32 4
  %1318 = ptrtoint ptr %ops.i92.i280.i to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load ptr, ptr %ops.i92.i280.i, align 4
  %set_bbreg.i93.i281.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1319, i32 0, i32 46
  %1320 = ptrtoint ptr %set_bbreg.i93.i281.i to i32
  call void @__asan_load4_noabort(i32 %1320)
  %1321 = load ptr, ptr %set_bbreg.i93.i281.i, align 4
  tail call void %1321(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %1322 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %priv, align 8
  %cfg.i95.i282.i = getelementptr inbounds %struct.rtl_priv, ptr %1323, i32 0, i32 32
  %1324 = ptrtoint ptr %cfg.i95.i282.i to i32
  call void @__asan_load4_noabort(i32 %1324)
  %1325 = load ptr, ptr %cfg.i95.i282.i, align 8
  %ops.i96.i283.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1325, i32 0, i32 4
  %1326 = ptrtoint ptr %ops.i96.i283.i to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load ptr, ptr %ops.i96.i283.i, align 4
  %set_rfreg.i97.i284.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1327, i32 0, i32 48
  %1328 = ptrtoint ptr %set_rfreg.i97.i284.i to i32
  call void @__asan_load4_noabort(i32 %1328)
  %1329 = load ptr, ptr %set_rfreg.i97.i284.i, align 4
  tail call void %1329(ptr noundef %hw, i32 noundef 1, i32 noundef 239, i32 noundef 1048575, i32 noundef 524448) #8
  %1330 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1330)
  %1331 = load ptr, ptr %priv, align 8
  %cfg.i99.i285.i = getelementptr inbounds %struct.rtl_priv, ptr %1331, i32 0, i32 32
  %1332 = ptrtoint ptr %cfg.i99.i285.i to i32
  call void @__asan_load4_noabort(i32 %1332)
  %1333 = load ptr, ptr %cfg.i99.i285.i, align 8
  %ops.i100.i286.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1333, i32 0, i32 4
  %1334 = ptrtoint ptr %ops.i100.i286.i to i32
  call void @__asan_load4_noabort(i32 %1334)
  %1335 = load ptr, ptr %ops.i100.i286.i, align 4
  %set_rfreg.i101.i287.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1335, i32 0, i32 48
  %1336 = ptrtoint ptr %set_rfreg.i101.i287.i to i32
  call void @__asan_load4_noabort(i32 %1336)
  %1337 = load ptr, ptr %set_rfreg.i101.i287.i, align 4
  tail call void %1337(ptr noundef %hw, i32 noundef 1, i32 noundef 48, i32 noundef 1048575, i32 noundef 196608) #8
  %1338 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1338)
  %1339 = load ptr, ptr %priv, align 8
  %cfg.i103.i288.i = getelementptr inbounds %struct.rtl_priv, ptr %1339, i32 0, i32 32
  %1340 = ptrtoint ptr %cfg.i103.i288.i to i32
  call void @__asan_load4_noabort(i32 %1340)
  %1341 = load ptr, ptr %cfg.i103.i288.i, align 8
  %ops.i104.i289.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1341, i32 0, i32 4
  %1342 = ptrtoint ptr %ops.i104.i289.i to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load ptr, ptr %ops.i104.i289.i, align 4
  %set_rfreg.i105.i290.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1343, i32 0, i32 48
  %1344 = ptrtoint ptr %set_rfreg.i105.i290.i to i32
  call void @__asan_load4_noabort(i32 %1344)
  %1345 = load ptr, ptr %set_rfreg.i105.i290.i, align 4
  tail call void %1345(ptr noundef %hw, i32 noundef 1, i32 noundef 49, i32 noundef 1048575, i32 noundef 15) #8
  %1346 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1346)
  %1347 = load ptr, ptr %priv, align 8
  %cfg.i107.i291.i = getelementptr inbounds %struct.rtl_priv, ptr %1347, i32 0, i32 32
  %1348 = ptrtoint ptr %cfg.i107.i291.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load ptr, ptr %cfg.i107.i291.i, align 8
  %ops.i108.i292.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1349, i32 0, i32 4
  %1350 = ptrtoint ptr %ops.i108.i292.i to i32
  call void @__asan_load4_noabort(i32 %1350)
  %1351 = load ptr, ptr %ops.i108.i292.i, align 4
  %set_rfreg.i109.i293.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1351, i32 0, i32 48
  %1352 = ptrtoint ptr %set_rfreg.i109.i293.i to i32
  call void @__asan_load4_noabort(i32 %1352)
  %1353 = load ptr, ptr %set_rfreg.i109.i293.i, align 4
  tail call void %1353(ptr noundef %hw, i32 noundef 1, i32 noundef 50, i32 noundef 1048575, i32 noundef 1015802) #8
  %1354 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1354)
  %1355 = load ptr, ptr %priv, align 8
  %cfg.i111.i294.i = getelementptr inbounds %struct.rtl_priv, ptr %1355, i32 0, i32 32
  %1356 = ptrtoint ptr %cfg.i111.i294.i to i32
  call void @__asan_load4_noabort(i32 %1356)
  %1357 = load ptr, ptr %cfg.i111.i294.i, align 8
  %ops.i112.i295.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1357, i32 0, i32 4
  %1358 = ptrtoint ptr %ops.i112.i295.i to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load ptr, ptr %ops.i112.i295.i, align 4
  %set_rfreg.i113.i296.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1359, i32 0, i32 48
  %1360 = ptrtoint ptr %set_rfreg.i113.i296.i to i32
  call void @__asan_load4_noabort(i32 %1360)
  %1361 = load ptr, ptr %set_rfreg.i113.i296.i, align 4
  tail call void %1361(ptr noundef %hw, i32 noundef 1, i32 noundef 223, i32 noundef 1048575, i32 noundef 2432) #8
  %1362 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1362)
  %1363 = load ptr, ptr %priv, align 8
  %cfg.i115.i297.i = getelementptr inbounds %struct.rtl_priv, ptr %1363, i32 0, i32 32
  %1364 = ptrtoint ptr %cfg.i115.i297.i to i32
  call void @__asan_load4_noabort(i32 %1364)
  %1365 = load ptr, ptr %cfg.i115.i297.i, align 8
  %ops.i116.i298.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1365, i32 0, i32 4
  %1366 = ptrtoint ptr %ops.i116.i298.i to i32
  call void @__asan_load4_noabort(i32 %1366)
  %1367 = load ptr, ptr %ops.i116.i298.i, align 4
  %set_rfreg.i117.i299.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1367, i32 0, i32 48
  %1368 = ptrtoint ptr %set_rfreg.i117.i299.i to i32
  call void @__asan_load4_noabort(i32 %1368)
  %1369 = load ptr, ptr %set_rfreg.i117.i299.i, align 4
  tail call void %1369(ptr noundef %hw, i32 noundef 1, i32 noundef 86, i32 noundef 1048575, i32 noundef 331776) #8
  %1370 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load ptr, ptr %priv, align 8
  %cfg.i119.i300.i = getelementptr inbounds %struct.rtl_priv, ptr %1371, i32 0, i32 32
  %1372 = ptrtoint ptr %cfg.i119.i300.i to i32
  call void @__asan_load4_noabort(i32 %1372)
  %1373 = load ptr, ptr %cfg.i119.i300.i, align 8
  %ops.i120.i301.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1373, i32 0, i32 4
  %1374 = ptrtoint ptr %ops.i120.i301.i to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load ptr, ptr %ops.i120.i301.i, align 4
  %set_bbreg.i121.i302.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1375, i32 0, i32 46
  %1376 = ptrtoint ptr %set_bbreg.i121.i302.i to i32
  call void @__asan_load4_noabort(i32 %1376)
  %1377 = load ptr, ptr %set_bbreg.i121.i302.i, align 4
  tail call void %1377(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef -2139095040) #8
  %1378 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1378)
  %1379 = load ptr, ptr %priv, align 8
  %cfg.i123.i303.i = getelementptr inbounds %struct.rtl_priv, ptr %1379, i32 0, i32 32
  %1380 = ptrtoint ptr %cfg.i123.i303.i to i32
  call void @__asan_load4_noabort(i32 %1380)
  %1381 = load ptr, ptr %cfg.i123.i303.i, align 8
  %ops.i124.i304.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1381, i32 0, i32 4
  %1382 = ptrtoint ptr %ops.i124.i304.i to i32
  call void @__asan_load4_noabort(i32 %1382)
  %1383 = load ptr, ptr %ops.i124.i304.i, align 4
  %set_bbreg.i125.i305.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1383, i32 0, i32 46
  %1384 = ptrtoint ptr %set_bbreg.i125.i305.i to i32
  call void @__asan_load4_noabort(i32 %1384)
  %1385 = load ptr, ptr %set_bbreg.i125.i305.i, align 4
  tail call void %1385(ptr noundef %hw, i32 noundef 3652, i32 noundef -1, i32 noundef 16795648) #8
  %1386 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1386)
  %1387 = load ptr, ptr %priv, align 8
  %cfg.i127.i306.i = getelementptr inbounds %struct.rtl_priv, ptr %1387, i32 0, i32 32
  %1388 = ptrtoint ptr %cfg.i127.i306.i to i32
  call void @__asan_load4_noabort(i32 %1388)
  %1389 = load ptr, ptr %cfg.i127.i306.i, align 8
  %ops.i128.i307.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1389, i32 0, i32 4
  %1390 = ptrtoint ptr %ops.i128.i307.i to i32
  call void @__asan_load4_noabort(i32 %1390)
  %1391 = load ptr, ptr %ops.i128.i307.i, align 4
  %set_bbreg.i129.i308.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1391, i32 0, i32 46
  %1392 = ptrtoint ptr %set_bbreg.i129.i308.i to i32
  call void @__asan_load4_noabort(i32 %1392)
  %1393 = load ptr, ptr %set_bbreg.i129.i308.i, align 4
  tail call void %1393(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 939559964) #8
  %1394 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1394)
  %1395 = load ptr, ptr %priv, align 8
  %cfg.i131.i309.i = getelementptr inbounds %struct.rtl_priv, ptr %1395, i32 0, i32 32
  %1396 = ptrtoint ptr %cfg.i131.i309.i to i32
  call void @__asan_load4_noabort(i32 %1396)
  %1397 = load ptr, ptr %cfg.i131.i309.i, align 8
  %ops.i132.i310.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1397, i32 0, i32 4
  %1398 = ptrtoint ptr %ops.i132.i310.i to i32
  call void @__asan_load4_noabort(i32 %1398)
  %1399 = load ptr, ptr %ops.i132.i310.i, align 4
  %set_bbreg.i133.i311.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1399, i32 0, i32 46
  %1400 = ptrtoint ptr %set_bbreg.i133.i311.i to i32
  call void @__asan_load4_noabort(i32 %1400)
  %1401 = load ptr, ptr %set_bbreg.i133.i311.i, align 4
  tail call void %1401(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 939559964) #8
  %1402 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1402)
  %1403 = load ptr, ptr %priv, align 8
  %cfg.i135.i312.i = getelementptr inbounds %struct.rtl_priv, ptr %1403, i32 0, i32 32
  %1404 = ptrtoint ptr %cfg.i135.i312.i to i32
  call void @__asan_load4_noabort(i32 %1404)
  %1405 = load ptr, ptr %cfg.i135.i312.i, align 8
  %ops.i136.i313.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1405, i32 0, i32 4
  %1406 = ptrtoint ptr %ops.i136.i313.i to i32
  call void @__asan_load4_noabort(i32 %1406)
  %1407 = load ptr, ptr %ops.i136.i313.i, align 4
  %set_bbreg.i137.i314.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1407, i32 0, i32 46
  %1408 = ptrtoint ptr %set_bbreg.i137.i314.i to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load ptr, ptr %set_bbreg.i137.i314.i, align 4
  tail call void %1409(ptr noundef %hw, i32 noundef 3664, i32 noundef -1, i32 noundef 939559964) #8
  %1410 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load ptr, ptr %priv, align 8
  %cfg.i139.i315.i = getelementptr inbounds %struct.rtl_priv, ptr %1411, i32 0, i32 32
  %1412 = ptrtoint ptr %cfg.i139.i315.i to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load ptr, ptr %cfg.i139.i315.i, align 8
  %ops.i140.i316.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1413, i32 0, i32 4
  %1414 = ptrtoint ptr %ops.i140.i316.i to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %ops.i140.i316.i, align 4
  %set_bbreg.i141.i317.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1415, i32 0, i32 46
  %1416 = ptrtoint ptr %set_bbreg.i141.i317.i to i32
  call void @__asan_load4_noabort(i32 %1416)
  %1417 = load ptr, ptr %set_bbreg.i141.i317.i, align 4
  tail call void %1417(ptr noundef %hw, i32 noundef 3668, i32 noundef -1, i32 noundef 402689052) #8
  %1418 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1418)
  %1419 = load ptr, ptr %priv, align 8
  %cfg.i143.i318.i = getelementptr inbounds %struct.rtl_priv, ptr %1419, i32 0, i32 32
  %1420 = ptrtoint ptr %cfg.i143.i318.i to i32
  call void @__asan_load4_noabort(i32 %1420)
  %1421 = load ptr, ptr %cfg.i143.i318.i, align 8
  %ops.i144.i319.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1421, i32 0, i32 4
  %1422 = ptrtoint ptr %ops.i144.i319.i to i32
  call void @__asan_load4_noabort(i32 %1422)
  %1423 = load ptr, ptr %ops.i144.i319.i, align 4
  %set_bbreg.i145.i320.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1423, i32 0, i32 46
  %1424 = ptrtoint ptr %set_bbreg.i145.i320.i to i32
  call void @__asan_load4_noabort(i32 %1424)
  %1425 = load ptr, ptr %set_bbreg.i145.i320.i, align 4
  tail call void %1425(ptr noundef %hw, i32 noundef 3672, i32 noundef -1, i32 noundef -2112484321) #8
  %1426 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1426)
  %1427 = load ptr, ptr %priv, align 8
  %cfg.i147.i321.i = getelementptr inbounds %struct.rtl_priv, ptr %1427, i32 0, i32 32
  %1428 = ptrtoint ptr %cfg.i147.i321.i to i32
  call void @__asan_load4_noabort(i32 %1428)
  %1429 = load ptr, ptr %cfg.i147.i321.i, align 8
  %ops.i148.i322.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1429, i32 0, i32 4
  %1430 = ptrtoint ptr %ops.i148.i322.i to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load ptr, ptr %ops.i148.i322.i, align 4
  %set_bbreg.i149.i323.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1431, i32 0, i32 46
  %1432 = ptrtoint ptr %set_bbreg.i149.i323.i to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load ptr, ptr %set_bbreg.i149.i323.i, align 4
  tail call void %1433(ptr noundef %hw, i32 noundef 3676, i32 noundef -1, i32 noundef 672533535) #8
  %1434 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load ptr, ptr %priv, align 8
  %cfg.i151.i324.i = getelementptr inbounds %struct.rtl_priv, ptr %1435, i32 0, i32 32
  %1436 = ptrtoint ptr %cfg.i151.i324.i to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %cfg.i151.i324.i, align 8
  %ops.i152.i325.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1437, i32 0, i32 4
  %1438 = ptrtoint ptr %ops.i152.i325.i to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %ops.i152.i325.i, align 4
  %set_bbreg.i153.i326.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1439, i32 0, i32 46
  %1440 = ptrtoint ptr %set_bbreg.i153.i326.i to i32
  call void @__asan_load4_noabort(i32 %1440)
  %1441 = load ptr, ptr %set_bbreg.i153.i326.i, align 4
  tail call void %1441(ptr noundef %hw, i32 noundef 3660, i32 noundef -1, i32 noundef 4630673) #8
  %1442 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1442)
  %1443 = load ptr, ptr %priv, align 8
  %cfg.i155.i327.i = getelementptr inbounds %struct.rtl_priv, ptr %1443, i32 0, i32 32
  %1444 = ptrtoint ptr %cfg.i155.i327.i to i32
  call void @__asan_load4_noabort(i32 %1444)
  %1445 = load ptr, ptr %cfg.i155.i327.i, align 8
  %ops.i156.i328.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1445, i32 0, i32 4
  %1446 = ptrtoint ptr %ops.i156.i328.i to i32
  call void @__asan_load4_noabort(i32 %1446)
  %1447 = load ptr, ptr %ops.i156.i328.i, align 4
  %set_bbreg.i157.i329.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1447, i32 0, i32 46
  %1448 = ptrtoint ptr %set_bbreg.i157.i329.i to i32
  call void @__asan_load4_noabort(i32 %1448)
  %1449 = load ptr, ptr %set_bbreg.i157.i329.i, align 4
  tail call void %1449(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -100663296) #8
  %1450 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1450)
  %1451 = load ptr, ptr %priv, align 8
  %cfg.i159.i330.i = getelementptr inbounds %struct.rtl_priv, ptr %1451, i32 0, i32 32
  %1452 = ptrtoint ptr %cfg.i159.i330.i to i32
  call void @__asan_load4_noabort(i32 %1452)
  %1453 = load ptr, ptr %cfg.i159.i330.i, align 8
  %ops.i160.i331.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1453, i32 0, i32 4
  %1454 = ptrtoint ptr %ops.i160.i331.i to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load ptr, ptr %ops.i160.i331.i, align 4
  %set_bbreg.i161.i332.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1455, i32 0, i32 46
  %1456 = ptrtoint ptr %set_bbreg.i161.i332.i to i32
  call void @__asan_load4_noabort(i32 %1456)
  %1457 = load ptr, ptr %set_bbreg.i161.i332.i, align 4
  tail call void %1457(ptr noundef %hw, i32 noundef 3656, i32 noundef -1, i32 noundef -134217728) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1458 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1458(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1459 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1459(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1460 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1460(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1461 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1461(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1462 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1462(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1463 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1463(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1464 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1464(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1465 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1465(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1466 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1466(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1467 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1467(i32 noundef 214748000) #8
  %1468 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1468)
  %1469 = load ptr, ptr %priv, align 8
  %cfg.i171.i333.i = getelementptr inbounds %struct.rtl_priv, ptr %1469, i32 0, i32 32
  %1470 = ptrtoint ptr %cfg.i171.i333.i to i32
  call void @__asan_load4_noabort(i32 %1470)
  %1471 = load ptr, ptr %cfg.i171.i333.i, align 8
  %ops.i172.i334.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1471, i32 0, i32 4
  %1472 = ptrtoint ptr %ops.i172.i334.i to i32
  call void @__asan_load4_noabort(i32 %1472)
  %1473 = load ptr, ptr %ops.i172.i334.i, align 4
  %get_bbreg.i173.i335.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1473, i32 0, i32 45
  %1474 = ptrtoint ptr %get_bbreg.i173.i335.i to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %get_bbreg.i173.i335.i, align 4
  %call.i174.i336.i = tail call i32 %1475(ptr noundef %hw, i32 noundef 3756, i32 noundef -1) #8
  %1476 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load ptr, ptr %priv, align 8
  %cfg.i176.i337.i = getelementptr inbounds %struct.rtl_priv, ptr %1477, i32 0, i32 32
  %1478 = ptrtoint ptr %cfg.i176.i337.i to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load ptr, ptr %cfg.i176.i337.i, align 8
  %ops.i177.i338.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1479, i32 0, i32 4
  %1480 = ptrtoint ptr %ops.i177.i338.i to i32
  call void @__asan_load4_noabort(i32 %1480)
  %1481 = load ptr, ptr %ops.i177.i338.i, align 4
  %get_bbreg.i178.i339.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1481, i32 0, i32 45
  %1482 = ptrtoint ptr %get_bbreg.i178.i339.i to i32
  call void @__asan_load4_noabort(i32 %1482)
  %1483 = load ptr, ptr %get_bbreg.i178.i339.i, align 4
  %call.i179.i340.i = tail call i32 %1483(ptr noundef %hw, i32 noundef 3780, i32 noundef -1) #8
  %1484 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1484)
  %1485 = load ptr, ptr %priv, align 8
  %cfg.i181.i341.i = getelementptr inbounds %struct.rtl_priv, ptr %1485, i32 0, i32 32
  %1486 = ptrtoint ptr %cfg.i181.i341.i to i32
  call void @__asan_load4_noabort(i32 %1486)
  %1487 = load ptr, ptr %cfg.i181.i341.i, align 8
  %ops.i182.i342.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1487, i32 0, i32 4
  %1488 = ptrtoint ptr %ops.i182.i342.i to i32
  call void @__asan_load4_noabort(i32 %1488)
  %1489 = load ptr, ptr %ops.i182.i342.i, align 4
  %get_bbreg.i183.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1489, i32 0, i32 45
  %1490 = ptrtoint ptr %get_bbreg.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %1490)
  %1491 = load ptr, ptr %get_bbreg.i183.i.i, align 4
  %call.i184.i.i = tail call i32 %1491(ptr noundef %hw, i32 noundef 3788, i32 noundef -1) #8
  %1492 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1492)
  %1493 = load ptr, ptr %priv, align 8
  %cfg.i186.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1493, i32 0, i32 32
  %1494 = ptrtoint ptr %cfg.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %1494)
  %1495 = load ptr, ptr %cfg.i186.i.i, align 8
  %ops.i187.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1495, i32 0, i32 4
  %1496 = ptrtoint ptr %ops.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load ptr, ptr %ops.i187.i.i, align 4
  %set_bbreg.i188.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1497, i32 0, i32 46
  %1498 = ptrtoint ptr %set_bbreg.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %1498)
  %1499 = load ptr, ptr %set_bbreg.i188.i.i, align 4
  tail call void %1499(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %1500 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1500)
  %1501 = load ptr, ptr %priv, align 8
  %cfg.i190.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1501, i32 0, i32 32
  %1502 = ptrtoint ptr %cfg.i190.i.i to i32
  call void @__asan_load4_noabort(i32 %1502)
  %1503 = load ptr, ptr %cfg.i190.i.i, align 8
  %ops.i191.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1503, i32 0, i32 4
  %1504 = ptrtoint ptr %ops.i191.i.i to i32
  call void @__asan_load4_noabort(i32 %1504)
  %1505 = load ptr, ptr %ops.i191.i.i, align 4
  %set_rfreg.i192.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1505, i32 0, i32 48
  %1506 = ptrtoint ptr %set_rfreg.i192.i.i to i32
  call void @__asan_load4_noabort(i32 %1506)
  %1507 = load ptr, ptr %set_rfreg.i192.i.i, align 4
  tail call void %1507(ptr noundef %hw, i32 noundef 1, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  %and24.i.i = and i32 %call.i174.i336.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp ne i32 %and24.i.i, 0
  %1508 = and i32 %call.i179.i340.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %1508)
  %cmp29.not.i.i = icmp eq i32 %1508, 20054016
  %or.cond.i343.i = select i1 %tobool25.not.i.i, i1 true, i1 %cmp29.not.i.i
  %1509 = and i32 %call.i184.i.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %1509)
  %cmp34.not.i.i = icmp eq i32 %1509, 3538944
  %or.cond1.i344.i = select i1 %or.cond.i343.i, i1 true, i1 %cmp34.not.i.i
  br i1 %or.cond1.i344.i, label %if.end116.thread.i, label %for.end120.thread.i

for.end120.thread.i:                              ; preds = %if.then.i345.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.70) #8
  %1510 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1510)
  %1511 = load ptr, ptr %priv, align 8
  %cfg.i355.i = getelementptr inbounds %struct.rtl_priv, ptr %1511, i32 0, i32 32
  %1512 = ptrtoint ptr %cfg.i355.i to i32
  call void @__asan_load4_noabort(i32 %1512)
  %1513 = load ptr, ptr %cfg.i355.i, align 8
  %ops.i356.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1513, i32 0, i32 4
  %1514 = ptrtoint ptr %ops.i356.i to i32
  call void @__asan_load4_noabort(i32 %1514)
  %1515 = load ptr, ptr %ops.i356.i, align 4
  %get_bbreg.i357.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1515, i32 0, i32 45
  %1516 = ptrtoint ptr %get_bbreg.i357.i to i32
  call void @__asan_load4_noabort(i32 %1516)
  %1517 = load ptr, ptr %get_bbreg.i357.i, align 4
  %call.i358.i = tail call i32 %1517(ptr noundef %hw, i32 noundef 3780, i32 noundef -1) #8
  %and105.i = lshr i32 %call.i358.i, 16
  %shr106.i = and i32 %and105.i, 1023
  %arrayidx109.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 6
  %1518 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_store4_noabort(i32 %1518)
  store i32 %shr106.i, ptr %arrayidx109.i, align 4
  %1519 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1519)
  %1520 = load ptr, ptr %priv, align 8
  %cfg.i360.i = getelementptr inbounds %struct.rtl_priv, ptr %1520, i32 0, i32 32
  %1521 = ptrtoint ptr %cfg.i360.i to i32
  call void @__asan_load4_noabort(i32 %1521)
  %1522 = load ptr, ptr %cfg.i360.i, align 8
  %ops.i361.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1522, i32 0, i32 4
  %1523 = ptrtoint ptr %ops.i361.i to i32
  call void @__asan_load4_noabort(i32 %1523)
  %1524 = load ptr, ptr %ops.i361.i, align 4
  %get_bbreg.i362.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1524, i32 0, i32 45
  %1525 = ptrtoint ptr %get_bbreg.i362.i to i32
  call void @__asan_load4_noabort(i32 %1525)
  %1526 = load ptr, ptr %get_bbreg.i362.i, align 4
  %call.i363.i = tail call i32 %1526(ptr noundef %hw, i32 noundef 3788, i32 noundef -1) #8
  %and111.i = lshr i32 %call.i363.i, 16
  %shr112.i = and i32 %and111.i, 1023
  %arrayidx115.i = getelementptr [8 x i32], ptr %result, i32 %indvars.iv, i32 7
  %1527 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_store4_noabort(i32 %1527)
  store i32 %shr112.i, ptr %arrayidx115.i, align 4
  br label %if.end126.i

if.end116.i:                                      ; preds = %land.lhs.true5.i273.i.if.end116.i_crit_edge, %land.lhs.true.i269.i.if.end116.i_crit_edge, %for.body97.i.if.end116.i_crit_edge
  %1528 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load ptr, ptr %priv, align 8
  %cfg.i163.i346.i = getelementptr inbounds %struct.rtl_priv, ptr %1529, i32 0, i32 32
  %1530 = ptrtoint ptr %cfg.i163.i346.i to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load ptr, ptr %cfg.i163.i346.i, align 8
  %ops.i164.i347.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1531, i32 0, i32 4
  %1532 = ptrtoint ptr %ops.i164.i347.i to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load ptr, ptr %ops.i164.i347.i, align 4
  %set_bbreg.i165.i348.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1533, i32 0, i32 46
  %1534 = ptrtoint ptr %set_bbreg.i165.i348.i to i32
  call void @__asan_load4_noabort(i32 %1534)
  %1535 = load ptr, ptr %set_bbreg.i165.i348.i, align 4
  tail call void %1535(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  %1536 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %priv, align 8
  %cfg.i167.i349.i = getelementptr inbounds %struct.rtl_priv, ptr %1537, i32 0, i32 32
  %1538 = ptrtoint ptr %cfg.i167.i349.i to i32
  call void @__asan_load4_noabort(i32 %1538)
  %1539 = load ptr, ptr %cfg.i167.i349.i, align 8
  %ops.i168.i350.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1539, i32 0, i32 4
  %1540 = ptrtoint ptr %ops.i168.i350.i to i32
  call void @__asan_load4_noabort(i32 %1540)
  %1541 = load ptr, ptr %ops.i168.i350.i, align 4
  %set_rfreg.i169.i351.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1541, i32 0, i32 48
  %1542 = ptrtoint ptr %set_rfreg.i169.i351.i to i32
  call void @__asan_load4_noabort(i32 %1542)
  %1543 = load ptr, ptr %set_rfreg.i169.i351.i, align 4
  tail call void %1543(ptr noundef %hw, i32 noundef 1, i32 noundef 223, i32 noundef 1048575, i32 noundef 384) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef 0) #8
  br i1 %cmp95.i, label %if.end116.i.for.body97.i.backedge_crit_edge, label %if.then124.i

if.end116.i.for.body97.i.backedge_crit_edge:      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97.i.backedge

if.end116.thread.i:                               ; preds = %if.then.i345.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1121, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.74) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.71, i32 noundef 1) #8
  br i1 %cmp95.i, label %if.end116.thread.i.for.body97.i.backedge_crit_edge, label %if.end116.thread.i.if.end126.i_crit_edge

if.end116.thread.i.if.end126.i_crit_edge:         ; preds = %if.end116.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126.i

if.end116.thread.i.for.body97.i.backedge_crit_edge: ; preds = %if.end116.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97.i.backedge

for.body97.i.backedge:                            ; preds = %if.end116.thread.i.for.body97.i.backedge_crit_edge, %if.end116.i.for.body97.i.backedge_crit_edge
  br label %for.body97.i

if.then124.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.72) #8
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then124.i, %if.end116.thread.i.if.end126.i_crit_edge, %for.end120.thread.i
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %103, i64 noundef 1048576, i32 noundef 4, ptr noundef nonnull @.str.73) #8
  %1544 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1544)
  %1545 = load ptr, ptr %priv, align 8
  %cfg.i365.i = getelementptr inbounds %struct.rtl_priv, ptr %1545, i32 0, i32 32
  %1546 = ptrtoint ptr %cfg.i365.i to i32
  call void @__asan_load4_noabort(i32 %1546)
  %1547 = load ptr, ptr %cfg.i365.i, align 8
  %ops.i366.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1547, i32 0, i32 4
  %1548 = ptrtoint ptr %ops.i366.i to i32
  call void @__asan_load4_noabort(i32 %1548)
  %1549 = load ptr, ptr %ops.i366.i, align 4
  %set_bbreg.i367.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1549, i32 0, i32 46
  %1550 = ptrtoint ptr %set_bbreg.i367.i to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load ptr, ptr %set_bbreg.i367.i, align 4
  tail call void %1551(ptr noundef %hw, i32 noundef 3624, i32 noundef -1, i32 noundef 0) #8
  br i1 %cmp.i, label %if.end126.i.for.inc66_crit_edge, label %if.then130.i

if.end126.i.for.inc66_crit_edge:                  ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then130.i:                                     ; preds = %if.end126.i
  %adda_backup132.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 28
  br label %for.body.i377.i

for.body.i377.i:                                  ; preds = %for.body.i377.i.for.body.i377.i_crit_edge, %if.then130.i
  %i.06.i369.i = phi i32 [ 0, %if.then130.i ], [ %inc.i375.i, %for.body.i377.i.for.body.i377.i_crit_edge ]
  %arrayidx.i370.i = getelementptr i32, ptr @__const._rtl92ee_phy_iq_calibrate.adda_reg, i32 %i.06.i369.i
  %1552 = ptrtoint ptr %arrayidx.i370.i to i32
  call void @__asan_load4_noabort(i32 %1552)
  %1553 = load i32, ptr %arrayidx.i370.i, align 4
  %arrayidx1.i371.i = getelementptr i32, ptr %adda_backup132.i, i32 %i.06.i369.i
  %1554 = ptrtoint ptr %arrayidx1.i371.i to i32
  call void @__asan_load4_noabort(i32 %1554)
  %1555 = load i32, ptr %arrayidx1.i371.i, align 4
  %1556 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1556)
  %1557 = load ptr, ptr %priv, align 8
  %cfg.i.i372.i = getelementptr inbounds %struct.rtl_priv, ptr %1557, i32 0, i32 32
  %1558 = ptrtoint ptr %cfg.i.i372.i to i32
  call void @__asan_load4_noabort(i32 %1558)
  %1559 = load ptr, ptr %cfg.i.i372.i, align 8
  %ops.i.i373.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1559, i32 0, i32 4
  %1560 = ptrtoint ptr %ops.i.i373.i to i32
  call void @__asan_load4_noabort(i32 %1560)
  %1561 = load ptr, ptr %ops.i.i373.i, align 4
  %set_bbreg.i.i374.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1561, i32 0, i32 46
  %1562 = ptrtoint ptr %set_bbreg.i.i374.i to i32
  call void @__asan_load4_noabort(i32 %1562)
  %1563 = load ptr, ptr %set_bbreg.i.i374.i, align 4
  tail call void %1563(ptr noundef %hw, i32 noundef %1553, i32 noundef -1, i32 noundef %1555) #8
  %inc.i375.i = add nuw nsw i32 %i.06.i369.i, 1
  %exitcond.not.i376.i = icmp eq i32 %inc.i375.i, 16
  br i1 %exitcond.not.i376.i, label %_rtl92ee_phy_reload_adda_registers.exit.i, label %for.body.i377.i.for.body.i377.i_crit_edge

for.body.i377.i.for.body.i377.i_crit_edge:        ; preds = %for.body.i377.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i377.i

_rtl92ee_phy_reload_adda_registers.exit.i:        ; preds = %for.body.i377.i
  %1564 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1564)
  %1565 = load ptr, ptr %priv, align 8
  %write8_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1565, i32 0, i32 13, i32 5
  %cfg.i.i379.i = getelementptr inbounds %struct.rtl_priv, ptr %1565, i32 0, i32 32
  %read8_sync.i.i380.i = getelementptr inbounds %struct.rtl_priv, ptr %1565, i32 0, i32 13, i32 9
  %1566 = ptrtoint ptr %iqk_mac_backup12.i to i32
  call void @__asan_load4_noabort(i32 %1566)
  %1567 = load i32, ptr %iqk_mac_backup12.i, align 4
  %conv.i381.i = trunc i32 %1567 to i8
  %1568 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1568)
  %1569 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %1569(ptr noundef %1565, i32 noundef 1314, i8 noundef zeroext %conv.i381.i) #8
  %1570 = ptrtoint ptr %cfg.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %1570)
  %1571 = load ptr, ptr %cfg.i.i379.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1571, i32 0, i32 1
  %1572 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1572)
  %1573 = load i8, ptr %write_readback.i.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1573)
  %tobool.not.i.i.i = icmp eq i8 %1573, 0
  br i1 %tobool.not.i.i.i, label %_rtl92ee_phy_reload_adda_registers.exit.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

_rtl92ee_phy_reload_adda_registers.exit.i.rtl_write_byte.exit.i.i_crit_edge: ; preds = %_rtl92ee_phy_reload_adda_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %_rtl92ee_phy_reload_adda_registers.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %1574 = ptrtoint ptr %read8_sync.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %1574)
  %1575 = load ptr, ptr %read8_sync.i.i380.i, align 4
  %call.i.i382.i = tail call zeroext i8 %1575(ptr noundef %1565, i32 noundef 1314) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %_rtl92ee_phy_reload_adda_registers.exit.i.rtl_write_byte.exit.i.i_crit_edge
  %arrayidx1.1.i384.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 1
  %1576 = ptrtoint ptr %arrayidx1.1.i384.i to i32
  call void @__asan_load4_noabort(i32 %1576)
  %1577 = load i32, ptr %arrayidx1.1.i384.i, align 4
  %conv.1.i385.i = trunc i32 %1577 to i8
  %1578 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1578)
  %1579 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %1579(ptr noundef %1565, i32 noundef 1360, i8 noundef zeroext %conv.1.i385.i) #8
  %1580 = ptrtoint ptr %cfg.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %1580)
  %1581 = load ptr, ptr %cfg.i.i379.i, align 8
  %write_readback.i.1.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1581, i32 0, i32 1
  %1582 = ptrtoint ptr %write_readback.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %1582)
  %1583 = load i8, ptr %write_readback.i.1.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1583)
  %tobool.not.i.1.i.i = icmp eq i8 %1583, 0
  br i1 %tobool.not.i.1.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit.1.i.i_crit_edge, label %if.then.i.1.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit.1.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.1.i.i

if.then.i.1.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %1584 = ptrtoint ptr %read8_sync.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %1584)
  %1585 = load ptr, ptr %read8_sync.i.i380.i, align 4
  %call.i.1.i386.i = tail call zeroext i8 %1585(ptr noundef %1565, i32 noundef 1360) #8
  br label %rtl_write_byte.exit.1.i.i

rtl_write_byte.exit.1.i.i:                        ; preds = %if.then.i.1.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit.1.i.i_crit_edge
  %arrayidx1.2.i388.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 2
  %1586 = ptrtoint ptr %arrayidx1.2.i388.i to i32
  call void @__asan_load4_noabort(i32 %1586)
  %1587 = load i32, ptr %arrayidx1.2.i388.i, align 4
  %conv.2.i389.i = trunc i32 %1587 to i8
  %1588 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %1589(ptr noundef %1565, i32 noundef 1361, i8 noundef zeroext %conv.2.i389.i) #8
  %1590 = ptrtoint ptr %cfg.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %1590)
  %1591 = load ptr, ptr %cfg.i.i379.i, align 8
  %write_readback.i.2.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1591, i32 0, i32 1
  %1592 = ptrtoint ptr %write_readback.i.2.i.i to i32
  call void @__asan_load1_noabort(i32 %1592)
  %1593 = load i8, ptr %write_readback.i.2.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1593)
  %tobool.not.i.2.i.i = icmp eq i8 %1593, 0
  br i1 %tobool.not.i.2.i.i, label %rtl_write_byte.exit.1.i.i.rtl_write_byte.exit.2.i.i_crit_edge, label %if.then.i.2.i.i

rtl_write_byte.exit.1.i.i.rtl_write_byte.exit.2.i.i_crit_edge: ; preds = %rtl_write_byte.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.2.i.i

if.then.i.2.i.i:                                  ; preds = %rtl_write_byte.exit.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %1594 = ptrtoint ptr %read8_sync.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %1594)
  %1595 = load ptr, ptr %read8_sync.i.i380.i, align 4
  %call.i.2.i390.i = tail call zeroext i8 %1595(ptr noundef %1565, i32 noundef 1361) #8
  br label %rtl_write_byte.exit.2.i.i

rtl_write_byte.exit.2.i.i:                        ; preds = %if.then.i.2.i.i, %rtl_write_byte.exit.1.i.i.rtl_write_byte.exit.2.i.i_crit_edge
  %arrayidx3.i.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 29, i32 3
  %1596 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %1596)
  %1597 = load i32, ptr %arrayidx3.i.i, align 4
  %write32_async.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1565, i32 0, i32 13, i32 7
  %1598 = ptrtoint ptr %write32_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1598)
  %1599 = load ptr, ptr %write32_async.i.i.i, align 4
  tail call void %1599(ptr noundef %1565, i32 noundef 64, i32 noundef %1597) #8
  %1600 = ptrtoint ptr %cfg.i.i379.i to i32
  call void @__asan_load4_noabort(i32 %1600)
  %1601 = load ptr, ptr %cfg.i.i379.i, align 8
  %write_readback.i13.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1601, i32 0, i32 1
  %1602 = ptrtoint ptr %write_readback.i13.i.i to i32
  call void @__asan_load1_noabort(i32 %1602)
  %1603 = load i8, ptr %write_readback.i13.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1603)
  %tobool.not.i14.i.i = icmp eq i8 %1603, 0
  br i1 %tobool.not.i14.i.i, label %rtl_write_byte.exit.2.i.i._rtl92ee_phy_iq_calibrate.exit_crit_edge, label %if.then.i16.i.i

rtl_write_byte.exit.2.i.i._rtl92ee_phy_iq_calibrate.exit_crit_edge: ; preds = %rtl_write_byte.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_iq_calibrate.exit

if.then.i16.i.i:                                  ; preds = %rtl_write_byte.exit.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read32_sync.i.i392.i = getelementptr inbounds %struct.rtl_priv, ptr %1565, i32 0, i32 13, i32 11
  %1604 = ptrtoint ptr %read32_sync.i.i392.i to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %read32_sync.i.i392.i, align 4
  %call.i15.i.i = tail call i32 %1605(ptr noundef %1565, i32 noundef 64) #8
  br label %_rtl92ee_phy_iq_calibrate.exit

_rtl92ee_phy_iq_calibrate.exit:                   ; preds = %if.then.i16.i.i, %rtl_write_byte.exit.2.i.i._rtl92ee_phy_iq_calibrate.exit_crit_edge
  %iqk_bb_backup138.i = getelementptr inbounds %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30
  %1606 = ptrtoint ptr %iqk_bb_backup138.i to i32
  call void @__asan_load4_noabort(i32 %1606)
  %1607 = load i32, ptr %iqk_bb_backup138.i, align 4
  %1608 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1608)
  %1609 = load ptr, ptr %priv, align 8
  %cfg.i.i397.i = getelementptr inbounds %struct.rtl_priv, ptr %1609, i32 0, i32 32
  %1610 = ptrtoint ptr %cfg.i.i397.i to i32
  call void @__asan_load4_noabort(i32 %1610)
  %1611 = load ptr, ptr %cfg.i.i397.i, align 8
  %ops.i.i398.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1611, i32 0, i32 4
  %1612 = ptrtoint ptr %ops.i.i398.i to i32
  call void @__asan_load4_noabort(i32 %1612)
  %1613 = load ptr, ptr %ops.i.i398.i, align 4
  %set_bbreg.i.i399.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1613, i32 0, i32 46
  %1614 = ptrtoint ptr %set_bbreg.i.i399.i to i32
  call void @__asan_load4_noabort(i32 %1614)
  %1615 = load ptr, ptr %set_bbreg.i.i399.i, align 4
  tail call void %1615(ptr noundef %hw, i32 noundef 3076, i32 noundef -1, i32 noundef %1607) #8
  %arrayidx1.i396.1.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 1
  %1616 = ptrtoint ptr %arrayidx1.i396.1.i to i32
  call void @__asan_load4_noabort(i32 %1616)
  %1617 = load i32, ptr %arrayidx1.i396.1.i, align 4
  %1618 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load ptr, ptr %priv, align 8
  %cfg.i.i397.1.i = getelementptr inbounds %struct.rtl_priv, ptr %1619, i32 0, i32 32
  %1620 = ptrtoint ptr %cfg.i.i397.1.i to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load ptr, ptr %cfg.i.i397.1.i, align 8
  %ops.i.i398.1.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1621, i32 0, i32 4
  %1622 = ptrtoint ptr %ops.i.i398.1.i to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load ptr, ptr %ops.i.i398.1.i, align 4
  %set_bbreg.i.i399.1.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1623, i32 0, i32 46
  %1624 = ptrtoint ptr %set_bbreg.i.i399.1.i to i32
  call void @__asan_load4_noabort(i32 %1624)
  %1625 = load ptr, ptr %set_bbreg.i.i399.1.i, align 4
  tail call void %1625(ptr noundef %hw, i32 noundef 3080, i32 noundef -1, i32 noundef %1617) #8
  %arrayidx1.i396.2.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 2
  %1626 = ptrtoint ptr %arrayidx1.i396.2.i to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load i32, ptr %arrayidx1.i396.2.i, align 4
  %1628 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1628)
  %1629 = load ptr, ptr %priv, align 8
  %cfg.i.i397.2.i = getelementptr inbounds %struct.rtl_priv, ptr %1629, i32 0, i32 32
  %1630 = ptrtoint ptr %cfg.i.i397.2.i to i32
  call void @__asan_load4_noabort(i32 %1630)
  %1631 = load ptr, ptr %cfg.i.i397.2.i, align 8
  %ops.i.i398.2.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1631, i32 0, i32 4
  %1632 = ptrtoint ptr %ops.i.i398.2.i to i32
  call void @__asan_load4_noabort(i32 %1632)
  %1633 = load ptr, ptr %ops.i.i398.2.i, align 4
  %set_bbreg.i.i399.2.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1633, i32 0, i32 46
  %1634 = ptrtoint ptr %set_bbreg.i.i399.2.i to i32
  call void @__asan_load4_noabort(i32 %1634)
  %1635 = load ptr, ptr %set_bbreg.i.i399.2.i, align 4
  tail call void %1635(ptr noundef %hw, i32 noundef 2164, i32 noundef -1, i32 noundef %1627) #8
  %arrayidx1.i396.3.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 3
  %1636 = ptrtoint ptr %arrayidx1.i396.3.i to i32
  call void @__asan_load4_noabort(i32 %1636)
  %1637 = load i32, ptr %arrayidx1.i396.3.i, align 4
  %1638 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1638)
  %1639 = load ptr, ptr %priv, align 8
  %cfg.i.i397.3.i = getelementptr inbounds %struct.rtl_priv, ptr %1639, i32 0, i32 32
  %1640 = ptrtoint ptr %cfg.i.i397.3.i to i32
  call void @__asan_load4_noabort(i32 %1640)
  %1641 = load ptr, ptr %cfg.i.i397.3.i, align 8
  %ops.i.i398.3.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1641, i32 0, i32 4
  %1642 = ptrtoint ptr %ops.i.i398.3.i to i32
  call void @__asan_load4_noabort(i32 %1642)
  %1643 = load ptr, ptr %ops.i.i398.3.i, align 4
  %set_bbreg.i.i399.3.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1643, i32 0, i32 46
  %1644 = ptrtoint ptr %set_bbreg.i.i399.3.i to i32
  call void @__asan_load4_noabort(i32 %1644)
  %1645 = load ptr, ptr %set_bbreg.i.i399.3.i, align 4
  tail call void %1645(ptr noundef %hw, i32 noundef 2920, i32 noundef -1, i32 noundef %1637) #8
  %arrayidx1.i396.4.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 4
  %1646 = ptrtoint ptr %arrayidx1.i396.4.i to i32
  call void @__asan_load4_noabort(i32 %1646)
  %1647 = load i32, ptr %arrayidx1.i396.4.i, align 4
  %1648 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1648)
  %1649 = load ptr, ptr %priv, align 8
  %cfg.i.i397.4.i = getelementptr inbounds %struct.rtl_priv, ptr %1649, i32 0, i32 32
  %1650 = ptrtoint ptr %cfg.i.i397.4.i to i32
  call void @__asan_load4_noabort(i32 %1650)
  %1651 = load ptr, ptr %cfg.i.i397.4.i, align 8
  %ops.i.i398.4.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1651, i32 0, i32 4
  %1652 = ptrtoint ptr %ops.i.i398.4.i to i32
  call void @__asan_load4_noabort(i32 %1652)
  %1653 = load ptr, ptr %ops.i.i398.4.i, align 4
  %set_bbreg.i.i399.4.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1653, i32 0, i32 46
  %1654 = ptrtoint ptr %set_bbreg.i.i399.4.i to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load ptr, ptr %set_bbreg.i.i399.4.i, align 4
  tail call void %1655(ptr noundef %hw, i32 noundef 2924, i32 noundef -1, i32 noundef %1647) #8
  %arrayidx1.i396.5.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 5
  %1656 = ptrtoint ptr %arrayidx1.i396.5.i to i32
  call void @__asan_load4_noabort(i32 %1656)
  %1657 = load i32, ptr %arrayidx1.i396.5.i, align 4
  %1658 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1658)
  %1659 = load ptr, ptr %priv, align 8
  %cfg.i.i397.5.i = getelementptr inbounds %struct.rtl_priv, ptr %1659, i32 0, i32 32
  %1660 = ptrtoint ptr %cfg.i.i397.5.i to i32
  call void @__asan_load4_noabort(i32 %1660)
  %1661 = load ptr, ptr %cfg.i.i397.5.i, align 8
  %ops.i.i398.5.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1661, i32 0, i32 4
  %1662 = ptrtoint ptr %ops.i.i398.5.i to i32
  call void @__asan_load4_noabort(i32 %1662)
  %1663 = load ptr, ptr %ops.i.i398.5.i, align 4
  %set_bbreg.i.i399.5.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1663, i32 0, i32 46
  %1664 = ptrtoint ptr %set_bbreg.i.i399.5.i to i32
  call void @__asan_load4_noabort(i32 %1664)
  %1665 = load ptr, ptr %set_bbreg.i.i399.5.i, align 4
  tail call void %1665(ptr noundef %hw, i32 noundef 2160, i32 noundef -1, i32 noundef %1657) #8
  %arrayidx1.i396.6.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 6
  %1666 = ptrtoint ptr %arrayidx1.i396.6.i to i32
  call void @__asan_load4_noabort(i32 %1666)
  %1667 = load i32, ptr %arrayidx1.i396.6.i, align 4
  %1668 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1668)
  %1669 = load ptr, ptr %priv, align 8
  %cfg.i.i397.6.i = getelementptr inbounds %struct.rtl_priv, ptr %1669, i32 0, i32 32
  %1670 = ptrtoint ptr %cfg.i.i397.6.i to i32
  call void @__asan_load4_noabort(i32 %1670)
  %1671 = load ptr, ptr %cfg.i.i397.6.i, align 8
  %ops.i.i398.6.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1671, i32 0, i32 4
  %1672 = ptrtoint ptr %ops.i.i398.6.i to i32
  call void @__asan_load4_noabort(i32 %1672)
  %1673 = load ptr, ptr %ops.i.i398.6.i, align 4
  %set_bbreg.i.i399.6.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1673, i32 0, i32 46
  %1674 = ptrtoint ptr %set_bbreg.i.i399.6.i to i32
  call void @__asan_load4_noabort(i32 %1674)
  %1675 = load ptr, ptr %set_bbreg.i.i399.6.i, align 4
  tail call void %1675(ptr noundef %hw, i32 noundef 2144, i32 noundef -1, i32 noundef %1667) #8
  %arrayidx1.i396.7.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 7
  %1676 = ptrtoint ptr %arrayidx1.i396.7.i to i32
  call void @__asan_load4_noabort(i32 %1676)
  %1677 = load i32, ptr %arrayidx1.i396.7.i, align 4
  %1678 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1678)
  %1679 = load ptr, ptr %priv, align 8
  %cfg.i.i397.7.i = getelementptr inbounds %struct.rtl_priv, ptr %1679, i32 0, i32 32
  %1680 = ptrtoint ptr %cfg.i.i397.7.i to i32
  call void @__asan_load4_noabort(i32 %1680)
  %1681 = load ptr, ptr %cfg.i.i397.7.i, align 8
  %ops.i.i398.7.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1681, i32 0, i32 4
  %1682 = ptrtoint ptr %ops.i.i398.7.i to i32
  call void @__asan_load4_noabort(i32 %1682)
  %1683 = load ptr, ptr %ops.i.i398.7.i, align 4
  %set_bbreg.i.i399.7.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1683, i32 0, i32 46
  %1684 = ptrtoint ptr %set_bbreg.i.i399.7.i to i32
  call void @__asan_load4_noabort(i32 %1684)
  %1685 = load ptr, ptr %set_bbreg.i.i399.7.i, align 4
  tail call void %1685(ptr noundef %hw, i32 noundef 2148, i32 noundef -1, i32 noundef %1677) #8
  %arrayidx1.i396.8.i = getelementptr %struct.rtl_priv, ptr %103, i32 0, i32 14, i32 30, i32 8
  %1686 = ptrtoint ptr %arrayidx1.i396.8.i to i32
  call void @__asan_load4_noabort(i32 %1686)
  %1687 = load i32, ptr %arrayidx1.i396.8.i, align 4
  %1688 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1688)
  %1689 = load ptr, ptr %priv, align 8
  %cfg.i.i397.8.i = getelementptr inbounds %struct.rtl_priv, ptr %1689, i32 0, i32 32
  %1690 = ptrtoint ptr %cfg.i.i397.8.i to i32
  call void @__asan_load4_noabort(i32 %1690)
  %1691 = load ptr, ptr %cfg.i.i397.8.i, align 8
  %ops.i.i398.8.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1691, i32 0, i32 4
  %1692 = ptrtoint ptr %ops.i.i398.8.i to i32
  call void @__asan_load4_noabort(i32 %1692)
  %1693 = load ptr, ptr %ops.i.i398.8.i, align 4
  %set_bbreg.i.i399.8.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1693, i32 0, i32 46
  %1694 = ptrtoint ptr %set_bbreg.i.i399.8.i to i32
  call void @__asan_load4_noabort(i32 %1694)
  %1695 = load ptr, ptr %set_bbreg.i.i399.8.i, align 4
  tail call void %1695(ptr noundef %hw, i32 noundef 2048, i32 noundef -1, i32 noundef %1687) #8
  %1696 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1696)
  %1697 = load ptr, ptr %priv, align 8
  %cfg.i405.i = getelementptr inbounds %struct.rtl_priv, ptr %1697, i32 0, i32 32
  %1698 = ptrtoint ptr %cfg.i405.i to i32
  call void @__asan_load4_noabort(i32 %1698)
  %1699 = load ptr, ptr %cfg.i405.i, align 8
  %ops.i406.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1699, i32 0, i32 4
  %1700 = ptrtoint ptr %ops.i406.i to i32
  call void @__asan_load4_noabort(i32 %1700)
  %1701 = load ptr, ptr %ops.i406.i, align 4
  %set_bbreg.i407.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1701, i32 0, i32 46
  %1702 = ptrtoint ptr %set_bbreg.i407.i to i32
  call void @__asan_load4_noabort(i32 %1702)
  %1703 = load ptr, ptr %set_bbreg.i407.i, align 4
  tail call void %1703(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef 80) #8
  %conv140.i = and i32 %call.i.i, 255
  %1704 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1704)
  %1705 = load ptr, ptr %priv, align 8
  %cfg.i409.i = getelementptr inbounds %struct.rtl_priv, ptr %1705, i32 0, i32 32
  %1706 = ptrtoint ptr %cfg.i409.i to i32
  call void @__asan_load4_noabort(i32 %1706)
  %1707 = load ptr, ptr %cfg.i409.i, align 8
  %ops.i410.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1707, i32 0, i32 4
  %1708 = ptrtoint ptr %ops.i410.i to i32
  call void @__asan_load4_noabort(i32 %1708)
  %1709 = load ptr, ptr %ops.i410.i, align 4
  %set_bbreg.i411.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1709, i32 0, i32 46
  %1710 = ptrtoint ptr %set_bbreg.i411.i to i32
  call void @__asan_load4_noabort(i32 %1710)
  %1711 = load ptr, ptr %set_bbreg.i411.i, align 4
  tail call void %1711(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef %conv140.i) #8
  %1712 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1712)
  %1713 = load ptr, ptr %priv, align 8
  %cfg.i413.i = getelementptr inbounds %struct.rtl_priv, ptr %1713, i32 0, i32 32
  %1714 = ptrtoint ptr %cfg.i413.i to i32
  call void @__asan_load4_noabort(i32 %1714)
  %1715 = load ptr, ptr %cfg.i413.i, align 8
  %ops.i414.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1715, i32 0, i32 4
  %1716 = ptrtoint ptr %ops.i414.i to i32
  call void @__asan_load4_noabort(i32 %1716)
  %1717 = load ptr, ptr %ops.i414.i, align 4
  %set_bbreg.i415.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1717, i32 0, i32 46
  %1718 = ptrtoint ptr %set_bbreg.i415.i to i32
  call void @__asan_load4_noabort(i32 %1718)
  %1719 = load ptr, ptr %set_bbreg.i415.i, align 4
  tail call void %1719(ptr noundef %hw, i32 noundef 3152, i32 noundef 255, i32 noundef 80) #8
  %conv143.i = and i32 %call.i5.i, 255
  %1720 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1720)
  %1721 = load ptr, ptr %priv, align 8
  %cfg.i417.i = getelementptr inbounds %struct.rtl_priv, ptr %1721, i32 0, i32 32
  %1722 = ptrtoint ptr %cfg.i417.i to i32
  call void @__asan_load4_noabort(i32 %1722)
  %1723 = load ptr, ptr %cfg.i417.i, align 8
  %ops.i418.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1723, i32 0, i32 4
  %1724 = ptrtoint ptr %ops.i418.i to i32
  call void @__asan_load4_noabort(i32 %1724)
  %1725 = load ptr, ptr %ops.i418.i, align 4
  %set_bbreg.i419.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1725, i32 0, i32 46
  %1726 = ptrtoint ptr %set_bbreg.i419.i to i32
  call void @__asan_load4_noabort(i32 %1726)
  %1727 = load ptr, ptr %set_bbreg.i419.i, align 4
  tail call void %1727(ptr noundef %hw, i32 noundef 3160, i32 noundef 255, i32 noundef %conv143.i) #8
  %1728 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1728)
  %1729 = load ptr, ptr %priv, align 8
  %cfg.i421.i = getelementptr inbounds %struct.rtl_priv, ptr %1729, i32 0, i32 32
  %1730 = ptrtoint ptr %cfg.i421.i to i32
  call void @__asan_load4_noabort(i32 %1730)
  %1731 = load ptr, ptr %cfg.i421.i, align 8
  %ops.i422.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1731, i32 0, i32 4
  %1732 = ptrtoint ptr %ops.i422.i to i32
  call void @__asan_load4_noabort(i32 %1732)
  %1733 = load ptr, ptr %ops.i422.i, align 4
  %set_bbreg.i423.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1733, i32 0, i32 46
  %1734 = ptrtoint ptr %set_bbreg.i423.i to i32
  call void @__asan_load4_noabort(i32 %1734)
  %1735 = load ptr, ptr %set_bbreg.i423.i, align 4
  tail call void %1735(ptr noundef %hw, i32 noundef 3632, i32 noundef -1, i32 noundef 16813056) #8
  %1736 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1736)
  %1737 = load ptr, ptr %priv, align 8
  %cfg.i425.i = getelementptr inbounds %struct.rtl_priv, ptr %1737, i32 0, i32 32
  %1738 = ptrtoint ptr %cfg.i425.i to i32
  call void @__asan_load4_noabort(i32 %1738)
  %1739 = load ptr, ptr %cfg.i425.i, align 8
  %ops.i426.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1739, i32 0, i32 4
  %1740 = ptrtoint ptr %ops.i426.i to i32
  call void @__asan_load4_noabort(i32 %1740)
  %1741 = load ptr, ptr %ops.i426.i, align 4
  %set_bbreg.i427.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1741, i32 0, i32 46
  %1742 = ptrtoint ptr %set_bbreg.i427.i to i32
  call void @__asan_load4_noabort(i32 %1742)
  %1743 = load ptr, ptr %set_bbreg.i427.i, align 4
  tail call void %1743(ptr noundef %hw, i32 noundef 3636, i32 noundef -1, i32 noundef 16813056) #8
  %1744 = trunc i32 %indvars.iv to i8
  %1745 = zext i8 %1744 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1745, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %1744, label %_rtl92ee_phy_iq_calibrate.exit.for.inc66_crit_edge [
    i8 1, label %if.then41
    i8 2, label %if.then51
  ]

_rtl92ee_phy_iq_calibrate.exit.for.inc66_crit_edge: ; preds = %_rtl92ee_phy_iq_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then41:                                        ; preds = %_rtl92ee_phy_iq_calibrate.exit
  %call = call fastcc zeroext i1 @_rtl92ee_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br i1 %call, label %if.then41.if.end112_crit_edge, label %if.then41.for.inc66_crit_edge

if.then41.for.inc66_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc66

if.then41.if.end112_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then51:                                        ; preds = %_rtl92ee_phy_iq_calibrate.exit
  %call53 = call fastcc zeroext i1 @_rtl92ee_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 0, i8 noundef zeroext 2)
  br i1 %call53, label %if.then51.if.end112_crit_edge, label %if.end57

if.then51.if.end112_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call fastcc zeroext i1 @_rtl92ee_phy_simularity_compare(ptr noundef nonnull %result, i8 noundef zeroext 1, i8 noundef zeroext 2)
  %. = select i1 %call59, i8 1, i8 3
  br label %for.inc66

for.inc66:                                        ; preds = %if.end57, %if.then41.for.inc66_crit_edge, %_rtl92ee_phy_iq_calibrate.exit.for.inc66_crit_edge, %if.end126.i.for.inc66_crit_edge
  %final_candidate.1 = phi i8 [ %final_candidate.0329, %_rtl92ee_phy_iq_calibrate.exit.for.inc66_crit_edge ], [ %., %if.end57 ], [ %final_candidate.0329, %if.then41.for.inc66_crit_edge ], [ %final_candidate.0329, %if.end126.i.for.inc66_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.end68, label %for.inc66.for.body36_crit_edge

for.inc66.for.body36_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end68:                                        ; preds = %for.inc66
  %conv81 = zext i8 %final_candidate.1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.1)
  %cmp82.not = icmp eq i8 %final_candidate.1, -1
  br i1 %cmp82.not, label %if.end112.thread, label %for.end68.if.end112_crit_edge

for.end68.if.end112_crit_edge:                    ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.end112:                                        ; preds = %for.end68.if.end112_crit_edge, %if.then51.if.end112_crit_edge, %if.then41.if.end112_crit_edge
  %conv81314 = phi i32 [ %conv81, %for.end68.if.end112_crit_edge ], [ 0, %if.then51.if.end112_crit_edge ], [ 0, %if.then41.if.end112_crit_edge ]
  %final_candidate.2313 = phi i8 [ %final_candidate.1, %for.end68.if.end112_crit_edge ], [ 0, %if.then51.if.end112_crit_edge ], [ 0, %if.then41.if.end112_crit_edge ]
  %arrayidx86 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314
  %1746 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %1746)
  %1747 = load i32, ptr %arrayidx86, align 4
  %reg_e9488 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %1748 = ptrtoint ptr %reg_e9488 to i32
  call void @__asan_store4_noabort(i32 %1748)
  store i32 %1747, ptr %reg_e9488, align 4
  %arrayidx91 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314, i32 1
  %1749 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %1749)
  %1750 = load i32, ptr %arrayidx91, align 4
  %reg_e9c92 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %1751 = ptrtoint ptr %reg_e9c92 to i32
  call void @__asan_store4_noabort(i32 %1751)
  store i32 %1750, ptr %reg_e9c92, align 4
  %arrayidx95 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314, i32 2
  %1752 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %1752)
  %1753 = load i32, ptr %arrayidx95, align 4
  %arrayidx98 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314, i32 4
  %1754 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %1754)
  %1755 = load i32, ptr %arrayidx98, align 4
  %reg_eb499 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %1756 = ptrtoint ptr %reg_eb499 to i32
  call void @__asan_store4_noabort(i32 %1756)
  store i32 %1755, ptr %reg_eb499, align 4
  %arrayidx102 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314, i32 5
  %1757 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %1757)
  %1758 = load i32, ptr %arrayidx102, align 4
  %reg_ebc103 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %1759 = ptrtoint ptr %reg_ebc103 to i32
  call void @__asan_store4_noabort(i32 %1759)
  store i32 %1758, ptr %reg_ebc103, align 4
  %arrayidx106 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81314, i32 6
  %1760 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %1760)
  %1761 = load i32, ptr %arrayidx106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1747)
  %cmp113.not = icmp eq i32 %1747, 0
  br i1 %cmp113.not, label %if.end112.if.then3.i278_crit_edge, label %if.then3.i

if.end112.if.then3.i278_crit_edge:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i278

if.end112.thread:                                 ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #10
  %reg_e94108 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 14
  %1762 = ptrtoint ptr %reg_e94108 to i32
  call void @__asan_store4_noabort(i32 %1762)
  store i32 256, ptr %reg_e94108, align 4
  %reg_eb4109 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 18
  %1763 = ptrtoint ptr %reg_eb4109 to i32
  call void @__asan_store4_noabort(i32 %1763)
  store i32 256, ptr %reg_eb4109, align 4
  %reg_e9c110 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 15
  %1764 = ptrtoint ptr %reg_e9c110 to i32
  call void @__asan_store4_noabort(i32 %1764)
  store i32 0, ptr %reg_e9c110, align 4
  %reg_ebc111 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 19
  %1765 = ptrtoint ptr %reg_ebc111 to i32
  call void @__asan_store4_noabort(i32 %1765)
  store i32 0, ptr %reg_ebc111, align 4
  br label %_rtl92ee_phy_path_b_fill_iqk_matrix.exit

if.then3.i:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1753)
  %cmp118 = icmp eq i32 %1753, 0
  %1766 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1766)
  %1767 = load ptr, ptr %priv, align 8
  %cfg.i.i229 = getelementptr inbounds %struct.rtl_priv, ptr %1767, i32 0, i32 32
  %1768 = ptrtoint ptr %cfg.i.i229 to i32
  call void @__asan_load4_noabort(i32 %1768)
  %1769 = load ptr, ptr %cfg.i.i229, align 8
  %ops.i.i230 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1769, i32 0, i32 4
  %1770 = ptrtoint ptr %ops.i.i230 to i32
  call void @__asan_load4_noabort(i32 %1770)
  %1771 = load ptr, ptr %ops.i.i230, align 4
  %get_bbreg.i.i231 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1771, i32 0, i32 45
  %1772 = ptrtoint ptr %get_bbreg.i.i231 to i32
  call void @__asan_load4_noabort(i32 %1772)
  %1773 = load ptr, ptr %get_bbreg.i.i231, align 4
  %call.i.i232 = tail call i32 %1773(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #8
  %shr.i233 = lshr i32 %call.i.i232, 22
  %arrayidx.i234 = getelementptr [8 x i32], ptr %result, i32 %conv81314
  %1774 = ptrtoint ptr %arrayidx.i234 to i32
  call void @__asan_load4_noabort(i32 %1774)
  %1775 = load i32, ptr %arrayidx.i234, align 4
  %and5.i = and i32 %1775, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 0
  %or.i = or i32 %1775, -1024
  %spec.select.i = select i1 %cmp6.not.i, i32 %1775, i32 %or.i
  %mul.i = mul i32 %spec.select.i, %shr.i233
  %shr9.i = lshr i32 %mul.i, 8
  %1776 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1776)
  %1777 = load ptr, ptr %priv, align 8
  %cfg.i82.i = getelementptr inbounds %struct.rtl_priv, ptr %1777, i32 0, i32 32
  %1778 = ptrtoint ptr %cfg.i82.i to i32
  call void @__asan_load4_noabort(i32 %1778)
  %1779 = load ptr, ptr %cfg.i82.i, align 8
  %ops.i83.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1779, i32 0, i32 4
  %1780 = ptrtoint ptr %ops.i83.i to i32
  call void @__asan_load4_noabort(i32 %1780)
  %1781 = load ptr, ptr %ops.i83.i, align 4
  %set_bbreg.i.i235 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1781, i32 0, i32 46
  %1782 = ptrtoint ptr %set_bbreg.i.i235 to i32
  call void @__asan_load4_noabort(i32 %1782)
  %1783 = load ptr, ptr %set_bbreg.i.i235, align 4
  tail call void %1783(ptr noundef %hw, i32 noundef 3200, i32 noundef 1023, i32 noundef %shr9.i) #8
  %shr11.i = lshr i32 %mul.i, 7
  %and12.i = and i32 %shr11.i, 1
  %1784 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1784)
  %1785 = load ptr, ptr %priv, align 8
  %cfg.i85.i = getelementptr inbounds %struct.rtl_priv, ptr %1785, i32 0, i32 32
  %1786 = ptrtoint ptr %cfg.i85.i to i32
  call void @__asan_load4_noabort(i32 %1786)
  %1787 = load ptr, ptr %cfg.i85.i, align 8
  %ops.i86.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1787, i32 0, i32 4
  %1788 = ptrtoint ptr %ops.i86.i to i32
  call void @__asan_load4_noabort(i32 %1788)
  %1789 = load ptr, ptr %ops.i86.i, align 4
  %set_bbreg.i87.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1789, i32 0, i32 46
  %1790 = ptrtoint ptr %set_bbreg.i87.i to i32
  call void @__asan_load4_noabort(i32 %1790)
  %1791 = load ptr, ptr %set_bbreg.i87.i, align 4
  tail call void %1791(ptr noundef %hw, i32 noundef 3148, i32 noundef -2147483648, i32 noundef %and12.i) #8
  %arrayidx15.i = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 1
  %1792 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %1792)
  %1793 = load i32, ptr %arrayidx15.i, align 4
  %and16.i = and i32 %1793, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 0
  %or20.i = or i32 %1793, -1024
  %y.0.i = select i1 %cmp17.not.i, i32 %1793, i32 %or20.i
  %mul22.i = mul i32 %y.0.i, %shr.i233
  %shr23.i = lshr i32 %mul22.i, 8
  %and24.i = lshr i32 %mul22.i, 14
  %1794 = and i32 %and24.i, 15
  %1795 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1795)
  %1796 = load ptr, ptr %priv, align 8
  %cfg.i89.i = getelementptr inbounds %struct.rtl_priv, ptr %1796, i32 0, i32 32
  %1797 = ptrtoint ptr %cfg.i89.i to i32
  call void @__asan_load4_noabort(i32 %1797)
  %1798 = load ptr, ptr %cfg.i89.i, align 8
  %ops.i90.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1798, i32 0, i32 4
  %1799 = ptrtoint ptr %ops.i90.i to i32
  call void @__asan_load4_noabort(i32 %1799)
  %1800 = load ptr, ptr %ops.i90.i, align 4
  %set_bbreg.i91.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1800, i32 0, i32 46
  %1801 = ptrtoint ptr %set_bbreg.i91.i to i32
  call void @__asan_load4_noabort(i32 %1801)
  %1802 = load ptr, ptr %set_bbreg.i91.i, align 4
  tail call void %1802(ptr noundef %hw, i32 noundef 3220, i32 noundef -268435456, i32 noundef %1794) #8
  %and26.i = and i32 %shr23.i, 63
  %1803 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1803)
  %1804 = load ptr, ptr %priv, align 8
  %cfg.i93.i = getelementptr inbounds %struct.rtl_priv, ptr %1804, i32 0, i32 32
  %1805 = ptrtoint ptr %cfg.i93.i to i32
  call void @__asan_load4_noabort(i32 %1805)
  %1806 = load ptr, ptr %cfg.i93.i, align 8
  %ops.i94.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1806, i32 0, i32 4
  %1807 = ptrtoint ptr %ops.i94.i to i32
  call void @__asan_load4_noabort(i32 %1807)
  %1808 = load ptr, ptr %ops.i94.i, align 4
  %set_bbreg.i95.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1808, i32 0, i32 46
  %1809 = ptrtoint ptr %set_bbreg.i95.i to i32
  call void @__asan_load4_noabort(i32 %1809)
  %1810 = load ptr, ptr %set_bbreg.i95.i, align 4
  tail call void %1810(ptr noundef %hw, i32 noundef 3200, i32 noundef 4128768, i32 noundef %and26.i) #8
  %shr28.i = lshr i32 %mul22.i, 7
  %and29.i = and i32 %shr28.i, 1
  %1811 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1811)
  %1812 = load ptr, ptr %priv, align 8
  %cfg.i97.i = getelementptr inbounds %struct.rtl_priv, ptr %1812, i32 0, i32 32
  %1813 = ptrtoint ptr %cfg.i97.i to i32
  call void @__asan_load4_noabort(i32 %1813)
  %1814 = load ptr, ptr %cfg.i97.i, align 8
  %ops.i98.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1814, i32 0, i32 4
  %1815 = ptrtoint ptr %ops.i98.i to i32
  call void @__asan_load4_noabort(i32 %1815)
  %1816 = load ptr, ptr %ops.i98.i, align 4
  %set_bbreg.i99.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1816, i32 0, i32 46
  %1817 = ptrtoint ptr %set_bbreg.i99.i to i32
  call void @__asan_load4_noabort(i32 %1817)
  %1818 = load ptr, ptr %set_bbreg.i99.i, align 4
  tail call void %1818(ptr noundef %hw, i32 noundef 3148, i32 noundef 536870912, i32 noundef %and29.i) #8
  br i1 %cmp118, label %if.then3.i.if.then3.i278_crit_edge, label %if.end32.i

if.then3.i.if.then3.i278_crit_edge:               ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i278

if.end32.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 2
  %1819 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %1819)
  %1820 = load i32, ptr %arrayidx35.i, align 4
  %1821 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1821)
  %1822 = load ptr, ptr %priv, align 8
  %cfg.i101.i = getelementptr inbounds %struct.rtl_priv, ptr %1822, i32 0, i32 32
  %1823 = ptrtoint ptr %cfg.i101.i to i32
  call void @__asan_load4_noabort(i32 %1823)
  %1824 = load ptr, ptr %cfg.i101.i, align 8
  %ops.i102.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1824, i32 0, i32 4
  %1825 = ptrtoint ptr %ops.i102.i to i32
  call void @__asan_load4_noabort(i32 %1825)
  %1826 = load ptr, ptr %ops.i102.i, align 4
  %set_bbreg.i103.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1826, i32 0, i32 46
  %1827 = ptrtoint ptr %set_bbreg.i103.i to i32
  call void @__asan_load4_noabort(i32 %1827)
  %1828 = load ptr, ptr %set_bbreg.i103.i, align 4
  tail call void %1828(ptr noundef %hw, i32 noundef 3092, i32 noundef 1023, i32 noundef %1820) #8
  %arrayidx38.i = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 3
  %1829 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %1829)
  %1830 = load i32, ptr %arrayidx38.i, align 4
  %and39.i = and i32 %1830, 63
  %1831 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1831)
  %1832 = load ptr, ptr %priv, align 8
  %cfg.i105.i = getelementptr inbounds %struct.rtl_priv, ptr %1832, i32 0, i32 32
  %1833 = ptrtoint ptr %cfg.i105.i to i32
  call void @__asan_load4_noabort(i32 %1833)
  %1834 = load ptr, ptr %cfg.i105.i, align 8
  %ops.i106.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1834, i32 0, i32 4
  %1835 = ptrtoint ptr %ops.i106.i to i32
  call void @__asan_load4_noabort(i32 %1835)
  %1836 = load ptr, ptr %ops.i106.i, align 4
  %set_bbreg.i107.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1836, i32 0, i32 46
  %1837 = ptrtoint ptr %set_bbreg.i107.i to i32
  call void @__asan_load4_noabort(i32 %1837)
  %1838 = load ptr, ptr %set_bbreg.i107.i, align 4
  tail call void %1838(ptr noundef %hw, i32 noundef 3092, i32 noundef 64512, i32 noundef %and39.i) #8
  %1839 = lshr i32 %1830, 6
  %and44.i = and i32 %1839, 15
  %1840 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1840)
  %1841 = load ptr, ptr %priv, align 8
  %cfg.i109.i = getelementptr inbounds %struct.rtl_priv, ptr %1841, i32 0, i32 32
  %1842 = ptrtoint ptr %cfg.i109.i to i32
  call void @__asan_load4_noabort(i32 %1842)
  %1843 = load ptr, ptr %cfg.i109.i, align 8
  %ops.i110.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1843, i32 0, i32 4
  %1844 = ptrtoint ptr %ops.i110.i to i32
  call void @__asan_load4_noabort(i32 %1844)
  %1845 = load ptr, ptr %ops.i110.i, align 4
  %set_bbreg.i111.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %1845, i32 0, i32 46
  %1846 = ptrtoint ptr %set_bbreg.i111.i to i32
  call void @__asan_load4_noabort(i32 %1846)
  %1847 = load ptr, ptr %set_bbreg.i111.i, align 4
  tail call void %1847(ptr noundef %hw, i32 noundef 3232, i32 noundef -268435456, i32 noundef %and44.i) #8
  br label %if.then3.i278

if.then3.i278:                                    ; preds = %if.end32.i, %if.then3.i.if.then3.i278_crit_edge, %if.end112.if.then3.i278_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1761)
  %cmp123318 = icmp eq i32 %1761, 0
  %1848 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1848)
  %1849 = load ptr, ptr %priv, align 8
  %cfg.i.i239 = getelementptr inbounds %struct.rtl_priv, ptr %1849, i32 0, i32 32
  %1850 = ptrtoint ptr %cfg.i.i239 to i32
  call void @__asan_load4_noabort(i32 %1850)
  %1851 = load ptr, ptr %cfg.i.i239, align 8
  %ops.i.i240 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1851, i32 0, i32 4
  %1852 = ptrtoint ptr %ops.i.i240 to i32
  call void @__asan_load4_noabort(i32 %1852)
  %1853 = load ptr, ptr %ops.i.i240, align 4
  %get_bbreg.i.i241 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1853, i32 0, i32 45
  %1854 = ptrtoint ptr %get_bbreg.i.i241 to i32
  call void @__asan_load4_noabort(i32 %1854)
  %1855 = load ptr, ptr %get_bbreg.i.i241, align 4
  %call.i.i242 = tail call i32 %1855(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #8
  %shr.i243 = lshr i32 %call.i.i242, 22
  %arrayidx4.i = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 4
  %1856 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %1856)
  %1857 = load i32, ptr %arrayidx4.i, align 4
  %and5.i244 = and i32 %1857, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i244)
  %cmp6.not.i245 = icmp eq i32 %and5.i244, 0
  %or.i246 = or i32 %1857, -1024
  %spec.select.i247 = select i1 %cmp6.not.i245, i32 %1857, i32 %or.i246
  %mul.i248 = mul i32 %spec.select.i247, %shr.i243
  %shr9.i249 = lshr i32 %mul.i248, 8
  %1858 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1858)
  %1859 = load ptr, ptr %priv, align 8
  %cfg.i82.i250 = getelementptr inbounds %struct.rtl_priv, ptr %1859, i32 0, i32 32
  %1860 = ptrtoint ptr %cfg.i82.i250 to i32
  call void @__asan_load4_noabort(i32 %1860)
  %1861 = load ptr, ptr %cfg.i82.i250, align 8
  %ops.i83.i251 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1861, i32 0, i32 4
  %1862 = ptrtoint ptr %ops.i83.i251 to i32
  call void @__asan_load4_noabort(i32 %1862)
  %1863 = load ptr, ptr %ops.i83.i251, align 4
  %set_bbreg.i.i252 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1863, i32 0, i32 46
  %1864 = ptrtoint ptr %set_bbreg.i.i252 to i32
  call void @__asan_load4_noabort(i32 %1864)
  %1865 = load ptr, ptr %set_bbreg.i.i252, align 4
  tail call void %1865(ptr noundef %hw, i32 noundef 3200, i32 noundef 1023, i32 noundef %shr9.i249) #8
  %shr11.i253 = lshr i32 %mul.i248, 7
  %and12.i254 = and i32 %shr11.i253, 1
  %1866 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1866)
  %1867 = load ptr, ptr %priv, align 8
  %cfg.i85.i255 = getelementptr inbounds %struct.rtl_priv, ptr %1867, i32 0, i32 32
  %1868 = ptrtoint ptr %cfg.i85.i255 to i32
  call void @__asan_load4_noabort(i32 %1868)
  %1869 = load ptr, ptr %cfg.i85.i255, align 8
  %ops.i86.i256 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1869, i32 0, i32 4
  %1870 = ptrtoint ptr %ops.i86.i256 to i32
  call void @__asan_load4_noabort(i32 %1870)
  %1871 = load ptr, ptr %ops.i86.i256, align 4
  %set_bbreg.i87.i257 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1871, i32 0, i32 46
  %1872 = ptrtoint ptr %set_bbreg.i87.i257 to i32
  call void @__asan_load4_noabort(i32 %1872)
  %1873 = load ptr, ptr %set_bbreg.i87.i257, align 4
  tail call void %1873(ptr noundef %hw, i32 noundef 3148, i32 noundef 134217728, i32 noundef %and12.i254) #8
  %arrayidx15.i258 = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 5
  %1874 = ptrtoint ptr %arrayidx15.i258 to i32
  call void @__asan_load4_noabort(i32 %1874)
  %1875 = load i32, ptr %arrayidx15.i258, align 4
  %and16.i259 = and i32 %1875, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i259)
  %cmp17.not.i260 = icmp eq i32 %and16.i259, 0
  %or20.i261 = or i32 %1875, -1024
  %y.0.i262 = select i1 %cmp17.not.i260, i32 %1875, i32 %or20.i261
  %mul22.i263 = mul i32 %y.0.i262, %shr.i243
  %shr23.i264 = lshr i32 %mul22.i263, 8
  %and24.i265 = lshr i32 %mul22.i263, 14
  %1876 = and i32 %and24.i265, 15
  %1877 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1877)
  %1878 = load ptr, ptr %priv, align 8
  %cfg.i89.i266 = getelementptr inbounds %struct.rtl_priv, ptr %1878, i32 0, i32 32
  %1879 = ptrtoint ptr %cfg.i89.i266 to i32
  call void @__asan_load4_noabort(i32 %1879)
  %1880 = load ptr, ptr %cfg.i89.i266, align 8
  %ops.i90.i267 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1880, i32 0, i32 4
  %1881 = ptrtoint ptr %ops.i90.i267 to i32
  call void @__asan_load4_noabort(i32 %1881)
  %1882 = load ptr, ptr %ops.i90.i267, align 4
  %set_bbreg.i91.i268 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1882, i32 0, i32 46
  %1883 = ptrtoint ptr %set_bbreg.i91.i268 to i32
  call void @__asan_load4_noabort(i32 %1883)
  %1884 = load ptr, ptr %set_bbreg.i91.i268, align 4
  tail call void %1884(ptr noundef %hw, i32 noundef 3228, i32 noundef -268435456, i32 noundef %1876) #8
  %and26.i269 = and i32 %shr23.i264, 63
  %1885 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1885)
  %1886 = load ptr, ptr %priv, align 8
  %cfg.i93.i270 = getelementptr inbounds %struct.rtl_priv, ptr %1886, i32 0, i32 32
  %1887 = ptrtoint ptr %cfg.i93.i270 to i32
  call void @__asan_load4_noabort(i32 %1887)
  %1888 = load ptr, ptr %cfg.i93.i270, align 8
  %ops.i94.i271 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1888, i32 0, i32 4
  %1889 = ptrtoint ptr %ops.i94.i271 to i32
  call void @__asan_load4_noabort(i32 %1889)
  %1890 = load ptr, ptr %ops.i94.i271, align 4
  %set_bbreg.i95.i272 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1890, i32 0, i32 46
  %1891 = ptrtoint ptr %set_bbreg.i95.i272 to i32
  call void @__asan_load4_noabort(i32 %1891)
  %1892 = load ptr, ptr %set_bbreg.i95.i272, align 4
  tail call void %1892(ptr noundef %hw, i32 noundef 3208, i32 noundef 4128768, i32 noundef %and26.i269) #8
  %shr28.i273 = lshr i32 %mul22.i263, 7
  %and29.i274 = and i32 %shr28.i273, 1
  %1893 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1893)
  %1894 = load ptr, ptr %priv, align 8
  %cfg.i97.i275 = getelementptr inbounds %struct.rtl_priv, ptr %1894, i32 0, i32 32
  %1895 = ptrtoint ptr %cfg.i97.i275 to i32
  call void @__asan_load4_noabort(i32 %1895)
  %1896 = load ptr, ptr %cfg.i97.i275, align 8
  %ops.i98.i276 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1896, i32 0, i32 4
  %1897 = ptrtoint ptr %ops.i98.i276 to i32
  call void @__asan_load4_noabort(i32 %1897)
  %1898 = load ptr, ptr %ops.i98.i276, align 4
  %set_bbreg.i99.i277 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1898, i32 0, i32 46
  %1899 = ptrtoint ptr %set_bbreg.i99.i277 to i32
  call void @__asan_load4_noabort(i32 %1899)
  %1900 = load ptr, ptr %set_bbreg.i99.i277, align 4
  tail call void %1900(ptr noundef %hw, i32 noundef 3148, i32 noundef 33554432, i32 noundef %and29.i274) #8
  br i1 %cmp123318, label %if.then3.i278._rtl92ee_phy_path_b_fill_iqk_matrix.exit_crit_edge, label %if.end32.i292

if.then3.i278._rtl92ee_phy_path_b_fill_iqk_matrix.exit_crit_edge: ; preds = %if.then3.i278
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_path_b_fill_iqk_matrix.exit

if.end32.i292:                                    ; preds = %if.then3.i278
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35.i279 = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 6
  %1901 = ptrtoint ptr %arrayidx35.i279 to i32
  call void @__asan_load4_noabort(i32 %1901)
  %1902 = load i32, ptr %arrayidx35.i279, align 4
  %1903 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1903)
  %1904 = load ptr, ptr %priv, align 8
  %cfg.i101.i280 = getelementptr inbounds %struct.rtl_priv, ptr %1904, i32 0, i32 32
  %1905 = ptrtoint ptr %cfg.i101.i280 to i32
  call void @__asan_load4_noabort(i32 %1905)
  %1906 = load ptr, ptr %cfg.i101.i280, align 8
  %ops.i102.i281 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1906, i32 0, i32 4
  %1907 = ptrtoint ptr %ops.i102.i281 to i32
  call void @__asan_load4_noabort(i32 %1907)
  %1908 = load ptr, ptr %ops.i102.i281, align 4
  %set_bbreg.i103.i282 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1908, i32 0, i32 46
  %1909 = ptrtoint ptr %set_bbreg.i103.i282 to i32
  call void @__asan_load4_noabort(i32 %1909)
  %1910 = load ptr, ptr %set_bbreg.i103.i282, align 4
  tail call void %1910(ptr noundef %hw, i32 noundef 3100, i32 noundef 1023, i32 noundef %1902) #8
  %arrayidx38.i283 = getelementptr [8 x i32], ptr %result, i32 %conv81314, i32 7
  %1911 = ptrtoint ptr %arrayidx38.i283 to i32
  call void @__asan_load4_noabort(i32 %1911)
  %1912 = load i32, ptr %arrayidx38.i283, align 4
  %and39.i284 = and i32 %1912, 63
  %1913 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1913)
  %1914 = load ptr, ptr %priv, align 8
  %cfg.i105.i285 = getelementptr inbounds %struct.rtl_priv, ptr %1914, i32 0, i32 32
  %1915 = ptrtoint ptr %cfg.i105.i285 to i32
  call void @__asan_load4_noabort(i32 %1915)
  %1916 = load ptr, ptr %cfg.i105.i285, align 8
  %ops.i106.i286 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1916, i32 0, i32 4
  %1917 = ptrtoint ptr %ops.i106.i286 to i32
  call void @__asan_load4_noabort(i32 %1917)
  %1918 = load ptr, ptr %ops.i106.i286, align 4
  %set_bbreg.i107.i287 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1918, i32 0, i32 46
  %1919 = ptrtoint ptr %set_bbreg.i107.i287 to i32
  call void @__asan_load4_noabort(i32 %1919)
  %1920 = load ptr, ptr %set_bbreg.i107.i287, align 4
  tail call void %1920(ptr noundef %hw, i32 noundef 3100, i32 noundef 64512, i32 noundef %and39.i284) #8
  %1921 = lshr i32 %1912, 6
  %and44.i288 = and i32 %1921, 15
  %1922 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1922)
  %1923 = load ptr, ptr %priv, align 8
  %cfg.i109.i289 = getelementptr inbounds %struct.rtl_priv, ptr %1923, i32 0, i32 32
  %1924 = ptrtoint ptr %cfg.i109.i289 to i32
  call void @__asan_load4_noabort(i32 %1924)
  %1925 = load ptr, ptr %cfg.i109.i289, align 8
  %ops.i110.i290 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1925, i32 0, i32 4
  %1926 = ptrtoint ptr %ops.i110.i290 to i32
  call void @__asan_load4_noabort(i32 %1926)
  %1927 = load ptr, ptr %ops.i110.i290, align 4
  %set_bbreg.i111.i291 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1927, i32 0, i32 46
  %1928 = ptrtoint ptr %set_bbreg.i111.i291 to i32
  call void @__asan_load4_noabort(i32 %1928)
  %1929 = load ptr, ptr %set_bbreg.i111.i291, align 4
  tail call void %1929(ptr noundef %hw, i32 noundef 3192, i32 noundef -268435456, i32 noundef %and44.i288) #8
  br label %_rtl92ee_phy_path_b_fill_iqk_matrix.exit

_rtl92ee_phy_path_b_fill_iqk_matrix.exit:         ; preds = %if.end32.i292, %if.then3.i278._rtl92ee_phy_path_b_fill_iqk_matrix.exit_crit_edge, %if.end112.thread
  %final_candidate.2312349 = phi i8 [ %final_candidate.2313, %if.then3.i278._rtl92ee_phy_path_b_fill_iqk_matrix.exit_crit_edge ], [ %final_candidate.2313, %if.end32.i292 ], [ -1, %if.end112.thread ]
  %conv81315345 = phi i32 [ %conv81314, %if.then3.i278._rtl92ee_phy_path_b_fill_iqk_matrix.exit_crit_edge ], [ %conv81314, %if.end32.i292 ], [ 255, %if.end112.thread ]
  %current_channel = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 10
  %1930 = ptrtoint ptr %current_channel to i32
  call void @__asan_load1_noabort(i32 %1930)
  %1931 = load i8, ptr %current_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %1931)
  %cmp.i293 = icmp ugt i8 %1931, 14
  br i1 %cmp.i293, label %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.for.body.i295_crit_edge, label %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge

_rtl92ee_phy_path_b_fill_iqk_matrix.exit.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge: ; preds = %_rtl92ee_phy_path_b_fill_iqk_matrix.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_get_rightchnlplace_for_iqk.exit

_rtl92ee_phy_path_b_fill_iqk_matrix.exit.for.body.i295_crit_edge: ; preds = %_rtl92ee_phy_path_b_fill_iqk_matrix.exit
  br label %for.body.i295

for.body.i295:                                    ; preds = %for.inc.i.for.body.i295_crit_edge, %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.for.body.i295_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i295_crit_edge ], [ 14, %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.for.body.i295_crit_edge ]
  %arrayidx.i294 = getelementptr [59 x i8], ptr @__const.rtl92ee_get_rightchnlplace_for_iqk.channel_all, i32 0, i32 %indvars.iv.i
  %1932 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load1_noabort(i32 %1932)
  %1933 = load i8, ptr %arrayidx.i294, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1933, i8 %1931)
  %cmp7.i = icmp eq i8 %1933, %1931
  br i1 %cmp7.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i295
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add nuw i32 %indvars.iv.i, 243
  %phi.cast = and i32 %sub.i, 255
  br label %rtl92ee_get_rightchnlplace_for_iqk.exit

for.inc.i:                                        ; preds = %for.body.i295
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i296 = icmp eq i32 %indvars.iv.next.i, 59
  br i1 %exitcond.not.i296, label %for.inc.i.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge, label %for.inc.i.for.body.i295_crit_edge

for.inc.i.for.body.i295_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i295

for.inc.i.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl92ee_get_rightchnlplace_for_iqk.exit

rtl92ee_get_rightchnlplace_for_iqk.exit:          ; preds = %for.inc.i.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge, %if.then9.i, %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.then9.i ], [ 0, %_rtl92ee_phy_path_b_fill_iqk_matrix.exit.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge ], [ 0, %for.inc.i.rtl92ee_get_rightchnlplace_for_iqk.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %final_candidate.2312349)
  %cmp127 = icmp ult i8 %final_candidate.2312349, 4
  br i1 %cmp127, label %for.cond130.preheader, label %rtl92ee_get_rightchnlplace_for_iqk.exit.if.end150_crit_edge

rtl92ee_get_rightchnlplace_for_iqk.exit.if.end150_crit_edge: ; preds = %rtl92ee_get_rightchnlplace_for_iqk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

for.cond130.preheader:                            ; preds = %rtl92ee_get_rightchnlplace_for_iqk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %value = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 %retval.0.i, i32 1
  %arrayidx138 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 0
  %1934 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %1934)
  %1935 = load i32, ptr %arrayidx138, align 4
  %1936 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1936)
  store i32 %1935, ptr %value, align 4
  %arrayidx138.1 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 1
  %1937 = ptrtoint ptr %arrayidx138.1 to i32
  call void @__asan_load4_noabort(i32 %1937)
  %1938 = load i32, ptr %arrayidx138.1, align 4
  %arrayidx143.1 = getelementptr [8 x i32], ptr %value, i32 0, i32 1
  %1939 = ptrtoint ptr %arrayidx143.1 to i32
  call void @__asan_store4_noabort(i32 %1939)
  store i32 %1938, ptr %arrayidx143.1, align 4
  %arrayidx138.2 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 2
  %1940 = ptrtoint ptr %arrayidx138.2 to i32
  call void @__asan_load4_noabort(i32 %1940)
  %1941 = load i32, ptr %arrayidx138.2, align 4
  %arrayidx143.2 = getelementptr [8 x i32], ptr %value, i32 0, i32 2
  %1942 = ptrtoint ptr %arrayidx143.2 to i32
  call void @__asan_store4_noabort(i32 %1942)
  store i32 %1941, ptr %arrayidx143.2, align 4
  %arrayidx138.3 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 3
  %1943 = ptrtoint ptr %arrayidx138.3 to i32
  call void @__asan_load4_noabort(i32 %1943)
  %1944 = load i32, ptr %arrayidx138.3, align 4
  %arrayidx143.3 = getelementptr [8 x i32], ptr %value, i32 0, i32 3
  %1945 = ptrtoint ptr %arrayidx143.3 to i32
  call void @__asan_store4_noabort(i32 %1945)
  store i32 %1944, ptr %arrayidx143.3, align 4
  %arrayidx138.4 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 4
  %1946 = ptrtoint ptr %arrayidx138.4 to i32
  call void @__asan_load4_noabort(i32 %1946)
  %1947 = load i32, ptr %arrayidx138.4, align 4
  %arrayidx143.4 = getelementptr [8 x i32], ptr %value, i32 0, i32 4
  %1948 = ptrtoint ptr %arrayidx143.4 to i32
  call void @__asan_store4_noabort(i32 %1948)
  store i32 %1947, ptr %arrayidx143.4, align 4
  %arrayidx138.5 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 5
  %1949 = ptrtoint ptr %arrayidx138.5 to i32
  call void @__asan_load4_noabort(i32 %1949)
  %1950 = load i32, ptr %arrayidx138.5, align 4
  %arrayidx143.5 = getelementptr [8 x i32], ptr %value, i32 0, i32 5
  %1951 = ptrtoint ptr %arrayidx143.5 to i32
  call void @__asan_store4_noabort(i32 %1951)
  store i32 %1950, ptr %arrayidx143.5, align 4
  %arrayidx138.6 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 6
  %1952 = ptrtoint ptr %arrayidx138.6 to i32
  call void @__asan_load4_noabort(i32 %1952)
  %1953 = load i32, ptr %arrayidx138.6, align 4
  %arrayidx143.6 = getelementptr [8 x i32], ptr %value, i32 0, i32 6
  %1954 = ptrtoint ptr %arrayidx143.6 to i32
  call void @__asan_store4_noabort(i32 %1954)
  store i32 %1953, ptr %arrayidx143.6, align 4
  %arrayidx138.7 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %conv81315345, i32 7
  %1955 = ptrtoint ptr %arrayidx138.7 to i32
  call void @__asan_load4_noabort(i32 %1955)
  %1956 = load i32, ptr %arrayidx138.7, align 4
  %arrayidx143.7 = getelementptr [8 x i32], ptr %value, i32 0, i32 7
  %1957 = ptrtoint ptr %arrayidx143.7 to i32
  call void @__asan_store4_noabort(i32 %1957)
  store i32 %1956, ptr %arrayidx143.7, align 4
  %arrayidx149 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 35, i32 %retval.0.i
  %1958 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %1958)
  store i8 1, ptr %arrayidx149, align 4
  br label %if.end150

if.end150:                                        ; preds = %for.cond130.preheader, %rtl92ee_get_rightchnlplace_for_iqk.exit.if.end150_crit_edge
  %iqk_bb_backup152 = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30
  %1959 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1959)
  %1960 = load ptr, ptr %priv, align 8
  %cfg.i.i300 = getelementptr inbounds %struct.rtl_priv, ptr %1960, i32 0, i32 32
  %1961 = ptrtoint ptr %cfg.i.i300 to i32
  call void @__asan_load4_noabort(i32 %1961)
  %1962 = load ptr, ptr %cfg.i.i300, align 8
  %ops.i.i301 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1962, i32 0, i32 4
  %1963 = ptrtoint ptr %ops.i.i301 to i32
  call void @__asan_load4_noabort(i32 %1963)
  %1964 = load ptr, ptr %ops.i.i301, align 4
  %get_bbreg.i.i302 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1964, i32 0, i32 45
  %1965 = ptrtoint ptr %get_bbreg.i.i302 to i32
  call void @__asan_load4_noabort(i32 %1965)
  %1966 = load ptr, ptr %get_bbreg.i.i302, align 4
  %call.i.i303 = tail call i32 %1966(ptr noundef %hw, i32 noundef 3092, i32 noundef -1) #8
  %1967 = ptrtoint ptr %iqk_bb_backup152 to i32
  call void @__asan_store4_noabort(i32 %1967)
  store i32 %call.i.i303, ptr %iqk_bb_backup152, align 4
  %1968 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1968)
  %1969 = load ptr, ptr %priv, align 8
  %cfg.i.i300.1 = getelementptr inbounds %struct.rtl_priv, ptr %1969, i32 0, i32 32
  %1970 = ptrtoint ptr %cfg.i.i300.1 to i32
  call void @__asan_load4_noabort(i32 %1970)
  %1971 = load ptr, ptr %cfg.i.i300.1, align 8
  %ops.i.i301.1 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1971, i32 0, i32 4
  %1972 = ptrtoint ptr %ops.i.i301.1 to i32
  call void @__asan_load4_noabort(i32 %1972)
  %1973 = load ptr, ptr %ops.i.i301.1, align 4
  %get_bbreg.i.i302.1 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1973, i32 0, i32 45
  %1974 = ptrtoint ptr %get_bbreg.i.i302.1 to i32
  call void @__asan_load4_noabort(i32 %1974)
  %1975 = load ptr, ptr %get_bbreg.i.i302.1, align 4
  %call.i.i303.1 = tail call i32 %1975(ptr noundef %hw, i32 noundef 3100, i32 noundef -1) #8
  %arrayidx1.i304.1 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 1
  %1976 = ptrtoint ptr %arrayidx1.i304.1 to i32
  call void @__asan_store4_noabort(i32 %1976)
  store i32 %call.i.i303.1, ptr %arrayidx1.i304.1, align 4
  %1977 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1977)
  %1978 = load ptr, ptr %priv, align 8
  %cfg.i.i300.2 = getelementptr inbounds %struct.rtl_priv, ptr %1978, i32 0, i32 32
  %1979 = ptrtoint ptr %cfg.i.i300.2 to i32
  call void @__asan_load4_noabort(i32 %1979)
  %1980 = load ptr, ptr %cfg.i.i300.2, align 8
  %ops.i.i301.2 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1980, i32 0, i32 4
  %1981 = ptrtoint ptr %ops.i.i301.2 to i32
  call void @__asan_load4_noabort(i32 %1981)
  %1982 = load ptr, ptr %ops.i.i301.2, align 4
  %get_bbreg.i.i302.2 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1982, i32 0, i32 45
  %1983 = ptrtoint ptr %get_bbreg.i.i302.2 to i32
  call void @__asan_load4_noabort(i32 %1983)
  %1984 = load ptr, ptr %get_bbreg.i.i302.2, align 4
  %call.i.i303.2 = tail call i32 %1984(ptr noundef %hw, i32 noundef 3148, i32 noundef -1) #8
  %arrayidx1.i304.2 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 2
  %1985 = ptrtoint ptr %arrayidx1.i304.2 to i32
  call void @__asan_store4_noabort(i32 %1985)
  store i32 %call.i.i303.2, ptr %arrayidx1.i304.2, align 4
  %1986 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1986)
  %1987 = load ptr, ptr %priv, align 8
  %cfg.i.i300.3 = getelementptr inbounds %struct.rtl_priv, ptr %1987, i32 0, i32 32
  %1988 = ptrtoint ptr %cfg.i.i300.3 to i32
  call void @__asan_load4_noabort(i32 %1988)
  %1989 = load ptr, ptr %cfg.i.i300.3, align 8
  %ops.i.i301.3 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1989, i32 0, i32 4
  %1990 = ptrtoint ptr %ops.i.i301.3 to i32
  call void @__asan_load4_noabort(i32 %1990)
  %1991 = load ptr, ptr %ops.i.i301.3, align 4
  %get_bbreg.i.i302.3 = getelementptr inbounds %struct.rtl_hal_ops, ptr %1991, i32 0, i32 45
  %1992 = ptrtoint ptr %get_bbreg.i.i302.3 to i32
  call void @__asan_load4_noabort(i32 %1992)
  %1993 = load ptr, ptr %get_bbreg.i.i302.3, align 4
  %call.i.i303.3 = tail call i32 %1993(ptr noundef %hw, i32 noundef 3192, i32 noundef -1) #8
  %arrayidx1.i304.3 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 3
  %1994 = ptrtoint ptr %arrayidx1.i304.3 to i32
  call void @__asan_store4_noabort(i32 %1994)
  store i32 %call.i.i303.3, ptr %arrayidx1.i304.3, align 4
  %1995 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1995)
  %1996 = load ptr, ptr %priv, align 8
  %cfg.i.i300.4 = getelementptr inbounds %struct.rtl_priv, ptr %1996, i32 0, i32 32
  %1997 = ptrtoint ptr %cfg.i.i300.4 to i32
  call void @__asan_load4_noabort(i32 %1997)
  %1998 = load ptr, ptr %cfg.i.i300.4, align 8
  %ops.i.i301.4 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %1998, i32 0, i32 4
  %1999 = ptrtoint ptr %ops.i.i301.4 to i32
  call void @__asan_load4_noabort(i32 %1999)
  %2000 = load ptr, ptr %ops.i.i301.4, align 4
  %get_bbreg.i.i302.4 = getelementptr inbounds %struct.rtl_hal_ops, ptr %2000, i32 0, i32 45
  %2001 = ptrtoint ptr %get_bbreg.i.i302.4 to i32
  call void @__asan_load4_noabort(i32 %2001)
  %2002 = load ptr, ptr %get_bbreg.i.i302.4, align 4
  %call.i.i303.4 = tail call i32 %2002(ptr noundef %hw, i32 noundef 3200, i32 noundef -1) #8
  %arrayidx1.i304.4 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 4
  %2003 = ptrtoint ptr %arrayidx1.i304.4 to i32
  call void @__asan_store4_noabort(i32 %2003)
  store i32 %call.i.i303.4, ptr %arrayidx1.i304.4, align 4
  %2004 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2004)
  %2005 = load ptr, ptr %priv, align 8
  %cfg.i.i300.5 = getelementptr inbounds %struct.rtl_priv, ptr %2005, i32 0, i32 32
  %2006 = ptrtoint ptr %cfg.i.i300.5 to i32
  call void @__asan_load4_noabort(i32 %2006)
  %2007 = load ptr, ptr %cfg.i.i300.5, align 8
  %ops.i.i301.5 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %2007, i32 0, i32 4
  %2008 = ptrtoint ptr %ops.i.i301.5 to i32
  call void @__asan_load4_noabort(i32 %2008)
  %2009 = load ptr, ptr %ops.i.i301.5, align 4
  %get_bbreg.i.i302.5 = getelementptr inbounds %struct.rtl_hal_ops, ptr %2009, i32 0, i32 45
  %2010 = ptrtoint ptr %get_bbreg.i.i302.5 to i32
  call void @__asan_load4_noabort(i32 %2010)
  %2011 = load ptr, ptr %get_bbreg.i.i302.5, align 4
  %call.i.i303.5 = tail call i32 %2011(ptr noundef %hw, i32 noundef 3208, i32 noundef -1) #8
  %arrayidx1.i304.5 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 5
  %2012 = ptrtoint ptr %arrayidx1.i304.5 to i32
  call void @__asan_store4_noabort(i32 %2012)
  store i32 %call.i.i303.5, ptr %arrayidx1.i304.5, align 4
  %2013 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2013)
  %2014 = load ptr, ptr %priv, align 8
  %cfg.i.i300.6 = getelementptr inbounds %struct.rtl_priv, ptr %2014, i32 0, i32 32
  %2015 = ptrtoint ptr %cfg.i.i300.6 to i32
  call void @__asan_load4_noabort(i32 %2015)
  %2016 = load ptr, ptr %cfg.i.i300.6, align 8
  %ops.i.i301.6 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %2016, i32 0, i32 4
  %2017 = ptrtoint ptr %ops.i.i301.6 to i32
  call void @__asan_load4_noabort(i32 %2017)
  %2018 = load ptr, ptr %ops.i.i301.6, align 4
  %get_bbreg.i.i302.6 = getelementptr inbounds %struct.rtl_hal_ops, ptr %2018, i32 0, i32 45
  %2019 = ptrtoint ptr %get_bbreg.i.i302.6 to i32
  call void @__asan_load4_noabort(i32 %2019)
  %2020 = load ptr, ptr %get_bbreg.i.i302.6, align 4
  %call.i.i303.6 = tail call i32 %2020(ptr noundef %hw, i32 noundef 3220, i32 noundef -1) #8
  %arrayidx1.i304.6 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 6
  %2021 = ptrtoint ptr %arrayidx1.i304.6 to i32
  call void @__asan_store4_noabort(i32 %2021)
  store i32 %call.i.i303.6, ptr %arrayidx1.i304.6, align 4
  %2022 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2022)
  %2023 = load ptr, ptr %priv, align 8
  %cfg.i.i300.7 = getelementptr inbounds %struct.rtl_priv, ptr %2023, i32 0, i32 32
  %2024 = ptrtoint ptr %cfg.i.i300.7 to i32
  call void @__asan_load4_noabort(i32 %2024)
  %2025 = load ptr, ptr %cfg.i.i300.7, align 8
  %ops.i.i301.7 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %2025, i32 0, i32 4
  %2026 = ptrtoint ptr %ops.i.i301.7 to i32
  call void @__asan_load4_noabort(i32 %2026)
  %2027 = load ptr, ptr %ops.i.i301.7, align 4
  %get_bbreg.i.i302.7 = getelementptr inbounds %struct.rtl_hal_ops, ptr %2027, i32 0, i32 45
  %2028 = ptrtoint ptr %get_bbreg.i.i302.7 to i32
  call void @__asan_load4_noabort(i32 %2028)
  %2029 = load ptr, ptr %get_bbreg.i.i302.7, align 4
  %call.i.i303.7 = tail call i32 %2029(ptr noundef %hw, i32 noundef 3228, i32 noundef -1) #8
  %arrayidx1.i304.7 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 7
  %2030 = ptrtoint ptr %arrayidx1.i304.7 to i32
  call void @__asan_store4_noabort(i32 %2030)
  store i32 %call.i.i303.7, ptr %arrayidx1.i304.7, align 4
  %2031 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2031)
  %2032 = load ptr, ptr %priv, align 8
  %cfg.i.i300.8 = getelementptr inbounds %struct.rtl_priv, ptr %2032, i32 0, i32 32
  %2033 = ptrtoint ptr %cfg.i.i300.8 to i32
  call void @__asan_load4_noabort(i32 %2033)
  %2034 = load ptr, ptr %cfg.i.i300.8, align 8
  %ops.i.i301.8 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %2034, i32 0, i32 4
  %2035 = ptrtoint ptr %ops.i.i301.8 to i32
  call void @__asan_load4_noabort(i32 %2035)
  %2036 = load ptr, ptr %ops.i.i301.8, align 4
  %get_bbreg.i.i302.8 = getelementptr inbounds %struct.rtl_hal_ops, ptr %2036, i32 0, i32 45
  %2037 = ptrtoint ptr %get_bbreg.i.i302.8 to i32
  call void @__asan_load4_noabort(i32 %2037)
  %2038 = load ptr, ptr %get_bbreg.i.i302.8, align 4
  %call.i.i303.8 = tail call i32 %2038(ptr noundef %hw, i32 noundef 3232, i32 noundef -1) #8
  %arrayidx1.i304.8 = getelementptr %struct.rtl_priv, ptr %1, i32 0, i32 14, i32 30, i32 8
  %2039 = ptrtoint ptr %arrayidx1.i304.8 to i32
  call void @__asan_store4_noabort(i32 %2039)
  store i32 %call.i.i303.8, ptr %arrayidx1.i304.8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end150, %if.then
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #8
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_rtl92ee_phy_simularity_compare(ptr nocapture noundef %result, i8 noundef zeroext %c1, i8 noundef zeroext %c2) unnamed_addr #5 align 64 {
if.end38:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.3

if.else57.2:                                      ; preds = %if.then46.2
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.7

if.else57.6:                                      ; preds = %if.then46.6
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  %or76.7 = or i32 %simularity_bitmap.1.6, 128
  br label %if.end110

for.inc.7:                                        ; preds = %if.end38.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %simularity_bitmap.1.6)
  %cmp79 = icmp eq i32 %simularity_bitmap.1.6, 0
  br i1 %cmp79, label %for.body84.preheader, label %for.inc.7.if.end110_crit_edge

for.inc.7.if.end110_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

for.body84.preheader:                             ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %final_candidate.sroa.0.2)
  %cmp86.not = icmp eq i8 %final_candidate.sroa.0.2, -1
  br i1 %cmp86.not, label %for.body84.preheader.for.inc106_crit_edge, label %for.body95.lr.ph

for.body84.preheader.for.inc106_crit_edge:        ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc106

for.body95.lr.ph:                                 ; preds = %for.body84.preheader
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body95.lr.ph.1:                               ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
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

if.end110:                                        ; preds = %for.inc.7.if.end110_crit_edge, %for.inc.7.thread
  %simularity_bitmap.1.729 = phi i32 [ %or76.7, %for.inc.7.thread ], [ %simularity_bitmap.1.6, %for.inc.7.if.end110_crit_edge ]
  %and111 = and i32 %simularity_bitmap.1.729, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %for.cond114.preheader, label %if.end110.if.end126_crit_edge

if.end110.if.end126_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

for.cond114.preheader:                            ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
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

if.end126:                                        ; preds = %for.cond114.preheader, %if.end110.if.end126_crit_edge
  %and127 = and i32 %simularity_bitmap.1.729, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %for.cond130.preheader, label %if.end126.if.end142_crit_edge

if.end126.if.end142_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

for.cond130.preheader:                            ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end158

for.cond146.preheader:                            ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond162.preheader:                            ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #10
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_lc_calibrate(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %act_scanning = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 9, i32 20
  %2 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %act_scanning, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not10.not = icmp eq i8 %3, 0
  br i1 %tobool.not10.not, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %timecount.011 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 10737400) #8
  %add = add nuw nsw i32 %timecount.011, 50
  %5 = ptrtoint ptr %act_scanning to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %act_scanning, align 2, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950, i32 %timecount.011)
  %cmp = icmp ult i32 %timecount.011, 1950
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 17, i32 noundef 4, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %timecount.0.lcssa) #8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 9
  %12 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %13(ptr noundef %11, i32 noundef 3331) #8
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
  tail call void %16(ptr noundef %11, i32 noundef 3331, i8 noundef zeroext %and3.i) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %17 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %write_readback.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i2.i = tail call zeroext i8 %22(ptr noundef %11, i32 noundef 3331) #8
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
  %call.i4.i = tail call i32 %30(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095) #8
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
  tail call void %38(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %or.i) #8
  br label %if.end20.i

if.else.i:                                        ; preds = %while.end
  %write8_async.i8.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %39 = ptrtoint ptr %write8_async.i8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write8_async.i8.i, align 4
  tail call void %40(ptr noundef %11, i32 noundef 1314, i8 noundef zeroext -1) #8
  %cfg.i9.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %41 = ptrtoint ptr %cfg.i9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfg.i9.i, align 8
  %write_readback.i10.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %write_readback.i10.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %write_readback.i10.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i11.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i11.i, label %if.else.i.if.end20.i_crit_edge, label %if.then.i14.i

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then.i14.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i13.i = tail call zeroext i8 %46(ptr noundef %11, i32 noundef 1314) #8
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
  %call.i20.i = tail call i32 %54(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095) #8
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
  tail call void %62(ptr noundef %hw, i32 noundef 0, i32 noundef 24, i32 noundef 4095, i32 noundef %or22.i) #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end20.i
  %__ms.045.i = phi i32 [ 100, %if.end20.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.045.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  %tobool23.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool23.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %write8_async.i37.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 13, i32 5
  %64 = ptrtoint ptr %write8_async.i37.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write8_async.i37.i, align 4
  br i1 %cmp.not.i, label %if.else32.i, label %if.then28.i

if.then28.i:                                      ; preds = %while.end.i
  tail call void %65(ptr noundef %11, i32 noundef 3331, i8 noundef zeroext %call.i.i) #8
  %cfg.i26.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %66 = ptrtoint ptr %cfg.i26.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i26.i, align 8
  %write_readback.i27.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write_readback.i27.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_readback.i27.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i28.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i28.i, label %if.then28.i.rtl_write_byte.exit32.i_crit_edge, label %if.then.i31.i

if.then28.i.rtl_write_byte.exit32.i_crit_edge:    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit32.i

if.then.i31.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i30.i = tail call zeroext i8 %71(ptr noundef %11, i32 noundef 3331) #8
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
  tail call void %79(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef %rf_a_mode.0.i) #8
  br label %_rtl92ee_phy_lc_calibrate.exit

if.else32.i:                                      ; preds = %while.end.i
  tail call void %65(ptr noundef %11, i32 noundef 1314, i8 noundef zeroext 0) #8
  %cfg.i38.i = getelementptr inbounds %struct.rtl_priv, ptr %11, i32 0, i32 32
  %80 = ptrtoint ptr %cfg.i38.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cfg.i38.i, align 8
  %write_readback.i39.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %write_readback.i39.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %write_readback.i39.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i40.i = icmp eq i8 %83, 0
  br i1 %tobool.not.i40.i, label %if.else32.i._rtl92ee_phy_lc_calibrate.exit_crit_edge, label %if.then.i43.i

if.else32.i._rtl92ee_phy_lc_calibrate.exit_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_lc_calibrate.exit

if.then.i43.i:                                    ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i42.i = tail call zeroext i8 %85(ptr noundef %11, i32 noundef 1314) #8
  br label %_rtl92ee_phy_lc_calibrate.exit

_rtl92ee_phy_lc_calibrate.exit:                   ; preds = %if.then.i43.i, %if.else32.i._rtl92ee_phy_lc_calibrate.exit_crit_edge, %rtl_write_byte.exit32.i
  %86 = ptrtoint ptr %lck_inprogress to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %lck_inprogress, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rtl92ee_phy_ap_calibrate(ptr nocapture noundef %hw, i8 noundef signext %delta) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtl92ee_phy_set_rfpath_switch(ptr noundef %hw, i1 noundef zeroext %bmain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 4, ptr noundef nonnull @.str.21) #8
  %state.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 10, i32 14
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  br i1 %cmp.i.i, label %if.then.i, label %entry.if.else11.i_crit_edge

entry.if.else11.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i

if.then.i:                                        ; preds = %entry
  %read8_sync.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 76) #8
  %6 = or i8 %call.i.i, -128
  %write8_async.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 13, i32 5
  %7 = ptrtoint ptr %write8_async.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write8_async.i.i, align 4
  tail call void %8(ptr noundef %1, i32 noundef 76, i8 noundef zeroext %6) #8
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 32
  %9 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg.i.i, align 8
  %write_readback.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write_readback.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_readback.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %if.then.i.rtl_write_byte.exit.i_crit_edge, label %if.then.i.i

if.then.i.rtl_write_byte.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %read8_sync.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read8_sync.i.i, align 4
  %call.i2.i = tail call zeroext i8 %14(ptr noundef %1, i32 noundef 76) #8
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
  tail call void %22(ptr noundef %hw, i32 noundef 2168, i32 noundef 8192, i32 noundef 1) #8
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
  tail call void %30(ptr noundef %hw, i32 noundef 2160, i32 noundef 768, i32 noundef 0) #8
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
  tail call void %38(ptr noundef %hw, i32 noundef 2324, i32 noundef 65535, i32 noundef 513) #8
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
  tail call void %46(ptr noundef %hw, i32 noundef 2144, i32 noundef 28672, i32 noundef 0) #8
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
  tail call void %54(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef 0) #8
  %antenna_div_type.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %55 = ptrtoint ptr %antenna_div_type.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %antenna_div_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i = icmp eq i8 %56, 2
  br i1 %cmp.i, label %if.then13.i.if.end26.sink.split.i_crit_edge, label %if.then13.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge

if.then13.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_set_rfpath_switch.exit

if.then13.i.if.end26.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.sink.split.i

if.else18.i:                                      ; preds = %if.else11.i
  tail call void %46(ptr noundef %hw, i32 noundef 2144, i32 noundef 28672, i32 noundef 1) #8
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
  tail call void %64(ptr noundef %hw, i32 noundef 2148, i32 noundef 56, i32 noundef 1) #8
  %antenna_div_type19.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 17, i32 22
  %65 = ptrtoint ptr %antenna_div_type19.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %antenna_div_type19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp21.i = icmp eq i8 %66, 2
  br i1 %cmp21.i, label %if.else18.i.if.end26.sink.split.i_crit_edge, label %if.else18.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge

if.else18.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge: ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_set_rfpath_switch.exit

if.else18.i.if.end26.sink.split.i_crit_edge:      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %74(ptr noundef %hw, i32 noundef 2860, i32 noundef -2147483648, i32 noundef %.sink.i) #8
  br label %_rtl92ee_phy_set_rfpath_switch.exit

_rtl92ee_phy_set_rfpath_switch.exit:              ; preds = %if.end26.sink.split.i, %if.else18.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge, %if.then13.i._rtl92ee_phy_set_rfpath_switch.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_set_io_cmd(ptr noundef %hw, i32 noundef %iotype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.28, i32 noundef %iotype, i32 noundef %conv) #8
  %4 = zext i32 %iotype to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %iotype, label %sw.default [
    i32 2, label %entry.land.lhs.true_crit_edge
    i32 0, label %sw.bb1
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %iotype) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb1, %entry.land.lhs.true_crit_edge
  %.str.29.sink = phi ptr [ @.str.30, %sw.bb1 ], [ @.str.29, %entry.land.lhs.true_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull %.str.29.sink) #8
  %5 = ptrtoint ptr %set_io_inprogress to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %set_io_inprogress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.75, i32 noundef %12, i32 noundef %conv.i) #8
  %15 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %current_io_type.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %16, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 0, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %initgain_backup.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %18 = ptrtoint ptr %initgain_backup.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initgain_backup.i, align 4
  tail call void @rtl92ee_dm_write_dig(ptr noundef %hw, i8 noundef zeroext %19) #8
  %cca.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1, i32 4
  %20 = ptrtoint ptr %cca.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cca.i, align 4
  tail call void @rtl92ee_dm_write_cck_cca_thres(ptr noundef %hw, i8 noundef zeroext %21) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.76) #8
  %current_channel.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 10
  %22 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %current_channel.i, align 1
  tail call void @rtl92ee_phy_set_txpower_level(ptr noundef %hw, i8 noundef zeroext %23) #8
  br label %rtl92ee_phy_set_io.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %cur_igvalue.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 9
  %24 = ptrtoint ptr %cur_igvalue.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_igvalue.i, align 4
  %conv4.i = trunc i32 %25 to i8
  %initgain_backup5.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %initgain_backup5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i, ptr %initgain_backup5.i, align 4
  tail call void @rtl92ee_dm_write_dig(ptr noundef %hw, i8 noundef zeroext 23) #8
  %cur_cck_cca_thres.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 35, i32 29
  %27 = ptrtoint ptr %cur_cck_cca_thres.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cur_cck_cca_thres.i, align 2
  %cca8.i = getelementptr inbounds %struct.rtl_priv, ptr %10, i32 0, i32 14, i32 1, i32 4
  %29 = ptrtoint ptr %cca8.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %cca8.i, align 4
  tail call void @rtl92ee_dm_write_cck_cca_thres(ptr noundef %hw, i8 noundef zeroext 64) #8
  br label %rtl92ee_phy_set_io.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %16) #8
  br label %rtl92ee_phy_set_io.exit

rtl92ee_phy_set_io.exit:                          ; preds = %sw.default.i, %sw.bb3.i, %sw.bb.i
  %30 = ptrtoint ptr %set_io_inprogress.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %set_io_inprogress.i, align 1
  %31 = ptrtoint ptr %current_io_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %current_io_type.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %10, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.77, i32 noundef %32) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 8388608, i32 noundef 5, ptr noundef nonnull @.str.32, i32 noundef %iotype) #8
  br label %cleanup

cleanup:                                          ; preds = %rtl92ee_phy_set_io.exit, %land.lhs.true.cleanup_crit_edge, %sw.default
  %retval.0 = phi i1 [ true, %rtl92ee_phy_set_io.exit ], [ false, %sw.default ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtl92ee_phy_set_rf_power_state(ptr noundef %hw, i32 noundef %rfpwr_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %rfpwr_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.97)
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  %initializecount.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %land.lhs.true.i.do.body.i_crit_edge ]
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.78) #8
  %call.i = tail call zeroext i1 @rtl_ps_enable_nic(ptr noundef %hw) #8
  %call.not.i = xor i1 %call.i, true
  %inc.i = add nuw nsw i32 %initializecount.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %initializecount.0.i)
  %cmp7.i = icmp ult i32 %initializecount.0.i, 9
  %or.cond.i = select i1 %call.not.i, i1 %cmp7.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
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
  %call10.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.79, i32 noundef %call10.i) #8
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
  tail call void %17(ptr noundef %15, i32 noundef 17, i8 noundef zeroext 43) #8
  %cfg.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 32
  %18 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write_readback.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_readback.i.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.rtl_write_byte.exit.i.i_crit_edge, label %if.then.i.i.i

if.else.i.rtl_write_byte.exit.i.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %22 = ptrtoint ptr %read8_sync.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read8_sync.i.i.i, align 4
  %call.i.i.i = tail call zeroext i8 %23(ptr noundef %15, i32 noundef 17) #8
  br label %rtl_write_byte.exit.i.i

rtl_write_byte.exit.i.i:                          ; preds = %if.then.i.i.i, %if.else.i.rtl_write_byte.exit.i.i_crit_edge
  %24 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %25(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #8
  %26 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i7.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %write_readback.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %write_readback.i7.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i8.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i8.i.i, label %rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge, label %if.then.i11.i.i

rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge: ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit12.i.i

if.then.i11.i.i:                                  ; preds = %rtl_write_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i9.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %30 = ptrtoint ptr %read8_sync.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read8_sync.i9.i.i, align 4
  %call.i10.i.i = tail call zeroext i8 %31(ptr noundef %15, i32 noundef 2) #8
  br label %rtl_write_byte.exit12.i.i

rtl_write_byte.exit12.i.i:                        ; preds = %if.then.i11.i.i, %rtl_write_byte.exit.i.i.rtl_write_byte.exit12.i.i_crit_edge
  %32 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %33(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -30) #8
  %34 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i15.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %write_readback.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %write_readback.i15.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i16.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i16.i.i, label %rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge, label %if.then.i19.i.i

rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge: ; preds = %rtl_write_byte.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit20.i.i

if.then.i19.i.i:                                  ; preds = %rtl_write_byte.exit12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i17.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %38 = ptrtoint ptr %read8_sync.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read8_sync.i17.i.i, align 4
  %call.i18.i.i = tail call zeroext i8 %39(ptr noundef %15, i32 noundef 2) #8
  br label %rtl_write_byte.exit20.i.i

rtl_write_byte.exit20.i.i:                        ; preds = %if.then.i19.i.i, %rtl_write_byte.exit12.i.i.rtl_write_byte.exit20.i.i_crit_edge
  %40 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %41(ptr noundef %15, i32 noundef 2, i8 noundef zeroext -29) #8
  %42 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i23.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %write_readback.i23.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_readback.i23.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i24.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i24.i.i, label %rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge, label %if.then.i27.i.i

rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge: ; preds = %rtl_write_byte.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit28.i.i

if.then.i27.i.i:                                  ; preds = %rtl_write_byte.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i25.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %46 = ptrtoint ptr %read8_sync.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read8_sync.i25.i.i, align 4
  %call.i26.i.i = tail call zeroext i8 %47(ptr noundef %15, i32 noundef 2) #8
  br label %rtl_write_byte.exit28.i.i

rtl_write_byte.exit28.i.i:                        ; preds = %if.then.i27.i.i, %rtl_write_byte.exit20.i.i.rtl_write_byte.exit28.i.i_crit_edge
  %48 = ptrtoint ptr %write8_async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write8_async.i.i.i, align 4
  tail call void %49(ptr noundef %15, i32 noundef 1314, i8 noundef zeroext 0) #8
  %50 = ptrtoint ptr %cfg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg.i.i.i, align 8
  %write_readback.i31.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_readback.i31.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %write_readback.i31.i.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i32.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i32.i.i, label %rtl_write_byte.exit28.i.i.if.end.i_crit_edge, label %if.then.i35.i.i

rtl_write_byte.exit28.i.i.if.end.i_crit_edge:     ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i35.i.i:                                  ; preds = %rtl_write_byte.exit28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i33.i.i = getelementptr inbounds %struct.rtl_priv, ptr %15, i32 0, i32 13, i32 9
  %54 = ptrtoint ptr %read8_sync.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read8_sync.i33.i.i, align 4
  %call.i34.i.i = tail call zeroext i8 %55(ptr noundef %15, i32 noundef 1314) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %63(ptr noundef %hw, i32 noundef 2) #8
  br label %if.then105.i

if.else13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %63(ptr noundef %hw, i32 noundef 3) #8
  br label %if.then105.i

for.body.i:                                       ; preds = %for.body.preheader.i, %if.then27.i.for.body.i_crit_edge
  %indvars.iv222.i = phi i32 [ %68, %for.body.preheader.i ], [ %indvars.iv.next223.i, %if.then27.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %indvars.iv222.i)
  %cmp22.i = icmp eq i32 %indvars.iv222.i, 4
  br i1 %cmp22.i, label %for.body.i.if.then27.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then27.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %for.body.i.if.then27.i_crit_edge
  %indvars.iv.next223.i = add nuw nsw i32 %indvars.iv222.i, 1
  %lftr.wideiv = trunc i32 %indvars.iv.next223.i to i8
  %exitcond = icmp eq i8 %lftr.wideiv, 9
  br i1 %exitcond, label %if.then27.i.for.end.i_crit_edge, label %if.then27.i.for.body.i_crit_edge

if.then27.i.for.body.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then27.i.for.end.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.else29.i:                                      ; preds = %lor.lhs.false.i
  %66 = trunc i32 %indvars.iv222.i to i8
  %add.i = add nuw nsw i32 %indvars.iv225.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %add.i, i32 noundef %indvars.iv222.i, i32 noundef %65) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 2147480) #8
  %exitcond227.i = icmp eq i32 %add.i, 64
  br i1 %exitcond227.i, label %if.then39.i, label %if.else29.i.for.cond.outer.i_crit_edge

if.else29.i.for.cond.outer.i_crit_edge:           ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.outer.i

for.cond.outer.i:                                 ; preds = %if.else29.i.for.cond.outer.i_crit_edge, %for.cond.preheader.i
  %indvars.iv225.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %if.else29.i.for.cond.outer.i_crit_edge ]
  %queue_id.0.ph.i = phi i8 [ 0, %for.cond.preheader.i ], [ %66, %if.else29.i.for.cond.outer.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %queue_id.0.ph.i)
  %cmp19207.i = icmp ult i8 %queue_id.0.ph.i, 9
  br i1 %cmp19207.i, label %for.body.preheader.i, label %for.cond.outer.i.for.end.i_crit_edge

for.cond.outer.i.for.end.i_crit_edge:             ; preds = %for.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %for.cond.outer.i
  %68 = zext i8 %queue_id.0.ph.i to i32
  br label %for.body.i

if.then39.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen.i.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 64, i32 noundef %indvars.iv222.i, i32 noundef %70) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.82) #8
  %call47.i = tail call zeroext i1 @rtl_ps_disable_nic(ptr noundef %hw) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %82(ptr noundef %hw, i32 noundef 3) #8
  br label %if.then105.i

if.else56.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %82(ptr noundef %hw, i32 noundef 7) #8
  br label %if.then105.i

sw.bb62.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp64.i = icmp eq i32 %3, 2
  br i1 %cmp64.i, label %sw.bb62.i.if.then105.i_crit_edge, label %for.cond68.preheader.i

sw.bb62.i.if.then105.i_crit_edge:                 ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body72.i

if.then81.i.for.end99.i_crit_edge:                ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99.i

if.else83.i:                                      ; preds = %for.body72.i
  %86 = trunc i32 %indvars.iv.i to i8
  %add85.i = add nuw nsw i32 %indvars.iv219.i, 1
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.80, i32 noundef %add85.i, i32 noundef %indvars.iv.i, i32 noundef %85) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #8
  %exitcond221.i = icmp eq i32 %add85.i, 64
  br i1 %exitcond221.i, label %if.then94.i, label %if.else83.i.for.cond68.outer.i_crit_edge

if.else83.i.for.cond68.outer.i_crit_edge:         ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.outer.i

if.then94.i:                                      ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %qlen.i170.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %qlen.i170.i, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef 64, i32 noundef %indvars.iv.i, i32 noundef %89) #8
  br label %for.end99.i

for.end99.i:                                      ; preds = %if.then94.i, %if.then81.i.for.end99.i_crit_edge, %for.cond68.outer.i.for.end99.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %last_awake_jiffies100.i = getelementptr inbounds %struct.rtl_priv, ptr %1, i32 0, i32 21, i32 33
  %91 = ptrtoint ptr %last_awake_jiffies100.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %last_awake_jiffies100.i, align 4
  %sub101.i = sub i32 %90, %92
  %call102.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub101.i) #8
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1048576, i32 noundef 3, ptr noundef nonnull @.str.83, i32 noundef %call102.i) #8
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
  tail call void %98(ptr noundef %96, i32 noundef 1314, i8 noundef zeroext -1) #8
  %cfg.i.i175.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 32
  %99 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i.i176.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write_readback.i.i176.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %write_readback.i.i176.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i.i177.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i.i177.i, label %for.end99.i.rtl_write_byte.exit.i183.i_crit_edge, label %if.then.i.i180.i

for.end99.i.rtl_write_byte.exit.i183.i_crit_edge: ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit.i183.i

if.then.i.i180.i:                                 ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i.i178.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %103 = ptrtoint ptr %read8_sync.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read8_sync.i.i178.i, align 4
  %call.i.i179.i = tail call zeroext i8 %104(ptr noundef %96, i32 noundef 1314) #8
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
  tail call void %112(ptr noundef %hw, i32 noundef 0, i32 noundef 0, i32 noundef 1048575, i32 noundef 0) #8
  %113 = ptrtoint ptr %write8_async.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %write8_async.i.i174.i, align 4
  tail call void %114(ptr noundef %96, i32 noundef 2, i8 noundef zeroext -30) #8
  %115 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i7.i181.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %write_readback.i7.i181.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %write_readback.i7.i181.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i8.i182.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i8.i182.i, label %rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge, label %if.then.i11.i186.i

rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge: ; preds = %rtl_write_byte.exit.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rtl_write_byte.exit12.i189.i

if.then.i11.i186.i:                               ; preds = %rtl_write_byte.exit.i183.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i9.i184.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %119 = ptrtoint ptr %read8_sync.i9.i184.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read8_sync.i9.i184.i, align 4
  %call.i10.i185.i = tail call zeroext i8 %120(ptr noundef %96, i32 noundef 2) #8
  br label %rtl_write_byte.exit12.i189.i

rtl_write_byte.exit12.i189.i:                     ; preds = %if.then.i11.i186.i, %rtl_write_byte.exit.i183.i.rtl_write_byte.exit12.i189.i_crit_edge
  %121 = ptrtoint ptr %write8_async.i.i174.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write8_async.i.i174.i, align 4
  tail call void %122(ptr noundef %96, i32 noundef 17, i8 noundef zeroext 34) #8
  %123 = ptrtoint ptr %cfg.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cfg.i.i175.i, align 8
  %write_readback.i15.i187.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %write_readback.i15.i187.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %write_readback.i15.i187.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i16.i188.i = icmp eq i8 %126, 0
  br i1 %tobool.not.i16.i188.i, label %rtl_write_byte.exit12.i189.i.if.then105.i_crit_edge, label %if.then.i19.i192.i

rtl_write_byte.exit12.i189.i.if.then105.i_crit_edge: ; preds = %rtl_write_byte.exit12.i189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then105.i

if.then.i19.i192.i:                               ; preds = %rtl_write_byte.exit12.i189.i
  call void @__sanitizer_cov_trace_pc() #10
  %read8_sync.i17.i190.i = getelementptr inbounds %struct.rtl_priv, ptr %96, i32 0, i32 13, i32 9
  %127 = ptrtoint ptr %read8_sync.i17.i190.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %read8_sync.i17.i190.i, align 4
  %call.i18.i191.i = tail call zeroext i8 %128(ptr noundef %96, i32 noundef 17) #8
  br label %if.then105.i

sw.epilog.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 1, i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %rfpwr_state) #8
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_config_bb_with_hdr_file(ptr noundef %hw, i8 noundef zeroext %configtype) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %configtype)
  %cmp = icmp eq i8 %configtype, 0
  br i1 %cmp, label %entry.for.body_crit_edge, label %entry.for.body100_crit_edge

entry.for.body100_crit_edge:                      ; preds = %entry
  br label %for.body100

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %add90, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %i.043
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp6 = icmp ult i32 %3, -842150451
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nsw i32 %i.043, 1
  %arrayidx5 = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %add
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  tail call fastcc void @_rtl92ee_config_bb_reg(ptr noundef %hw, i32 noundef %3, i32 noundef %5)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 445, i32 %i.043)
  %cmp10 = icmp sgt i32 %i.043, 445
  br i1 %cmp10, label %if.else.if.end214_crit_edge, label %if.end

if.else.if.end214_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.end:                                           ; preds = %if.else
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %interface.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 10, i32 9
  %8 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %3)
  %cmp.i = icmp eq i32 %3, -842150451
  br i1 %cmp.i, label %if.end.while.cond46.preheader_crit_edge, label %if.end.i

if.end.while.cond46.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond46.preheader

while.cond46.preheader:                           ; preds = %if.end18.i.while.cond46.preheader_crit_edge, %if.end.while.cond46.preheader_crit_edge
  br label %while.cond46

if.end.i:                                         ; preds = %if.end
  %board_type.i = getelementptr inbounds %struct.rtl_priv, ptr %7, i32 0, i32 17, i32 17
  %10 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %board_type.i, align 1
  %12 = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp4.not.i = icmp eq i8 %11, %12
  %and.i = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i)
  %cmp6.not.i = icmp eq i32 %and.i, 255
  %or.cond.i = or i1 %cmp6.not.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.end9.i, label %if.end.i.while.cond.preheader_crit_edge

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end9.i:                                        ; preds = %if.end.i
  %and10.i = lshr i32 %3, 8
  %shr.i = and i32 %and10.i, 255
  %and11.i = and i32 %9, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp12.i = icmp ne i32 %and11.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i)
  %cmp15.not.i = icmp eq i32 %shr.i, 7
  %or.cond46.i = or i1 %cmp15.not.i, %cmp12.i
  br i1 %or.cond46.i, label %if.end18.i, label %if.end9.i.while.cond.preheader_crit_edge

if.end9.i.while.cond.preheader_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end18.i:                                       ; preds = %if.end9.i
  %13 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22.i = icmp ne i32 %13, 0
  %14 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %14)
  %cmp25.not.i = icmp eq i32 %14, 983040
  %or.cond47.i = or i1 %cmp22.i, %cmp25.not.i
  br i1 %or.cond47.i, label %if.end18.i.while.cond46.preheader_crit_edge, label %if.end18.i.while.cond.preheader_crit_edge

if.end18.i.while.cond.preheader_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end18.i.while.cond46.preheader_crit_edge:      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond46.preheader

while.cond.preheader:                             ; preds = %if.end18.i.while.cond.preheader_crit_edge, %if.end9.i.while.cond.preheader_crit_edge, %if.end.i.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %add17.pn.in = phi i32 [ %i.1, %land.rhs.while.cond_crit_edge ], [ %i.043, %while.cond.preheader ]
  %add17.pn = add nsw i32 %add17.pn.in, 3
  %v2.0.in = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %add17.pn
  %15 = ptrtoint ptr %v2.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %v2.0 = load i32, ptr %v2.0.in, align 4
  %16 = zext i32 %v2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %v2.0, label %land.rhs [
    i32 57005, label %while.cond.for.inc_crit_edge
    i32 52719, label %while.cond.for.inc_crit_edge93
    i32 52685, label %while.cond.for.inc_crit_edge94
  ]

while.cond.for.inc_crit_edge94:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.for.inc_crit_edge93:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.rhs:                                         ; preds = %while.cond
  %i.1 = add nsw i32 %add17.pn.in, 2
  %cmp28 = icmp slt i32 %add17.pn.in, 444
  br i1 %cmp28, label %land.rhs.while.cond_crit_edge, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond46:                                     ; preds = %while.body61, %while.cond46.preheader
  %add42.pn.in = phi i32 [ %i.2, %while.body61 ], [ %i.043, %while.cond46.preheader ]
  %i.2 = add nsw i32 %add42.pn.in, 2
  %add42.pn = add nsw i32 %add42.pn.in, 3
  %v2.1.in = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %add42.pn
  %17 = ptrtoint ptr %v2.1.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %v2.1 = load i32, ptr %v2.1.in, align 4
  %v1.0.in = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %i.2
  %18 = ptrtoint ptr %v1.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %v1.0 = load i32, ptr %v1.0.in, align 4
  %19 = zext i32 %v2.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %v2.1, label %land.rhs55 [
    i32 57005, label %while.cond46.while.end69_crit_edge
    i32 52719, label %while.cond46.while.end69_crit_edge95
    i32 52685, label %while.cond46.while.end69_crit_edge96
  ]

while.cond46.while.end69_crit_edge96:             ; preds = %while.cond46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

while.cond46.while.end69_crit_edge95:             ; preds = %while.cond46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

while.cond46.while.end69_crit_edge:               ; preds = %while.cond46
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end69

land.rhs55:                                       ; preds = %while.cond46
  %cmp58 = icmp slt i32 %add42.pn.in, 444
  br i1 %cmp58, label %while.body61, label %land.rhs55.for.inc_crit_edge

land.rhs55.for.inc_crit_edge:                     ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body61:                                     ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @_rtl92ee_config_bb_reg(ptr noundef %hw, i32 noundef %v1.0, i32 noundef %v2.1)
  br label %while.cond46

while.end69:                                      ; preds = %while.cond46.while.end69_crit_edge, %while.cond46.while.end69_crit_edge95, %while.cond46.while.end69_crit_edge96
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.1)
  %cmp71.not38 = icmp ne i32 %v2.1, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 444, i32 %add42.pn.in)
  %cmp7639 = icmp slt i32 %add42.pn.in, 444
  %or.cond40 = select i1 %cmp71.not38, i1 %cmp7639, i1 false
  br i1 %or.cond40, label %while.end69.do.body80_crit_edge, label %while.end69.for.inc_crit_edge

while.end69.for.inc_crit_edge:                    ; preds = %while.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.end69.do.body80_crit_edge:                  ; preds = %while.end69
  br label %do.body80

do.body80:                                        ; preds = %do.body80.do.body80_crit_edge, %while.end69.do.body80_crit_edge
  %i.341 = phi i32 [ %add81, %do.body80.do.body80_crit_edge ], [ %i.2, %while.end69.do.body80_crit_edge ]
  %add81 = add nsw i32 %i.341, 2
  %add83 = add nsw i32 %i.341, 3
  %arrayidx84 = getelementptr i32, ptr @RTL8192EE_PHY_REG_ARRAY, i32 %add83
  %20 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %21)
  %cmp71.not = icmp ne i32 %21, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 444, i32 %i.341)
  %cmp76 = icmp slt i32 %i.341, 444
  %or.cond = select i1 %cmp71.not, i1 %cmp76, i1 false
  br i1 %or.cond, label %do.body80.do.body80_crit_edge, label %do.body80.for.inc_crit_edge

do.body80.for.inc_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body80.do.body80_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body80

for.inc:                                          ; preds = %do.body80.for.inc_crit_edge, %while.end69.for.inc_crit_edge, %land.rhs55.for.inc_crit_edge, %land.rhs.for.inc_crit_edge, %while.cond.for.inc_crit_edge, %while.cond.for.inc_crit_edge93, %while.cond.for.inc_crit_edge94, %if.then8
  %i.4 = phi i32 [ %i.043, %if.then8 ], [ %i.2, %while.end69.for.inc_crit_edge ], [ %add81, %do.body80.for.inc_crit_edge ], [ %i.2, %land.rhs55.for.inc_crit_edge ], [ %add17.pn.in, %while.cond.for.inc_crit_edge ], [ %add17.pn.in, %while.cond.for.inc_crit_edge93 ], [ %add17.pn.in, %while.cond.for.inc_crit_edge94 ], [ %add17.pn.in, %land.rhs.for.inc_crit_edge ]
  %add90 = add i32 %i.4, 2
  %cmp3 = icmp slt i32 %add90, 448
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.if.end214_crit_edge

for.inc.if.end214_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body100:                                      ; preds = %for.inc210.for.body100_crit_edge, %entry.for.body100_crit_edge
  %i.536 = phi i32 [ %add211, %for.inc210.for.body100_crit_edge ], [ 0, %entry.for.body100_crit_edge ]
  %arrayidx101 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %i.536
  %22 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %23)
  %cmp104 = icmp ult i32 %23, -842150451
  br i1 %cmp104, label %if.then106, label %if.else110

if.then106:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #10
  %add102 = add nsw i32 %i.536, 1
  %arrayidx103 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %add102
  %24 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx103, align 4
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %set_bbreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %set_bbreg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_bbreg.i, align 4
  tail call void %33(ptr noundef %hw, i32 noundef %23, i32 noundef -1, i32 noundef %25) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #8
  br label %for.inc210

if.else110:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_const_cmp4(i32 529, i32 %i.536)
  %cmp113 = icmp sgt i32 %i.536, 529
  br i1 %cmp113, label %if.else110.if.end214_crit_edge, label %if.end116

if.else110.if.end214_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.end116:                                        ; preds = %if.else110
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv, align 8
  %interface.i4 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 10, i32 9
  %37 = ptrtoint ptr %interface.i4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interface.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -842150451, i32 %23)
  %cmp.i5 = icmp eq i32 %23, -842150451
  br i1 %cmp.i5, label %if.end116.while.cond160.preheader_crit_edge, label %if.end.i11

if.end116.while.cond160.preheader_crit_edge:      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond160.preheader

while.cond160.preheader:                          ; preds = %if.end18.i22.while.cond160.preheader_crit_edge, %if.end116.while.cond160.preheader_crit_edge
  br label %while.cond160

if.end.i11:                                       ; preds = %if.end116
  %board_type.i6 = getelementptr inbounds %struct.rtl_priv, ptr %36, i32 0, i32 17, i32 17
  %39 = ptrtoint ptr %board_type.i6 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %board_type.i6, align 1
  %41 = trunc i32 %23 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %41)
  %cmp4.not.i7 = icmp eq i8 %40, %41
  %and.i8 = and i32 %23, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and.i8)
  %cmp6.not.i9 = icmp eq i32 %and.i8, 255
  %or.cond.i10 = or i1 %cmp6.not.i9, %cmp4.not.i7
  br i1 %or.cond.i10, label %if.end9.i18, label %if.end.i11.while.cond127.preheader_crit_edge

if.end.i11.while.cond127.preheader_crit_edge:     ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond127.preheader

if.end9.i18:                                      ; preds = %if.end.i11
  %and10.i12 = lshr i32 %23, 8
  %shr.i13 = and i32 %and10.i12, 255
  %and11.i14 = and i32 %38, %shr.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i14)
  %cmp12.i15 = icmp ne i32 %and11.i14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr.i13)
  %cmp15.not.i16 = icmp eq i32 %shr.i13, 7
  %or.cond46.i17 = or i1 %cmp15.not.i16, %cmp12.i15
  br i1 %or.cond46.i17, label %if.end18.i22, label %if.end9.i18.while.cond127.preheader_crit_edge

if.end9.i18.while.cond127.preheader_crit_edge:    ; preds = %if.end9.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond127.preheader

if.end18.i22:                                     ; preds = %if.end9.i18
  %42 = and i32 %23, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp22.i19 = icmp ne i32 %42, 0
  %43 = and i32 %23, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %43)
  %cmp25.not.i20 = icmp eq i32 %43, 983040
  %or.cond47.i21 = or i1 %cmp22.i19, %cmp25.not.i20
  br i1 %or.cond47.i21, label %if.end18.i22.while.cond160.preheader_crit_edge, label %if.end18.i22.while.cond127.preheader_crit_edge

if.end18.i22.while.cond127.preheader_crit_edge:   ; preds = %if.end18.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond127.preheader

if.end18.i22.while.cond160.preheader_crit_edge:   ; preds = %if.end18.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond160.preheader

while.cond127.preheader:                          ; preds = %if.end18.i22.while.cond127.preheader_crit_edge, %if.end9.i18.while.cond127.preheader_crit_edge, %if.end.i11.while.cond127.preheader_crit_edge
  br label %while.cond127

while.cond127:                                    ; preds = %land.rhs136.while.cond127_crit_edge, %while.cond127.preheader
  %add123.pn.in = phi i32 [ %i.6, %land.rhs136.while.cond127_crit_edge ], [ %i.536, %while.cond127.preheader ]
  %add123.pn = add nsw i32 %add123.pn.in, 3
  %v2.3.in = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %add123.pn
  %44 = ptrtoint ptr %v2.3.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %v2.3 = load i32, ptr %v2.3.in, align 4
  %45 = zext i32 %v2.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %v2.3, label %land.rhs136 [
    i32 57005, label %while.cond127.if.end206_crit_edge
    i32 52719, label %while.cond127.if.end206_crit_edge97
    i32 52685, label %while.cond127.if.end206_crit_edge98
  ]

while.cond127.if.end206_crit_edge98:              ; preds = %while.cond127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

while.cond127.if.end206_crit_edge97:              ; preds = %while.cond127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

while.cond127.if.end206_crit_edge:                ; preds = %while.cond127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

land.rhs136:                                      ; preds = %while.cond127
  %i.6 = add nsw i32 %add123.pn.in, 2
  %cmp139 = icmp slt i32 %add123.pn.in, 528
  br i1 %cmp139, label %land.rhs136.while.cond127_crit_edge, label %land.rhs136.if.end206_crit_edge

land.rhs136.if.end206_crit_edge:                  ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

land.rhs136.while.cond127_crit_edge:              ; preds = %land.rhs136
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond127

while.cond160:                                    ; preds = %while.body175, %while.cond160.preheader
  %add156.pn.in = phi i32 [ %i.7, %while.body175 ], [ %i.536, %while.cond160.preheader ]
  %i.7 = add nsw i32 %add156.pn.in, 2
  %add156.pn = add nsw i32 %add156.pn.in, 3
  %v2.4.in = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %add156.pn
  %46 = ptrtoint ptr %v2.4.in to i32
  call void @__asan_load4_noabort(i32 %46)
  %v2.4 = load i32, ptr %v2.4.in, align 4
  %47 = zext i32 %v2.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %v2.4, label %land.rhs169 [
    i32 57005, label %while.cond160.while.end186_crit_edge
    i32 52719, label %while.cond160.while.end186_crit_edge99
    i32 52685, label %while.cond160.while.end186_crit_edge100
  ]

while.cond160.while.end186_crit_edge100:          ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end186

while.cond160.while.end186_crit_edge99:           ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end186

while.cond160.while.end186_crit_edge:             ; preds = %while.cond160
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end186

land.rhs169:                                      ; preds = %while.cond160
  %cmp172 = icmp slt i32 %add156.pn.in, 528
  br i1 %cmp172, label %while.body175, label %land.rhs169.if.end206_crit_edge

land.rhs169.if.end206_crit_edge:                  ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

while.body175:                                    ; preds = %land.rhs169
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx176 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %i.7
  %48 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx176, align 4
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %cfg.i26 = getelementptr inbounds %struct.rtl_priv, ptr %51, i32 0, i32 32
  %52 = ptrtoint ptr %cfg.i26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cfg.i26, align 8
  %ops.i27 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ops.i27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i27, align 4
  %set_bbreg.i28 = getelementptr inbounds %struct.rtl_hal_ops, ptr %55, i32 0, i32 46
  %56 = ptrtoint ptr %set_bbreg.i28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_bbreg.i28, align 4
  tail call void %57(ptr noundef %hw, i32 noundef %49, i32 noundef -1, i32 noundef %v2.4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #8
  br label %while.cond160

while.end186:                                     ; preds = %while.cond160.while.end186_crit_edge, %while.cond160.while.end186_crit_edge99, %while.cond160.while.end186_crit_edge100
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %v2.4)
  %cmp188.not32 = icmp ne i32 %v2.4, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 528, i32 %add156.pn.in)
  %cmp19333 = icmp slt i32 %add156.pn.in, 528
  %or.cond134 = select i1 %cmp188.not32, i1 %cmp19333, i1 false
  br i1 %or.cond134, label %while.end186.do.body197_crit_edge, label %while.end186.if.end206_crit_edge

while.end186.if.end206_crit_edge:                 ; preds = %while.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

while.end186.do.body197_crit_edge:                ; preds = %while.end186
  br label %do.body197

do.body197:                                       ; preds = %do.body197.do.body197_crit_edge, %while.end186.do.body197_crit_edge
  %i.835 = phi i32 [ %add198, %do.body197.do.body197_crit_edge ], [ %i.7, %while.end186.do.body197_crit_edge ]
  %add198 = add nsw i32 %i.835, 2
  %add200 = add nsw i32 %i.835, 3
  %arrayidx201 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %add200
  %59 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57005, i32 %60)
  %cmp188.not = icmp ne i32 %60, 57005
  call void @__sanitizer_cov_trace_const_cmp4(i32 528, i32 %i.835)
  %cmp193 = icmp slt i32 %i.835, 528
  %or.cond1 = select i1 %cmp188.not, i1 %cmp193, i1 false
  br i1 %or.cond1, label %do.body197.do.body197_crit_edge, label %do.body197.if.end206_crit_edge

do.body197.if.end206_crit_edge:                   ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

do.body197.do.body197_crit_edge:                  ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body197

if.end206:                                        ; preds = %do.body197.if.end206_crit_edge, %while.end186.if.end206_crit_edge, %land.rhs169.if.end206_crit_edge, %land.rhs136.if.end206_crit_edge, %while.cond127.if.end206_crit_edge, %while.cond127.if.end206_crit_edge97, %while.cond127.if.end206_crit_edge98
  %i.9 = phi i32 [ %i.7, %while.end186.if.end206_crit_edge ], [ %add198, %do.body197.if.end206_crit_edge ], [ %i.7, %land.rhs169.if.end206_crit_edge ], [ %add123.pn.in, %while.cond127.if.end206_crit_edge ], [ %add123.pn.in, %while.cond127.if.end206_crit_edge97 ], [ %add123.pn.in, %while.cond127.if.end206_crit_edge98 ], [ %add123.pn.in, %land.rhs136.if.end206_crit_edge ]
  %arrayidx207 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %i.9
  %61 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx207, align 4
  %add208 = add i32 %i.9, 1
  %arrayidx209 = getelementptr i32, ptr @RTL8192EE_AGC_TAB_ARRAY, i32 %add208
  %63 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx209, align 4
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %1, i64 noundef 4, i32 noundef 5, ptr noundef nonnull @.str.43, i32 noundef %62, i32 noundef %64) #8
  br label %for.inc210

for.inc210:                                       ; preds = %if.end206, %if.then106
  %i.10 = phi i32 [ %i.536, %if.then106 ], [ %i.9, %if.end206 ]
  %add211 = add i32 %i.10, 2
  %cmp98 = icmp slt i32 %add211, 532
  br i1 %cmp98, label %for.inc210.for.body100_crit_edge, label %for.inc210.if.end214_crit_edge

for.inc210.if.end214_crit_edge:                   ; preds = %for.inc210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

for.inc210.for.body100_crit_edge:                 ; preds = %for.inc210
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body100

if.end214:                                        ; preds = %for.inc210.if.end214_crit_edge, %if.else110.if.end214_crit_edge, %for.inc.if.end214_crit_edge, %if.else.if.end214_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_config_bb_reg(ptr noundef %hw, i32 noundef %addr, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %addr, label %if.else21 [
    i32 254, label %entry.while.body_crit_edge
    i32 253, label %while.body7.preheader
    i32 252, label %if.then11
    i32 251, label %if.then14
    i32 250, label %if.then17
    i32 249, label %if.then20
  ]

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body7.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #8
  br label %if.end26

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %__ms.035 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.035, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end26_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end26_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #8
  br label %if.end26

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 10737400) #8
  br label %if.end26

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #8
  br label %if.end26

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  br label %if.end26

if.else21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 8
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
  tail call void %18(ptr noundef %hw, i32 noundef %addr, i32 noundef -1, i32 noundef %data) #8
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then20, %if.then17, %if.then14, %if.then11, %while.body.if.end26_crit_edge, %while.body7.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_rtl92ee_config_rf_reg(ptr noundef %hw, i32 noundef %addr, i32 noundef %data, i32 noundef %rfpath, i32 noundef %regaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %addr, label %if.else [
    i32 254, label %entry.while.body.preheader_crit_edge
    i32 4094, label %entry.while.body.preheader_crit_edge102
  ]

entry.while.body.preheader_crit_edge102:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

entry.while.body.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %entry.while.body.preheader_crit_edge, %entry.while.body.preheader_crit_edge102
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.094 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %while.body.preheader ]
  %dec = add nsw i32 %__ms.094, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end33_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.else:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cfg.i = getelementptr inbounds %struct.rtl_priv, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg.i, align 8
  %ops.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %set_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %7, i32 0, i32 48
  %8 = ptrtoint ptr %set_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_rfreg.i, align 4
  tail call void %9(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef 1048575, i32 noundef %data) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #8
  %11 = zext i32 %addr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %addr, label %if.else.if.end33_crit_edge [
    i32 182, label %if.then3
    i32 178, label %if.then16
  ]

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then3:                                         ; preds = %if.else
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %cfg.i64 = getelementptr inbounds %struct.rtl_priv, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %cfg.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i64, align 8
  %ops.i65 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i65, align 4
  %get_rfreg.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %get_rfreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_rfreg.i, align 4
  %call.i = tail call i32 %19(ptr noundef %hw, i32 noundef %rfpath, i32 noundef 182, i32 noundef -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #8
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7.while.cond4_crit_edge, %if.then3
  %getvalue.0 = phi i32 [ %call.i, %if.then3 ], [ %call.i74, %while.body7.while.cond4_crit_edge ]
  %count.0 = phi i8 [ 0, %if.then3 ], [ %inc, %while.body7.while.cond4_crit_edge ]
  %cmp6.not.unshifted = xor i32 %getvalue.0, %data
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp6.not.unshifted)
  %cmp6.not = icmp ult i32 %cmp6.not.unshifted, 256
  br i1 %cmp6.not, label %while.cond4.if.end33_crit_edge, label %while.body7

while.cond4.if.end33_crit_edge:                   ; preds = %while.cond4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

while.body7:                                      ; preds = %while.cond4
  %inc = add nuw nsw i8 %count.0, 1
  %21 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i, align 8
  %cfg.i67 = getelementptr inbounds %struct.rtl_priv, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %cfg.i67 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i67, align 8
  %ops.i68 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i68, align 4
  %set_rfreg.i69 = getelementptr inbounds %struct.rtl_hal_ops, ptr %26, i32 0, i32 48
  %27 = ptrtoint ptr %set_rfreg.i69 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_rfreg.i69, align 4
  tail call void %28(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef 1048575, i32 noundef %data) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 8
  %cfg.i71 = getelementptr inbounds %struct.rtl_priv, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cfg.i71, align 8
  %ops.i72 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i72, align 4
  %get_rfreg.i73 = getelementptr inbounds %struct.rtl_hal_ops, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %get_rfreg.i73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_rfreg.i73, align 4
  %call.i74 = tail call i32 %37(ptr noundef %hw, i32 noundef %rfpath, i32 noundef 182, i32 noundef -1) #8
  %cmp9 = icmp ugt i8 %count.0, 4
  br i1 %cmp9, label %while.body7.if.end33_crit_edge, label %while.body7.while.cond4_crit_edge

while.body7.while.cond4_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4

while.body7.if.end33_crit_edge:                   ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then16:                                        ; preds = %if.else
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 8
  %cfg.i76 = getelementptr inbounds %struct.rtl_priv, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %cfg.i76 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cfg.i76, align 8
  %ops.i77 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %ops.i77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i77, align 4
  %get_rfreg.i78 = getelementptr inbounds %struct.rtl_hal_ops, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %get_rfreg.i78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_rfreg.i78, align 4
  %call.i79 = tail call i32 %45(ptr noundef %hw, i32 noundef %rfpath, i32 noundef 178, i32 noundef -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748) #8
  br label %while.cond20

while.cond20:                                     ; preds = %while.body23.while.cond20_crit_edge, %if.then16
  %getvalue17.0 = phi i32 [ %call.i79, %if.then16 ], [ %call.i92, %while.body23.while.cond20_crit_edge ]
  %count18.0 = phi i8 [ 0, %if.then16 ], [ %inc24, %while.body23.while.cond20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %getvalue17.0, i32 %data)
  %cmp21.not = icmp eq i32 %getvalue17.0, %data
  br i1 %cmp21.not, label %while.cond20.if.end33_crit_edge, label %while.body23

while.cond20.if.end33_crit_edge:                  ; preds = %while.cond20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

while.body23:                                     ; preds = %while.cond20
  %inc24 = add nuw nsw i8 %count18.0, 1
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %cfg.i81 = getelementptr inbounds %struct.rtl_priv, ptr %48, i32 0, i32 32
  %49 = ptrtoint ptr %cfg.i81 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i81, align 8
  %ops.i82 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i82, align 4
  %set_rfreg.i83 = getelementptr inbounds %struct.rtl_hal_ops, ptr %52, i32 0, i32 48
  %53 = ptrtoint ptr %set_rfreg.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_rfreg.i83, align 4
  tail call void %54(ptr noundef %hw, i32 noundef %rfpath, i32 noundef %regaddr, i32 noundef 1048575, i32 noundef %data) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #8
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 8
  %cfg.i85 = getelementptr inbounds %struct.rtl_priv, ptr %57, i32 0, i32 32
  %58 = ptrtoint ptr %cfg.i85 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cfg.i85, align 8
  %ops.i86 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops.i86, align 4
  %set_rfreg.i87 = getelementptr inbounds %struct.rtl_hal_ops, ptr %61, i32 0, i32 48
  %62 = ptrtoint ptr %set_rfreg.i87 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_rfreg.i87, align 4
  tail call void %63(ptr noundef %hw, i32 noundef %rfpath, i32 noundef 24, i32 noundef 1048575, i32 noundef 64519) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #8
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 8
  %cfg.i89 = getelementptr inbounds %struct.rtl_priv, ptr %66, i32 0, i32 32
  %67 = ptrtoint ptr %cfg.i89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cfg.i89, align 8
  %ops.i90 = getelementptr inbounds %struct.rtl_hal_cfg, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops.i90, align 4
  %get_rfreg.i91 = getelementptr inbounds %struct.rtl_hal_ops, ptr %70, i32 0, i32 47
  %71 = ptrtoint ptr %get_rfreg.i91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %get_rfreg.i91, align 4
  %call.i92 = tail call i32 %72(ptr noundef %hw, i32 noundef %rfpath, i32 noundef 178, i32 noundef -1) #8
  %cmp27 = icmp ugt i8 %count18.0, 4
  br i1 %cmp27, label %while.body23.if.end33_crit_edge, label %while.body23.while.cond20_crit_edge

while.body23.while.cond20_crit_edge:              ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond20

while.body23.if.end33_crit_edge:                  ; preds = %while.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %while.body23.if.end33_crit_edge, %while.cond20.if.end33_crit_edge, %while.body7.if.end33_crit_edge, %while.cond4.if.end33_crit_edge, %if.else.if.end33_crit_edge, %while.body.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_set_txpower_index_by_rate_array(ptr noundef %hw, i32 noundef %rfpath, i8 noundef zeroext %bw, i8 noundef zeroext %channel, ptr nocapture noundef readonly %rates, i8 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %size)
  %cmp13.not = icmp eq i8 %size, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %sub.i = add i8 %channel, -1
  %0 = add i8 %channel, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %0)
  %1 = icmp ult i8 %0, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rfpath)
  %switch.selectcmp.i.i.i = icmp eq i32 %rfpath, 1
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i8 2, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rfpath)
  %switch.selectcmp53.i.i.i = icmp eq i32 %rfpath, 0
  %switch.select54.i.i.i = select i1 %switch.selectcmp53.i.i.i, i8 3, i8 %switch.select.i.i.i
  %wide.trip.count = zext i8 %size to i32
  br label %for.body

for.body:                                         ; preds = %_rtl92ee_set_txpower_index.exit.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %_rtl92ee_set_txpower_index.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rates, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  br i1 %1, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %5, i64 noundef 131072, i32 noundef 3, ptr noundef nonnull @.str.55) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %index.0.i = phi i8 [ 0, %if.then.i ], [ %sub.i, %for.body.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %6 = icmp ult i8 %3, 4
  %idxprom.i = zext i8 %index.0.i to i32
  br i1 %6, label %if.end23.thread.i, label %if.end23.i

if.end23.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 38, i32 %rfpath, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx14.i, align 1
  br label %if.end45.i

if.end23.i:                                       ; preds = %if.end.i
  %arrayidx21.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 39, i32 %rfpath, i32 %idxprom.i
  %9 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21.i, align 1
  %11 = add i8 %3, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %11)
  %12 = icmp ult i8 %11, -8
  br i1 %12, label %if.end23.i.if.end45.i_crit_edge, label %if.then39.i

if.end23.i.if.end45.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then39.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 44, i32 %rfpath
  %13 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx40.i, align 1
  %add.i = add i8 %14, %10
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then39.i, %if.end23.i.if.end45.i_crit_edge, %if.end23.thread.i
  %tx_power.1.i = phi i8 [ %add.i, %if.then39.i ], [ %10, %if.end23.i.if.end45.i_crit_edge ], [ %8, %if.end23.thread.i ]
  %15 = zext i8 %bw to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %bw, label %if.end45.i.if.end118.i_crit_edge [
    i8 0, label %if.then49.i
    i8 1, label %if.then85.i
  ]

if.end45.i.if.end118.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then49.i:                                      ; preds = %if.end45.i
  %16 = add i8 %3, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %16)
  %17 = icmp ult i8 %16, 16
  br i1 %17, label %if.end64.i, label %if.then49.i.if.end118.i_crit_edge

if.then49.i.if.end118.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.end64.i:                                       ; preds = %if.then49.i
  %arrayidx58.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 42, i32 %rfpath
  %18 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx58.i, align 1
  %add62.i = add i8 %19, %tx_power.1.i
  %20 = add nsw i8 %3, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %21 = icmp ult i8 %20, 8
  br i1 %21, label %if.then72.i, label %if.end64.i.if.end118.i_crit_edge

if.end64.i.if.end118.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then72.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx75.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 42, i32 %rfpath, i32 1
  br label %if.end118.sink.split.i

if.then85.i:                                      ; preds = %if.end45.i
  %22 = add i8 %3, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %23 = icmp ult i8 %22, 16
  br i1 %23, label %if.end100.i, label %if.then85.i.if.end118.i_crit_edge

if.then85.i.if.end118.i_crit_edge:                ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.end100.i:                                      ; preds = %if.then85.i
  %arrayidx94.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 43, i32 %rfpath
  %24 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx94.i, align 1
  %add98.i = add i8 %25, %tx_power.1.i
  %26 = add nsw i8 %3, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %26)
  %27 = icmp ult i8 %26, 8
  br i1 %27, label %if.then108.i, label %if.end100.i.if.end118.i_crit_edge

if.end100.i.if.end118.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118.i

if.then108.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx111.i = getelementptr %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 43, i32 %rfpath, i32 1
  br label %if.end118.sink.split.i

if.end118.sink.split.i:                           ; preds = %if.then108.i, %if.then72.i
  %arrayidx111.sink.i = phi ptr [ %arrayidx111.i, %if.then108.i ], [ %arrayidx75.i, %if.then72.i ]
  %add98.sink.i = phi i8 [ %add98.i, %if.then108.i ], [ %add62.i, %if.then72.i ]
  %28 = ptrtoint ptr %arrayidx111.sink.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx111.sink.i, align 1
  %add114.i = add i8 %29, %add98.sink.i
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.end118.sink.split.i, %if.end100.i.if.end118.i_crit_edge, %if.then85.i.if.end118.i_crit_edge, %if.end64.i.if.end118.i_crit_edge, %if.then49.i.if.end118.i_crit_edge, %if.end45.i.if.end118.i_crit_edge
  %tx_power.4.i = phi i8 [ %add62.i, %if.end64.i.if.end118.i_crit_edge ], [ %add98.i, %if.end100.i.if.end118.i_crit_edge ], [ %tx_power.1.i, %if.end45.i.if.end118.i_crit_edge ], [ %tx_power.1.i, %if.then49.i.if.end118.i_crit_edge ], [ %tx_power.1.i, %if.then85.i.if.end118.i_crit_edge ], [ %add114.i, %if.end118.sink.split.i ]
  %eeprom_regulatory.i = getelementptr inbounds %struct.rtl_priv, ptr %5, i32 0, i32 17, i32 54
  %30 = ptrtoint ptr %eeprom_regulatory.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %eeprom_regulatory.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp120.not.i = icmp eq i8 %31, 2
  br i1 %cmp120.not.i, label %if.end118.i._rtl92ee_get_txpower_index.exit_crit_edge, label %if.then122.i

if.end118.i._rtl92ee_get_txpower_index.exit_crit_edge: ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_index.exit

if.then122.i:                                     ; preds = %if.end118.i
  %32 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i, align 8
  %34 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %3, label %land.end.i.i.i [
    i8 0, label %if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge
    i8 1, label %if.then122.i.sw.bb1.i.i.i_crit_edge
    i8 2, label %if.then122.i.sw.bb1.i.i.i_crit_edge15
    i8 3, label %if.then122.i.sw.bb13.i.i_crit_edge
    i8 4, label %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge
    i8 5, label %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge16
    i8 6, label %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge17
    i8 7, label %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge18
    i8 8, label %if.then122.i.sw.bb9.i.i.i_crit_edge
    i8 9, label %if.then122.i.sw.bb9.i.i.i_crit_edge19
    i8 10, label %if.then122.i.sw.bb9.i.i.i_crit_edge20
    i8 11, label %if.then122.i.sw.bb9.i.i.i_crit_edge21
    i8 12, label %if.then122.i.sw.bb10.i.i.i_crit_edge
    i8 13, label %if.then122.i.sw.bb10.i.i.i_crit_edge22
    i8 14, label %if.then122.i.sw.bb10.i.i.i_crit_edge23
    i8 15, label %if.then122.i.sw.bb10.i.i.i_crit_edge24
    i8 16, label %if.then122.i.sw.bb11.i.i.i_crit_edge
    i8 17, label %if.then122.i.sw.bb11.i.i.i_crit_edge25
    i8 18, label %if.then122.i.sw.bb11.i.i.i_crit_edge26
    i8 19, label %if.then122.i.sw.bb11.i.i.i_crit_edge27
    i8 20, label %if.then122.i.sw.bb12.i.i.i_crit_edge
    i8 21, label %if.then122.i.sw.bb12.i.i.i_crit_edge28
    i8 22, label %if.then122.i.sw.bb12.i.i.i_crit_edge29
    i8 23, label %if.then122.i.sw.bb12.i.i.i_crit_edge30
    i8 24, label %if.then122.i.sw.bb13.i.i.i_crit_edge
    i8 25, label %if.then122.i.sw.bb13.i.i.i_crit_edge31
    i8 26, label %if.then122.i.sw.bb13.i.i.i_crit_edge32
    i8 27, label %if.then122.i.sw.bb13.i.i.i_crit_edge33
  ]

if.then122.i.sw.bb13.i.i.i_crit_edge33:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i.i

if.then122.i.sw.bb13.i.i.i_crit_edge32:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i.i

if.then122.i.sw.bb13.i.i.i_crit_edge31:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i.i

if.then122.i.sw.bb13.i.i.i_crit_edge:             ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i.i

if.then122.i.sw.bb12.i.i.i_crit_edge30:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i.i

if.then122.i.sw.bb12.i.i.i_crit_edge29:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i.i

if.then122.i.sw.bb12.i.i.i_crit_edge28:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i.i

if.then122.i.sw.bb12.i.i.i_crit_edge:             ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i.i

if.then122.i.sw.bb11.i.i.i_crit_edge27:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i.i

if.then122.i.sw.bb11.i.i.i_crit_edge26:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i.i

if.then122.i.sw.bb11.i.i.i_crit_edge25:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i.i

if.then122.i.sw.bb11.i.i.i_crit_edge:             ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i.i

if.then122.i.sw.bb10.i.i.i_crit_edge24:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i.i.i

if.then122.i.sw.bb10.i.i.i_crit_edge23:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i.i.i

if.then122.i.sw.bb10.i.i.i_crit_edge22:           ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i.i.i

if.then122.i.sw.bb10.i.i.i_crit_edge:             ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10.i.i.i

if.then122.i.sw.bb9.i.i.i_crit_edge21:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i.i

if.then122.i.sw.bb9.i.i.i_crit_edge20:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i.i

if.then122.i.sw.bb9.i.i.i_crit_edge19:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i.i

if.then122.i.sw.bb9.i.i.i_crit_edge:              ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i.i

if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge18: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge17: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge16: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

if.then122.i.sw.bb13.i.i_crit_edge:               ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

if.then122.i.sw.bb1.i.i.i_crit_edge15:            ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i.i

if.then122.i.sw.bb1.i.i.i_crit_edge:              ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i.i.i

if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge: ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.then122.i.sw.bb1.i.i.i_crit_edge, %if.then122.i.sw.bb1.i.i.i_crit_edge15
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.then122.i.sw.bb9.i.i.i_crit_edge, %if.then122.i.sw.bb9.i.i.i_crit_edge19, %if.then122.i.sw.bb9.i.i.i_crit_edge20, %if.then122.i.sw.bb9.i.i.i_crit_edge21
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

sw.bb10.i.i.i:                                    ; preds = %if.then122.i.sw.bb10.i.i.i_crit_edge, %if.then122.i.sw.bb10.i.i.i_crit_edge22, %if.then122.i.sw.bb10.i.i.i_crit_edge23, %if.then122.i.sw.bb10.i.i.i_crit_edge24
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

sw.bb11.i.i.i:                                    ; preds = %if.then122.i.sw.bb11.i.i.i_crit_edge, %if.then122.i.sw.bb11.i.i.i_crit_edge25, %if.then122.i.sw.bb11.i.i.i_crit_edge26, %if.then122.i.sw.bb11.i.i.i_crit_edge27
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %if.then122.i.sw.bb12.i.i.i_crit_edge, %if.then122.i.sw.bb12.i.i.i_crit_edge28, %if.then122.i.sw.bb12.i.i.i_crit_edge29, %if.then122.i.sw.bb12.i.i.i_crit_edge30
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.then122.i.sw.bb13.i.i.i_crit_edge, %if.then122.i.sw.bb13.i.i.i_crit_edge31, %if.then122.i.sw.bb13.i.i.i_crit_edge32, %if.then122.i.sw.bb13.i.i.i_crit_edge33
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

land.end.i.i.i:                                   ; preds = %if.then122.i
  %.b52.i.i.i = load i1, ptr @_rtl92ee_phy_get_ratesection_intxpower_byrate.__already_done, align 1
  br i1 %.b52.i.i.i, label %land.end.i.i.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge, label %if.then19.i.i.i, !prof !182

land.end.i.i.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge: ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

if.then19.i.i.i:                                  ; preds = %land.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @_rtl92ee_phy_get_ratesection_intxpower_byrate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1150, i32 noundef 9, ptr noundef nonnull @.str.56) #8
  br label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i: ; preds = %if.then19.i.i.i, %land.end.i.i.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge, %sw.bb13.i.i.i, %sw.bb12.i.i.i, %sw.bb11.i.i.i, %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb1.i.i.i, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge16, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge17, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge18
  %rate_section.0.i.i.i = phi i8 [ 7, %sw.bb13.i.i.i ], [ 6, %sw.bb12.i.i.i ], [ 5, %sw.bb11.i.i.i ], [ 4, %sw.bb10.i.i.i ], [ 1, %sw.bb9.i.i.i ], [ 0, %if.then19.i.i.i ], [ 0, %land.end.i.i.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge ], [ %switch.select54.i.i.i, %sw.bb1.i.i.i ], [ 0, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge ], [ 0, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge16 ], [ 0, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge17 ], [ 0, %if.then122.i._rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i_crit_edge18 ]
  %35 = add i8 %3, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %36 = icmp ult i8 %35, 8
  %tx_num.0.i.i = zext i1 %36 to i32
  %37 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %3, label %land.end.i.i [
    i8 27, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge
    i8 4, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge
    i8 8, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34
    i8 12, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35
    i8 16, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36
    i8 20, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37
    i8 24, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38
    i8 1, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge
    i8 5, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge39
    i8 9, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge40
    i8 13, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge41
    i8 17, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge42
    i8 21, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge43
    i8 25, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge44
    i8 2, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge
    i8 6, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge45
    i8 10, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge46
    i8 14, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge47
    i8 18, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge48
    i8 22, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge49
    i8 26, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge50
    i8 23, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge51
    i8 7, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge52
    i8 11, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge53
    i8 15, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge54
    i8 19, label %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge55
  ]

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge55: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge54: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge53: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge52: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge51: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge50: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge49: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge48: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge47: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge46: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge45: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge44: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge43: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge42: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge41: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge40: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge39: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge: ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb13.i.i

sw.bb11.i.i:                                      ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge39, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge40, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge41, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge42, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge43, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb11.i.i_crit_edge44
  br label %_rtl92ee_get_txpower_by_rate.exit.i

sw.bb12.i.i:                                      ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge45, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge46, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge47, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge48, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge49, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb12.i.i_crit_edge50
  br label %_rtl92ee_get_txpower_by_rate.exit.i

sw.bb13.i.i:                                      ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge51, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge52, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge53, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge54, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge55, %if.then122.i.sw.bb13.i.i_crit_edge
  %tx_num.016.i.i = phi i32 [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge51 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge52 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge53 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge54 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge55 ], [ 0, %if.then122.i.sw.bb13.i.i_crit_edge ]
  %rate_section.0.i15.i.i = phi i8 [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge51 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge52 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge53 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge54 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i.sw.bb13.i.i_crit_edge55 ], [ %3, %if.then122.i.sw.bb13.i.i_crit_edge ]
  br label %_rtl92ee_get_txpower_by_rate.exit.i

land.end.i.i:                                     ; preds = %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i
  %.b1.i.i = load i1, ptr @_rtl92ee_get_txpower_by_rate.__already_done, align 1
  br i1 %.b1.i.i, label %land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge, label %if.then19.i.i, !prof !182

land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_rtl92ee_get_txpower_by_rate.exit.i

if.then19.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @_rtl92ee_get_txpower_by_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1213, i32 noundef 9, ptr noundef nonnull @.str.56) #8
  br label %_rtl92ee_get_txpower_by_rate.exit.i

_rtl92ee_get_txpower_by_rate.exit.i:              ; preds = %if.then19.i.i, %land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge, %sw.bb13.i.i, %sw.bb12.i.i, %sw.bb11.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38, %if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge
  %tx_num.08.i.i = phi i32 [ %tx_num.016.i.i, %sw.bb13.i.i ], [ %tx_num.0.i.i, %sw.bb12.i.i ], [ %tx_num.0.i.i, %sw.bb11.i.i ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37 ], [ %tx_num.0.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38 ], [ %tx_num.0.i.i, %if.then19.i.i ], [ %tx_num.0.i.i, %land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ 0, %if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ]
  %rate_section.0.i7.i.i = phi i8 [ %rate_section.0.i15.i.i, %sw.bb13.i.i ], [ %rate_section.0.i.i.i, %sw.bb12.i.i ], [ %rate_section.0.i.i.i, %sw.bb11.i.i ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37 ], [ %rate_section.0.i.i.i, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38 ], [ %rate_section.0.i.i.i, %if.then19.i.i ], [ %rate_section.0.i.i.i, %land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ 2, %if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ]
  %shift.0.i.i = phi i32 [ 24, %sw.bb13.i.i ], [ 16, %sw.bb12.i.i ], [ 8, %sw.bb11.i.i ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge34 ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge35 ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge36 ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge37 ], [ 0, %_rtl92ee_phy_get_ratesection_intxpower_byrate.exit.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge38 ], [ 0, %if.then19.i.i ], [ 0, %land.end.i.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ], [ 0, %if.then122.i._rtl92ee_get_txpower_by_rate.exit.i_crit_edge ]
  %tx_power_by_rate_offset.i.i = getelementptr inbounds %struct.rtl_priv, ptr %33, i32 0, i32 14, i32 42
  %idxprom51.i.i = zext i8 %rate_section.0.i7.i.i to i32
  %arrayidx52.i.i = getelementptr [4 x [4 x [84 x i32]]], ptr %tx_power_by_rate_offset.i.i, i32 0, i32 %rfpath, i32 %tx_num.08.i.i, i32 %idxprom51.i.i
  %38 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52.i.i, align 4
  %shr.i.i = lshr i32 %39, %shift.0.i.i
  %conv56.i.i = trunc i32 %shr.i.i to i8
  br label %_rtl92ee_get_txpower_index.exit

_rtl92ee_get_txpower_index.exit:                  ; preds = %_rtl92ee_get_txpower_by_rate.exit.i, %if.end118.i._rtl92ee_get_txpower_index.exit_crit_edge
  %diff.0.i = phi i8 [ %conv56.i.i, %_rtl92ee_get_txpower_by_rate.exit.i ], [ 0, %if.end118.i._rtl92ee_get_txpower_index.exit_crit_edge ]
  %add126.i = add i8 %diff.0.i, %tx_power.4.i
  %40 = tail call i8 @llvm.umin.i8(i8 %add126.i, i8 63) #8
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i, align 8
  %45 = zext i32 %rfpath to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %rfpath, label %if.else118.i [
    i32 0, label %if.then.i12
    i32 1, label %if.then58.i
  ]

if.then.i12:                                      ; preds = %_rtl92ee_get_txpower_index.exit
  %46 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %42, label %sw.default.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb2.i
    i8 2, label %sw.bb4.i
    i8 3, label %sw.bb6.i
    i8 4, label %sw.bb8.i
    i8 5, label %sw.bb10.i
    i8 6, label %sw.bb12.i
    i8 7, label %sw.bb14.i
    i8 8, label %sw.bb16.i
    i8 9, label %sw.bb18.i
    i8 10, label %sw.bb20.i
    i8 11, label %sw.bb22.i
    i8 12, label %sw.bb24.i
    i8 13, label %sw.bb26.i
    i8 14, label %sw.bb28.i
    i8 15, label %sw.bb30.i
    i8 16, label %sw.bb32.i
    i8 17, label %sw.bb34.i
    i8 18, label %sw.bb36.i
    i8 19, label %sw.bb38.i
    i8 20, label %sw.bb40.i
    i8 21, label %sw.bb42.i
    i8 22, label %sw.bb44.i
    i8 23, label %sw.bb46.i
    i8 24, label %sw.bb48.i
    i8 25, label %sw.bb50.i
    i8 26, label %sw.bb52.i
    i8 27, label %sw.bb54.i
  ]

sw.bb.i:                                          ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i8 %40 to i32
  %cfg.i.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %47 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i.i, align 4
  %set_bbreg.i.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %set_bbreg.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_bbreg.i.i, align 4
  tail call void %52(ptr noundef %hw, i32 noundef 3592, i32 noundef 65280, i32 noundef %conv1.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb2.i:                                         ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv3.i = zext i8 %40 to i32
  %cfg.i236.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %53 = ptrtoint ptr %cfg.i236.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg.i236.i, align 8
  %ops.i237.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %ops.i237.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i237.i, align 4
  %set_bbreg.i238.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %56, i32 0, i32 46
  %57 = ptrtoint ptr %set_bbreg.i238.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_bbreg.i238.i, align 4
  tail call void %58(ptr noundef %hw, i32 noundef 2156, i32 noundef 65280, i32 noundef %conv3.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb4.i:                                         ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i8 %40 to i32
  %cfg.i240.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %59 = ptrtoint ptr %cfg.i240.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg.i240.i, align 8
  %ops.i241.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %ops.i241.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i241.i, align 4
  %set_bbreg.i242.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %62, i32 0, i32 46
  %63 = ptrtoint ptr %set_bbreg.i242.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_bbreg.i242.i, align 4
  tail call void %64(ptr noundef %hw, i32 noundef 2156, i32 noundef 16711680, i32 noundef %conv5.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb6.i:                                         ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i8 %40 to i32
  %cfg.i244.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %65 = ptrtoint ptr %cfg.i244.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cfg.i244.i, align 8
  %ops.i245.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %ops.i245.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i245.i, align 4
  %set_bbreg.i246.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %68, i32 0, i32 46
  %69 = ptrtoint ptr %set_bbreg.i246.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set_bbreg.i246.i, align 4
  tail call void %70(ptr noundef %hw, i32 noundef 2156, i32 noundef -16777216, i32 noundef %conv7.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb8.i:                                         ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = zext i8 %40 to i32
  %cfg.i248.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %71 = ptrtoint ptr %cfg.i248.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cfg.i248.i, align 8
  %ops.i249.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %ops.i249.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i249.i, align 4
  %set_bbreg.i250.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %74, i32 0, i32 46
  %75 = ptrtoint ptr %set_bbreg.i250.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %set_bbreg.i250.i, align 4
  tail call void %76(ptr noundef %hw, i32 noundef 3584, i32 noundef 255, i32 noundef %conv9.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb10.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.i = zext i8 %40 to i32
  %cfg.i252.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %77 = ptrtoint ptr %cfg.i252.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cfg.i252.i, align 8
  %ops.i253.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ops.i253.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i253.i, align 4
  %set_bbreg.i254.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %80, i32 0, i32 46
  %81 = ptrtoint ptr %set_bbreg.i254.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %set_bbreg.i254.i, align 4
  tail call void %82(ptr noundef %hw, i32 noundef 3584, i32 noundef 65280, i32 noundef %conv11.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb12.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv13.i = zext i8 %40 to i32
  %cfg.i256.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %83 = ptrtoint ptr %cfg.i256.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg.i256.i, align 8
  %ops.i257.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %ops.i257.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i257.i, align 4
  %set_bbreg.i258.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %86, i32 0, i32 46
  %87 = ptrtoint ptr %set_bbreg.i258.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_bbreg.i258.i, align 4
  tail call void %88(ptr noundef %hw, i32 noundef 3584, i32 noundef 16711680, i32 noundef %conv13.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb14.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv15.i = zext i8 %40 to i32
  %cfg.i260.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %89 = ptrtoint ptr %cfg.i260.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cfg.i260.i, align 8
  %ops.i261.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %ops.i261.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i261.i, align 4
  %set_bbreg.i262.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %92, i32 0, i32 46
  %93 = ptrtoint ptr %set_bbreg.i262.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %set_bbreg.i262.i, align 4
  tail call void %94(ptr noundef %hw, i32 noundef 3584, i32 noundef -16777216, i32 noundef %conv15.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb16.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv17.i = zext i8 %40 to i32
  %cfg.i264.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %95 = ptrtoint ptr %cfg.i264.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cfg.i264.i, align 8
  %ops.i265.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %ops.i265.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ops.i265.i, align 4
  %set_bbreg.i266.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %98, i32 0, i32 46
  %99 = ptrtoint ptr %set_bbreg.i266.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %set_bbreg.i266.i, align 4
  tail call void %100(ptr noundef %hw, i32 noundef 3588, i32 noundef 255, i32 noundef %conv17.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb18.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv19.i = zext i8 %40 to i32
  %cfg.i268.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %101 = ptrtoint ptr %cfg.i268.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cfg.i268.i, align 8
  %ops.i269.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %ops.i269.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops.i269.i, align 4
  %set_bbreg.i270.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %104, i32 0, i32 46
  %105 = ptrtoint ptr %set_bbreg.i270.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_bbreg.i270.i, align 4
  tail call void %106(ptr noundef %hw, i32 noundef 3588, i32 noundef 65280, i32 noundef %conv19.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb20.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i = zext i8 %40 to i32
  %cfg.i272.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %107 = ptrtoint ptr %cfg.i272.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i272.i, align 8
  %ops.i273.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %108, i32 0, i32 4
  %109 = ptrtoint ptr %ops.i273.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i273.i, align 4
  %set_bbreg.i274.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %110, i32 0, i32 46
  %111 = ptrtoint ptr %set_bbreg.i274.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %set_bbreg.i274.i, align 4
  tail call void %112(ptr noundef %hw, i32 noundef 3588, i32 noundef 16711680, i32 noundef %conv21.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb22.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv23.i = zext i8 %40 to i32
  %cfg.i276.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %113 = ptrtoint ptr %cfg.i276.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg.i276.i, align 8
  %ops.i277.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %ops.i277.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ops.i277.i, align 4
  %set_bbreg.i278.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %116, i32 0, i32 46
  %117 = ptrtoint ptr %set_bbreg.i278.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %set_bbreg.i278.i, align 4
  tail call void %118(ptr noundef %hw, i32 noundef 3588, i32 noundef -16777216, i32 noundef %conv23.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb24.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv25.i = zext i8 %40 to i32
  %cfg.i280.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %119 = ptrtoint ptr %cfg.i280.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg.i280.i, align 8
  %ops.i281.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %ops.i281.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i281.i, align 4
  %set_bbreg.i282.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %122, i32 0, i32 46
  %123 = ptrtoint ptr %set_bbreg.i282.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %set_bbreg.i282.i, align 4
  tail call void %124(ptr noundef %hw, i32 noundef 3600, i32 noundef 255, i32 noundef %conv25.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb26.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv27.i = zext i8 %40 to i32
  %cfg.i284.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %125 = ptrtoint ptr %cfg.i284.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg.i284.i, align 8
  %ops.i285.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %126, i32 0, i32 4
  %127 = ptrtoint ptr %ops.i285.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ops.i285.i, align 4
  %set_bbreg.i286.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %128, i32 0, i32 46
  %129 = ptrtoint ptr %set_bbreg.i286.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %set_bbreg.i286.i, align 4
  tail call void %130(ptr noundef %hw, i32 noundef 3600, i32 noundef 65280, i32 noundef %conv27.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb28.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv29.i = zext i8 %40 to i32
  %cfg.i288.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %131 = ptrtoint ptr %cfg.i288.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cfg.i288.i, align 8
  %ops.i289.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %ops.i289.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i289.i, align 4
  %set_bbreg.i290.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %134, i32 0, i32 46
  %135 = ptrtoint ptr %set_bbreg.i290.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %set_bbreg.i290.i, align 4
  tail call void %136(ptr noundef %hw, i32 noundef 3600, i32 noundef 16711680, i32 noundef %conv29.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb30.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv31.i = zext i8 %40 to i32
  %cfg.i292.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %137 = ptrtoint ptr %cfg.i292.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cfg.i292.i, align 8
  %ops.i293.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %ops.i293.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ops.i293.i, align 4
  %set_bbreg.i294.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %140, i32 0, i32 46
  %141 = ptrtoint ptr %set_bbreg.i294.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %set_bbreg.i294.i, align 4
  tail call void %142(ptr noundef %hw, i32 noundef 3600, i32 noundef -16777216, i32 noundef %conv31.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb32.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv33.i = zext i8 %40 to i32
  %cfg.i296.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %143 = ptrtoint ptr %cfg.i296.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cfg.i296.i, align 8
  %ops.i297.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %ops.i297.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i297.i, align 4
  %set_bbreg.i298.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %146, i32 0, i32 46
  %147 = ptrtoint ptr %set_bbreg.i298.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %set_bbreg.i298.i, align 4
  tail call void %148(ptr noundef %hw, i32 noundef 3604, i32 noundef 255, i32 noundef %conv33.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb34.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv35.i = zext i8 %40 to i32
  %cfg.i300.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %149 = ptrtoint ptr %cfg.i300.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cfg.i300.i, align 8
  %ops.i301.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %ops.i301.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops.i301.i, align 4
  %set_bbreg.i302.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %152, i32 0, i32 46
  %153 = ptrtoint ptr %set_bbreg.i302.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %set_bbreg.i302.i, align 4
  tail call void %154(ptr noundef %hw, i32 noundef 3604, i32 noundef 65280, i32 noundef %conv35.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb36.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv37.i = zext i8 %40 to i32
  %cfg.i304.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %155 = ptrtoint ptr %cfg.i304.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cfg.i304.i, align 8
  %ops.i305.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %ops.i305.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ops.i305.i, align 4
  %set_bbreg.i306.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %158, i32 0, i32 46
  %159 = ptrtoint ptr %set_bbreg.i306.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %set_bbreg.i306.i, align 4
  tail call void %160(ptr noundef %hw, i32 noundef 3604, i32 noundef 16711680, i32 noundef %conv37.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb38.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv39.i = zext i8 %40 to i32
  %cfg.i308.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %161 = ptrtoint ptr %cfg.i308.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %cfg.i308.i, align 8
  %ops.i309.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %ops.i309.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ops.i309.i, align 4
  %set_bbreg.i310.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %164, i32 0, i32 46
  %165 = ptrtoint ptr %set_bbreg.i310.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %set_bbreg.i310.i, align 4
  tail call void %166(ptr noundef %hw, i32 noundef 3604, i32 noundef -16777216, i32 noundef %conv39.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb40.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv41.i = zext i8 %40 to i32
  %cfg.i312.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %167 = ptrtoint ptr %cfg.i312.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cfg.i312.i, align 8
  %ops.i313.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %ops.i313.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops.i313.i, align 4
  %set_bbreg.i314.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %170, i32 0, i32 46
  %171 = ptrtoint ptr %set_bbreg.i314.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %set_bbreg.i314.i, align 4
  tail call void %172(ptr noundef %hw, i32 noundef 3608, i32 noundef 255, i32 noundef %conv41.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb42.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv43.i = zext i8 %40 to i32
  %cfg.i316.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %173 = ptrtoint ptr %cfg.i316.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %cfg.i316.i, align 8
  %ops.i317.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %ops.i317.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ops.i317.i, align 4
  %set_bbreg.i318.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %176, i32 0, i32 46
  %177 = ptrtoint ptr %set_bbreg.i318.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %set_bbreg.i318.i, align 4
  tail call void %178(ptr noundef %hw, i32 noundef 3608, i32 noundef 65280, i32 noundef %conv43.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb44.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv45.i = zext i8 %40 to i32
  %cfg.i320.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %179 = ptrtoint ptr %cfg.i320.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %cfg.i320.i, align 8
  %ops.i321.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %180, i32 0, i32 4
  %181 = ptrtoint ptr %ops.i321.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops.i321.i, align 4
  %set_bbreg.i322.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %182, i32 0, i32 46
  %183 = ptrtoint ptr %set_bbreg.i322.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %set_bbreg.i322.i, align 4
  tail call void %184(ptr noundef %hw, i32 noundef 3608, i32 noundef 16711680, i32 noundef %conv45.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb46.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv47.i = zext i8 %40 to i32
  %cfg.i324.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %185 = ptrtoint ptr %cfg.i324.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cfg.i324.i, align 8
  %ops.i325.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %ops.i325.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops.i325.i, align 4
  %set_bbreg.i326.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %188, i32 0, i32 46
  %189 = ptrtoint ptr %set_bbreg.i326.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %set_bbreg.i326.i, align 4
  tail call void %190(ptr noundef %hw, i32 noundef 3608, i32 noundef -16777216, i32 noundef %conv47.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb48.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv49.i = zext i8 %40 to i32
  %cfg.i328.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %191 = ptrtoint ptr %cfg.i328.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cfg.i328.i, align 8
  %ops.i329.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %ops.i329.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ops.i329.i, align 4
  %set_bbreg.i330.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %194, i32 0, i32 46
  %195 = ptrtoint ptr %set_bbreg.i330.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %set_bbreg.i330.i, align 4
  tail call void %196(ptr noundef %hw, i32 noundef 3612, i32 noundef 255, i32 noundef %conv49.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb50.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv51.i = zext i8 %40 to i32
  %cfg.i332.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %197 = ptrtoint ptr %cfg.i332.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %cfg.i332.i, align 8
  %ops.i333.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %ops.i333.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %ops.i333.i, align 4
  %set_bbreg.i334.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %200, i32 0, i32 46
  %201 = ptrtoint ptr %set_bbreg.i334.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %set_bbreg.i334.i, align 4
  tail call void %202(ptr noundef %hw, i32 noundef 3612, i32 noundef 65280, i32 noundef %conv51.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb52.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv53.i = zext i8 %40 to i32
  %cfg.i336.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %203 = ptrtoint ptr %cfg.i336.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %cfg.i336.i, align 8
  %ops.i337.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %204, i32 0, i32 4
  %205 = ptrtoint ptr %ops.i337.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %ops.i337.i, align 4
  %set_bbreg.i338.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %206, i32 0, i32 46
  %207 = ptrtoint ptr %set_bbreg.i338.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %set_bbreg.i338.i, align 4
  tail call void %208(ptr noundef %hw, i32 noundef 3612, i32 noundef 16711680, i32 noundef %conv53.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb54.i:                                        ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  %conv55.i = zext i8 %40 to i32
  %cfg.i340.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %209 = ptrtoint ptr %cfg.i340.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cfg.i340.i, align 8
  %ops.i341.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %210, i32 0, i32 4
  %211 = ptrtoint ptr %ops.i341.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ops.i341.i, align 4
  %set_bbreg.i342.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %212, i32 0, i32 46
  %213 = ptrtoint ptr %set_bbreg.i342.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %set_bbreg.i342.i, align 4
  tail call void %214(ptr noundef %hw, i32 noundef 3612, i32 noundef -16777216, i32 noundef %conv55.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.default.i:                                     ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.57) #8
  br label %_rtl92ee_set_txpower_index.exit

if.then58.i:                                      ; preds = %_rtl92ee_get_txpower_index.exit
  %215 = zext i8 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %42, label %sw.default116.i [
    i8 0, label %sw.bb60.i
    i8 1, label %sw.bb62.i
    i8 2, label %sw.bb64.i
    i8 3, label %sw.bb66.i
    i8 4, label %sw.bb68.i
    i8 5, label %sw.bb70.i
    i8 6, label %sw.bb72.i
    i8 7, label %sw.bb74.i
    i8 8, label %sw.bb76.i
    i8 9, label %sw.bb78.i
    i8 10, label %sw.bb80.i
    i8 11, label %sw.bb82.i
    i8 12, label %sw.bb84.i
    i8 13, label %sw.bb86.i
    i8 14, label %sw.bb88.i
    i8 15, label %sw.bb90.i
    i8 16, label %sw.bb92.i
    i8 17, label %sw.bb94.i
    i8 18, label %sw.bb96.i
    i8 19, label %sw.bb98.i
    i8 20, label %sw.bb100.i
    i8 21, label %sw.bb102.i
    i8 22, label %sw.bb104.i
    i8 23, label %sw.bb106.i
    i8 24, label %sw.bb108.i
    i8 25, label %sw.bb110.i
    i8 26, label %sw.bb112.i
    i8 27, label %sw.bb114.i
  ]

sw.bb60.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv61.i = zext i8 %40 to i32
  %cfg.i344.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %216 = ptrtoint ptr %cfg.i344.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %cfg.i344.i, align 8
  %ops.i345.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %217, i32 0, i32 4
  %218 = ptrtoint ptr %ops.i345.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ops.i345.i, align 4
  %set_bbreg.i346.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %219, i32 0, i32 46
  %220 = ptrtoint ptr %set_bbreg.i346.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %set_bbreg.i346.i, align 4
  tail call void %221(ptr noundef %hw, i32 noundef 2104, i32 noundef 65280, i32 noundef %conv61.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb62.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.i = zext i8 %40 to i32
  %cfg.i348.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %222 = ptrtoint ptr %cfg.i348.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cfg.i348.i, align 8
  %ops.i349.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %ops.i349.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ops.i349.i, align 4
  %set_bbreg.i350.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %225, i32 0, i32 46
  %226 = ptrtoint ptr %set_bbreg.i350.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %set_bbreg.i350.i, align 4
  tail call void %227(ptr noundef %hw, i32 noundef 2104, i32 noundef 16711680, i32 noundef %conv63.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb64.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv65.i = zext i8 %40 to i32
  %cfg.i352.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %228 = ptrtoint ptr %cfg.i352.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cfg.i352.i, align 8
  %ops.i353.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %ops.i353.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ops.i353.i, align 4
  %set_bbreg.i354.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %231, i32 0, i32 46
  %232 = ptrtoint ptr %set_bbreg.i354.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %set_bbreg.i354.i, align 4
  tail call void %233(ptr noundef %hw, i32 noundef 2104, i32 noundef -16777216, i32 noundef %conv65.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb66.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv67.i = zext i8 %40 to i32
  %cfg.i356.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %234 = ptrtoint ptr %cfg.i356.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cfg.i356.i, align 8
  %ops.i357.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %ops.i357.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ops.i357.i, align 4
  %set_bbreg.i358.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %237, i32 0, i32 46
  %238 = ptrtoint ptr %set_bbreg.i358.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %set_bbreg.i358.i, align 4
  tail call void %239(ptr noundef %hw, i32 noundef 2156, i32 noundef 255, i32 noundef %conv67.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb68.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv69.i = zext i8 %40 to i32
  %cfg.i360.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %240 = ptrtoint ptr %cfg.i360.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cfg.i360.i, align 8
  %ops.i361.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %241, i32 0, i32 4
  %242 = ptrtoint ptr %ops.i361.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ops.i361.i, align 4
  %set_bbreg.i362.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %243, i32 0, i32 46
  %244 = ptrtoint ptr %set_bbreg.i362.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %set_bbreg.i362.i, align 4
  tail call void %245(ptr noundef %hw, i32 noundef 2096, i32 noundef 255, i32 noundef %conv69.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb70.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv71.i = zext i8 %40 to i32
  %cfg.i364.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %246 = ptrtoint ptr %cfg.i364.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cfg.i364.i, align 8
  %ops.i365.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %ops.i365.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ops.i365.i, align 4
  %set_bbreg.i366.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %249, i32 0, i32 46
  %250 = ptrtoint ptr %set_bbreg.i366.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %set_bbreg.i366.i, align 4
  tail call void %251(ptr noundef %hw, i32 noundef 2096, i32 noundef 65280, i32 noundef %conv71.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb72.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv73.i = zext i8 %40 to i32
  %cfg.i368.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %252 = ptrtoint ptr %cfg.i368.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %cfg.i368.i, align 8
  %ops.i369.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %253, i32 0, i32 4
  %254 = ptrtoint ptr %ops.i369.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ops.i369.i, align 4
  %set_bbreg.i370.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %255, i32 0, i32 46
  %256 = ptrtoint ptr %set_bbreg.i370.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %set_bbreg.i370.i, align 4
  tail call void %257(ptr noundef %hw, i32 noundef 2096, i32 noundef 16711680, i32 noundef %conv73.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb74.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv75.i = zext i8 %40 to i32
  %cfg.i372.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %258 = ptrtoint ptr %cfg.i372.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %cfg.i372.i, align 8
  %ops.i373.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %259, i32 0, i32 4
  %260 = ptrtoint ptr %ops.i373.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %ops.i373.i, align 4
  %set_bbreg.i374.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %261, i32 0, i32 46
  %262 = ptrtoint ptr %set_bbreg.i374.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %set_bbreg.i374.i, align 4
  tail call void %263(ptr noundef %hw, i32 noundef 2096, i32 noundef -16777216, i32 noundef %conv75.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb76.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv77.i = zext i8 %40 to i32
  %cfg.i376.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %264 = ptrtoint ptr %cfg.i376.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %cfg.i376.i, align 8
  %ops.i377.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %265, i32 0, i32 4
  %266 = ptrtoint ptr %ops.i377.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ops.i377.i, align 4
  %set_bbreg.i378.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %267, i32 0, i32 46
  %268 = ptrtoint ptr %set_bbreg.i378.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %set_bbreg.i378.i, align 4
  tail call void %269(ptr noundef %hw, i32 noundef 2100, i32 noundef 255, i32 noundef %conv77.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb78.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv79.i = zext i8 %40 to i32
  %cfg.i380.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %270 = ptrtoint ptr %cfg.i380.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %cfg.i380.i, align 8
  %ops.i381.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %271, i32 0, i32 4
  %272 = ptrtoint ptr %ops.i381.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i381.i, align 4
  %set_bbreg.i382.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %273, i32 0, i32 46
  %274 = ptrtoint ptr %set_bbreg.i382.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %set_bbreg.i382.i, align 4
  tail call void %275(ptr noundef %hw, i32 noundef 2100, i32 noundef 65280, i32 noundef %conv79.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb80.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv81.i = zext i8 %40 to i32
  %cfg.i384.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %276 = ptrtoint ptr %cfg.i384.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cfg.i384.i, align 8
  %ops.i385.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %277, i32 0, i32 4
  %278 = ptrtoint ptr %ops.i385.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i385.i, align 4
  %set_bbreg.i386.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %279, i32 0, i32 46
  %280 = ptrtoint ptr %set_bbreg.i386.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %set_bbreg.i386.i, align 4
  tail call void %281(ptr noundef %hw, i32 noundef 2100, i32 noundef 16711680, i32 noundef %conv81.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb82.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv83.i = zext i8 %40 to i32
  %cfg.i388.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %282 = ptrtoint ptr %cfg.i388.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %cfg.i388.i, align 8
  %ops.i389.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %283, i32 0, i32 4
  %284 = ptrtoint ptr %ops.i389.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %ops.i389.i, align 4
  %set_bbreg.i390.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %285, i32 0, i32 46
  %286 = ptrtoint ptr %set_bbreg.i390.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %set_bbreg.i390.i, align 4
  tail call void %287(ptr noundef %hw, i32 noundef 2100, i32 noundef -16777216, i32 noundef %conv83.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb84.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv85.i = zext i8 %40 to i32
  %cfg.i392.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %288 = ptrtoint ptr %cfg.i392.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cfg.i392.i, align 8
  %ops.i393.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %289, i32 0, i32 4
  %290 = ptrtoint ptr %ops.i393.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %ops.i393.i, align 4
  %set_bbreg.i394.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %291, i32 0, i32 46
  %292 = ptrtoint ptr %set_bbreg.i394.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %set_bbreg.i394.i, align 4
  tail call void %293(ptr noundef %hw, i32 noundef 2108, i32 noundef 255, i32 noundef %conv85.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb86.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv87.i = zext i8 %40 to i32
  %cfg.i396.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %294 = ptrtoint ptr %cfg.i396.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cfg.i396.i, align 8
  %ops.i397.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %295, i32 0, i32 4
  %296 = ptrtoint ptr %ops.i397.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ops.i397.i, align 4
  %set_bbreg.i398.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %297, i32 0, i32 46
  %298 = ptrtoint ptr %set_bbreg.i398.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %set_bbreg.i398.i, align 4
  tail call void %299(ptr noundef %hw, i32 noundef 2108, i32 noundef 65280, i32 noundef %conv87.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb88.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv89.i = zext i8 %40 to i32
  %cfg.i400.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %300 = ptrtoint ptr %cfg.i400.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %cfg.i400.i, align 8
  %ops.i401.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %301, i32 0, i32 4
  %302 = ptrtoint ptr %ops.i401.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %ops.i401.i, align 4
  %set_bbreg.i402.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %303, i32 0, i32 46
  %304 = ptrtoint ptr %set_bbreg.i402.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %set_bbreg.i402.i, align 4
  tail call void %305(ptr noundef %hw, i32 noundef 2108, i32 noundef 16711680, i32 noundef %conv89.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb90.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv91.i = zext i8 %40 to i32
  %cfg.i404.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %306 = ptrtoint ptr %cfg.i404.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cfg.i404.i, align 8
  %ops.i405.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %307, i32 0, i32 4
  %308 = ptrtoint ptr %ops.i405.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %ops.i405.i, align 4
  %set_bbreg.i406.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %309, i32 0, i32 46
  %310 = ptrtoint ptr %set_bbreg.i406.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %set_bbreg.i406.i, align 4
  tail call void %311(ptr noundef %hw, i32 noundef 2108, i32 noundef -16777216, i32 noundef %conv91.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb92.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv93.i = zext i8 %40 to i32
  %cfg.i408.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %312 = ptrtoint ptr %cfg.i408.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cfg.i408.i, align 8
  %ops.i409.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %313, i32 0, i32 4
  %314 = ptrtoint ptr %ops.i409.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ops.i409.i, align 4
  %set_bbreg.i410.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %315, i32 0, i32 46
  %316 = ptrtoint ptr %set_bbreg.i410.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %set_bbreg.i410.i, align 4
  tail call void %317(ptr noundef %hw, i32 noundef 2120, i32 noundef 255, i32 noundef %conv93.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb94.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv95.i = zext i8 %40 to i32
  %cfg.i412.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %318 = ptrtoint ptr %cfg.i412.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %cfg.i412.i, align 8
  %ops.i413.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %319, i32 0, i32 4
  %320 = ptrtoint ptr %ops.i413.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ops.i413.i, align 4
  %set_bbreg.i414.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %321, i32 0, i32 46
  %322 = ptrtoint ptr %set_bbreg.i414.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %set_bbreg.i414.i, align 4
  tail call void %323(ptr noundef %hw, i32 noundef 2120, i32 noundef 65280, i32 noundef %conv95.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb96.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv97.i = zext i8 %40 to i32
  %cfg.i416.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %324 = ptrtoint ptr %cfg.i416.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %cfg.i416.i, align 8
  %ops.i417.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %325, i32 0, i32 4
  %326 = ptrtoint ptr %ops.i417.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %ops.i417.i, align 4
  %set_bbreg.i418.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %327, i32 0, i32 46
  %328 = ptrtoint ptr %set_bbreg.i418.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %set_bbreg.i418.i, align 4
  tail call void %329(ptr noundef %hw, i32 noundef 2120, i32 noundef 16711680, i32 noundef %conv97.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb98.i:                                        ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv99.i = zext i8 %40 to i32
  %cfg.i420.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %330 = ptrtoint ptr %cfg.i420.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %cfg.i420.i, align 8
  %ops.i421.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %331, i32 0, i32 4
  %332 = ptrtoint ptr %ops.i421.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %ops.i421.i, align 4
  %set_bbreg.i422.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %333, i32 0, i32 46
  %334 = ptrtoint ptr %set_bbreg.i422.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %set_bbreg.i422.i, align 4
  tail call void %335(ptr noundef %hw, i32 noundef 2120, i32 noundef -16777216, i32 noundef %conv99.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb100.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv101.i = zext i8 %40 to i32
  %cfg.i424.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %336 = ptrtoint ptr %cfg.i424.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %cfg.i424.i, align 8
  %ops.i425.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %337, i32 0, i32 4
  %338 = ptrtoint ptr %ops.i425.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ops.i425.i, align 4
  %set_bbreg.i426.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %339, i32 0, i32 46
  %340 = ptrtoint ptr %set_bbreg.i426.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %set_bbreg.i426.i, align 4
  tail call void %341(ptr noundef %hw, i32 noundef 2124, i32 noundef 255, i32 noundef %conv101.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb102.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv103.i = zext i8 %40 to i32
  %cfg.i428.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %342 = ptrtoint ptr %cfg.i428.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %cfg.i428.i, align 8
  %ops.i429.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %343, i32 0, i32 4
  %344 = ptrtoint ptr %ops.i429.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ops.i429.i, align 4
  %set_bbreg.i430.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %345, i32 0, i32 46
  %346 = ptrtoint ptr %set_bbreg.i430.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %set_bbreg.i430.i, align 4
  tail call void %347(ptr noundef %hw, i32 noundef 2124, i32 noundef 65280, i32 noundef %conv103.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb104.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv105.i = zext i8 %40 to i32
  %cfg.i432.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %348 = ptrtoint ptr %cfg.i432.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %cfg.i432.i, align 8
  %ops.i433.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %349, i32 0, i32 4
  %350 = ptrtoint ptr %ops.i433.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %ops.i433.i, align 4
  %set_bbreg.i434.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %351, i32 0, i32 46
  %352 = ptrtoint ptr %set_bbreg.i434.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %set_bbreg.i434.i, align 4
  tail call void %353(ptr noundef %hw, i32 noundef 2124, i32 noundef 16711680, i32 noundef %conv105.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb106.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv107.i = zext i8 %40 to i32
  %cfg.i436.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %354 = ptrtoint ptr %cfg.i436.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %cfg.i436.i, align 8
  %ops.i437.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %355, i32 0, i32 4
  %356 = ptrtoint ptr %ops.i437.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %ops.i437.i, align 4
  %set_bbreg.i438.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %357, i32 0, i32 46
  %358 = ptrtoint ptr %set_bbreg.i438.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %set_bbreg.i438.i, align 4
  tail call void %359(ptr noundef %hw, i32 noundef 2124, i32 noundef -16777216, i32 noundef %conv107.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb108.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv109.i = zext i8 %40 to i32
  %cfg.i440.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %360 = ptrtoint ptr %cfg.i440.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %cfg.i440.i, align 8
  %ops.i441.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %361, i32 0, i32 4
  %362 = ptrtoint ptr %ops.i441.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ops.i441.i, align 4
  %set_bbreg.i442.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %363, i32 0, i32 46
  %364 = ptrtoint ptr %set_bbreg.i442.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %set_bbreg.i442.i, align 4
  tail call void %365(ptr noundef %hw, i32 noundef 2152, i32 noundef 255, i32 noundef %conv109.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb110.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv111.i = zext i8 %40 to i32
  %cfg.i444.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %366 = ptrtoint ptr %cfg.i444.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %cfg.i444.i, align 8
  %ops.i445.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %367, i32 0, i32 4
  %368 = ptrtoint ptr %ops.i445.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ops.i445.i, align 4
  %set_bbreg.i446.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %369, i32 0, i32 46
  %370 = ptrtoint ptr %set_bbreg.i446.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %set_bbreg.i446.i, align 4
  tail call void %371(ptr noundef %hw, i32 noundef 2152, i32 noundef 65280, i32 noundef %conv111.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb112.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv113.i = zext i8 %40 to i32
  %cfg.i448.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %372 = ptrtoint ptr %cfg.i448.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cfg.i448.i, align 8
  %ops.i449.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %373, i32 0, i32 4
  %374 = ptrtoint ptr %ops.i449.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %ops.i449.i, align 4
  %set_bbreg.i450.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %375, i32 0, i32 46
  %376 = ptrtoint ptr %set_bbreg.i450.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %set_bbreg.i450.i, align 4
  tail call void %377(ptr noundef %hw, i32 noundef 2152, i32 noundef 16711680, i32 noundef %conv113.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.bb114.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv115.i = zext i8 %40 to i32
  %cfg.i452.i = getelementptr inbounds %struct.rtl_priv, ptr %44, i32 0, i32 32
  %378 = ptrtoint ptr %cfg.i452.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %cfg.i452.i, align 8
  %ops.i453.i = getelementptr inbounds %struct.rtl_hal_cfg, ptr %379, i32 0, i32 4
  %380 = ptrtoint ptr %ops.i453.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %ops.i453.i, align 4
  %set_bbreg.i454.i = getelementptr inbounds %struct.rtl_hal_ops, ptr %381, i32 0, i32 46
  %382 = ptrtoint ptr %set_bbreg.i454.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %set_bbreg.i454.i, align 4
  tail call void %383(ptr noundef %hw, i32 noundef 2152, i32 noundef -16777216, i32 noundef %conv115.i) #8
  br label %_rtl92ee_set_txpower_index.exit

sw.default116.i:                                  ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.57) #8
  br label %_rtl92ee_set_txpower_index.exit

if.else118.i:                                     ; preds = %_rtl92ee_get_txpower_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i64, i32, ptr, ...) @_rtl_dbg_print(ptr noundef %44, i64 noundef 65536, i32 noundef 4, ptr noundef nonnull @.str.58) #8
  br label %_rtl92ee_set_txpower_index.exit

_rtl92ee_set_txpower_index.exit:                  ; preds = %if.else118.i, %sw.default116.i, %sw.bb114.i, %sw.bb112.i, %sw.bb110.i, %sw.bb108.i, %sw.bb106.i, %sw.bb104.i, %sw.bb102.i, %sw.bb100.i, %sw.bb98.i, %sw.bb96.i, %sw.bb94.i, %sw.bb92.i, %sw.bb90.i, %sw.bb88.i, %sw.bb86.i, %sw.bb84.i, %sw.bb82.i, %sw.bb80.i, %sw.bb78.i, %sw.bb76.i, %sw.bb74.i, %sw.bb72.i, %sw.bb70.i, %sw.bb68.i, %sw.bb66.i, %sw.bb64.i, %sw.bb62.i, %sw.bb60.i, %sw.default.i, %sw.bb54.i, %sw.bb52.i, %sw.bb50.i, %sw.bb48.i, %sw.bb46.i, %sw.bb44.i, %sw.bb42.i, %sw.bb40.i, %sw.bb38.i, %sw.bb36.i, %sw.bb34.i, %sw.bb32.i, %sw.bb30.i, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb8.i, %sw.bb6.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_rtl92ee_set_txpower_index.exit.for.end_crit_edge, label %_rtl92ee_set_txpower_index.exit.for.body_crit_edge

_rtl92ee_set_txpower_index.exit.for.body_crit_edge: ; preds = %_rtl92ee_set_txpower_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

_rtl92ee_set_txpower_index.exit.for.end_crit_edge: ; preds = %_rtl92ee_set_txpower_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %_rtl92ee_set_txpower_index.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_write_dig(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl92ee_dm_write_cck_cca_thres(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_enable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl_ps_disable_nic(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !103, !105, !107, !109, !111, !112, !114, !116, !118, !120, !121, !123, !124, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 52, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 65, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 88, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 100, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 114, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 913, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 915, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 960, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1024, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1036, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1649, i32 4}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtl92ee_phy_scan_operation_backup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @rtl92ee_phy_scan_operation_backup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1664, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1690, i32 3}
!34 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rtl92ee_phy_set_bw_mode_callback._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl92ee_phy_set_bw_mode_callback._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @rtl92ee_phy_set_bw_mode_callback._entry.19, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1715, i32 3}
!39 = !{ptr @rtl92ee_phy_set_bw_mode_callback._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1721, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1738, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1752, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1784, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1791, i32 3}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1796, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2928, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2952, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2958, i32 4}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2963, i32 4}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2968, i32 4}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2980, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 175, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 199, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 624, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 636, i32 3}
!76 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 641, i32 3}
!80 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @_rtl92ee_phy_bb8192ee_config_parafile._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 775, i32 4}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 887, i32 3}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 842, i32 3}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 847, i32 3}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 852, i32 3}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 399, i32 3}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 419, i32 4}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 605, i32 2}
!98 = !{ptr @__func__.phy_convert_txpwr_dbm_to_rel_val, !97, !"<string literal>", i1 false, i1 false}
!99 = distinct !{null, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 465, i32 3}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 658, i32 2}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 661, i32 2}
!105 = distinct !{null, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1577, i32 3}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1235, i32 3}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1213, i32 3}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1150, i32 3}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1394, i32 4}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1518, i32 3}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1833, i32 2}
!120 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1857, i32 4}
!123 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @_rtl92ee_phy_sw_chnl_step_by_step._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 1921, i32 3}
!128 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2544, i32 4}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2555, i32 3}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2564, i32 4}
!135 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2576, i32 3}
!137 = !{ptr @.str.67, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2582, i32 3}
!139 = !{ptr @.str.68, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2597, i32 5}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2609, i32 4}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2617, i32 5}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2629, i32 4}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2635, i32 4}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2639, i32 2}
!151 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2247, i32 3}
!153 = !{ptr @.str.75, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2990, i32 2}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 2997, i32 3}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3014, i32 2}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3061, i32 5}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3067, i32 4}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3088, i32 5}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3097, i32 5}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3107, i32 4}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/realtek/rtlwifi/rtl8192ee/phy.c", i32 3147, i32 3}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i32 0, i32 33}
!181 = !{i8 0, i8 2}
!182 = !{!"branch_weights", i32 2000, i32 1}
